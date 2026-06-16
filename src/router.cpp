// router.cpp — maps request paths to mock/proxy responses.
#include "router.hpp"

#include "account_db.hpp"
#include "common.hpp"
#include "crypto.hpp"
#include "fixture_store.hpp"
#include "log.hpp"
#include "offline_data.hpp"
#include "orm/storage.hpp"
#include "payloads.hpp"
#include "platform.hpp"
#include "protobuf.hpp"
#include "proxy.hpp"
#include "sse_log.hpp"
#include "util.hpp"
#include "ws_session.hpp"
#include "adb_runner.hpp"
#include "logcat_process.hpp"

#include <algorithm>
#include <atomic>
#include <cctype>
#include <chrono>
#include <filesystem>
#include <fstream>
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
            return orm::kv_get("account_mode", "full") == "newbie" ? AccountMode::Newbie : AccountMode::Full;
        }

        bool is_newbie_mode()
        {
            return current_account_mode() == AccountMode::Newbie;
        }

        bool set_account_mode(AccountMode mode)
        {
            (void)orm::ensure_ready(config().data_dir);
            if (mode == AccountMode::Newbie)
            {
                if (orm::kv_get("newbie_initialized", "") != "1")
                {
                    if (orm::reseed_from_profile(config().data_dir, "responses_newbie"))
                    {
                        orm::kv_set("newbie_initialized", "1");
                    }
                    else
                    {
                        log_line(0, "ORM", "newbie reseed failed; keeping existing DB state");
                    }
                }
                orm::kv_set("account_mode", "newbie");
            }
            else
            {
                orm::kv_set("account_mode", "full");
            }
            return true;
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

        // Endpoints whose response echoes the request (nickname, tutorialNo, formation,
        // story/stage no, content/dungeon no, hero level) and therefore MUST be answered by
        // the dynamic db::/inline handlers below — never shadowed by a single-capture static
        // fixture (one capture can only ever return one value, which deadlocks the tutorial
        // state machine when the client sends a different value next call). Scoped to newbie
        // mode at the call site so developed-account HAR replay is unaffected.
        // Reward/gacha/list endpoints are deliberately NOT here: their captured fixtures are
        // higher fidelity than the hand-built handlers for replay.
        bool is_stateful_endpoint(const std::string &path)
        {
            static const std::vector<std::string> kStateful = {
                "/UserInfo",
                "/TutorialList",
                "/TutorialActive",
                "/GachaHeroTutorialFix",
                "/GachaHeroTutorial",
                "/UserNicknameChange",
                "/FormationSave",
                "/StoryClear",
                "/StageClear",
                "/AutoHuntOpen",
                "/AutoHuntReceive",
                "/DungeonClear",
                "/DungeonEnter",
                "/DungeonInfoUpdate",
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
#ifndef __ANDROID__
        std::atomic<bool> g_setup_complete{false};
        std::atomic<int64_t> g_started_at{0};
#endif

    } // namespace

#ifndef __ANDROID__
    // ─── /web/ 헬퍼 ─────────────────────────────────────────────────────────────

    namespace
    {
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
        std::vector<std::string> parse_adb_devices(const std::string &output)
        {
            std::vector<std::string> result;
            std::istringstream ss(output);
            std::string line;
            while (std::getline(ss, line))
            {
                if (line.empty() || line.rfind("List of devices", 0) == 0) continue;
                std::istringstream ls(line);
                std::string serial, status;
                ls >> serial >> status;
                if (!serial.empty() && status == "device")
                    result.push_back(serial);
            }
            return result;
        }

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

        // 오프라인 데이터 디렉토리의 파일 목록 반환.
        std::vector<std::pair<std::string, std::size_t>> list_data_files(const std::string &prefix)
        {
            std::vector<std::pair<std::string, std::size_t>> result;
            namespace fs = std::filesystem;
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
        std::string read_data_file(const std::string &rel_path)
        {
            namespace fs = std::filesystem;
            fs::path full = fs::path(config().data_dir) / rel_path;
            std::ifstream f(full, std::ios::binary);
            if (!f) return "";
            return std::string(std::istreambuf_iterator<char>(f), {});
        }

        // 데이터 파일 쓰기.
        bool write_data_file(const std::string &rel_path, const std::string &content)
        {
            namespace fs = std::filesystem;
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
                int64_t sat = g_started_at.load();
                if (sat == 0) { sat = (int64_t)(unix_ms() / 1000); g_started_at.store(sat); }
                std::string db_path = orm::opened_path();
                int db_tables = 0;
                // 테이블 수: ORM 알려진 테이블 목록 크기로 추정
                static const char *kTables[] = {
                    "currencies","heroes","hero_reps","item_etcs","item_equips",
                    "hero_equip_slots","formations","spirit_trees","hero_options",
                    "challenge_modes","stages","stories","tutorials","dungeons","kv"
                };
                db_tables = sizeof(kTables) / sizeof(kTables[0]);
                std::string body = "{\"port\":" + std::to_string(kServerListenPort) +
                    ",\"proxy_enabled\":" + (config().proxy_enabled ? "true" : "false") +
                    ",\"game_server_url\":\"" + json_escape(config().game_server_url) + "\"" +
                    ",\"ws_server_url\":\"\"" +
                    ",\"data_dir\":\"" + json_escape(config().data_dir) + "\"" +
                    ",\"fixture_count\":" + std::to_string(fixture_store().size()) +
                    ",\"fixture_errors\":" + std::to_string(fixture_store().errors().size()) +
                    ",\"db_tables\":" + std::to_string(db_tables) +
                    ",\"db_path\":\"" + json_escape(db_path) + "\"" +
                    ",\"lang\":\"" + json_escape(orm::kv_get("lang", "ko")) + "\"" +
                    ",\"request_count\":" + std::to_string(request_id().load()) +
                    ",\"started_at\":" + std::to_string(sat) + "}";
                return json_ok(body);
            }

            // ── 설정 변경 ────────────────────────────────────────────────────────
            if (path == "/web/api/config" && method == "POST")
            {
                if (req.body.find("\"proxy_enabled\"") != std::string::npos)
                    config().proxy_enabled = body_json_string(req.body, "proxy_enabled", "false") == "true" ||
                                             req.body.find("\"proxy_enabled\":true") != std::string::npos;
                std::string gurl = body_json_string(req.body, "game_server_url", "");
                if (!gurl.empty()) config().game_server_url = gurl;
                std::string lang = body_json_string(req.body, "lang", "");
                if (!lang.empty()) orm::kv_set("lang", lang);
                return json_ok("{\"ok\":true}");
            }

            // ── 헬스체크 ─────────────────────────────────────────────────────────
            if (path == "/web/api/health" && method == "GET")
            {
                bool db_ok = !orm::opened_path().empty();
                bool fix_ok = fixture_store().loaded();
                std::string adb_path = adb_runner::adb_path();
                bool adb_ok = !adb_path.empty();
                std::string body = "[";
                body += "{\"name\":\"Game Server\",\"status\":\"ok\",\"detail\":\"" + json_escape(config().game_server_url) + "\"}";
                body += ",{\"name\":\"Database\",\"status\":\"" + std::string(db_ok ? "ok" : "fail") + "\",\"detail\":\"" + json_escape(orm::opened_path()) + "\"}";
                body += ",{\"name\":\"Fixtures\",\"status\":\"" + std::string(fix_ok ? (fixture_store().errors().empty() ? "ok" : "warn") : "fail") + "\",\"detail\":\"" + std::to_string(fixture_store().size()) + " loaded\"}";
                body += ",{\"name\":\"ADB\",\"status\":\"" + std::string(adb_ok ? "ok" : "warn") + "\",\"detail\":\"" + json_escape(adb_path) + "\"}";
                body += "]";
                return json_ok(body);
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
                adb_runner::run({"logcat", "-c"});
                return json_ok("{\"ok\":true}");
            }

            // ── DB 테이블 목록 ───────────────────────────────────────────────────
            if (path == "/web/api/db/tables" && method == "GET")
            {
                static const std::vector<std::pair<const char *, const char *>> kTbl = {
                    {"currencies", nullptr}, {"heroes", nullptr}, {"hero_reps", nullptr},
                    {"item_etcs", nullptr}, {"item_equips", nullptr}, {"hero_equip_slots", nullptr},
                    {"formations", nullptr}, {"spirit_trees", nullptr}, {"hero_options", nullptr},
                    {"challenge_modes", nullptr}, {"stages", nullptr}, {"stories", nullptr},
                    {"tutorials", nullptr}, {"dungeons", nullptr}, {"kv", nullptr}
                };
                std::string body = "[";
                bool first = true;
                for (const auto &[name, _] : kTbl)
                {
                    int rows = 0;
                    try { rows = orm::row_count(name); } catch (...) {}
                    if (!first) body += ",";
                    body += "{\"name\":\"" + std::string(name) + "\",\"rows\":" + std::to_string(rows) + "}";
                    first = false;
                }
                body += "]";
                return json_ok(body);
            }

            // ── DB 테이블 데이터 ─────────────────────────────────────────────────
            if (path.rfind("/web/api/db/table/", 0) == 0 && method == "GET")
            {
                return json_ok("{\"columns\":[],\"rows\":[],\"note\":\"raw table dump not implemented\"}");
            }

            // ── DB 스키마 ────────────────────────────────────────────────────────
            if (path.rfind("/web/api/db/schema/", 0) == 0 && method == "GET")
            {
                return json_ok("{\"columns\":[],\"ddl\":\"\",\"note\":\"schema not implemented\"}");
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
                std::string content = read_data_file(rel);
                return HttpResponse{200, {{"Content-Type", "text/plain; charset=UTF-8"},
                                          {"Access-Control-Allow-Origin", "*"}}, content};
            }

            // ── ADB 포트 ─────────────────────────────────────────────────────────
            if (path == "/web/api/adb/port" && method == "GET")
            {
                std::string port = orm::kv_get("adb_port", "");
                return json_ok("{\"port\":\"" + json_escape(port) + "\"}");
            }
            if (path == "/web/api/adb/port" && method == "POST")
            {
                std::string port = body_json_string(req.body, "port", "");
                if (!port.empty()) orm::kv_set("adb_port", port);
                // serial도 갱신
                std::string target = "127.0.0.1:" + port;
                adb_runner::set_serial(target);
                return json_ok("{\"ok\":true}");
            }

            // ── ADB probe (connect + 기기 확인) ──────────────────────────────────
            if (path == "/web/api/adb/probe" && method == "POST")
            {
                std::string target = body_json_string(req.body, "target", "");
                // adb connect
                std::string conn = adb_runner::run({"connect", target});
                bool connected = conn.find("connected") != std::string::npos;
                bool eversoul = false, rooted = false, adb_root = false;
                if (connected)
                {
                    adb_runner::set_serial(target);
                    std::string pkg = adb_runner::run({"shell", "pm", "list", "packages", "com.kakaogames.eversoul"});
                    eversoul = pkg.find("com.kakaogames.eversoul") != std::string::npos;
                    std::string su_r = adb_runner::run({"shell", "su", "-c", "id"});
                    rooted = su_r.find("uid=0") != std::string::npos;
                    std::string ar = adb_runner::run({"root"});
                    adb_root = ar.find("restarting") != std::string::npos || ar.find("already running as root") != std::string::npos;
                }
                std::string body = "{\"connected\":" + std::string(connected ? "true" : "false") +
                    ",\"eversoul\":" + (eversoul ? "true" : "false") +
                    ",\"rooted\":" + (rooted ? "true" : "false") +
                    ",\"adb_root\":" + (adb_root ? "true" : "false") + "}";
                return json_ok(body);
            }

            // ── 인젝터: 기기 목록 ────────────────────────────────────────────────
            if (path == "/web/api/injector/devices" && method == "GET")
            {
                std::string out = adb_runner::run({"devices"});
                auto devs = parse_adb_devices(out);
                return json_ok("{\"devices\":" + json_str_array(devs) + "}");
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
                    std::vector<std::string> args = {"-s", serial, "shell", "pm", "list", "packages", "com.kakaogames.eversoul"};
                    pkg = adb_runner::run(args);
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
                std::string out = adb_runner::run({"connect", target});
                bool ok = out.find("connected") != std::string::npos;
                if (ok) adb_runner::set_serial(target);
                return json_ok("{\"ok\":" + std::string(ok ? "true" : "false") +
                    ",\"output\":\"" + json_escape(out) + "\"}");
            }

            // ── 인젝터: 게임 시작 (am start) ─────────────────────────────────────
            if (path == "/web/api/injector/run" && method == "POST")
            {
                std::string serial = body_json_string(req.body, "serial", adb_runner::serial());
                if (!serial.empty()) adb_runner::set_serial(serial);
                std::vector<std::string> args = {"shell", "am", "start",
                    "-n", "com.kakaogames.eversoul/com.kakaogames.eversoul.unity.UnityPlayerActivity"};
                std::string out = adb_runner::run(args);
                bool ok = out.find("Error") == std::string::npos;
                return json_ok("{\"ok\":" + std::string(ok ? "true" : "false") +
                    ",\"output\":\"" + json_escape(out) + "\"}");
            }

            // ── 인젝터: 게임 중지 ─────────────────────────────────────────────────
            if (path == "/web/api/injector/stop" && method == "POST")
            {
                std::string out = adb_runner::run({"shell", "am", "force-stop", "com.kakaogames.eversoul"});
                return json_ok("{\"ok\":true,\"output\":\"" + json_escape(out) + "\"}");
            }

            // ── 인젝터: 상태 ─────────────────────────────────────────────────────
            if (path == "/web/api/injector/status" && method == "GET")
            {
                return json_ok("{\"running\":false}");
            }

            // ── 인젝터: ADB 명령 ─────────────────────────────────────────────────
            if (path == "/web/api/injector/adb" && method == "POST")
            {
                std::string cmd = body_json_string(req.body, "cmd", "");
                std::vector<std::string> args;
                std::istringstream ss(cmd);
                std::string tok;
                while (ss >> tok) args.push_back(tok);
                std::string out = adb_runner::run(args);
                return json_ok("{\"ok\":true,\"output\":\"" + json_escape(out) + "\"}");
            }

            // ── 게임 데이터: summary ──────────────────────────────────────────────
            if (path == "/web/api/gamedata/summary" && method == "GET")
            {
                int64_t gold = 0, crystal = 0;
                int hero_count = 0;
                try {
                    for (const auto &c : orm::currencies()) {
                        if (c.type == 1) gold = c.value;
                        if (c.type == 2) crystal = c.value;
                    }
                    hero_count = (int)orm::heroes().size();
                } catch (...) {}
                return json_ok("{\"gold\":" + std::to_string(gold) +
                    ",\"crystal\":" + std::to_string(crystal) +
                    ",\"hero_count\":" + std::to_string(hero_count) + "}");
            }

            // ── 게임 데이터: userinfo ─────────────────────────────────────────────
            if (path == "/web/api/gamedata/userinfo" && method == "GET")
            {
                std::string nick = orm::kv_get("nickname", "offline");
                int level = 0; int64_t gold = 0, crystal = 0;
                try {
                    for (const auto &c : orm::currencies()) {
                        if (c.type == 1) gold = c.value;
                        if (c.type == 2) crystal = c.value;
                    }
                } catch (...) {}
                return json_ok("{\"nickname\":\"" + json_escape(nick) + "\"" +
                    ",\"level\":" + std::to_string(level) +
                    ",\"gold\":" + std::to_string(gold) +
                    ",\"crystal\":" + std::to_string(crystal) + "}");
            }
            if (path == "/web/api/gamedata/userinfo" && method == "POST")
            {
                std::string nick = body_json_string(req.body, "nickname", "");
                if (!nick.empty()) { orm::kv_set("nickname", nick); (void)db::set_nickname(nick); }
                return json_ok("{\"ok\":true}");
            }

            // ── 게임 데이터: currencies ───────────────────────────────────────────
            if (path == "/web/api/gamedata/currencies" && method == "GET")
            {
                std::string body = "[";
                bool first = true;
                try {
                    for (const auto &c : orm::currencies()) {
                        if (!first) body += ",";
                        body += "{\"type\":" + std::to_string(c.type) + ",\"value\":" + std::to_string(c.value) + "}";
                        first = false;
                    }
                } catch (...) {}
                return json_ok(body + "]");
            }

            // ── 게임 데이터: heroes ───────────────────────────────────────────────
            if (path == "/web/api/gamedata/heroes" && method == "GET")
            {
                std::string body = "[";
                bool first = true;
                try {
                    for (const auto &h : orm::heroes()) {
                        if (!first) body += ",";
                        body += "{\"idx\":\"" + json_escape(h.idx) + "\",\"heroNo\":" + std::to_string(h.heroNo) +
                                ",\"level\":" + std::to_string(h.level) + ",\"gradeSno\":" + std::to_string(h.gradeSno) + "}";
                        first = false;
                    }
                } catch (...) {}
                return json_ok(body + "]");
            }

            // ── 게임 데이터: settings ─────────────────────────────────────────────
            if (path == "/web/api/gamedata/settings" && method == "GET")
            {
                return json_ok("{\"proxy_enabled\":" + std::string(config().proxy_enabled ? "true" : "false") +
                    ",\"game_server_url\":\"" + json_escape(config().game_server_url) + "\"}");
            }
            if (path == "/web/api/gamedata/settings" && method == "POST")
            {
                if (req.body.find("\"proxy_enabled\"") != std::string::npos)
                    config().proxy_enabled = req.body.find("\"proxy_enabled\":true") != std::string::npos;
                std::string gurl = body_json_string(req.body, "game_server_url", "");
                if (!gurl.empty()) config().game_server_url = gurl;
                return json_ok("{\"ok\":true}");
            }

            // ── 파일 목록 ────────────────────────────────────────────────────────
            if (path.rfind("/web/api/files/list", 0) == 0 && method == "GET")
            {
                std::string prefix;
                auto q = path.find("prefix=");
                if (q != std::string::npos) {
                    prefix = path.substr(q + 7);
                    // URL decode 기본 (공백 정도만)
                    for (auto &c : prefix) if (c == '+') c = ' ';
                }
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
                std::string rel;
                auto q = path.find("path=");
                if (q != std::string::npos) rel = path.substr(q + 5);
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

            // ── 단일 오프라인 계정 (멀티계정 미구현, DB nickname 기반 단일 항목 반환) ──
            if (path.rfind("/web/api/accounts", 0) == 0)
            {
                std::string nick = orm::kv_get("nickname", "offline");
                if (method == "GET" && path == "/web/api/accounts")
                    return json_ok("[{\"id\":\"offline-single\",\"nickname\":\"" + json_escape(nick) +
                        "\",\"idp_code\":\"zd3\",\"player_id\":\"" + json_escape(kDefaultPlayerId) +
                        "\",\"active\":true}]");
                if (method == "POST" && path == "/web/api/accounts")
                    return json_ok("{\"ok\":true,\"id\":\"offline-single\"}");
                if (method == "GET" && path == "/web/api/accounts/offline-single")
                    return json_ok("{\"id\":\"offline-single\",\"nickname\":\"" + json_escape(nick) +
                        "\",\"idp_code\":\"zd3\",\"player_id\":\"" + json_escape(kDefaultPlayerId) +
                        "\",\"active\":true}");
                if (method == "PATCH" && path == "/web/api/accounts/offline-single")
                {
                    std::string new_nick = body_json_string(req.body, "nickname", "");
                    if (!new_nick.empty()) { orm::kv_set("nickname", new_nick); (void)db::set_nickname(new_nick); }
                    return json_ok("{\"ok\":true}");
                }
                return json_ok("{\"ok\":true}");
            }

            // ── setup ────────────────────────────────────────────────────────────
            if (path == "/web/api/setup/complete" && method == "POST")
            {
                g_setup_complete = true;
                return json_ok("{\"ok\":true}");
            }
            if (path == "/web/api/setup/status" && method == "GET")
            {
                return json_ok("{\"complete\":" + std::string(g_setup_complete.load() ? "true" : "false") + "}");
            }

            return json_ok("{\"error\":\"not implemented\"}");
        }

        // /web/ 정적 파일 서빙.
        HttpResponse serve_web_static(const HttpRequest &req)
        {
            std::string file_path = req.path;
            // /web → /web/index.html
            if (file_path == "/web" || file_path == "/web/")
                file_path = "/web/index.html";

            // offline_data에서 읽기 (web/ prefix 제거)
            std::string key = file_path.substr(1); // leading '/' 제거
            if (auto content = offline_data().read(key))
            {
                std::string mt = mime_type(file_path);
                return HttpResponse{200, {{"Content-Type", mt},
                                          {"Cache-Control", "no-cache"}}, *content};
            }
            return HttpResponse{404, {{"Content-Type", "text/plain"}}, "Not Found"};
        }

    } // namespace (web helpers)
#endif // !__ANDROID__

    HttpResponse route_request(uint64_t id, int fd, const HttpRequest &req)
    {
#ifdef __ANDROID__
        return proxy_request(id, req);
#endif

#ifndef __ANDROID__
        // ── /web/ 라우팅: API 및 정적 파일 ────────────────────────────────────────
        if (req.path == "/" || req.path == "/web" || req.path.rfind("/web/", 0) == 0)
        {
            if (req.path.rfind("/web/api/", 0) == 0)
                return handle_web_api(id, fd, req);
            return serve_web_static(req);
        }
#endif

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

        if (req.path.find("/service/v3/util/country/get") != std::string::npos)
        {
            log_line(id, "MOCK", "country=hk");
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, R"({"country":"kr"})"};
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
            std::string body = std::string(R"({"status":200,"desc":"OK","content":{"timestamp":)") +
                               std::to_string(unix_ms()) +
                               R"(,"apps":[{"notices":[],"appId":"743491","dataMap":{"countryCodeList":"kr,us,gb,de,fr,ca,au,nz,sg,aq,tw,mo,kp,jp,cn,hk,af,as,bd,bn,bt,cc,ck,cx,fj,fm,gu,hm,id,in,io,kg,kh,ki,kz,la,lk,mh,mm,mn,mp,mv,my,nc,nf,np,nr,nu,pf,pg,ph,pk,pn,pw,sb,th,tj,tk,tl,tm,to,tv,vn,vu,wf,ws","region":"asia"}}]}})";
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
            log_line(id, "MOCK", "app infodesk gameServerAddr=" + config().game_server_url);
            std::string body = std::string(R"({"status":200,"desc":"OK","content":{"supportedFeatures":["urgentNotice","maintenance","push","delivery","promotion","coupon","notice","leaderboard","community"],"marketUrl":"market://details?id=com.kakaogames.eversoul","publicKeyMap":{},"secondaryPwOption":null,"capriAppOption":{"ageLimit":0,"lazyAgeAuth":null,"appType":"kakaogame","appCategory":"role","ageAuthLevel":"NONE"},"isTubeApp":false,"verRecent":"1.34.101","appOption":{"gispPaymentUrl":"https://gisp-payment-api.kakaogames.com","rttCheckUrls":"{\"urls\":[\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v3\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v3\",\"https://rttcheck-us-east-1.kakaogames.io?type=v1\",\"https://rttcheck-us-east-1.kakaogames.io?type=v2\",\"https://rttcheck-us-east-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v3\",\"https://rttcheck-us-west-1.kakaogames.io?type=v1\",\"https://rttcheck-us-west-1.kakaogames.io?type=v2\",\"https://rttcheck-us-west-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v3\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v3\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v1\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v2\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v3\",\"https://gc-infodesk-zinny3.kakaogames.com/v2/app?appId=103815&appVer=1.0.0&market=googlePlay&sdkVer=3.18.0&os=android&lang=en\",\"https://gc-infodesk-zinny3.kakaogames.com/v2/app?appId=103815&appVer=1.0.0&market=googlePlay&sdkVer=3.18.0&os=android&lang=en\"]}","cdnAddr":"https://patch.esoul.kakaogames.com/Live","agreementUrl":"http://127.0.0.1:9999/account-select","useGoogleGame":"false","CUSURL":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","CUSURL_TW":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","CSURL":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","CSURL_TW":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","isMaintenance":"0","privacyPolicyUrl":"https://web-data-cdn.kakaogames.com/real/www/html/terms/index.html?service=S0018&type=T003&country=hk&lang=ko","rttSampleRate":"50","manualRequestReview":"1","termsOfUseUrl":"https://web-data-game.kakaocdn.net/real/www/html/terms/index.html?service=S0001&type=T001&country=hk&lang=ko","ShowGachaOddsView":"https://cafe.daum.net/Eversoul/aCeo/20","kbsHost":"http://127.0.0.1:9999","userAgeCheck_appStore":"13","userAgeCheck_googleplay":"13","NoticeView":"https://kakaogames.oqupie.com/portals/2152/customer-news/2546","gameServerAddr":)") +
                               "\"" + json_escape(config().game_server_url) + "\"" +
                               R"(,"modTime":1661830306343,"daumCafeUrl":"https://m.cafe.daum.net/Eversoul/_boards?type=notice","RefundWebUrl":"https://kakaogames.oqupie.com/portals/1801/articles/41135"},"notices":[],"traceSampleRate":100,"isWhitelist":false,"svcStatus":"open","supportedIdpCodes":["kakaocapri","facebook","google","siwa","zd3"],"serverConnectionType":"https","appVerStatus":"noNeedToUpdate","publisher":{"privacyUrl":"https://www.kakao.com/ko/privacy","privacySummaryUrl":"https://gameevent.kakao.com/supports/terms/3?tabbar=false","noticeUrl2":"https://cus-zinny3.kakaogames.com/view/notice","agreementUrl":"http://127.0.0.1:9999/account-select","servicePolicyUrl":"https://gameevent.kakao.com/terms/operation","termsUrl":"https://gameevent.kakao.com/supports/terms/1","kakaogameCommunityUrl":"https://playgame.kakao.com/bridge/auth/zinny","termsSummaryUrl":"https://gameevent.kakao.com/supports/terms/1?tabbar=false","eventWallUrl":"https://cus-zinny3.kakaogames.com/view/event","noticeUrl":"https://cus-zinny3.kakaogames.com/notice","customerServiceUrl":"https://cus-zinny3.kakaogames.com/support/list","eventWinnerUrl":"http://event-winner.kakaogames.com/event","policyVer":"1.0","publisherId":"kakao","modTime":1651813742832},"sdk":{"heartbeatInterval":120000,"PercentOfSendingAPICallLog":0,"stopSendGeoDNS":"y","snsShareUrl":"https://invite.kakaogame.com","zrtiOSError":"{\"kakaocapri\":[500,502,503,-1,-7,-9]}","aesEncryptKey":"djfdskj12328438djdgjcjeejhdew15","aesEncryptIV":"7gnfn7f96rnanmt1s5iaa3kdruhuneu","zrtAOSError":"{\"kakaocapri\":[500,502,503,-1,-7,-9],\"google\":[8]}","zrtWindowsError":"{\"kakaocapri\":[500,502,503,-1,-7,-9]}","snsShareHostUrl":"https://invite.kakaogame.com/host/main","invitationUrl":"https://webinvite.nzincorp.com","csUrl":"http://customer.kakaogames.com:18080","platformVersion":3,"sessionTimeout":10000,"registerDeviceUrl":"https://device-enrollment.kakaogames.com/main","customDialogModels":["SM-T976N"],"unregisterAgreementUrl":"https://web-data-cdn.kakaogames.com/real/www/html/terms/index.html?service=S0001&type=T016","snsShareGuestUrl":"https://invite.kakaogame.com/guest/reward"},"deviceSecurityOption":null,"onlineNotifications":[],"timestamp":)" +
                               std::to_string(unix_ms()) + R"(}})";
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
            std::string country = body_json_string(req.body, "country", "hk");
            std::string lang = body_json_string(req.body, "lang", "zh-hans");
            const bool newbie = is_newbie_mode();
            const bool auto_login = req.headers.find("zat") != req.headers.end() ||
                                    req.headers.find("playerId") != req.headers.end();
            const char *first = auto_login ? "n" : "y";
            log_line(id, "MOCK", std::string(auto_login ? "agreement accepted mode=" : "agreement popup mode=") + (newbie ? "newbie" : "full") + " idpId=" + idp_id);
            std::string agreement = auto_login
                                        ? R"({"N002":"y","E006":"y","N003":"y","E001":"y","AN001":"y","E002":"y","AN002":"y"})"
                                        : "null";
            std::string app_name = "Eversoul_Asia";
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
                log_line(id, "MOCK", "CDN /Live/ const_data_version version=4725 action=1");
                return HttpResponse{200, {{"Content-Type", "application/json"}}, R"({"version":4725,"action":1})"};
            }
            log_line(id, "MOCK", "CDN /Live/ 404 " + req.path);
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

        // ---- 성장 계정 모드 ----------------------------------------------------------
        // HAR으로 캡처한 실제 성장 계정(93KB 육성 완료)으로 로그인, 신규 튜토리얼 계정 아님.
        // prefer_fixtures 활성화 시 HAR fixture 존재하면 무조건 캡처 응답 재생.
        // fixture 없는 엔드포인트만 뒤의 SQLite/session 폴백으로 진행.
        if (newbie_mode && req.path == "/UserInfo")
        {
            std::string response = db::build_user_info();
            log_line(id, "MOCK_GAME", "/UserInfo newbie db protoBytes=" + std::to_string(response.size()));
            return game_binary_response(req, response);
        }
        if (newbie_mode && req.path == "/TutorialList")
        {
            std::string response;
            const auto rows = orm::tutorials();
            for (const auto &row : rows)
            {
                std::string tutorial;
                pb_int32(tutorial, 1, row.tutorialNo);
                pb_message(response, 1, tutorial);
            }
            log_line(id, "MOCK_GAME", "/TutorialList newbie count=" + std::to_string(rows.size()));
            return game_binary_response(req, response);
        }
        if (newbie_mode && req.path == "/TutorialActive")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::tutorial_active(pb_get_int32(p, 1, 0)));
        }
        if (newbie_mode && req.path == "/GachaHeroTutorialFix")
        {
            return game_binary_response(req, db::gacha_hero_tutorial_fix());
        }
        if (newbie_mode && req.path == "/GachaHeroTutorial")
        {
            return game_binary_response(req, db::gacha_hero_tutorial());
        }
        if (newbie_mode && req.path == "/DungeonEnter")
        {
            int32_t dungeon_no = pb_get_int32(request_payload(req), 1, 10001);
            log_line(id, "MOCK_GAME", "/DungeonEnter dungeonNo=" + std::to_string(dungeon_no));
            return game_binary_response(req, db::dungeon_enter(dungeon_no));
        }
        if (newbie_mode && req.path == "/DungeonInfoUpdate")
        {
            return game_binary_response(req, db::dungeon_info_update(request_payload(req)));
        }
        if (newbie_mode && req.path == "/DungeonClear")
        {
            int32_t dungeon_id = pb_get_int32(request_payload(req), 1, 0);
            log_line(id, "MOCK_GAME", "/DungeonClear dungeonId=" + std::to_string(dungeon_id) + " (db저장)");
            return game_binary_response(req, db::dungeon_clear(dungeon_id));
        }
        if (newbie_mode && req.path == "/DungeonBattle")
        {
            log_line(id, "MOCK_GAME", "/DungeonBattle empty");
            return game_binary_response(req, {});
        }

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

        if (req.path == "/UserInfo")
        {
            std::string response = db::build_user_info();
            log_line(id, "MOCK_GAME", "/UserInfo (db) protoBytes=" + std::to_string(response.size()));
            return game_binary_response(req, response);
        }

        // ---- Stateful (SQLite-backed) account endpoints. These are fallback-only in
        // developed-account mode: any endpoint present in responses/ has already been
        // answered from the captured HAR fixture above. ----
        if (req.path == "/FormationSave")
        {
            std::string p = request_payload(req);
            int32_t no = pb_get_int32(p, 1, 0);
            int32_t kind = pb_get_int32(p, 2, 1);
            std::vector<std::string> heroidx = pb_get_all_strings(p, 3);
            int32_t formation_type = pb_get_int32(p, 4, 1);
            std::string name = pb_get_string(p, 5, "");
            return game_binary_response(req, db::formation_save(no, kind, heroidx, formation_type, name));
        }
        if (req.path == "/HeroLevelUp")
        {
            std::string p = request_payload(req);
            std::string hero_idx = pb_get_string(p, 1, "");
            int32_t to_level = pb_get_int32(p, 2, 2);
            return game_binary_response(req, db::hero_level_up(hero_idx, to_level));
        }
        if (req.path == "/HeroUpgrade")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::hero_upgrade(pb_get_string(p, 1, ""), pb_get_string(p, 2, "")));
        }
        if (req.path == "/HeroGift")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::hero_gift(pb_get_int32(p, 1, 0), pb_get_int32(p, 2, 0),
                                                           pb_get_int32(p, 3, 1)));
        }
        if (req.path == "/HeroEquip")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::hero_equip(pb_get_string(p, 1, ""), pb_get_int64(p, 2, 0),
                                                            pb_get_int32(p, 3, 0)));
        }
        if (req.path == "/HeroUnequip")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::hero_unequip(pb_get_string(p, 2, ""), pb_get_int32(p, 1, 0)));
        }
        if (req.path == "/EquipItemUpgrade")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::equip_item_upgrade(pb_get_string(p, 1, ""), pb_get_int32(p, 2, 0),
                                                                    pb_get_all_messages(p, 3)));
        }
        if (req.path == "/EquipItemTranscendence")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::equip_item_transcendence(pb_get_string(p, 1, ""), pb_get_int32(p, 2, 0),
                                                                          pb_get_int32(p, 3, 0)));
        }
        if (req.path == "/SpiritTreeSlotEquip")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::spirit_tree_slot_equip(pb_get_int32(p, 1, 0), pb_get_string(p, 2, "")));
        }
        if (req.path == "/SpiritTreeSlotUnEquip")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::spirit_tree_slot_unequip(pb_get_int32(p, 1, 0)));
        }
        if (req.path == "/GachaHero")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::gacha_hero(pb_get_int32(p, 1, 1), pb_get_int32(p, 2, 0),
                                                            pb_get_int32(p, 3, 0), pb_get_int32(p, 4, 0)));
        }
        if (req.path == "/GachaPremium")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::gacha_premium(pb_get_int32(p, 1, 1), pb_get_int32(p, 2, 0)));
        }
        if (req.path == "/GachaSignature")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::gacha_signature(pb_get_int32(p, 1, 0), pb_get_int32(p, 2, 1),
                                                                 pb_get_int32(p, 3, 0), pb_get_int32(p, 4, 0)));
        }
        if (req.path == "/ShopItemBuy")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::shop_item_buy(pb_get_int32(p, 1, 0), pb_get_int32(p, 2, 0),
                                                               pb_get_int32(p, 3, 0), pb_get_int32(p, 4, 1)));
        }
        if (req.path == "/ItemUse")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::item_use(pb_get_int32(p, 1, 0), pb_get_int32(p, 2, 1),
                                                          pb_get_string(p, 3, "0"), pb_get_string(p, 4, "0")));
        }
        if (req.path == "/TaskReceive")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::task_receive(pb_get_int32(p, 1, 0), pb_get_int32(p, 2, 0)));
        }
        if (req.path == "/AchievementAllReceive")
        {
            return game_binary_response(req, db::achievement_all_receive());
        }
        if (req.path == "/MailItemAllReceive")
        {
            std::string p = request_payload(req);
            return game_binary_response(req, db::mail_item_all_receive(pb_get_int32(p, 1, 0)));
        }
        if (req.path == "/ReceiveAttendance")
        {
            return game_binary_response(req, db::receive_attendance());
        }
        if (req.path == "/FriendHeartReceiveAll")
        {
            return game_binary_response(req, db::friend_heart_receive_all());
        }
        if (req.path == "/UserNicknameChange")
        {
            std::string nickname = pb_get_string(request_payload(req), 1, "offline");
            return game_binary_response(req, db::set_nickname(nickname));
        }
        if (req.path == "/AutoHuntOpen")
        {
            return game_binary_response(req, db::auto_hunt_open());
        }
        if (req.path == "/AutoHuntReceive")
        {
            return game_binary_response(req, db::auto_hunt_receive());
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

        if (req.path == "/LobbyRefresh")
        {
            std::string response = lobby_refresh_payload();
            log_line(id, "MOCK_GAME", "/LobbyRefresh");
            return game_binary_response(req, response);
        }

        if (req.path == "/BattleStart")
        {
            std::string response;
            pb_bool(response, 1, true);
            log_line(id, "MOCK_GAME", "/BattleStart result=true");
            return game_binary_response(req, response);
        }

        if (req.path == "/Logout")
        {
            // 실기기 Logout 응답 = {success:1}(0x0801); 클라이언트 전송 후 즉시 로그아웃, EsPb.Logout 응답 없음.
            // handler 없을 때 → 404 → 클라이언트 5회 재시도 후 크래시.
            std::string response;
            pb_bool(response, 1, true);
            log_line(id, "MOCK_GAME", "/Logout success");
            return game_binary_response(req, response);
        }

        if (req.path == "/StageClear")
        {
            int32_t stage_no = pb_get_int32(request_payload(req), 1, 1);
            // db::stage_clear: save_stage 저장 (클리어 스테이지 영속화, UserInfo/current_stage 일관성 유지),
            // 올바른 stageNo(field8)+currency+autoHunt 응답. fixture 단독 사용 금지
            // (항상 stageNo 1 → 클라이언트 스테이지 진행 고착 → 튜토리얼 롤백 반복 → 1-2 무한루프).
            log_line(id, "MOCK_GAME", "/StageClear stageNo=" + std::to_string(stage_no));
            return game_binary_response(req, db::stage_clear(stage_no));
        }

        if (req.path == "/StoryClear")
        {
            int32_t story_no = pb_get_int32(request_payload(req), 1, 1);
            // db::story_clear: save_story 저장 + storyNo 응답, 스토리 진행도 영속 일관성 보장.
            log_line(id, "MOCK_GAME", "/StoryClear storyNo=" + std::to_string(story_no));
            return game_binary_response(req, db::story_clear(story_no));
        }

        if (req.path == "/HeroLevelUp")
        {
            int32_t to_level = pb_get_int32(request_payload(req), 2, 2);
            std::string response;
            pb_int32(response, 2, std::max(1, to_level - 1));
            pb_int32(response, 3, 1);
            log_line(id, "MOCK_GAME", "/HeroLevelUp toLevel=" + std::to_string(to_level));
            return game_binary_response(req, response);
        }

        if (req.path == "/DungeonEnter")
        {
            int32_t dungeon_no = pb_get_int32(request_payload(req), 1, 1);
            std::string response = minimal_dungeon_payload(1406786, dungeon_no, false);
            log_line(id, "MOCK_GAME", "/DungeonEnter dungeonNo=" + std::to_string(dungeon_no));
            return game_binary_response(req, response);
        }

        if (req.path == "/DungeonInfoUpdate")
        {
            return game_binary_response(req, db::dungeon_info_update(request_payload(req)));
        }

        if (req.path == "/DungeonBattle")
        {
            log_line(id, "MOCK_GAME", "/DungeonBattle empty rentUsedHero");
            return game_binary_response(req, {});
        }

        if (req.path == "/DungeonClear")
        {
            int32_t dungeon_id = pb_get_int32(request_payload(req), 1, 0);
            // tutorialNo 4800 트리거 조건 = "DungeonClear,10001", 던전 클리어 영속화 필요.
            // 응답 dungeon.id는 클라이언트 DungeonEnter/Clear 요청의 dungeonId와 일치해야 함.
            log_line(id, "MOCK_GAME", "/DungeonClear dungeonId=" + std::to_string(dungeon_id) + " (db저장)");
            return game_binary_response(req, db::dungeon_clear(dungeon_id));
        }

        if (req.path == "/FormationSave")
        {
            std::string payload = request_payload(req);
            int32_t no = pb_get_int32(payload, 1, 1);
            int32_t kind = pb_get_int32(payload, 2, 1);
            int32_t formation_type = pb_get_int32(payload, 4, 1);
            std::string formation_name = pb_get_string(payload, 5, "default");
            std::vector<std::string> hero_idxs = pb_get_all_strings(payload, 3);
            if (hero_idxs.empty())
                hero_idxs.push_back("hero-1");

            std::string formation;
            pb_int32(formation, 1, no);
            pb_int32(formation, 2, kind);
            for (const auto &hero_idx : hero_idxs)
                pb_string(formation, 3, hero_idx);
            pb_int32(formation, 4, formation_type);
            pb_string(formation, 5, formation_name);

            std::string response;
            pb_message(response, 1, formation);
            log_line(id, "MOCK_GAME", "/FormationSave no=" + std::to_string(no));
            return game_binary_response(req, response);
        }

        if (req.path == "/GetContentClearDeck")
        {
            std::string payload = request_payload(req);
            int32_t content_type = pb_get_int32(payload, 1, 0);
            int32_t content_no = pb_get_int32(payload, 2, 1);

            std::string hero;
            pb_int32(hero, 1, 101);
            pb_int32(hero, 2, 1);
            pb_int32(hero, 3, 1);

            std::string deck_info;
            pb_int32(deck_info, 1, 1);
            pb_int32(deck_info, 2, 1000);
            pb_int32(deck_info, 3, 1);
            pb_message(deck_info, 4, hero);

            std::string deck_list;
            pb_message(deck_list, 1, deck_info);

            std::string response;
            pb_int32(response, 1, content_type);
            pb_int32(response, 2, content_no);
            pb_message(response, 3, deck_list);
            log_line(id, "MOCK_GAME", "/GetContentClearDeck contentNo=" + std::to_string(content_no));
            return game_binary_response(req, response);
        }

        if (req.path == "/AutoHuntReceive")
        {
            std::string auto_hunt;
            pb_int32(auto_hunt, 1, 1);
            pb_int64(auto_hunt, 2, unix_ms());
            pb_int64(auto_hunt, 3, unix_ms());

            std::string response;
            pb_message(response, 1, currency_all_payload());
            pb_message(response, 6, auto_hunt);
            log_line(id, "MOCK_GAME", "/AutoHuntReceive");
            return game_binary_response(req, response);
        }

        if (req.path == "/HeroEquipMulti")
        {
            std::string hero_idx = pb_get_string(request_payload(req), 1, "hero-1");
            std::string slot;
            pb_int32(slot, 1, 0);
            pb_int32(slot, 2, 1);

            std::string equip_all;
            pb_string(equip_all, 1, hero_idx);
            pb_message(equip_all, 2, slot);

            std::string response;
            pb_message(response, 1, equip_all);
            log_line(id, "MOCK_GAME", "/HeroEquipMulti heroIdx=" + hero_idx);
            return game_binary_response(req, response);
        }

        if (req.path == "/GachaMileageDelete")
        {
            std::string mileage;
            pb_int32(mileage, 1, 1);
            pb_int32(mileage, 2, 0);
            pb_int32(mileage, 3, 0);
            pb_int32(mileage, 4, 0);
            std::string response;
            pb_message(response, 1, mileage);
            log_line(id, "MOCK_GAME", "/GachaMileageDelete");
            return game_binary_response(req, response);
        }

        if (req.path == "/CashShopList")
        {
            int32_t no = pb_get_int32(request_payload(req), 1, 0);
            std::string item;
            pb_int32(item, 1, no > 0 ? no : 1);
            pb_int32(item, 2, 0);
            pb_int64(item, 3, unix_ms() + 86400000);
            pb_int64(item, 4, unix_ms() - 86400000);
            std::string response;
            pb_message(response, 1, item);
            log_line(id, "MOCK_GAME", "/CashShopList no=" + std::to_string(no));
            return game_binary_response(req, response);
        }

        if (req.path == "/CashShopUserAbleCashItemIdAllList")
        {
            std::string response;
            pb_int32(response, 1, 1);
            pb_int32(response, 1, 2);
            pb_int32(response, 1, 3);
            log_line(id, "MOCK_GAME", "/CashShopUserAbleCashItemIdAllList");
            return game_binary_response(req, response);
        }

        if (req.path == "/AchievementList")
        {
            std::string achievement;
            pb_int32(achievement, 1, 1);
            pb_int32(achievement, 2, 1);
            pb_int64(achievement, 3, 0);
            pb_int32(achievement, 4, 0);
            std::string response;
            pb_message(response, 1, achievement);
            log_line(id, "MOCK_GAME", "/AchievementList");
            return game_binary_response(req, response);
        }

        if (req.path == "/TaskList")
        {
            std::string daily_value;
            pb_int32(daily_value, 1, 0);
            std::string daily;
            pb_int32(daily, 1, 1);
            pb_message(daily, 2, daily_value);

            std::string weekly_value;
            pb_int32(weekly_value, 1, 0);
            std::string weekly;
            pb_int32(weekly, 1, 1);
            pb_message(weekly, 2, weekly_value);

            std::string response;
            pb_message(response, 1, daily);
            pb_message(response, 2, weekly);
            log_line(id, "MOCK_GAME", "/TaskList");
            return game_binary_response(req, response);
        }

        if (req.path == "/AutoHuntOpen")
        {
            std::string auto_currency;
            auto add_auto_currency = [&](int32_t type, int64_t value)
            {
                std::string currency;
                pb_int32(currency, 1, type);
                pb_int64(currency, 2, value);
                pb_message(auto_currency, 1, currency);
            };
            add_auto_currency(1, 600);
            add_auto_currency(3, 60);
            add_auto_currency(5, 60);

            std::string response;
            pb_message(response, 1, auto_currency);
            pb_int32(response, 3, 600);
            pb_int32(response, 4, 60);
            pb_int32(response, 5, 60);
            log_line(id, "MOCK_GAME", "/AutoHuntOpen");
            return game_binary_response(req, response);
        }

        if (req.path == "/NewMailCnt")
        {
            std::string response;
            pb_string(response, 1, "0");
            log_line(id, "MOCK_GAME", "/NewMailCnt");
            return game_binary_response(req, response);
        }

        if (req.path == "/GachaInfo")
        {
            std::string gacha;
            const int fixed = std::atoi(
                orm::kv_get("gacha_tutorial_fixed", is_newbie_mode() ? "0" : "1").c_str());
            pb_int32(gacha, 4, fixed);
            std::string response;
            pb_message(response, 3, gacha);
            log_line(id, "MOCK_GAME", "/GachaInfo heroGachaTutorialFixed=" + std::to_string(fixed));
            return game_binary_response(req, response);
        }

        if (req.path == "/IllustList")
        {
            std::string response;
            log_line(id, "MOCK_GAME", "/IllustList");
            return game_binary_response(req, response);
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

        return proxy_request(id, req);
    }
} // namespace eversoul
