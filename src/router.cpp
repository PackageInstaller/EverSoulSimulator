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
#include "protobuf.hpp"
#include "proxy.hpp"
#include "util.hpp"
#include "ws_session.hpp"

#include <algorithm>
#include <cctype>
#include <vector>

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
            return {};
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
                                      const std::string &app_id, const std::string &idp_code,
                                      const std::string &lang, int64_t now)
        {
            return std::string(R"({"playerId":")") + player_id +
                   R"(","idpId":")" + json_escape(idp_id) +
                   R"(","appId":")" + json_escape(app_id) +
                   R"(","lang":")" + json_escape(lang) +
                   R"(","idpCode":")" + json_escape(idp_code) +
                   R"(","status":"normal","customProperty":{},"secureProperty":{},"pushToken":"","agreement":{"N002":"y","E006":"y","N003":"y","E001":"y","AN001":"y","E002":"y","AN002":"y"},"pushOption":{"night":"y","player":"y"},"memberKey":null,"firstLoginTime":)" +
                   std::to_string(now) + R"(,"lastLoginTime":)" + std::to_string(now) +
                   R"(,"zinnyUuid":"900cf1fd-2347-4299-a8f9-ffa06c76e62b"})";
        }

        std::string build_login_data_json(const std::string &player_id, const std::string &idp_id,
                                          const std::string &app_id, const std::string &idp_code,
                                          const std::string &lang, bool is_first_login)
        {
            const std::string zat = "offline-zat-" + std::to_string(unix_ms());
            const std::string zrt = "offline-zrt-" + std::to_string(unix_ms());
            const int64_t now = unix_ms();
            const int64_t exp = now + 7LL * 24 * 3600 * 1000;
            return std::string(R"({"player":)") + build_player_json(player_id, idp_id, app_id, idp_code, lang, now) +
                   R"(,"playerId":")" + player_id +
                   R"(","idpId":")" + json_escape(idp_id) +
                   R"(","idpCode":")" + json_escape(idp_code) +
                   R"(","accessToken":")" + zat +
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
            auto acct = orm::active_account();
            std::string player_id = acct ? acct->player_id
                                         : body_json_string(req.body, "playerId", kDefaultPlayerId);
            std::string idp_code  = acct ? acct->idp_code
                                         : body_json_string(req.body, "idpCode", "zd3");
            std::string idp_id    = acct ? acct->idp_id
                                         : body_json_string(req.body, "idpId",
                                               body_json_string(req.body, "deviceId", "offline-device"));
            std::string app_id    = body_json_string(req.body, "appId", "743487");
            std::string lang      = body_json_string(req.body, "lang", "ko");
            if (!is_numeric_player_id(player_id))
                player_id = kDefaultPlayerId;
            std::string body = build_login_data_json(player_id, idp_id, app_id, idp_code, lang, is_first_login);
            log_line(id, "MOCK", label + " playerId=" + player_id + " idpId=" + idp_id + " idpCode=" + idp_code
                                 + (acct ? " [account:" + acct->id + "]" : " [no-account]"));
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, body};
        }

        HttpResponse mock_local_player_response(uint64_t id, const HttpRequest &req)
        {
            auto acct = orm::active_account();
            std::string player_id = acct ? acct->player_id
                                         : body_json_string(req.body, "playerId", kDefaultPlayerId);
            std::string app_id    = body_json_string(req.body, "appId", "743487");
            std::string idp_id    = acct ? acct->idp_id
                                         : body_json_string(req.body, "idpId",
                                               body_json_string(req.body, "deviceId", "offline-device"));
            std::string idp_code  = acct ? acct->idp_code
                                         : body_json_string(req.body, "idpCode", "zd3");
            std::string lang      = body_json_string(req.body, "lang", "ko");
            if (!is_numeric_player_id(player_id))
                player_id = kDefaultPlayerId;
            const std::string body = std::string(R"({"player":)") +
                                     build_player_json(player_id, idp_id, app_id, idp_code, lang, unix_ms()) +
                                     "}";
            log_line(id, "MOCK", "player/getLocal playerId=" + player_id + " idpCode=" + idp_code
                                 + (acct ? " [account:" + acct->id + "]" : " [no-account]"));
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, body};
        }

    } // namespace

    HttpResponse route_request(uint64_t id, const HttpRequest &req)
    {
        // Account management API — called by the account-select SPA.
        if (req.path == "/api/accounts" && req.method == "GET")
        {
            (void)orm::ensure_ready(config().data_dir);
            auto list = orm::accounts(config().data_dir);
            std::string body = "[";
            for (std::size_t i = 0; i < list.size(); ++i) {
                if (i) body += ",";
                body += std::string(R"({"id":")") + json_escape(list[i].id) +
                        R"(","nickname":")" + json_escape(list[i].nickname) +
                        R"(","player_id":")" + json_escape(list[i].player_id) +
                        R"(","idp_code":")" + json_escape(list[i].idp_code) +
                        R"(","created_at":)" + std::to_string(list[i].created_at) +
                        R"(,"last_login":)" + std::to_string(list[i].last_login) + "}";
            }
            body += "]";
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"},
                                      {"Access-Control-Allow-Origin", "*"}}, body};
        }

        if (req.path == "/api/accounts/create" && req.method == "POST")
        {
            std::string nickname = body_json_string(req.body, "nickname", "Player");
            std::string idp_code = body_json_string(req.body, "idpCode", "zd3");
            std::string new_id   = orm::create_account(nickname, idp_code, "", config().data_dir);
            if (new_id.empty())
                return HttpResponse{500, {{"Content-Type", "application/json;charset=UTF-8"}},
                                    R"({"error":"account creation failed"})"};
            set_account_mode(AccountMode::Newbie);
            log_line(id, "ACCOUNT", "created id=" + new_id + " nickname=" + nickname);
            std::string body = std::string(R"({"id":")") + json_escape(new_id) + "\"}";
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, body};
        }

        if (req.path == "/api/accounts/select" && req.method == "POST")
        {
            std::string acct_id = body_json_string(req.body, "id", "");
            if (acct_id.empty() || !orm::select_account(acct_id, config().data_dir))
                return HttpResponse{404, {{"Content-Type", "application/json;charset=UTF-8"}},
                                    R"({"error":"account not found"})"};
            log_line(id, "ACCOUNT", "selected id=" + acct_id);
            return HttpResponse{204, {}, ""};
        }

        if (req.path.rfind("/api/accounts/", 0) == 0 && req.method == "DELETE")
        {
            std::string acct_id = req.path.substr(std::string("/api/accounts/").size());
            if (acct_id.empty() || !orm::delete_account(acct_id, config().data_dir))
                return HttpResponse{404, {{"Content-Type", "application/json;charset=UTF-8"}},
                                    R"({"error":"account not found"})"};
            log_line(id, "ACCOUNT", "deleted id=" + acct_id);
            return HttpResponse{204, {}, ""};
        }

        // LIAPP anti-cheat (lockincomp.com) device-auth — posted right before country/get.
        // Offline it can't reach lockincomp -> game shows "系统初始化失败". The captured
        // response's signature (fdbd8509) is constant across sessions, so we replay it
        // verbatim. Identify by path /sbaa479o or the obfuscated body keys (f39ad58*) in
        // case the path changes across versions. (fdbd8508 == fdbd850f in the capture, and
        // our static value keeps them equal.)
        if (req.path == "/sbaa479o" || req.body.find("f39ad58") != std::string::npos)
        {
            log_line(id, "MOCK", "LIAPP lockincomp device-auth (static replay)");
            return HttpResponse{200, {{"Content-Type", "application/json"}}, R"({"fdbd8507":"c6c4389e","fdbd8508":"208276372","fdbd8509":"5c6e481f27d101a560ea8d507c9c4dd0a3cddcaefabaf1f986dd93f38c749664137d29245aed0cf1ec8130b7cd9dac6f395d8efc84e3e51a7d1fa9e2e91c789cb2f9ddc14bf10d94a6cacad62decc3b8952f89b18c2105377dff98fa4c2a9f15389da042a63312e6fe92f3395f63f20db03b112bb3db4b10","fdbd850f":"208276372"})"};
        }

        if (req.path.rfind("/web/", 0) == 0)
        {
            std::string rel = req.path.substr(1);
            std::string mime = "text/plain";
            if (rel.size() >= 4 && rel.compare(rel.size()-4,4,".css")==0)
                mime = "text/css; charset=UTF-8";
            else if (rel.size() >= 3 && rel.compare(rel.size()-3,3,".js")==0)
                mime = "application/javascript; charset=UTF-8";
            else if (rel.size() >= 5 && rel.compare(rel.size()-5,5,".html")==0)
                mime = "text/html; charset=UTF-8";
            else if (rel.size() >= 4 && rel.compare(rel.size()-4,4,".png")==0)
                mime = "image/png";
            if (auto data = offline_data().read(rel))
                return HttpResponse{200, {{"Content-Type", mime}}, *data};
            return HttpResponse{404, {{"Content-Type","text/plain"}}, "not found: " + rel};
        }

        if (req.path.rfind("/account-select", 0) == 0 ||
            req.path.rfind("/account_select.html", 0) == 0)
        {
            log_line(id, "MOCK", "account select page");
            std::string html = account_select_html();
            if (html.empty())
                return HttpResponse{503, {{"Content-Type", "text/plain"}}, "account_select.html not found in offline_data"};
            return html_response(html);
        }

        if (req.path == "/favicon.ico")
        {
            return HttpResponse{204, {{"Content-Type", "image/x-icon"}}, ""};
        }

        if (req.path.rfind("/account-mode/set", 0) == 0)
        {
            const bool newbie = req.path.find("mode=newbie") != std::string::npos;
            set_account_mode(newbie ? AccountMode::Newbie : AccountMode::Full);
            log_line(id, "MOCK", std::string("account mode ") + (newbie ? "newbie" : "full"));
            return HttpResponse{302, {{"Location", agreement_ok_url()}}, {}};
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
            log_line(id, "MOCK", "country=kr");
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
                               R"(,"apps":[{"notices":[],"appId":"743487","dataMap":{"countryCodeList":"kr","region":"kr"}}]}})";
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

        if (req.path.find("/service/v3/auth/getGoogleIdpId") != std::string::npos)
        {
            std::string idp_id;
            const std::string id_token = body_json_string(req.body, "idToken", "");
            if (!id_token.empty())
            {
                auto p1 = id_token.find('.');
                if (p1 != std::string::npos)
                {
                    auto p2 = id_token.find('.', p1 + 1);
                    if (p2 != std::string::npos)
                    {
                        std::string payload_b64 = id_token.substr(p1 + 1, p2 - p1 - 1);
                        for (char &c : payload_b64)
                        {
                            if (c == '-') c = '+';
                            else if (c == '_') c = '/';
                        }
                        while (payload_b64.size() % 4 != 0)
                            payload_b64 += '=';
                        const std::string payload = base64_decode(payload_b64);
                        idp_id = body_json_string(payload, "sub", "");
                    }
                }
            }
            if (idp_id.empty())
            {
                auto acct = orm::active_account();
                idp_id = acct ? acct->idp_id : "";
            }
            if (idp_id.empty())
                idp_id = "102305402181706331695";
            log_line(id, "MOCK", "getGoogleIdpId -> " + idp_id);
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}},
                                std::string(R"({"idpId":")") + json_escape(idp_id) + R"("})"};
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

        if (req.path.find("/service/v3/agreement/getForConnect") != std::string::npos)
        {
            log_line(id, "MOCK", "agreement getForConnect");
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}},
                                R"({"agreementPopup":"n","context":"connect","kakaoGameSdkVer":"3.0"})"};
        }

        if (req.path.find("/service/v3/agreement/getForLogin") != std::string::npos)
        {
            std::string idp_id = body_json_string(req.body, "idpId", body_json_string(req.body, "deviceId", ""));
            std::string app_id = "743487";
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
            std::string app_name = "Eversoul";
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
            const int64_t ts = unix_ms();
            char uuid_buf[48];
            std::snprintf(uuid_buf, sizeof(uuid_buf),
                          "%08x-%04x-4%03x-%04x-%012llx",
                          static_cast<unsigned>(ts & 0xFFFFFFFFU),
                          static_cast<unsigned>((ts >> 32) & 0xFFFFU),
                          static_cast<unsigned>((ts >> 20) & 0xFFFU),
                          static_cast<unsigned>(0x8000U | ((ts >> 16) & 0x3FFFU)),
                          static_cast<unsigned long long>(ts));
            std::string body = std::string(R"({"logId":")") + uuid_buf + R"("})";
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

        if (req.path.find("/oauth/token") != std::string::npos)
        {
            log_line(id, "MOCK", "kakao /oauth/token -> fake access_token");
            const std::string token = "offline-kakao-at-" + std::to_string(unix_ms());
            const int64_t exp_sec = unix_ms() / 1000 + 3600;
            std::string body = std::string(R"({"access_token":")") + token +
                               R"(","token_type":"bearer","refresh_token":"offline-kakao-rt-)" +
                               std::to_string(unix_ms()) +
                               R"(","expires_in":)" + std::to_string(exp_sec) +
                               R"(,"scope":"account_email profile","refresh_token_expires_in":5184000})";
            return HttpResponse{200, {{"Content-Type", "application/json;charset=UTF-8"}}, body};
        }

        if (req.path.find("/service/v4/auth/loginDevice") != std::string::npos)
        {
            return mock_login_data_response(id, "loginDevice", req, false);
        }

        // Kakao account login (kakaocapri idp). The game posts
        // /service/v3/auth/loginKakao after obtaining a Kakao OAuth token.
        // Must return full zat/player content; falling through to the generic
        // /service/ "{}" reply causes SDK "accessToken is invalid" (406).
        if (req.path.find("loginKakao") != std::string::npos)
        {
            return mock_login_data_response(id, "loginKakao", req, false);
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
            // 旧动态 Login 保留作为 fixture 缺失时的兜底；成品账号路径优先走上面的 HAR fixture。
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

        // ---- 成品账号模式 ----------------------------------------------------------
        // 用户用 HAR 抓到的真实成品账号（93KB 已发育账号）登录，不是新建教程账号。
        // prefer_fixtures 开启时只要 HAR fixture 存在，就无条件回放成品抓包响应。
        // 没有 fixture 的操作端点才继续落到后面的 SQLite/session 兜底。
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
            log_line(id, "MOCK_GAME", "/DungeonClear dungeonId=" + std::to_string(dungeon_id) + " (db落库)");
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
            // 真机 Logout 响应 = {success:1}(0x0801)；客户端发完即注销登出，无 EsPb.Logout 响应类。
            // 之前无 handler→404→客户端重试5次后崩。
            std::string response;
            pb_bool(response, 1, true);
            log_line(id, "MOCK_GAME", "/Logout success");
            return game_binary_response(req, response);
        }

        if (req.path == "/StageClear")
        {
            int32_t stage_no = pb_get_int32(request_payload(req), 1, 1);
            // db::stage_clear 落库 save_stage(已清关卡持久化，UserInfo/current_stage 一致)，
            // 并回显正确 stageNo(field8)+currency+autoHunt。绝不能用单一 fixture(永远 stageNo 1
            // 会让客户端关卡进度卡死→教程回退重打→1-2 死循环)。
            log_line(id, "MOCK_GAME", "/StageClear stageNo=" + std::to_string(stage_no));
            return game_binary_response(req, db::stage_clear(stage_no));
        }

        if (req.path == "/StoryClear")
        {
            int32_t story_no = pb_get_int32(request_payload(req), 1, 1);
            // db::story_clear 落库 save_story + 回显 storyNo，保证剧情进度持久一致。
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
            // tutorialNo 4800 触发条件 = "DungeonClear,10001"，依赖地下城通关被持久化。
            // 响应 dungeon.id 必须与客户端 DungeonEnter/Clear 请求的 dungeonId 一致。
            log_line(id, "MOCK_GAME", "/DungeonClear dungeonId=" + std::to_string(dungeon_id) + " (db落库)");
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

        return proxy_request(id, req);
    }
} // namespace eversoul
