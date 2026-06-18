// server.cpp — TCP accept loop, per-connection handling, global runtime state.
#include "server.hpp"

#include "platform.hpp"

#include <atomic>
#include <string>
#include <thread>

#include "common.hpp"
#include "fixture_store.hpp"
#include "http.hpp"
#include "log.hpp"
#include "orm/storage.hpp"
#include "proxy.hpp"
#include "router.hpp"
#include "websocket.hpp"
#include "ws_session.hpp"

#ifndef __ANDROID__
#include <curl/curl.h>
#endif

namespace eversoul
{

    // --- process-wide state (declared in common.hpp) ---
    Config &config()
    {
        static Config cfg;
        return cfg;
    }
    std::atomic<bool> &running()
    {
        static std::atomic<bool> r{true};
        return r;
    }
    std::atomic<std::uint64_t> &request_id()
    {
        static std::atomic<std::uint64_t> id{0};
        return id;
    }

    namespace
    {
        std::atomic<bool> g_server_started{false};

        void handle_client(int fd, sockaddr_in peer)
        {
            std::uint64_t id = ++request_id();
            char ip[INET_ADDRSTRLEN] = {};
            inet_ntop(AF_INET, &peer.sin_addr, ip, sizeof(ip));

            HttpRequest req;
            if (!parse_request(fd, req))
            {
                log_line(id, "ERROR", "failed to parse request");
                send_response(fd, HttpResponse{400, {}, R"({"error":"bad request"})"});
                platform_close(fd);
                return;
            }

            // WebSocket upgrade: hand off to the persistent frame loop (Kakao session
            // JSON-RPC or socket.io chat). For an upgrade there is no Content-Length
            // body, so any bytes parse_request captured past the headers (req.body) are
            // the first WS frames.
            if (is_websocket_upgrade(req))
            {
                log_line(id, "REQUEST", std::string(ip) + " WS " + req.path);
#ifdef __ANDROID__
                proxy_websocket(id, fd, req, req.body);
#else
                handle_websocket(id, fd, req, req.body);
#endif
                platform_close(fd);
                return;
            }

            // /web/ 하위 요청(웹UI 자체 통신)은 서버 로그에서 완전 제외.
            const bool is_webui = req.path.compare(0, 5, "/web/") == 0;

            if (!is_webui)
            {
                log_line(id, "REQUEST", std::string(ip) + " " + req.method + " " + req.path);
                for (const auto &[k, v] : req.headers)
                    log_line(id, "REQ_HEADER", k + "=" + v);
                if (!req.body.empty())
                    log_line(id, "REQ_BODY", clip_body(req.body));
            }

            HttpResponse res = route_request(id, fd, req);
            if (res.status == -1)
            {
                // SSE 등 직접 전송 완료 — send_response 스킵.
                platform_close(fd);
                return;
            }

            if (!is_webui)
            {
                log_line(id, "RESPONSE", "status=" + std::to_string(res.status) + " bytes=" + std::to_string(res.body.size()));
                for (const auto &[k, v] : res.headers)
                    log_line(id, "RES_HEADER", k + "=" + v);
                if (!res.body.empty())
                    log_line(id, "RES_BODY", clip_body(res.body));
            }

            send_response(fd, res);
            platform_close(fd);
        }
    } // namespace

    void request_shutdown() { running() = false; }

    int run_server(int port)
    {
#ifdef _WIN32
        WSADATA wsa{};
        WSAStartup(MAKEWORD(2, 2), &wsa);
#endif
#ifndef __ANDROID__
        curl_global_init(CURL_GLOBAL_DEFAULT);
#endif
        open_log_file();

        // Load editable JSON response fixtures (responses/ + schema/) and encode
        // them to protobuf via the descriptor-driven encoder. Served by the router.
        fixture_store().load(config().data_dir);
        // Load WebSocket replay fixtures (Kakao session + socket.io chat).
        ws_load_fixtures(config().data_dir);

        // 서버 리슨 전에 sqlite3 계정 체계를 준비한다.
        // 레지스트리가 비어있으면 acct-default 계정과 state.sqlite3를 자동 생성한다.
        if (!orm::ensure_ready(config().data_dir)) {
            log_line(0, "WARN", "account db bootstrap failed — DB will be attempted per-request");
        }

        int server_fd = socket(AF_INET, SOCK_STREAM, 0);
        if (server_fd < 0)
        {
            log_line(0, "ERROR", "socket failed");
            return 1;
        }

        int yes = 1;
        setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR, reinterpret_cast<const char *>(&yes), sizeof(yes));

        sockaddr_in addr{};
        addr.sin_family = AF_INET;
        addr.sin_addr.s_addr = htonl(INADDR_ANY);
        addr.sin_port = htons(static_cast<std::uint16_t>(port));
        if (bind(server_fd, reinterpret_cast<sockaddr *>(&addr), sizeof(addr)) < 0)
        {
            log_line(0, "ERROR", "bind failed on port " + std::to_string(port));
            platform_close(server_fd);
#ifndef __ANDROID__
            curl_global_cleanup();
#endif
            return 1;
        }
        if (listen(server_fd, 64) < 0)
        {
            log_line(0, "ERROR", "listen failed");
            platform_close(server_fd);
#ifndef __ANDROID__
            curl_global_cleanup();
#endif
            return 1;
        }

        log_line(0, "START", "listening on 0.0.0.0:" + std::to_string(port) + (config().proxy_enabled ? " proxy=on" : " proxy=off") + " gameServerUrl=" + config().game_server_url);

        while (running())
        {
            sockaddr_in peer{};
            socklen_t len = sizeof(peer);
            int client_fd = accept(server_fd, reinterpret_cast<sockaddr *>(&peer), &len);
            if (client_fd < 0)
            {
                if (running())
                    log_line(0, "ERROR", "accept failed");
                continue;
            }
            std::thread(handle_client, client_fd, peer).detach();
        }

        platform_close(server_fd);
#ifndef __ANDROID__
        curl_global_cleanup();
#endif
#ifdef _WIN32
        WSACleanup();
#endif
        return 0;
    }

    void start_async(int port)
    {
        bool expected = false;
        if (!g_server_started.compare_exchange_strong(expected, true))
        {
            return;
        }
        running() = true;
        std::thread([port]()
                    {
        int rc = run_server(port);
        g_server_started = false;
        log_line(0, "STOP", "server thread exited rc=" + std::to_string(rc)); })
            .detach();
    }

} // namespace eversoul
