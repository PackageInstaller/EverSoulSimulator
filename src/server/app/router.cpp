// router.cpp — maps request paths to mock/proxy responses.
#include "router.hpp"

#include "account_admin_service.hpp"
#include "account_db.hpp"
#include "account_db_manager.hpp"
#include "account_database.hpp"
#include "userinfo_repository.hpp"
#include "common.hpp"
#include "crypto.hpp"
#include "fixture_store.hpp"
#include "game/endpoints/dynamic_endpoint_dispatcher.hpp"
#include "log.hpp"
#include "offline_data.hpp"
#include "orm/storage.hpp"
#include "payloads.hpp"
#include "platform.hpp"
#include "protobuf.hpp"
#include "proxy.hpp"
#include "server.hpp"
#include "sse_log.hpp"
#include "util.hpp"
#include "ws_session.hpp"
#include "adb_runner.hpp"
#include "ini_store.hpp"
#include "json.hpp"
#include "logcat_process.hpp"
#include "tbl_store.hpp"

#include <algorithm>
#include <atomic>
#include <cctype>
#include <chrono>
#include <cstdlib>
#include <filesystem>
#include <fstream>
#include <map>
#include <optional>
#include <sstream>
#include <thread>
#include <vector>

#ifdef _WIN32
#include <winsock2.h>
#else
#include <sys/socket.h>
#endif

namespace eversoul
{
    namespace
    {

        enum class AccountMode
        {
            Full,
            Newbie,
        };

        AccountMode current_account_mode()
        {
            return account_admin::selected_fixture_profile() == "responses_newbie" ? AccountMode::Newbie : AccountMode::Full;
        }

        bool is_newbie_mode()
        {
            return current_account_mode() == AccountMode::Newbie;
        }

        bool set_account_mode(AccountMode mode)
        {
            const std::string account_id = mode == AccountMode::Newbie ? "responses_newbie" : "responses";
            return account_admin::select_account(account_id).status == 200;
        }

        HttpResponse account_admin_response(const account_admin::ServiceResult &result)
        {
            if (result.broadcast_session)
                ws_broadcast_session_push();
            return HttpResponse{result.status,
                {{"Content-Type", "application/json;charset=UTF-8"},
                 {"Access-Control-Allow-Origin", "*"}},
                result.body};
        }

        std::string account_select_html()
        {
            if (auto html = offline_data().read("web/account_select.html"))
                return *html;
            return R"(<!doctype html><html><head><meta name="viewport" content="width=device-width,initial-scale=1"><title>Eversoul Offline</title></head><body><h1>Eversoul Offline</h1><p>Select account mode.</p><p><a href="/account-mode/set?mode=full">Full account</a></p><p><a href="/account-mode/set?mode=newbie">Newbie account</a></p></body></html>)";
        }

        HttpResponse html_response(const std::string &body)
        {
            return HttpResponse{200, {{"Content-Type", "text/html; charset=UTF-8"}}, body};
        }

        std::string agreement_ok_url()
        {
            return "zinny://AgreementOk?E001=y&E002=y&E006=y&AN001=y&AN002=y&N002=y&N003=y"
                   "&joinMemberShip=n&setAdAgreement=n";
        }

        std::string build_player_json(const std::string &player_id, const std::string &idp_id,
                                      const std::string &app_id, int64_t now)
        {
            return std::string(R"({"playerId":")") + player_id +
                   R"(","idpId":")" + json_escape(idp_id) +
                   R"(","appId":")" + json_escape(app_id) +
                   R"(","lang":"zh-hans","status":"normal","customProperty":{},"secureProperty":{},"pushToken":"","agreement":{"N002":"y","E006":"y","N003":"y","E001":"y","AN001":"y","E002":"y","AN002":"y"},"pushOption":{"night":"y","player":"y"},"memberKey":null,"firstLoginTime":)" +
                   std::to_string(now) + R"(,"lastLoginTime":)" + std::to_string(now) +
                   R"(,"zinnyUuid":"900cf1fd-2347-4299-a8f9-ffa06c76e62b"})";
        }

        std::string build_login_data_json(const std::string &player_id, const std::string &idp_id,
                                          const std::string &app_id,
                                          bool is_first_login)
        {
            const std::string zat = "offline-zat-" + std::to_string(unix_ms());
            const std::string zrt = "offline-zrt-" + std::to_string(unix_ms());
            const int64_t now = unix_ms();
            const int64_t exp = now + 7LL * 24 * 3600 * 1000;
            return std::string(R"({"player":)") + build_player_json(player_id, idp_id, app_id, now) +
                   R"(,"playerId":")" + player_id +
                   R"(","idpId":")" + json_escape(idp_id) +
                   R"(","idpCode":"zd3","accessToken":")" + zat +
                   R"(","zat":")" + zat +
                   R"(","zatExpireTime":)" + std::to_string(exp) +
                   R"(,"zatExpiryTime":)" + std::to_string(exp) +
                   R"(,"expiryTime":)" + std::to_string(exp) +
                   R"(,"zrt":")" + zrt +
                   R"(","zrtExpireTime":)" + std::to_string(exp) +
                   R"(,"zrtExpiryTime":)" + std::to_string(exp) +
                   R"(,"zinnyUuid":"900cf1fd-2347-4299-a8f9-ffa06c76e62b","isFirstLogin":)" +
                   (is_first_login ? "true" : "false") + R"(,"isMarketRefund":false})";
        }

        HttpResponse mock_zat_refresh_response(uint64_t id, const std::string &label)
        {
            const std::string zat = "offline-zat-" + std::to_string(unix_ms());
            const int64_t exp = unix_ms() + 7LL * 24 * 3600 * 1000;
            std::string body = std::string(R"({"zat":")") + zat + R"(","zatExpiryTime":)" + std::to_string(exp) +
                               R"(,"expiryTime":)" + std::to_string(exp) + "}";
            log_line(id, "MOCK", label + " zat=" + zat);
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, body};
        }

        bool is_numeric_player_id(const std::string &s)
        {
            return s.size() >= 10 && std::all_of(s.begin(), s.end(), ::isdigit);
        }

        bool is_disabled_tutorial_endpoint(const std::string &path)
        {
            static const std::vector<std::string> kDisabledTutorial = {
                "/TutorialActive",
                "/TutorialList",
                "/TutorialStoryClear",
                "/GachaHeroTutorial",
                "/GachaHeroTutorialFix",
                "/ArbeitTutorial",
            };
            for (const auto &p : kDisabledTutorial)
            {
                if (path == p)
                    return true;
            }
            return false;
        }

        // State-changing endpoints must be answered by the dynamic db::/inline handlers.
        // Captured fixtures remain fallback and seed material, but must not shadow request-
        // dependent account mutation.
        bool is_stateful_endpoint(const std::string &path)
        {
            static const std::vector<std::string> kStateful = {
                "/UserInfo",
                "/TutorialList",
                "/TutorialActive",
                "/AchievementAllReceive",
                "/GachaHeroTutorialFix",
                "/GachaHeroTutorial",
                "/GuideQuestList",
                "/UserNicknameChange",
                "/FormationSave",
                "/StoryClear",
                "/StageClear",
                "/ArenaWaitRewardReceive",
                "/ArkEnhanceCore",
                "/AutoHuntOpen",
                "/AutoHuntReceive",
                "/AutoRelease",
                "/ArbeitFinish",
                "/ArbeitStart",
                "/BattleSave",
                "/ChangeArenaFormation",
                "/ChangeThumbnail",
                "/ContentClearDeckSave",
                "/ContentLimitSave",
                "/DestinyStoryEpisodeClear",
                "/DestinyStoryEpisodeStart",
                "/DungeonShopItemBuy",
                "/DungeonShopOpen",
                "/FriendHeartReceiveAll",
                "/GachaHero",
                "/GachaPremium",
                "/GachaSignature",
                "/HeroLevelUp",
                "/ItemUse",
                "/LabyrinthClear",
                "/LabyrinthReward",
                "/LostFoundEnd",
                "/LostFoundStart",
                "/LostFoundWaitClear",
                "/MailItemAllReceive",
                "/MissionPassRewardAll",
                "/MissionPassSelectRewardType",
                "/RankingAchievementAllReward",
                "/ReceiveAttendance",
                "/RotationDungeonReward",
                "/SetArenaFormation",
                "/SetHeroSlotObjet",
                "/ShopItemBuy",
                "/SignatureEquip",
                "/SignatureLevelUp",
                "/SignatureUpgrade",
                "/SoulLinkBuffOpen",
                "/EquipItemTranscendence",
                "/EquipItemUpgrade",
                "/HeroEquip",
                "/HeroGift",
                "/HeroUnequip",
                "/HeroUpgrade",
                "/SpiritTreeSlotAdd",
                "/SpiritTreeSlotEquip",
                "/SpiritTreeSlotUnEquip",
                "/TaskReceive",
                "/TownDevelopPointRefresh",
                "/TownEnemyDestroySkip",
                "/TownLevelUpCheck",
                "/TownMissionReward",
                "/TripKeyword",
                "/DungeonClear",
                "/DungeonEnter",
                "/DungeonInfoUpdate",
                "/ZodiacActive",
                "/ZodiacInit",
                "/ZodiacMainActive",
                "/ZodiacPresetActive",
            };
            for (const auto &p : kStateful)
            {
                if (path == p)
                    return true;
            }
            return false;
        }

        HttpResponse mock_login_data_response(uint64_t id, const std::string &label, const HttpRequest &req,
                                              bool is_first_login)
        {
            std::string idp_id = body_json_string(req.body, "idpId", body_json_string(req.body, "deviceId", "offline-device"));
            std::string player_id = body_json_string(req.body, "playerId", kDefaultPlayerId);
            std::string app_id = "743491";
            if (!is_numeric_player_id(player_id))
                player_id = kDefaultPlayerId;
            std::string body = build_login_data_json(player_id, idp_id, app_id, is_first_login);
            log_line(id, "MOCK", label + " playerId=" + player_id + " idpId=" + idp_id);
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, body};
        }

        HttpResponse mock_local_player_response(uint64_t id, const HttpRequest &req)
        {
            std::string player_id = body_json_string(req.body, "playerId", kDefaultPlayerId);
            std::string app_id = "743491";
            std::string idp_id = body_json_string(req.body, "idpId", body_json_string(req.body, "deviceId", "offline-device"));
            if (!is_numeric_player_id(player_id))
                player_id = kDefaultPlayerId;
            const std::string body = std::string(R"({"player":)") +
                                     build_player_json(player_id, idp_id, app_id, unix_ms()) +
                                     "}";
            log_line(id, "MOCK", "player/getLocal playerId=" + player_id + " appId=" + app_id);
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, body};
        }

        // ─── /web/ 라우트 전역 상태 ─────────────────────────────────────────────
        std::atomic<bool> g_setup_complete{false};
        std::atomic<bool> g_setup_initialized{false};
        std::atomic<int64_t> g_started_at{0};

        // ─── /web/ 헬퍼 ─────────────────────────────────────────────────────────────

        // TCP 소켓에 문자열 전체 전송 (부분 전송 재시도).
        bool send_all(int sock, const std::string &data)
        {
            std::size_t sent = 0;
            while (sent < data.size())
            {
                int n = ::send(sock, data.c_str() + sent, (int)(data.size() - sent), 0);
                if (n <= 0) return false;
                sent += (std::size_t)n;
            }
            return true;
        }

        // SSE 응답 헤더 전송.
        void send_sse_header(int sock)
        {
            send_all(sock,
                "HTTP/1.1 200 OK\r\n"
                "Content-Type: text/event-stream\r\n"
                "Cache-Control: no-cache\r\n"
                "Connection: keep-alive\r\n"
                "Access-Control-Allow-Origin: *\r\n"
                "\r\n");
        }

        // JSON 응답 생성.
        HttpResponse json_ok(const std::string &body)
        {
            return HttpResponse{200,
                {{"Content-Type", "application/json;charset=UTF-8"},
                 {"Access-Control-Allow-Origin", "*"}},
                body};
        }

        void check_setup_initialized()
        {
            if (g_setup_initialized.exchange(true))
                return;

            const std::string setup_complete = ini::get("setup_complete", "false");
            g_setup_complete = setup_complete == "true" || setup_complete == "1";

            const std::string now = std::to_string(unix_ms());
            if (ini::get("setup_first_started_at_ms", "").empty())
                ini::set("setup_first_started_at_ms", now);

            if (ini::get("server_port", "").empty())
                ini::set("server_port", std::to_string(kServerListenPort));

            if (ini::get("game_server_url", "").empty())
            {
                const std::string fallback_url = config().game_server_url.empty()
                    ? "http://127.0.0.1:" + std::to_string(kServerListenPort)
                    : config().game_server_url;
                ini::set("game_server_url", fallback_url);
            }

            if (ini::get("client_region", "").empty())
                ini::set("client_region", "LiveSEA");

            if (ini::get("local_backend", "").empty())
                ini::set("local_backend", "true");

            if (ini::get("account_profile", "").empty())
                ini::set("account_profile", "responses");
        }

        bool setup_complete_from_ini()
        {
            check_setup_initialized();
            const std::string setup_complete = ini::get("setup_complete", "false");
            const bool complete = setup_complete == "true" || setup_complete == "1";
            g_setup_complete = complete;
            return complete;
        }

        // MIME 타입 추론.
        std::string mime_type(const std::string &path)
        {
            if (path.size() >= 3 && path.substr(path.size() - 3) == ".js")  return "application/javascript";
            if (path.size() >= 4 && path.substr(path.size() - 4) == ".css") return "text/css";
            if (path.size() >= 5 && path.substr(path.size() - 5) == ".html") return "text/html; charset=UTF-8";
            if (path.size() >= 4 && path.substr(path.size() - 4) == ".png") return "image/png";
            if (path.size() >= 4 && path.substr(path.size() - 4) == ".jpg") return "image/jpeg";
            return "application/octet-stream";
        }

        // adb devices → serial 목록 파싱.

        // JSON 문자열 배열 직렬화.
        std::string json_str_array(const std::vector<std::string> &v)
        {
            std::string r = "[";
            for (std::size_t i = 0; i < v.size(); ++i)
            {
                if (i) r += ",";
                r += "\"" + json_escape(v[i]) + "\"";
            }
            return r + "]";
        }

        std::string json_int_string_or_default(const std::string &value, int fallback)
        {
            if (value.empty())
                return std::to_string(fallback);
            for (char c : value)
            {
                if (!std::isdigit(static_cast<unsigned char>(c)))
                    return std::to_string(fallback);
            }
            const int parsed = std::atoi(value.c_str());
            return std::to_string(parsed);
        }

        bool body_json_bool(const std::string &body, const std::string &key, bool fallback)
        {
            const std::string string_value = body_json_string(body, key, "");
            if (string_value == "true" || string_value == "1")
                return true;
            if (string_value == "false" || string_value == "0")
                return false;

            const std::string needle = "\"" + key + "\"";
            std::size_t pos = body.find(needle);
            if (pos == std::string::npos)
                return fallback;
            pos = body.find(':', pos + needle.size());
            if (pos == std::string::npos)
                return fallback;
            ++pos;
            while (pos < body.size() && std::isspace(static_cast<unsigned char>(body[pos])))
                ++pos;
            if (body.compare(pos, 4, "true") == 0)
                return true;
            if (body.compare(pos, 5, "false") == 0)
                return false;
            return fallback;
        }





        bool ini_bool(const std::string &key)
        {
            const std::string value = ini::get(key, "false");
            return value == "true" || value == "1";
        }




        bool tbl_hook_enabled()
        {
            const std::string value = ini::get("tbl_hook_enabled", "true");
            return value == "true" || value == "1";
        }

        std::string tbl_hook_enabled_json()
        {
            return "{\"enabled\":" + std::string(tbl_hook_enabled() ? "true" : "false") +
                   ",\"tables\":" + std::to_string(tbl_store().table_count()) +
                   ",\"rows\":" + std::to_string(tbl_store().row_count()) +
                   ",\"source\":\"" + json_escape(config().data_dir) + "\"}";
        }

        std::string configured_client_region()
        {
            const std::string region = ini::get("client_region", "LiveSEA");
            return region == "LiveKR" ? "LiveKR" : "LiveSEA";
        }

        std::string configured_country_code()
        {
            return configured_client_region() == "LiveKR" ? "kr" : "sg";
        }

        void replace_all(std::string &text, const std::string &from, const std::string &to)
        {
            if (from.empty()) return;
            std::size_t pos = 0;
            while ((pos = text.find(from, pos)) != std::string::npos)
            {
                text.replace(pos, from.size(), to);
                pos += to.size();
            }
        }








        int hex_value(char c)
        {
            if (c >= '0' && c <= '9') return c - '0';
            if (c >= 'a' && c <= 'f') return 10 + (c - 'a');
            if (c >= 'A' && c <= 'F') return 10 + (c - 'A');
            return -1;
        }

        std::string url_decode(const std::string &s)
        {
            std::string out;
            out.reserve(s.size());
            for (std::size_t i = 0; i < s.size(); ++i)
            {
                if (s[i] == '+')
                {
                    out.push_back(' ');
                    continue;
                }
                if (s[i] == '%' && i + 2 < s.size())
                {
                    int hi = hex_value(s[i + 1]);
                    int lo = hex_value(s[i + 2]);
                    if (hi >= 0 && lo >= 0)
                    {
                        out.push_back(static_cast<char>((hi << 4) | lo));
                        i += 2;
                        continue;
                    }
                }
                out.push_back(s[i]);
            }
            return out;
        }

        std::string decoded_query_value(const std::string &path, const std::string &key)
        {
            const std::size_t q = path.find('?');
            if (q == std::string::npos) return "";
            std::size_t pos = q + 1;
            while (pos < path.size())
            {
                std::size_t amp = path.find('&', pos);
                if (amp == std::string::npos) amp = path.size();
                const std::string part = path.substr(pos, amp - pos);
                const std::size_t eq = part.find('=');
                const std::string name = eq == std::string::npos ? part : part.substr(0, eq);
                if (url_decode(name) == key)
                    return url_decode(eq == std::string::npos ? "" : part.substr(eq + 1));
                pos = amp + 1;
            }
            return "";
        }

        std::string normalize_data_rel_path(std::string rel)
        {
            std::replace(rel.begin(), rel.end(), '\\', '/');
            while (rel.rfind("./", 0) == 0)
                rel.erase(0, 2);
            return rel;
        }

        int body_json_int(const std::string &body, const std::string &key, int fallback)
        {
            std::string s = body_json_string(body, key, "");
            if (!s.empty()) return std::atoi(s.c_str());
            const std::string needle = "\"" + key + "\"";
            std::size_t p = body.find(needle);
            if (p == std::string::npos) return fallback;
            p = body.find(':', p + needle.size());
            if (p == std::string::npos) return fallback;
            ++p;
            while (p < body.size() && std::isspace(static_cast<unsigned char>(body[p]))) ++p;
            return std::atoi(body.c_str() + p);
        }

        std::int64_t body_json_int64(const std::string &body, const std::string &key, std::int64_t fallback)
        {
            std::string s = body_json_string(body, key, "");
            if (!s.empty()) return std::atoll(s.c_str());
            const std::string needle = "\"" + key + "\"";
            std::size_t p = body.find(needle);
            if (p == std::string::npos) return fallback;
            p = body.find(':', p + needle.size());
            if (p == std::string::npos) return fallback;
            ++p;
            while (p < body.size() && std::isspace(static_cast<unsigned char>(body[p]))) ++p;
            return std::atoll(body.c_str() + p);
        }

        std::string generated_hero_idx(int hero_no)
        {
            return "web-" + std::to_string(hero_no) + "-" + std::to_string(unix_ms());
        }

        std::string read_data_file(std::string rel_path);
        bool write_data_file(std::string rel_path, const std::string &content);
        void sync_db_currencies_to_fixture();

        json::Value json_object()
        {
            json::Value v;
            v.type = json::Type::Object;
            return v;
        }

        json::Value *json_member(json::Value &object, const std::string &key)
        {
            if (!object.is_object())
            {
                object.type = json::Type::Object;
                object.obj.clear();
            }
            if (json::Value *existing = object.find_mut(key))
                return existing;
            object.obj.emplace_back(key, json::Value{});
            return &object.obj.back().second;
        }

        json::Value *json_array_member(json::Value &object, const std::string &key)
        {
            json::Value *member = json_member(object, key);
            if (!member->is_array())
            {
                member->type = json::Type::Array;
                member->arr.clear();
            }
            return member;
        }

        std::string userinfo_fixture_rel_path()
        {
            return is_newbie_mode() ? "responses_newbie/UserInfo.json" : "responses/UserInfo.json";
        }

        bool read_userinfo_fixture(json::Value &out, std::string &reason)
        {
            const std::string text = read_data_file(userinfo_fixture_rel_path());
            if (text.empty())
            {
                reason = "UserInfo fixture not found";
                return false;
            }
            std::string err;
            if (!json::parse(text, out, err))
            {
                reason = "UserInfo parse failed: " + err;
                return false;
            }
            if (!out.is_object())
            {
                reason = "UserInfo root is not object";
                return false;
            }
            return true;
        }

        void sync_all_fixture_currencies(const json::Value &userinfo_root)
        {
            namespace fs = std::filesystem;
            const json::Value *currency_node = userinfo_root.find("currency");
            if (!currency_node || !currency_node->is_object()) return;
            const json::Value *src_all = currency_node->find("allCurrency");
            if (!src_all || !src_all->is_array()) return;

            for (const char *profile : {"responses", "responses_newbie"})
            {
                fs::path dir = fs::path(config().data_dir) / profile;
                std::error_code ec;
                if (!fs::is_directory(dir, ec)) continue;
                for (const auto &entry : fs::directory_iterator(dir, ec))
                {
                    if (entry.path().extension() != ".json") continue;
                    const std::string fname = entry.path().filename().string();
                    if (fname == "UserInfo.json") continue;
                    const std::string rel = std::string(profile) + "/" + fname;
                    const std::string text = read_data_file(rel);
                    if (text.empty()) continue;
                    json::Value fixture_root;
                    std::string perr;
                    if (!json::parse(text, fixture_root, perr)) continue;
                    json::Value *curr = fixture_root.find_mut("currency");
                    if (!curr || !curr->is_object()) continue;
                    json::Value *dest_all = curr->find_mut("allCurrency");
                    if (!dest_all || !dest_all->is_array()) continue;
                    dest_all->arr = src_all->arr;
                    write_data_file(rel, fixture_root.dump());
                }
            }
        }

        bool write_userinfo_fixture(const json::Value &root, std::string &reason)
        {
            if (!write_data_file(userinfo_fixture_rel_path(), root.dump()))
            {
                reason = "UserInfo write failed";
                return false;
            }
            sync_all_fixture_currencies(root);
            fixture_store().load(config().data_dir);
            return true;
        }

        bool read_currency_enum_maps(std::map<int, std::string> &type_to_name,
                                     std::map<std::string, int> &name_to_type)
        {
            json::Value root;
            std::string err;
            if (!json::parse(read_data_file("web/tbl_currency_enum.json"), root, err) || !root.is_object())
                return false;
            for (const auto &[key, value] : root.obj)
            {
                if (!value.is_string())
                    continue;
                const int type = std::atoi(key.c_str());
                if (type <= 0)
                    continue;
                type_to_name[type] = value.str;
                name_to_type[value.str] = type;
            }
            return !type_to_name.empty();
        }

        int fixture_currency_type(const json::Value &currency,
                                  const std::map<std::string, int> &name_to_type)
        {
            const json::Value *type = currency.find("type");
            if (!type)
                return 0;
            if (type->is_number())
                return static_cast<int>(type->as_int64());
            if (type->is_string())
            {
                auto it = name_to_type.find(type->str);
                if (it != name_to_type.end())
                    return it->second;
                return std::atoi(type->str.c_str());
            }
            return 0;
        }

        json::Value *userinfo_currency_array(json::Value &root)
        {
            json::Value *currency = json_member(root, "currency");
            if (!currency->is_object())
            {
                currency->type = json::Type::Object;
                currency->obj.clear();
            }
            return json_array_member(*currency, "allCurrency");
        }

        void sync_db_currencies_to_fixture()
        {
            json::Value root;
            std::string reason;
            if (!read_userinfo_fixture(root, reason)) return;
            std::map<int, std::string> type_to_name;
            std::map<std::string, int> name_to_type;
            if (!read_currency_enum_maps(type_to_name, name_to_type)) return;
            json::Value *all = userinfo_currency_array(root);
            for (const auto &[type, value] : db::get_all_currencies())
            {
                auto name_it = type_to_name.find(type);
                if (name_it == type_to_name.end()) continue;
                bool found = false;
                for (auto &c : all->arr)
                {
                    if (!c.is_object() || fixture_currency_type(c, name_to_type) != type) continue;
                    c.set_string("type", name_it->second);
                    c.set_string("value", std::to_string(value));
                    found = true;
                    break;
                }
                if (!found)
                {
                    json::Value entry = json_object();
                    entry.set_string("type", name_it->second);
                    entry.set_string("value", std::to_string(value));
                    all->arr.push_back(std::move(entry));
                }
            }
            write_userinfo_fixture(root, reason);
        }

        std::string db_currencies_json(const AccountDatabase &adb)
        {
            std::string body = "[";
            bool first = true;
            for (const auto &currency : adb.currencies())
            {
                if (!first)
                    body += ",";
                body += "{\"type\":" + std::to_string(currency.type) +
                        ",\"value\":" + std::to_string(currency.value) + "}";
                first = false;
            }
            return body + "]";
        }

        std::string db_heroes_json(const AccountDatabase &adb)
        {
            std::string body = "[";
            bool first = true;
            for (const HeroRow &hero : adb.heroes())
            {
                if (!first)
                    body += ",";
                body += "{\"idx\":\"" + json_escape(hero.idx) + "\"" +
                        ",\"heroNo\":" + std::to_string(hero.hero_no) +
                        ",\"level\":" + std::to_string(hero.level) +
                        ",\"gradeSno\":" + std::to_string(hero.grade_sno) +
                        ",\"raceSno\":" + std::to_string(hero.race_sno) + "}";
                first = false;
            }
            return body + "]";
        }

        std::string db_items_json(const AccountDatabase &adb)
        {
            std::string body = "[";
            bool first = true;
            for (const ItemEtcRow &item : adb.item_etcs())
            {
                if (!first)
                    body += ",";
                body += "{\"itemNo\":" + std::to_string(item.item_no) +
                        ",\"cnt\":" + std::to_string(item.cnt) + "}";
                first = false;
            }
            return body + "]";
        }

        bool is_safe_data_rel_path(const std::string &rel_path)
        {
            if (rel_path.empty()) return true;
            namespace fs = std::filesystem;
            fs::path p(rel_path);
            if (p.is_absolute()) return false;
            for (const auto &part : p)
            {
                const std::string s = part.string();
                if (s == "..") return false;
            }
            return true;
        }

        // 오프라인 데이터 디렉토리의 파일 목록 반환.
        std::vector<std::pair<std::string, std::size_t>> list_data_files(std::string prefix)
        {
            std::vector<std::pair<std::string, std::size_t>> result;
            namespace fs = std::filesystem;
            prefix = normalize_data_rel_path(prefix);
            if (!is_safe_data_rel_path(prefix)) return result;
            std::error_code ec;
            fs::path root = fs::path(config().data_dir) / prefix;
            if (!fs::exists(root, ec)) return result;
            for (auto &entry : fs::recursive_directory_iterator(root, ec))
            {
                if (!entry.is_regular_file(ec)) continue;
                std::string rel = fs::relative(entry.path(), fs::path(config().data_dir), ec).string();
                std::replace(rel.begin(), rel.end(), '\\', '/');
                result.push_back({rel, (std::size_t)entry.file_size(ec)});
            }
            return result;
        }

        // 데이터 파일 읽기.
        std::string read_data_file(std::string rel_path)
        {
            namespace fs = std::filesystem;
            rel_path = normalize_data_rel_path(rel_path);
            if (!is_safe_data_rel_path(rel_path)) return "";
            fs::path full = fs::path(config().data_dir) / rel_path;
            std::ifstream f(full, std::ios::binary);
            if (!f) return "";
            return std::string(std::istreambuf_iterator<char>(f), {});
        }

        // 데이터 파일 쓰기.
        bool write_data_file(std::string rel_path, const std::string &content)
        {
            namespace fs = std::filesystem;
            rel_path = normalize_data_rel_path(rel_path);
            if (rel_path.empty() || !is_safe_data_rel_path(rel_path)) return false;
            fs::path full = fs::path(config().data_dir) / rel_path;
            std::error_code ec;
            fs::create_directories(full.parent_path(), ec);
            std::ofstream f(full, std::ios::binary | std::ios::trunc);
            if (!f) return false;
            f << content;
            return f.good();
        }

        // /web/api/* 경로 처리.
        HttpResponse handle_web_api([[maybe_unused]] uint64_t id, int fd, const HttpRequest &req)
        {
            const std::string &path = req.path;
            const std::string &method = req.method;

            // ── OPTIONS 프리플라이트 ─────────────────────────────────────────────
            if (method == "OPTIONS")
                return HttpResponse{204,
                    {{"Access-Control-Allow-Origin", "*"},
                     {"Access-Control-Allow-Methods", "GET,POST,PATCH,DELETE,OPTIONS"},
                     {"Access-Control-Allow-Headers", "Content-Type"}}, ""};

            // ── 서버 상태 ────────────────────────────────────────────────────────
            if (path == "/web/api/status" && method == "GET")
            {
                check_setup_initialized();
                int64_t sat = g_started_at.load();
                if (sat == 0) { sat = (int64_t)(unix_ms() / 1000); g_started_at.store(sat); }
                std::string lang = ini::get("lang", "ko");
                std::string server_port = json_int_string_or_default(ini::get("server_port", ""), kServerListenPort);
                std::string game_server_url = ini::get("game_server_url", config().game_server_url);
                std::string client_region = configured_client_region();
                std::string country = configured_country_code();
                std::string local_backend = ini::get("local_backend", "true");
                std::string active_account = account_admin::active_account_id();
                std::string body = "{\"port\":" + server_port +
                    ",\"proxy_enabled\":" + (config().proxy_enabled ? "true" : "false") +
                    ",\"game_server_url\":\"" + json_escape(game_server_url) + "\"" +
                    ",\"ws_server_url\":\"\"" +
                    ",\"data_dir\":\"" + json_escape(config().data_dir) + "\"" +
                    ",\"region\":\"" + json_escape(client_region) + "\"" +
                    ",\"country\":\"" + json_escape(country) + "\"" +
                    ",\"fixture_count\":" + std::to_string(fixture_store().size()) +
                    ",\"fixture_errors\":" + std::to_string(fixture_store().errors().size()) +
                    ",\"tbl_tables\":" + std::to_string(tbl_store().table_count()) +
                    ",\"tbl_rows\":" + std::to_string(tbl_store().row_count()) +
                    ",\"active_account_id\":\"" + json_escape(active_account) + "\"" +
                    ",\"setup_complete\":" + std::string(g_setup_complete.load() ? "true" : "false") +
                    ",\"local_backend\":" + std::string(local_backend == "true" || local_backend == "1" ? "true" : "false") +
                    ",\"lang\":\"" + json_escape(lang) + "\"" +
                    ",\"request_count\":" + std::to_string(request_id().load()) +
                    ",\"started_at\":" + std::to_string(sat) + "}";
                return json_ok(body);
            }

            // ── 설정 변경 ────────────────────────────────────────────────────────
            if (path == "/web/api/config" && method == "GET")
            {
                check_setup_initialized();
                std::string lang = ini::get("lang", "ko");
                std::string client_region = configured_client_region();
                std::string server_port = json_int_string_or_default(ini::get("server_port", ""), kServerListenPort);
                std::string game_server_url = ini::get("game_server_url", config().game_server_url);
                std::string local_backend = ini::get("local_backend", "true");
                std::string adb_path = ini::get("adb_path", "");
                std::string body = "{\"lang\":\"" + json_escape(lang) + "\"" +
                    ",\"client_region\":\"" + json_escape(client_region) + "\"" +
                    ",\"server_port\":" + server_port +
                    ",\"game_server_url\":\"" + json_escape(game_server_url) + "\"" +
                    ",\"local_backend\":" + std::string(local_backend == "true" || local_backend == "1" ? "true" : "false") +
                    ",\"adb_path\":\"" + json_escape(adb_path) + "\"}";
                return json_ok(body);
            }
            if (path == "/web/api/config" && method == "POST")
            {
                check_setup_initialized();
                if (req.body.find("\"proxy_enabled\"") != std::string::npos)
                    config().proxy_enabled = body_json_bool(req.body, "proxy_enabled", config().proxy_enabled);
                std::string gurl = body_json_string(req.body, "game_server_url", "");
                if (!gurl.empty())
                {
                    config().game_server_url = gurl;
                    ini::set("game_server_url", gurl);
                }
                std::string lang = body_json_string(req.body, "lang", "");
                if (!lang.empty()) ini::set("lang", lang);
                std::string region = body_json_string(req.body, "client_region", "");
                if (!region.empty()) ini::set("client_region", region == "LiveKR" ? "LiveKR" : "LiveSEA");
                int port = body_json_int(req.body, "server_port", 0);
                if (port > 0) ini::set("server_port", std::to_string(port));
                std::string adb_path = body_json_string(req.body, "adb_path", "");
                if (!adb_path.empty()) ini::set("adb_path", adb_path);
                if (req.body.find("\"local_backend\"") != std::string::npos)
                    ini::set("local_backend", body_json_bool(req.body, "local_backend", true) ? "true" : "false");
                return json_ok("{\"ok\":true}");
            }

            // ── 헬스체크 ─────────────────────────────────────────────────────────
            if (path == "/web/api/health" && method == "GET")
            {
                bool fix_ok = fixture_store().loaded();
                std::string adb_path = adb_runner::adb_path();
                bool adb_ok = !adb_path.empty();
                std::string body = "[";
                body += "{\"name\":\"Game Server\",\"status\":\"ok\",\"detail\":\"" + json_escape(config().game_server_url) + "\"}";
                body += ",{\"name\":\"Fixtures\",\"status\":\"" + std::string(fix_ok ? (fixture_store().errors().empty() ? "ok" : "warn") : "fail") + "\",\"detail\":\"" + std::to_string(fixture_store().size()) + " loaded\"}";
                body += ",{\"name\":\"ADB\",\"status\":\"" + std::string(adb_ok ? "ok" : "warn") + "\",\"detail\":\"" + json_escape(adb_path) + "\"}";
                body += "]";
                return json_ok(body);
            }

            if (path == "/web/api/tbl/status" && method == "GET")
            {
                return json_ok("{\"tables\":" + std::to_string(tbl_store().table_count()) +
                               ",\"rows\":" + std::to_string(tbl_store().row_count()) +
                               ",\"heroes\":" + std::to_string(tbl_store().heroes().size()) + "}");
            }

            if (path == "/web/api/tbl_enabled" && (method == "GET" || method == "POST"))
            {
                if (method == "POST")
                    ini::set("tbl_hook_enabled", body_json_bool(req.body, "enabled", tbl_hook_enabled()) ? "true" : "false");
                return json_ok(tbl_hook_enabled_json());
            }

            if (path.rfind("/web/api/tbl/validate", 0) == 0 && method == "GET")
            {
                std::string endpoint = decoded_query_value(path, "endpoint");
                if (!endpoint.empty() && endpoint.front() == '/')
                    endpoint.erase(endpoint.begin());
                if (endpoint.empty())
                    return json_ok("{\"checked\":false,\"ok\":false,\"issue_count\":1,\"issues\":[{\"path\":\"endpoint\",\"message\":\"missing endpoint\"}]}");
                const std::string fixture_text = read_data_file("responses/" + endpoint + ".json");
                if (fixture_text.empty())
                    return json_ok("{\"endpoint\":\"" + json_escape(endpoint) +
                                   "\",\"checked\":false,\"ok\":false,\"issue_count\":1,\"issues\":[{\"path\":\"responses/" +
                                   json_escape(endpoint) + ".json\",\"message\":\"fixture not found\"}]}");
                return json_ok(tbl_store().validate_fixture_json(endpoint, fixture_text));
            }

            // ── 서버 로그 SSE (게임 API 요청/응답) ──────────────────────────────
            if (path == "/web/api/logs/server/stream" && method == "GET")
            {
                send_sse_header(fd);
                for (const auto &j : sse_log::recent_server(200))
                    send_all(fd, "data: " + j + "\n\n");
                std::atomic<bool> done{false};
                auto sid = sse_log::subscribe_server([fd, &done](const std::string &json) -> bool {
                    bool ok = send_all(fd, "data: " + json + "\n\n");
                    if (!ok) done = true;
                    return ok;
                });
                while (!done.load())
                {
                    char buf[1];
                    int r = ::recv(fd, buf, 1, MSG_PEEK);
                    if (r <= 0) break;
                    std::this_thread::sleep_for(std::chrono::milliseconds(100));
                }
                sse_log::unsubscribe_server(sid);
                return HttpResponse{-1, {}, ""};
            }

            // ── ADB+Logcat SSE ────────────────────────────────────────────────
            if (path == "/web/api/logs/adb/stream" && method == "GET")
            {
                logcat::start(adb_runner::adb_path(), adb_runner::serial());
                send_sse_header(fd);
                for (const auto &j : sse_log::recent_adb(200))
                    send_all(fd, "data: " + j + "\n\n");
                std::atomic<bool> done{false};
                auto sid = sse_log::subscribe_adb([fd, &done](const std::string &json) -> bool {
                    bool ok = send_all(fd, "data: " + json + "\n\n");
                    if (!ok) done = true;
                    return ok;
                });
                while (!done.load())
                {
                    char buf[1];
                    int r = ::recv(fd, buf, 1, MSG_PEEK);
                    if (r <= 0) break;
                    std::this_thread::sleep_for(std::chrono::milliseconds(100));
                }
                sse_log::unsubscribe_adb(sid);
                return HttpResponse{-1, {}, ""};
            }

            // ── 서버 로그 최근 N개 ───────────────────────────────────────────────
            if (path.rfind("/web/api/logs/server/recent", 0) == 0 && method == "GET")
            {
                int n = 200;
                auto q = path.find("n=");
                if (q != std::string::npos) n = std::atoi(path.c_str() + q + 2);
                auto logs = sse_log::recent_server(n);
                std::string body = "[";
                for (std::size_t i = 0; i < logs.size(); ++i) { if (i) body += ","; body += logs[i]; }
                body += "]";
                return json_ok(body);
            }

            // ── ADB 로그 최근 N개 ────────────────────────────────────────────────
            if (path.rfind("/web/api/logs/adb/recent", 0) == 0 && method == "GET")
            {
                int n = 200;
                auto q = path.find("n=");
                if (q != std::string::npos) n = std::atoi(path.c_str() + q + 2);
                auto logs = sse_log::recent_adb(n);
                std::string body = "[";
                for (std::size_t i = 0; i < logs.size(); ++i) { if (i) body += ","; body += logs[i]; }
                body += "]";
                return json_ok(body);
            }

            // ── 로그 클리어 ──────────────────────────────────────────────────────
            if (path == "/web/api/logs/clear" && method == "POST")
            {
                sse_log::clear_server();
                return json_ok("{\"ok\":true}");
            }

            if (path == "/web/api/logs/adb/clear" && method == "POST")
            {
                sse_log::clear_adb();
                const std::string serial = adb_runner::active_adb_serial();
                if (!serial.empty())
                    adb_runner::run_for_serial(serial, {"logcat", "-c"});
                return json_ok("{\"ok\":true}");
            }

            // ── 픽스처 목록 ──────────────────────────────────────────────────────
            if (path == "/web/api/fixtures" && method == "GET")
            {
                auto files = list_data_files("responses/");
                std::string body = "[";
                for (std::size_t i = 0; i < files.size(); ++i)
                {
                    if (i) body += ",";
                    body += "{\"path\":\"" + json_escape(files[i].first) + "\",\"bytes\":" + std::to_string(files[i].second) + "}";
                }
                body += "]";
                return json_ok(body);
            }

            // ── 픽스처 파일 내용 ─────────────────────────────────────────────────
            if (path.rfind("/web/api/fixtures/", 0) == 0 && method == "GET")
            {
                std::string rel = path.substr(std::string("/web/api/fixtures/").size());
                rel = url_decode(rel);
                std::string content = read_data_file(rel);
                return HttpResponse{200, {{"Content-Type", "text/plain; charset=UTF-8"},
                                          {"Access-Control-Allow-Origin", "*"}}, content};
            }

            // ── ADB 포트 ─────────────────────────────────────────────────────────
            if (path == "/web/api/adb/port" && method == "GET")
            {
                std::string port = ini::get("adb_port", "");
                return json_ok("{\"port\":\"" + json_escape(port) + "\"}");
            }
            if (path == "/web/api/adb/port" && method == "POST")
            {
                std::string port = body_json_string(req.body, "port", "");
                adb_runner::AdbProbeState state = adb_runner::probe_adb_target(port);
                return json_ok(adb_runner::adb_probe_json(state));
            }

            // ── ADB probe: start-server → devices → connect(retry) → root → connect(retry) → reverse ──
            if (path == "/web/api/adb/probe" && method == "POST")
            {
                std::string target = body_json_string(req.body, "target", "");
                adb_runner::AdbProbeState state = adb_runner::probe_adb_target(target);
                return json_ok(adb_runner::adb_probe_json(state));
            }

            // ── 인젝터: 기기 목록 ────────────────────────────────────────────────
            if (path == "/web/api/injector/devices" && method == "GET")
            {
                adb_runner::set_serial("");
                adb_runner::run({"start-server"});
                std::string out = adb_runner::run({"devices"});
                auto devs = adb_runner::parse_adb_devices(out);
                return json_ok("{\"devices\":" + json_str_array(devs) + "}");
            }

            if (path == "/web/api/adb/state" && method == "GET")
            {
                const std::string serial = ini::get("adb_serial", adb_runner::serial());
                const int host_port = std::atoi(json_int_string_or_default(ini::get("adb_host_port", ""), kServerListenPort).c_str());
                const bool connected = ini_bool("adb_connected");
                const bool reverse = ini_bool("adb_reverse");
                const bool game_running = ini_bool("adb_game_running");
                const std::vector<std::string> entries = adb_runner::cached_adb_reverse_entries();
                std::string body = "{\"port\":\"" + json_escape(ini::get("adb_port", "")) + "\"" +
                    ",\"serial\":\"" + json_escape(serial) + "\"" +
                    ",\"connected\":" + std::string(connected ? "true" : "false") +
                    ",\"reverse\":" + std::string(reverse ? "true" : "false") +
                    ",\"adb_rooted\":" + std::string(ini_bool("adb_rooted") ? "true" : "false") +
                    ",\"host_port\":" + std::to_string(host_port) +
                    ",\"device_ports\":[" + std::to_string(host_port) + "]" +
                    ",\"reverse_entries\":" + json_str_array(entries) +
                    ",\"device_count\":" + std::to_string(serial.empty() ? 0 : 1) +
                    ",\"game_running\":" + std::string(game_running ? "true" : "false") +
                    ",\"game_package\":\"com.kakaogames.eversoul\"" +
                    ",\"game_updated_at_ms\":" + json_int_string_or_default(ini::get("adb_game_updated_at_ms", ""), 0) +
                    ",\"updated_at_ms\":" + ini::get("adb_updated_at_ms", "0") + "}";
                return json_ok(body);
            }

            if (path == "/web/api/adb/kill-server" && method == "POST")
            {
                logcat::stop();
                std::string out = adb_runner::kill_server();
                ini::set("adb_connected", "false");
                ini::set("adb_reverse", "false");
                ini::set("adb_rooted", "false");
                adb_runner::cache_adb_reverse_entries({});
                adb_runner::cache_adb_game_running(false);
                ini::set("adb_updated_at_ms", std::to_string(unix_ms()));
                return json_ok("{\"ok\":true,\"output\":\"" + json_escape(out) + "\"}");
            }

            if (path == "/web/api/server/shutdown" && method == "POST")
            {
                logcat::stop();
                std::string out = adb_runner::kill_server();
                ini::set("adb_connected", "false");
                ini::set("adb_reverse", "false");
                ini::set("adb_rooted", "false");
                adb_runner::cache_adb_reverse_entries({});
                adb_runner::cache_adb_game_running(false);
                ini::set("adb_updated_at_ms", std::to_string(unix_ms()));
                request_shutdown();
                return json_ok("{\"ok\":true,\"output\":\"" + json_escape(out) + "\"}");
            }

            // ── 인젝터: 기기 상태 확인 ───────────────────────────────────────────
            if (path.rfind("/web/api/injector/check", 0) == 0 && method == "GET")
            {
                std::string serial = adb_runner::serial();
                auto q = path.find("serial=");
                if (q != std::string::npos) serial = path.substr(q + 7);
                std::string adb = adb_runner::adb_path();
                std::string pkg;
                if (!serial.empty())
                {
                    pkg = adb_runner::run_for_serial(serial, {"shell", "pm", "list", "packages", "com.kakaogames.eversoul"});
                }
                bool eversoul_ok = pkg.find("com.kakaogames.eversoul") != std::string::npos;
                std::string body = "{\"adb_ok\":" + std::string(!adb.empty() ? "true" : "false") +
                    ",\"adb\":\"" + json_escape(adb) + "\"" +
                    ",\"serial\":\"" + json_escape(serial) + "\"" +
                    ",\"eversoul\":" + (eversoul_ok ? "true" : "false") + "}";
                return json_ok(body);
            }

            // ── 인젝터: ADB connect ───────────────────────────────────────────────
            if (path == "/web/api/injector/connect" && method == "POST")
            {
                std::string target = body_json_string(req.body, "target", "");
                adb_runner::AdbProbeState state = adb_runner::probe_adb_target(target);
                return json_ok(adb_runner::adb_probe_json(state));
            }

            if (path == "/web/api/injector/reverse-list" && method == "GET")
            {
                const std::string serial = adb_runner::active_adb_serial();
                std::string out = serial.empty() ? "" : adb_runner::run_for_serial(serial, {"reverse", "--list"});
                auto entries = adb_runner::parse_adb_reverse_entries(out);
                adb_runner::cache_adb_reverse_entries(entries);
                return json_ok("{\"entries\":" + json_str_array(entries) +
                               ",\"output\":\"" + json_escape(out) + "\"}");
            }

            if (path == "/web/api/injector/reverse" && method == "POST")
            {
                std::string serial = body_json_string(req.body, "serial", adb_runner::active_adb_serial());
                const int port = std::atoi(json_int_string_or_default(ini::get("server_port", ""), kServerListenPort).c_str());
                const std::string tcp = "tcp:" + std::to_string(port);
                std::string out = serial.empty() ? "" : adb_runner::run_for_serial(serial, {"reverse", tcp, tcp});
                std::string list = serial.empty() ? "" : adb_runner::run_for_serial(serial, {"reverse", "--list"});
                auto entries = adb_runner::parse_adb_reverse_entries(list);
                bool reverse = !serial.empty() && adb_runner::adb_output_ok(out) && adb_runner::reverse_entries_have_port(entries, port);
                if (!serial.empty())
                {
                    ini::set("adb_serial", serial);
                    adb_runner::set_serial(serial);
                }
                ini::set("adb_reverse", reverse ? "true" : "false");
                ini::set("adb_host_port", std::to_string(port));
                ini::set("adb_updated_at_ms", std::to_string(unix_ms()));
                adb_runner::cache_adb_reverse_entries(entries);
                return json_ok("{\"ok\":" + std::string(reverse ? "true" : "false") +
                    ",\"reverse\":" + std::string(reverse ? "true" : "false") +
                    ",\"serial\":\"" + json_escape(serial) + "\"" +
                    ",\"entries\":" + json_str_array(entries) +
                    ",\"output\":\"" + json_escape(out + list) + "\"}");
            }

            // ── 인젝터: 게임 시작 (am start) ─────────────────────────────────────
            if (path == "/web/api/injector/run" && method == "POST")
            {
                std::string serial = body_json_string(req.body, "serial", adb_runner::active_adb_serial());
                std::vector<std::string> args = {"shell", "am", "start",
                    "-n", "com.kakaogames.eversoul/com.kakaogames.eversoul.unity.UnityPlayerActivity"};
                std::string out = serial.empty() ? "[adb serial not set]" : adb_runner::run_for_serial(serial, args);
                bool ok = !serial.empty() && out.find("Error") == std::string::npos;
                adb_runner::cache_adb_game_running(ok);
                return json_ok("{\"ok\":" + std::string(ok ? "true" : "false") +
                    ",\"started\":" + std::string(ok ? "true" : "false") +
                    ",\"reverse\":" + std::string(ini_bool("adb_reverse") ? "true" : "false") +
                    ",\"serial\":\"" + json_escape(serial) + "\"" +
                    ",\"output\":\"" + json_escape(out) + "\"}");
            }

            // ── 인젝터: 게임 중지 ─────────────────────────────────────────────────
            if (path == "/web/api/injector/stop" && method == "POST")
            {
                std::string serial = body_json_string(req.body, "serial", adb_runner::active_adb_serial());
                std::string out = serial.empty() ? "[adb serial not set]" : adb_runner::run_for_serial(serial, {"shell", "am", "force-stop", "com.kakaogames.eversoul"});
                adb_runner::cache_adb_game_running(false);
                return json_ok("{\"ok\":true,\"output\":\"" + json_escape(out) + "\"}");
            }

            // ── 인젝터: 상태 ─────────────────────────────────────────────────────
            if (path == "/web/api/injector/status" && method == "GET")
            {
                const int host_port = std::atoi(json_int_string_or_default(ini::get("adb_host_port", ""), kServerListenPort).c_str());
                const std::vector<std::string> entries = adb_runner::cached_adb_reverse_entries();
                return json_ok("{\"running\":" + std::string(ini_bool("adb_game_running") ? "true" : "false") +
                    ",\"reverse\":" + std::string(ini_bool("adb_reverse") ? "true" : "false") +
                    ",\"serial\":\"" + json_escape(ini::get("adb_serial", adb_runner::serial())) + "\"" +
                    ",\"host_port\":" + std::to_string(host_port) +
                    ",\"device_ports\":[" + std::to_string(host_port) + "]" +
                    ",\"entries\":" + json_str_array(entries) + "}");
            }

            // ── 인젝터: ADB 명령 ─────────────────────────────────────────────────
            if (path == "/web/api/injector/adb" && method == "POST")
            {
                std::string cmd = body_json_string(req.body, "cmd", "");
                std::vector<std::string> args;
                std::istringstream ss(cmd);
                std::string tok;
                while (ss >> tok) args.push_back(tok);
                std::string serial = body_json_string(req.body, "serial", adb_runner::active_adb_serial());
                std::string out = serial.empty() ? adb_runner::run(args) : adb_runner::run_for_serial(serial, args);
                return json_ok("{\"ok\":true,\"output\":\"" + json_escape(out) + "\"}");
            }

            if (path.rfind("/web/api/gamedata", 0) == 0)
            {
                std::string registry_reason;
                if (!account_admin::ensure_fixture_accounts(registry_reason))
                    return json_ok("{\"ok\":false,\"reason\":\"" + json_escape(registry_reason) + "\"}");
            }

            // ── 게임 데이터: summary ──────────────────────────────────────────────
            if (path == "/web/api/gamedata/summary" && method == "GET")
            {
                AccountDatabase *adb = account_db_manager().active_db();
                if (!adb)
                    return json_ok("{\"gold\":0,\"crystal\":0,\"hero_count\":0,\"reason\":\"active account database not ready\"}");
                const int hero_count = static_cast<int>(adb->heroes().size());
                const std::int64_t gold = adb->currency_get(1);
                const std::int64_t crystal = adb->currency_get(2);
                return json_ok("{\"gold\":" + std::to_string(gold) +
                    ",\"crystal\":" + std::to_string(crystal) +
                    ",\"hero_count\":" + std::to_string(hero_count) + "}");
            }

            // ── 게임 데이터: userinfo ─────────────────────────────────────────────
            if (path == "/web/api/gamedata/userinfo" && method == "GET")
            {
                AccountDatabase *adb = account_db_manager().active_db();
                if (!adb)
                    return json_ok("{\"nickname\":\"\",\"level\":0,\"gold\":0,\"crystal\":0,\"reason\":\"active account database not ready\"}");
                std::string nick = "offline";
                int level = 0;
                if (auto user = adb->user_profile())
                {
                    if (!user->nick_name.empty())
                        nick = user->nick_name;
                    level = user->tree_level;
                }
                const std::int64_t gold = adb->currency_get(1);
                const std::int64_t crystal = adb->currency_get(2);
                return json_ok("{\"nickname\":\"" + json_escape(nick) + "\"" +
                    ",\"level\":" + std::to_string(level) +
                    ",\"gold\":" + std::to_string(gold) +
                    ",\"crystal\":" + std::to_string(crystal) + "}");
            }
            if (path == "/web/api/gamedata/userinfo" && method == "POST")
            {
                AccountDatabase *adb = account_db_manager().active_db();
                if (!adb)
                    return json_ok("{\"ok\":false,\"reason\":\"active account database not ready\"}");
                std::string nick = body_json_string(req.body, "nickname", "");
                std::size_t payload_size = 0;
                if (!nick.empty())
                    payload_size = db::set_nickname(nick).size();
                ws_broadcast_session_push();
                return json_ok("{\"ok\":true,\"payload_bytes\":" + std::to_string(payload_size) + "}");
            }

            // ── 게임 데이터: currencies ───────────────────────────────────────────
            if (path == "/web/api/gamedata/currencies" && method == "GET")
            {
                AccountDatabase *adb = account_db_manager().active_db();
                if (!adb)
                    return json_ok("[]");
                return json_ok(db_currencies_json(*adb));
            }
            if (path == "/web/api/gamedata/currencies" && (method == "POST" || method == "PATCH"))
            {
                AccountDatabase *adb = account_db_manager().active_db();
                if (!adb)
                    return json_ok("{\"ok\":false,\"reason\":\"active account database not ready\"}");
                int type = body_json_int(req.body, "type", 0);
                std::int64_t value = body_json_int64(req.body, "value", 0);
                if (type <= 0) return json_ok("{\"ok\":false,\"reason\":\"invalid type\"}");
                adb->currency_set(type, value);
                ws_broadcast_session_push();
                return json_ok("{\"ok\":true}");
            }
            if (path == "/web/api/gamedata/currencies" && method == "DELETE")
            {
                AccountDatabase *adb = account_db_manager().active_db();
                if (!adb)
                    return json_ok("{\"ok\":false,\"reason\":\"active account database not ready\"}");
                int type = body_json_int(req.body, "type", 0);
                if (type <= 0) return json_ok("{\"ok\":false,\"reason\":\"invalid type\"}");
                adb->currency_set(type, 0);
                ws_broadcast_session_push();
                return json_ok("{\"ok\":true}");
            }

            // ── 게임 데이터: heroes ───────────────────────────────────────────────
            if (path == "/web/api/gamedata/heroes" && method == "GET")
            {
                AccountDatabase *adb = account_db_manager().active_db();
                if (!adb)
                    return json_ok("[]");
                return json_ok(db_heroes_json(*adb));
            }
            if (path == "/web/api/gamedata/heroes" && (method == "POST" || method == "PATCH"))
            {
                AccountDatabase *adb = account_db_manager().active_db();
                if (!adb)
                    return json_ok("{\"ok\":false,\"reason\":\"active account database not ready\"}");
                std::string idx = body_json_string(req.body, "idx", "");
                int hero_no = body_json_int(req.body, "heroNo", body_json_int(req.body, "hero_no", 0));
                int level = body_json_int(req.body, "level", 1);
                int grade_sno = body_json_int(req.body, "gradeSno", 0);
                int race_sno = body_json_int(req.body, "raceSno", 0);
                if (hero_no <= 0) return json_ok("{\"ok\":false,\"reason\":\"invalid heroNo\"}");
                std::string out_idx = idx.empty() ? generated_hero_idx(hero_no) : idx;
                HeroRow hero;
                hero.idx = out_idx;
                hero.hero_no = hero_no;
                hero.level = level > 0 ? level : 1;
                hero.grade_sno = grade_sno;
                hero.race_sno = race_sno;
                adb->upsert_hero(hero);
                ws_broadcast_session_push();
                return json_ok("{\"ok\":true,\"idx\":\"" + json_escape(out_idx) + "\"}");
            }
            if (path == "/web/api/gamedata/heroes" && method == "DELETE")
            {
                AccountDatabase *adb = account_db_manager().active_db();
                if (!adb)
                    return json_ok("{\"ok\":false,\"reason\":\"active account database not ready\"}");
                std::string idx = body_json_string(req.body, "idx", "");
                if (idx.empty()) return json_ok("{\"ok\":false,\"reason\":\"invalid idx\"}");
                adb->delete_hero(idx);
                ws_broadcast_session_push();
                return json_ok("{\"ok\":true}");
            }

            // ── 게임 데이터: item_etc ────────────────────────────────────────────
            if (path == "/web/api/gamedata/items" && method == "GET")
            {
                AccountDatabase *adb = account_db_manager().active_db();
                if (!adb)
                    return json_ok("[]");
                return json_ok(db_items_json(*adb));
            }
            if (path == "/web/api/gamedata/items" && (method == "POST" || method == "PATCH"))
            {
                AccountDatabase *adb = account_db_manager().active_db();
                if (!adb)
                    return json_ok("{\"ok\":false,\"reason\":\"active account database not ready\"}");
                int item_no = body_json_int(req.body, "itemNo", body_json_int(req.body, "item_no", 0));
                int cnt = body_json_int(req.body, "cnt", 0);
                if (item_no <= 0) return json_ok("{\"ok\":false,\"reason\":\"invalid itemNo\"}");
                adb->item_etc_set(item_no, cnt);
                ws_broadcast_session_push();
                return json_ok("{\"ok\":true}");
            }
            if (path == "/web/api/gamedata/items" && method == "DELETE")
            {
                AccountDatabase *adb = account_db_manager().active_db();
                if (!adb)
                    return json_ok("{\"ok\":false,\"reason\":\"active account database not ready\"}");
                int item_no = body_json_int(req.body, "itemNo", body_json_int(req.body, "item_no", 0));
                if (item_no <= 0) return json_ok("{\"ok\":false,\"reason\":\"invalid itemNo\"}");
                adb->item_etc_delete(item_no);
                ws_broadcast_session_push();
                return json_ok("{\"ok\":true}");
            }

            // ── 게임 데이터: settings ─────────────────────────────────────────────
            if (path == "/web/api/gamedata/settings" && method == "GET")
            {
                check_setup_initialized();
                const std::string game_server_url = ini::get("game_server_url", config().game_server_url);
                return json_ok("{\"proxy_enabled\":" + std::string(config().proxy_enabled ? "true" : "false") +
                    ",\"game_server_url\":\"" + json_escape(game_server_url) + "\"}");
            }
            if (path == "/web/api/gamedata/settings" && method == "POST")
            {
                check_setup_initialized();
                if (req.body.find("\"proxy_enabled\"") != std::string::npos)
                    config().proxy_enabled = body_json_bool(req.body, "proxy_enabled", config().proxy_enabled);
                std::string gurl = body_json_string(req.body, "game_server_url", "");
                if (!gurl.empty())
                {
                    config().game_server_url = gurl;
                    ini::set("game_server_url", gurl);
                }
                return json_ok("{\"ok\":true}");
            }

            // ── 파일 목록 ────────────────────────────────────────────────────────
            if (path.rfind("/web/api/files/list", 0) == 0 && method == "GET")
            {
                std::string prefix = decoded_query_value(path, "prefix");
                auto files = list_data_files(prefix);
                std::string body = "[";
                for (std::size_t i = 0; i < files.size(); ++i) {
                    if (i) body += ",";
                    body += "{\"path\":\"" + json_escape(files[i].first) + "\",\"bytes\":" + std::to_string(files[i].second) + "}";
                }
                return json_ok(body + "]");
            }

            // ── 파일 읽기 / 쓰기 ─────────────────────────────────────────────────
            if (path.rfind("/web/api/files", 0) == 0)
            {
                std::string rel = decoded_query_value(path, "path");
                if (method == "GET") {
                    std::string content = read_data_file(rel);
                    return HttpResponse{200, {{"Content-Type", "text/plain; charset=UTF-8"},
                                              {"Access-Control-Allow-Origin", "*"}}, content};
                }
                if (method == "POST") {
                    bool ok = write_data_file(rel, req.body);
                    return json_ok("{\"ok\":" + std::string(ok ? "true" : "false") + "}");
                }
            }

            // ── i18n ─────────────────────────────────────────────────────────────
            if (path == "/web/api/i18n" && method == "GET")
                return json_ok("{}");

            // ── 로고 이미지 ──────────────────────────────────────────────────────
            if (path == "/web/api/logo" && method == "GET")
            {
                if (auto img = offline_data().read("web/logo.png"))
                    return HttpResponse{200, {{"Content-Type", "image/png"}}, *img};
                return HttpResponse{404, {}, ""};
            }

            // ── 계정 선택 및 계정별 보유 데이터 ─────────────────────────────────
            if (path.rfind("/web/api/accounts", 0) == 0)
            {
                if (method == "GET" && path == "/web/api/accounts")
                    return account_admin_response(account_admin::list_accounts());

                const std::string prefix = "/web/api/accounts/";
                if (path.rfind(prefix, 0) == 0)
                {
                    const std::string rest = path.substr(prefix.size());
                    const auto slash = rest.find('/');
                    const std::string account_id = (slash == std::string::npos) ? rest : rest.substr(0, slash);
                    const std::string action = (slash == std::string::npos) ? "" : rest.substr(slash + 1);
                    const auto action_slash = action.find('/');
                    const std::string action_base = (action_slash == std::string::npos) ? action : action.substr(0, action_slash);
                    const std::string action_sub  = (action_slash == std::string::npos) ? "" : action.substr(action_slash + 1);

                    if (account_id.empty())
                        return json_ok("{\"error\":\"missing account_id\"}");

                    if (method == "GET" && action.empty())
                        return account_admin_response(account_admin::get_account(account_id));

                    if (method == "POST" && action == "select")
                        return account_admin_response(account_admin::select_account(account_id));

                    if (method == "PATCH" && action.empty())
                    {
                        const std::string nick = body_json_string(req.body, "nickname", "");
                        const std::string pid  = body_json_string(req.body, "player_id", "");
                        return account_admin_response(account_admin::update_identity(account_id, nick, pid));
                    }

                    if (action_base == "currencies")
                    {
                        if (method == "GET" && action_sub.empty())
                            return account_admin_response(account_admin::list_currencies(account_id));
                        if (method == "GET" && !action_sub.empty())
                        {
                            const int type = std::atoi(action_sub.c_str());
                            return account_admin_response(account_admin::get_currency(account_id, type));
                        }
                        if (method == "POST" && action_sub.empty())
                        {
                            const int type = body_json_int(req.body, "type", 0);
                            const std::int64_t value = body_json_int64(req.body, "value", 0);
                            return account_admin_response(account_admin::set_currency(account_id, type, value));
                        }
                        if (method == "DELETE" && !action_sub.empty())
                        {
                            const int type = std::atoi(action_sub.c_str());
                            return account_admin_response(account_admin::clear_currency(account_id, type));
                        }
                    }

                    if (action_base == "heroes")
                    {
                        if (method == "GET" && action_sub.empty())
                            return account_admin_response(account_admin::list_heroes(account_id));
                        if (method == "POST" && action_sub.empty())
                        {
                            const std::string idx = body_json_string(req.body, "idx", "");
                            const int hero_no     = body_json_int(req.body, "heroNo", 0);
                            const int level       = body_json_int(req.body, "level", 1);
                            const int grade_sno   = body_json_int(req.body, "gradeSno", 0);
                            const int race_sno    = body_json_int(req.body, "raceSno", 0);
                            return account_admin_response(account_admin::upsert_hero(account_id, idx, hero_no, level, grade_sno, race_sno));
                        }
                        if (method == "DELETE" && !action_sub.empty())
                            return account_admin_response(account_admin::delete_hero(account_id, action_sub));
                    }

                    if (action_base == "items")
                    {
                        if (method == "GET" && action_sub.empty())
                            return account_admin_response(account_admin::list_items(account_id));
                        if (method == "POST" && action_sub.empty())
                        {
                            const int item_no = body_json_int(req.body, "itemNo", 0);
                            const int cnt     = body_json_int(req.body, "cnt", 0);
                            return account_admin_response(account_admin::set_item(account_id, item_no, cnt));
                        }
                        if (method == "DELETE" && !action_sub.empty())
                        {
                            const int item_no = std::atoi(action_sub.c_str());
                            return account_admin_response(account_admin::delete_item(account_id, item_no));
                        }
                    }
                }

                return json_ok("{\"error\":\"not found\"}");
            }

            // ── setup ────────────────────────────────────────────────────────────
            if (path == "/web/api/setup/complete" && method == "POST")
            {
                ini::set("setup_complete", "true");
                ini::set("setup_completed_at_ms", std::to_string(unix_ms()));
                g_setup_complete = true;
                return json_ok("{\"ok\":true}");
            }
            if (path == "/web/api/setup/status" && method == "GET")
            {
                check_setup_initialized();
                ini::set("setup_last_seen_at_ms", std::to_string(unix_ms()));
                bool comp = g_setup_complete.load();
                std::string port_str = json_int_string_or_default(ini::get("server_port", ""), kServerListenPort);
                std::string url_str = ini::get("game_server_url", "http://127.0.0.1:9991");
                std::string adb_path_str = ini::get("adb_path", "");
                std::string first_started = json_int_string_or_default(ini::get("setup_first_started_at_ms", ""), 0);
                std::string last_seen = json_int_string_or_default(ini::get("setup_last_seen_at_ms", ""), 0);
                std::string completed_at = json_int_string_or_default(ini::get("setup_completed_at_ms", ""), 0);
                std::string account_profile = account_admin::active_account_id();

                std::string body = "{\"complete\":" + std::string(comp ? "true" : "false") + ",";
                body += "\"setup\":{";
                body += "\"setup_id\":\"default\",";
                body += "\"completed\":" + std::string(comp ? "1" : "0") + ",";
                body += "\"completed_at_ms\":" + completed_at + ",";
                body += "\"first_started_at_ms\":" + first_started + ",";
                body += "\"last_seen_at_ms\":" + last_seen + ",";
                body += "\"server_port\":" + port_str + ",";
                body += "\"game_server_url\":\"" + json_escape(url_str) + "\",";
                body += "\"adb_path\":\"" + json_escape(adb_path_str) + "\",";
                body += "\"adb_host_port\":5037,";
                body += "\"apk_package_name\":\"com.kakaogames.eversoul\",";
                body += "\"active_account_id\":\"" + json_escape(account_profile) + "\",";
                body += "\"setup_version\":1";
                body += "},\"steps\":[";

                std::vector<std::string> steps = {
                    "server_port", "server_url", "adb_path",
                    "adb_reverse", "cdn_scan", "default_account", "apk_account_page", "admin_ready"
                };

                for (size_t i = 0; i < steps.size(); ++i)
                {
                    if (i > 0) body += ",";
                    std::string key = steps[i];
                    std::string state = ini::get("setup_step_" + key, "pending");
                    std::string val = ini::get("setup_val_" + key, "{}");
                    body += "{\"setup_id\":\"default\",";
                    body += "\"step_key\":\"" + key + "\",";
                    body += "\"state\":\"" + state + "\",";
                    body += "\"value_json\":\"" + json_escape(val) + "\",";
                    body += "\"updated_at_ms\":0}";
                }
                body += "]}";
                return json_ok(body);
            }
            if (path == "/web/api/setup/step" && method == "POST")
            {
                std::string step_key = body_json_string(req.body, "step_key", "");
                std::string state = body_json_string(req.body, "state", "pending");
                std::string value_json = body_json_string(req.body, "value_json", "{}");

                if (!step_key.empty())
                {
                    ini::set("setup_step_" + step_key, state);
                    ini::set("setup_val_" + step_key, value_json);

                    if (step_key == "server_port")
                    {
                        int p = body_json_int(value_json, "port", 0);
                        if (p > 0) ini::set("server_port", std::to_string(p));
                    }
                    else if (step_key == "server_url")
                    {
                        std::string u = body_json_string(value_json, "url", "");
                        if (!u.empty()) ini::set("game_server_url", u);
                    }
                    else if (step_key == "adb_path")
                    {
                        std::string t = body_json_string(value_json, "target", "");
                        if (!t.empty()) ini::set("adb_path", t);
                    }
                }
                return json_ok("{\"ok\":true}");
            }
            if (path == "/web/api/setup/cdn-scan" && method == "POST")
            {
                std::string serial = body_json_string(req.body, "serial", "");
                if (serial.empty()) serial = adb_runner::serial();
                if (serial.empty())
                    return json_ok("{\"ok\":false,\"saved\":0,\"output\":\"no adb device connected\"}");

                static const std::string kVersion = "1.34.101";
                static const std::vector<std::string> kFiles = {
                    "catalog_eversoul.hash",
                    "catalog_eversoul.json",
                };
                static const std::vector<std::string> kSearchBases = {
                    "/sdcard/Android/data/com.kakaogames.eversoul/files/com.unity.addressables",
                    "/data/data/com.kakaogames.eversoul/files/com.unity.addressables",
                    "/data/data/com.kakaogames.eversoul/cache",
                    "/sdcard/Android/data/com.kakaogames.eversoul/cache",
                    "/sdcard/Android/data/com.kakaogames.eversoul/files",
                };

                namespace fs = std::filesystem;
                fs::path cdn_out = fs::path(config().data_dir) / "cdn_cache" / kVersion / "Android";
                fs::create_directories(cdn_out);

                std::string found_base;
                std::string probe_output;
                for (const auto &base : kSearchBases)
                {
                    std::string probe = adb_runner::pull_bytes(serial, base + "/" + kFiles[0], 8000);
                    const bool hit = !probe.empty() && probe.rfind("[", 0) != 0 && probe.size() >= 8;
                    probe_output += "probe " + base + ": " + (hit ? "ok\n" : "miss\n");
                    if (hit)
                    {
                        found_base = base;
                        break;
                    }
                }

                if (found_base.empty())
                {
                    std::string find_out = adb_runner::run_for_serial(serial,
                        {"shell", "find",
                         "/sdcard/Android/data/com.kakaogames.eversoul",
                         "/data/data/com.kakaogames.eversoul",
                         "-name", "catalog_eversoul.hash", "-maxdepth", "12"});
                    probe_output += "find: " + find_out + "\n";
                    std::istringstream ss(find_out);
                    std::string entry;
                    while (std::getline(ss, entry))
                    {
                        if (!entry.empty() && entry.back() == '\r') entry.pop_back();
                        if (entry.find("catalog_eversoul.hash") != std::string::npos)
                        {
                            std::size_t slash = entry.rfind('/');
                            if (slash != std::string::npos)
                                found_base = entry.substr(0, slash);
                            break;
                        }
                    }
                }

                if (found_base.empty())
                    return json_ok("{\"ok\":false,\"saved\":0,\"output\":\"" + json_escape(probe_output + "catalog_eversoul.hash not found on device") + "\"}");

                int saved = 0;
                std::string output = probe_output + "base: " + found_base + "\n";
                for (const auto &fname : kFiles)
                {
                    const int pull_ms = fname.find(".json") != std::string::npos ? 120000 : 15000;
                    std::string content = adb_runner::pull_bytes(serial, found_base + "/" + fname, pull_ms);
                    if (content.empty() || content.rfind("[", 0) == 0 || content.size() < 8)
                    {
                        output += fname + ": pull failed\n";
                        continue;
                    }
                    fs::path out_path = cdn_out / fname;
                    std::ofstream f(out_path, std::ios::binary);
                    f.write(content.data(), static_cast<std::streamsize>(content.size()));
                    f.close();
                    saved++;
                    output += fname + ": saved (" + std::to_string(content.size()) + " bytes)\n";
                }
                return json_ok("{\"ok\":" + std::string(saved > 0 ? "true" : "false") +
                               ",\"saved\":" + std::to_string(saved) +
                               ",\"output\":\"" + json_escape(output) + "\"}");
            }
            if (path == "/web/api/setup/reset" && method == "POST")
            {
                ini::set("setup_complete", "false");
                ini::set("setup_completed_at_ms", "0");
                g_setup_complete = false;

                std::vector<std::string> steps = {
                    "server_port", "server_url", "adb_path",
                    "adb_reverse", "cdn_scan", "default_account", "apk_account_page", "admin_ready"
                };
                for (const auto &key : steps)
                {
                    ini::set("setup_step_" + key, "pending");
                    ini::set("setup_val_" + key, "{}");
                }
                return json_ok("{\"ok\":true}");
            }

            return json_ok("{\"error\":\"not implemented\"}");
        }

        // /web/ 정적 파일 서빙.
        HttpResponse serve_web_static(const HttpRequest &req)
        {
            std::string file_path = req.path;
            if (file_path == "/web" || file_path == "/web/" || file_path == "/web/index.html")
                file_path = setup_complete_from_ini() ? "/web/index.html" : "/web/setup/index.html";
            else if (file_path == "/web/setup" || file_path == "/web/setup/")
                file_path = "/web/setup/index.html";

            // offline_data에서 읽기 (web/ prefix 제거)
            std::string key = file_path.substr(1); // leading '/' 제거
            if (auto content = offline_data().read(key))
            {
                std::string mt = mime_type(file_path);
                return HttpResponse{200, {{"Content-Type", mt},
                                          {"Cache-Control", "no-cache"}}, *content};
            }
            if (file_path == "/web/setup/index.html")
            {
                if (auto content = offline_data().read("web/setup.html"))
                    return HttpResponse{200, {{"Content-Type", "text/html; charset=UTF-8"},
                                              {"Cache-Control", "no-cache"}}, *content};
            }
            return HttpResponse{404, {{"Content-Type", "text/plain"}}, "Not Found"};
        }

    } // namespace

    HttpResponse route_request(uint64_t id, int fd, const HttpRequest &req)
    {
        // ── /web/ 라우팅: API 및 정적 파일 ────────────────────────────────────────
        if (req.path == "/" || req.path == "/web" || req.path.rfind("/web/", 0) == 0)
        {
            if (req.path.rfind("/web/api/", 0) == 0)
                return handle_web_api(id, fd, req);
            return serve_web_static(req);
        }

        // LIAPP anti-cheat (lockincomp.com) device-auth — posted right before country/get.
        // Offline it can't reach lockincomp -> game shows "시스템 초기화 실패". The captured
        // response's signature (fdbd8509) is constant across sessions, so we replay it
        // verbatim. Identify by path /sbaa479o or the obfuscated body keys (f39ad58*) in
        // case the path changes across versions. (fdbd8508 == fdbd850f in the capture, and
        // our static value keeps them equal.)
        if (req.path == "/sbaa479o" || req.body.find("f39ad58") != std::string::npos)
        {
            log_line(id, "MOCK", "LIAPP lockincomp device-auth (static replay)");
            return HttpResponse{200, {{"Content-Type", "application/json"}}, R"({"fdbd8507":"c6c4389e","fdbd8508":"77254158","fdbd8509":"5c6e481f27d101a560ea8d507c9c4dd0a3cddcaefabaf1f986dd93f38c749664137d29245aed0cf1ec8130b7cd9dac6f395d8efc84e3e51a7d1fa9e2e91c789cb2f9ddc14bf10d94a6cacad62decc3b8952f89b18c2105377dff98fa4c2a9f15389da042a63312e6fe92f3395f63f20db03b112bb3db4b10","fdbd850f":"77254158"})"};
        }

        if (req.path.rfind("/account-select", 0) == 0 ||
            req.path.rfind("/account_select.html", 0) == 0 ||
            req.path.rfind("/web/account_select.html", 0) == 0)
        {
            log_line(id, "MOCK", "account select page");
            if (auto content = offline_data().read("web/apk-account.html"))
                return HttpResponse{200, {{"Content-Type", "text/html; charset=UTF-8"},
                                          {"Cache-Control", "no-cache"}}, *content};
            return html_response(account_select_html());
        }

        if (req.path == "/favicon.ico")
        {
            return HttpResponse{204, {{"Content-Type", "image/x-icon"}}, ""};
        }

        if (req.path.rfind("/account-mode/set", 0) == 0)
        {
            const bool newbie = req.path.find("mode=newbie") != std::string::npos;
            set_account_mode(newbie ? AccountMode::Newbie : AccountMode::Full);
            const char *label = newbie ? "Newbie account" : "Full account";
            log_line(id, "MOCK", std::string("account mode selected ") + (newbie ? "newbie" : "full"));
            const std::string ok = agreement_ok_url();
            std::string body = std::string(R"(<!doctype html><html><head><meta name="viewport" content="width=device-width,initial-scale=1"><title>Account selected</title></head><body><main><h1>)") +
                               label +
                               R"(</h1><p>Returning to game...</p><p><a href=")" +
                               ok +
                               R"(">Continue</a></p></main><script>setTimeout(function(){location.replace(')" +
                               ok +
                               R"(');},150);</script></body></html>)";
            return html_response(body);
        }

        // socket.io (live-sea-chat) long-poll bootstrap over plain HTTP, before the
        // WebSocket upgrade. Path looks like "/socket.io/?EIO=4&transport=polling".
        if (req.path.rfind("/socket.io", 0) == 0)
        {
            std::string query;
            std::size_t q = req.path.find('?');
            if (q != std::string::npos)
                query = req.path.substr(q + 1);
            std::string body;
            if (socketio_poll_response(req.method, query, body))
            {
                log_line(id, "MOCK", "socket.io poll " + req.method + " -> " + body.substr(0, 32));
                // engine.io polling uses text/plain; the body is an engine.io packet.
                return HttpResponse{200, {{"Content-Type", "text/plain; charset=UTF-8"}}, body};
            }
        }

        if (req.path == "/api/tbl_enabled")
        {
            if (req.method == "POST")
                ini::set("tbl_hook_enabled", body_json_bool(req.body, "enabled", tbl_hook_enabled()) ? "true" : "false");
            log_line(id, "MOCK", std::string("tbl_enabled=") + (tbl_hook_enabled() ? "true" : "false"));
            return json_ok(tbl_hook_enabled_json());
        }

        if (req.path.find("/service/v3/util/country/get") != std::string::npos)
        {
            const std::string country = configured_country_code();
            log_line(id, "MOCK", "country=" + country + " region=" + configured_client_region());
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}},
                                "{\"country\":\"" + json_escape(country) + "\"}"};
        }

        if (req.path.rfind("/v2/client/getList", 0) == 0)
        {
            log_line(id, "MOCK", "kbs /v2/client/getList -> []");
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, "[]"};
        }

        if (req.path.rfind("/v2/client/end", 0) == 0)
        {
            log_line(id, "MOCK", "kbs /v2/client/end ok");
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, "{}"};
        }

        if (req.path.rfind("/v2/appGroup", 0) == 0)
        {
            log_line(id, "MOCK", "appGroup esoul_service");
            const std::string country = configured_country_code();
            std::string body = std::string(R"({"status":200,"desc":"OK","content":{"timestamp":)") +
                               std::to_string(unix_ms()) +
                               R"(,"apps":[{"notices":[],"appId":"743491","dataMap":{"countryCodeList":"kr,us,gb,de,fr,ca,au,nz,sg,aq,tw,mo,kp,jp,cn,hk,af,as,bd,bn,bt,cc,ck,cx,fj,fm,gu,hm,id,in,io,kg,kh,ki,kz,la,lk,mh,mm,mn,mp,mv,my,nc,nf,np,nr,nu,pf,pg,ph,pk,pn,pw,sb,th,tj,tk,tl,tm,to,tv,vn,vu,wf,ws","region":")" +
                               json_escape(country) + "\"}}]}}";
            return HttpResponse{200,
                                {{"Content-Type", "application/json;charset=UTF-8"},
                                 {"sig", infodesk_sig(body)}},
                                body};
        }

        if (req.path.rfind("/v2/app/server/maintenance", 0) == 0)
        {
            log_line(id, "MOCK", "maintenance open");
            std::string body = std::string(R"({"status":200,"desc":"OK","content":{"timestamp":)") +
                               std::to_string(unix_ms()) +
                               R"(,"isWhitelist":false,"notices":[],"maintenance":null}})";
            return HttpResponse{200,
                                {{"Content-Type", "application/json;charset=UTF-8"},
                                 {"sig", infodesk_sig(body)}},
                                body};
        }

        if (req.path.rfind("/v2/app", 0) == 0)
        {
            const std::string country = configured_country_code();
            log_line(id, "MOCK", "app infodesk gameServerAddr=" + config().game_server_url + " region=" + configured_client_region());
            std::string body = std::string(R"({"status":200,"desc":"OK","content":{"supportedFeatures":["urgentNotice","maintenance","push","delivery","promotion","coupon","notice","leaderboard","community"],"marketUrl":"market://details?id=com.kakaogames.eversoul","publicKeyMap":{},"secondaryPwOption":null,"capriAppOption":{"ageLimit":0,"lazyAgeAuth":null,"appType":"kakaogame","appCategory":"role","ageAuthLevel":"NONE"},"isTubeApp":false,"verRecent":"1.34.101","appOption":{"gispPaymentUrl":"https://gisp-payment-api.kakaogames.com","rttCheckUrls":"{\"urls\":[\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v3\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v3\",\"https://rttcheck-us-east-1.kakaogames.io?type=v1\",\"https://rttcheck-us-east-1.kakaogames.io?type=v2\",\"https://rttcheck-us-east-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v3\",\"https://rttcheck-us-west-1.kakaogames.io?type=v1\",\"https://rttcheck-us-west-1.kakaogames.io?type=v2\",\"https://rttcheck-us-west-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v3\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v3\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v1\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v2\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v3\",\"https://gc-infodesk-zinny3.kakaogames.com/v2/app?appId=103815&appVer=1.0.0&market=googlePlay&sdkVer=3.18.0&os=android&lang=en\",\"https://gc-infodesk-zinny3.kakaogames.com/v2/app?appId=103815&appVer=1.0.0&market=googlePlay&sdkVer=3.18.0&os=android&lang=en\"]}","cdnAddr":"https://patch.esoul.kakaogames.com/Live","agreementUrl":"http://127.0.0.1:9991/account-select","useGoogleGame":"false","CUSURL":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","CUSURL_TW":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","CSURL":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","CSURL_TW":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","isMaintenance":"0","privacyPolicyUrl":"https://web-data-cdn.kakaogames.com/real/www/html/terms/index.html?service=S0018&type=T003&country=kr&lang=ko","rttSampleRate":"50","manualRequestReview":"1","termsOfUseUrl":"https://web-data-game.kakaocdn.net/real/www/html/terms/index.html?service=S0001&type=T001&country=kr&lang=ko","ShowGachaOddsView":"https://cafe.daum.net/Eversoul/aCeo/20","kbsHost":"http://127.0.0.1:9991","userAgeCheck_appStore":"13","userAgeCheck_googleplay":"13","NoticeView":"https://kakaogames.oqupie.com/portals/2152/customer-news/2546","gameServerAddr":)") +
                               "\"" + json_escape(config().game_server_url) + "\"" +
                               R"(,"modTime":1661830306343,"daumCafeUrl":"https://m.cafe.daum.net/Eversoul/_boards?type=notice","RefundWebUrl":"https://kakaogames.oqupie.com/portals/1801/articles/41135"},"notices":[],"traceSampleRate":100,"isWhitelist":false,"svcStatus":"open","supportedIdpCodes":["kakaocapri","facebook","google","siwa","zd3"],"serverConnectionType":"https","appVerStatus":"noNeedToUpdate","publisher":{"privacyUrl":"https://www.kakao.com/ko/privacy","privacySummaryUrl":"https://gameevent.kakao.com/supports/terms/3?tabbar=false","noticeUrl2":"https://cus-zinny3.kakaogames.com/view/notice","agreementUrl":"http://127.0.0.1:9991/account-select","servicePolicyUrl":"https://gameevent.kakao.com/terms/operation","termsUrl":"https://gameevent.kakao.com/supports/terms/1","kakaogameCommunityUrl":"https://playgame.kakao.com/bridge/auth/zinny","termsSummaryUrl":"https://gameevent.kakao.com/supports/terms/1?tabbar=false","eventWallUrl":"https://cus-zinny3.kakaogames.com/view/event","noticeUrl":"https://cus-zinny3.kakaogames.com/notice","customerServiceUrl":"https://cus-zinny3.kakaogames.com/support/list","eventWinnerUrl":"http://event-winner.kakaogames.com/event","policyVer":"1.0","publisherId":"kakao","modTime":1651813742832},"sdk":{"heartbeatInterval":120000,"PercentOfSendingAPICallLog":0,"stopSendGeoDNS":"y","snsShareUrl":"https://invite.kakaogame.com","zrtiOSError":"{\"kakaocapri\":[500,502,503,-1,-7,-9]}","aesEncryptKey":"djfdskj12328438djdgjcjeejhdew15","aesEncryptIV":"7gnfn7f96rnanmt1s5iaa3kdruhuneu","zrtAOSError":"{\"kakaocapri\":[500,502,503,-1,-7,-9],\"google\":[8]}","zrtWindowsError":"{\"kakaocapri\":[500,502,503,-1,-7,-9]}","snsShareHostUrl":"https://invite.kakaogame.com/host/main","invitationUrl":"https://webinvite.nzincorp.com","csUrl":"http://customer.kakaogames.com:18080","platformVersion":3,"sessionTimeout":10000,"registerDeviceUrl":"https://device-enrollment.kakaogames.com/main","customDialogModels":["SM-T976N"],"unregisterAgreementUrl":"https://web-data-cdn.kakaogames.com/real/www/html/terms/index.html?service=S0001&type=T016","snsShareGuestUrl":"https://invite.kakaogame.com/guest/reward"},"deviceSecurityOption":null,"onlineNotifications":[],"timestamp":)" +
                               std::to_string(unix_ms()) + R"(}})";
            replace_all(body, "country=kr", "country=" + country);
            return HttpResponse{200,
                                {{"Content-Type", "application/json;charset=UTF-8"},
                                 {"sig", infodesk_sig(body)}},
                                body};
        }

        if (req.path.find("/service/v4/device/accessToken/create") != std::string::npos)
        {
            log_line(id, "MOCK", "device access token");
            std::string token =
                "offline-zat-" + std::to_string(unix_ms()) + "-" +
                body_json_string(req.body, "deviceId", "device");
            std::string body = std::string(R"({"expiryTime":)") +
                               std::to_string(unix_ms() + 3600000) +
                               R"(,"accessToken":")" + json_escape(token) + R"("})";
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, body};
        }

        if (req.path.find("/service/v3/agreement/getForLogin") != std::string::npos)
        {
            std::string idp_id = body_json_string(req.body, "idpId", body_json_string(req.body, "deviceId", ""));
            std::string app_id = "743491";
            std::string country = body_json_string(req.body, "country", "kr");
            std::string lang = body_json_string(req.body, "lang", "ko");
            const bool newbie = is_newbie_mode();
            const bool auto_login = req.headers.find("zat") != req.headers.end() ||
                                    req.headers.find("playerId") != req.headers.end();
            const char *first = auto_login ? "n" : "y";
            log_line(id, "MOCK", std::string(auto_login ? "agreement accepted mode=" : "agreement popup mode=") + (newbie ? "newbie" : "full") + " idpId=" + idp_id);
            std::string agreement = auto_login
                                        ? R"({"N002":"y","E006":"y","N003":"y","E001":"y","AN001":"y","E002":"y","AN002":"y"})"
                                        : "null";
            std::string app_name = "Eversoul_KR";
            std::string body = std::string(R"({"country":")") + json_escape(country) +
                               R"(","agreement":)" + agreement +
                               R"(,"partnerName":"주식회사 카카오게임즈","idpId":")" +
                               json_escape(idp_id) +
                               R"(","appName":")" + json_escape(app_name) +
                               R"(","adAgreementStatus":"n","policyApplyTime":null,"agreementPopup":")" +
                               first + R"(","kakaoSyncAgreementGetSet":"n","firstAgreement":")" +
                               first + R"(","platform":"mobile","informationSecurityCountry":null,"kakaoSyncStatus":"off","plusFriendStatusInfo":null,"appId":")" +
                               json_escape(app_id) +
                               R"(","context":"login","partnerId":825,"lang":")" + json_escape(lang) +
                               R"(","idpCode":"zd3","kakaogameSdkVer":"3.0"})";
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, body};
        }

        if (req.path.find("/service/v3/log/writeSdkBasicLog") != std::string::npos)
        {
            log_line(id, "MOCK", "sdk log accepted");
            std::string body = std::string(R"({"logId":)") + std::to_string(unix_ms()) + R"(})";
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, body};
        }

        if (req.path.find("/service/v3/tracer/sdk") != std::string::npos)
        {
            log_line(id, "MOCK", "tracer/sdk accepted");
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, R"({"result":"ok"})"};
        }

        if (req.path.find("/service/v3/player/getUUID") != std::string::npos)
        {
            log_line(id, "MOCK", "player/getUUID zinnyUuid");
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, R"({"zinnyUuid":"900cf1fd-2347-4299-a8f9-ffa06c76e62b"})"};
        }

        if (req.path.find("/service/v3/player/getLocal") != std::string::npos)
        {
            return mock_local_player_response(id, req);
        }

        if (req.path.find("/service/v3/promotion/checkUrlPromotion") != std::string::npos)
        {
            log_line(id, "MOCK", "promotion none");
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, R"({"result":"NO_PROMOTION"})"};
        }

        if (req.path.find("/service/v4/auth/loginDevice") != std::string::npos)
        {
            return mock_login_data_response(id, "loginDevice", req, false);
        }

        // Guest/device login over HTTP (serverConnectionType=https path). The custom-UI
        // guest login posts auth://v3/auth/loginZinnyDevice3 -> /service/v3/auth/loginZinnyDevice3.
        // Without this it falls through to the generic /service/ "{}" reply, which lacks the
        // zat/player content handleLoginResult needs -> "accessToken is invalid" (406) offline.
        if (req.path.find("loginZinnyDevice") != std::string::npos ||
            req.path.find("/auth/loginZinny") != std::string::npos)
        {
            return mock_login_data_response(id, "loginZinnyDevice3", req, false);
        }

        if (req.path.find("/service/v3/zat/refresh") != std::string::npos ||
            req.path.find("/service/v3/zat/refreshToken") != std::string::npos)
        {
            return mock_zat_refresh_response(id, "zat/refresh");
        }

        if (req.path.find("/service/v3/zat/login") != std::string::npos)
        {
            return mock_login_data_response(id, "zat/login", req, false);
        }

        if (req.path.find("/service/v3/zat/issueToken") != std::string::npos ||
            req.path.find("/service/v4/zat/issueToken") != std::string::npos)
        {
            return mock_zat_refresh_response(id, "zat/issueToken");
        }

        // Generic fallback for any other Kakao OpenApi housekeeping call (push/token/register,
        // player/update, agreement/set, ...). Return an empty success object so the SDK treats it
        // as OK instead of hitting the 404 path (which makes it throw / log errors).
        if (req.path.rfind("/service/", 0) == 0)
        {
            log_line(id, "MOCK", "kakao service ok " + req.path);
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, R"({})"};
        }

        if (req.path.rfind("/Live/", 0) == 0 && req.method == "GET")
        {
            if (req.path.find("/Table/const_data_version.json") != std::string::npos)
            {
                log_net_line(id, "CDN", "GET /Live/const_data_version → version=4725 action=0");
                return HttpResponse{200, {{"Content-Type", "application/json"}}, R"({"version":4725,"action":0})"};
            }
            {
                namespace fs = std::filesystem;
                fs::path cdn_dir = fs::path(config().data_dir) / "cdn_cache";
                std::string rel = req.path.substr(6); // strip "/Live/"
                fs::path file_path = cdn_dir / rel;
                if (fs::exists(file_path) && fs::is_regular_file(file_path))
                {
                    std::ifstream f(file_path, std::ios::binary);
                    std::string content((std::istreambuf_iterator<char>(f)), std::istreambuf_iterator<char>());
                    std::string ct = rel.find(".json") != std::string::npos
                        ? "application/json"
                        : "application/octet-stream";
                    log_net_line(id, "CDN", "GET " + req.path + " → " + std::to_string(content.size()) + "B cdn_cache");
                    return HttpResponse{200, {{"Content-Type", ct}}, content};
                }
            }
            log_net_line(id, "CDN", "GET " + req.path + " → 404");
            return HttpResponse{404, {{"Content-Type", "application/json"}}, R"({"error":"not found"})"};
        }

        if (req.path == "/Login")
        {
            if (config().prefer_fixtures)
            {
                const bool newbie = is_newbie_mode();
                if (auto fx = fixture_store().payload(req.path, newbie))
                {
                    log_line(id, "MOCK_GAME", std::string("/Login ") + (newbie ? "newbie" : "existing-account") + " fixture protoBytes=" + std::to_string(fx->size()));
                    return game_binary_response(req, *fx);
                }
            }
            // fixture 누락 시 폴백용 동적 Login 처리; 성장 계정은 위의 HAR fixture 우선.
            std::string payload = request_payload(req);
            std::string player_id = pb_get_string(payload, 1, kDefaultPlayerId);
            int32_t type = pb_get_int32(payload, 3, 0);
            if (type == 0)
                type = 5;
            std::string response = login_payload(player_id, type);
            log_line(id, "MOCK_GAME", "/Login playerId=" + player_id + " protoBytes=" + std::to_string(response.size()));
            return game_binary_response(req, response);
        }

        if (req.path == "/ServerTime")
        {
            // Always dynamic: the client needs the current wall-clock, not a frozen
            // captured timestamp.
            std::string response = server_time_payload();
            log_line(id, "MOCK_GAME", "/ServerTime");
            return game_binary_response(req, response);
        }

        const bool newbie_mode = is_newbie_mode();

        if (auto response = dispatch_dynamic_game_endpoint(id, req, newbie_mode, sync_db_currencies_to_fixture))
            return *response;

        if (config().prefer_fixtures && !newbie_mode && is_disabled_tutorial_endpoint(req.path))
        {
            log_line(id, "MOCK_GAME", req.path + " tutorial disabled for developed-account mode");
            return game_binary_response(req, {});
        }
        if (config().prefer_fixtures && !(newbie_mode && is_stateful_endpoint(req.path)))
        {
            if (auto fx = fixture_store().payload(req.path, newbie_mode))
            {
                log_line(id, "MOCK_GAME", req.path + (newbie_mode ? " newbie" : " existing-account") + " fixture protoBytes=" + std::to_string(fx->size()));
                return game_binary_response(req, *fx);
            }
        }

        // Real captured responses from a login->tutorial session (table 4725, self-consistent).
        // Highest fidelity; takes priority over the older hand-built/harvested fixtures below.
        // Tutorial endpoints are disabled above; this fallback is only for endpoints
        // absent from the editable JSON fixture store.
        std::string session_payload;
        if (!(newbie_mode && is_stateful_endpoint(req.path)) &&
            session_harvested_payload(req.path, session_payload))
        {
            log_line(id, "MOCK_GAME", req.path + " session protoBytes=" + std::to_string(session_payload.size()));
            return game_binary_response(req, session_payload);
        }

        std::string harvested_payload;
        if (!(newbie_mode && is_stateful_endpoint(req.path)) &&
            harvested_game_payload(req.path, harvested_payload))
        {
            log_line(id, "MOCK_GAME", req.path + " harvested protoBytes=" + std::to_string(harvested_payload.size()));
            return game_binary_response(req, harvested_payload);
        }

        if (is_empty_game_endpoint(req.path))
        {
            log_line(id, "MOCK_GAME", req.path + " empty proto");
            return game_binary_response(req, {});
        }

        if (!config().proxy_enabled)
        {
            return HttpResponse{404, {{"Content-Type", "application/json;charset=UTF-8"}}, R"({"error":"no mock route","hint":"run with --proxy to forward unknown routes"})"};
        }

        {
            HttpResponse resp = proxy_request(id, req);
            if (resp.status == 200 && resp.body.size() > 8 && req.path.size() > 1)
            {
                std::string ep = req.path.substr(1);
                std::string report_rel = "report_API/" + ep + ".json";
                if (is_stateful_endpoint(req.path) || !offline_data().read(report_rel))
                {
                    write_data_file(report_rel, resp.body.substr(8));
                    log_line(id, "HARVEST", "report_API/" + ep + ".json saved (" + std::to_string(resp.body.size() - 8) + "B)");
                }
            }
            return resp;
        }
    }


} // namespace eversoul
