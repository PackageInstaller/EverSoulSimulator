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

        void handle_client(socket_fd_t fd, sockaddr_in peer)
        {
            std::uint64_t id = ++request_id();
            char ip[INET_ADDRSTRLEN] = {};
            inet_ntop(AF_INET, &peer.sin_addr, ip, sizeof(ip));

            HttpRequest req;
            if (!parse_request(fd, req))
            {
                log_line(id, "ERROR", "failed to parse request");
                send_response(fd, HttpResponse{400, {}, R"({"error":"bad request"})"});
                socket_close(fd);
                return;
            }

            // WebSocket upgrade: hand off to the persistent frame loop (Kakao session
            // JSON-RPC or socket.io chat). For an upgrade there is no Content-Length
            // body, so any bytes parse_request captured past the headers (req.body) are
            // the first WS frames.
            if (is_websocket_upgrade(req))
            {
                log_line(id, "REQUEST", std::string(ip) + " WS " + req.path);
                handle_websocket(id, fd, req, req.body);
                socket_close(fd);
                return;
            }

            log_line(id, "REQUEST", std::string(ip) + " " + req.method + " " + req.path);
            for (const auto &[k, v] : req.headers)
            {
                log_line(id, "REQ_HEADER", k + "=" + v);
            }
            if (!req.body.empty())
            {
                log_line(id, "REQ_BODY", clip_body(req.body));
            }

            HttpResponse res = route_request(id, req);
            log_line(id, "RESPONSE", "status=" + std::to_string(res.status) + " bytes=" + std::to_string(res.body.size()));
            for (const auto &[k, v] : res.headers)
            {
                log_line(id, "RES_HEADER", k + "=" + v);
            }
            if (!res.body.empty())
            {
                log_line(id, "RES_BODY", clip_body(res.body));
            }
            send_response(fd, res);
            socket_close(fd);
        }
    } // namespace

    void request_shutdown() { running() = false; }

    int run_server(int port)
    {
#ifdef _WIN32
        WSADATA wsaData;
        WSAStartup(MAKEWORD(2, 2), &wsaData);
#endif
#ifndef __ANDROID__
        curl_global_init(CURL_GLOBAL_DEFAULT);
#endif
        open_log_file();

        fixture_store().load(config().data_dir);
        ws_load_fixtures(config().data_dir);
        if (!orm::ensure_ready(config().data_dir)) {
            log_line(0, "WARN", "orm init failed: data_dir=" + config().data_dir + " — serving fixture-only mode");
        }

        socket_fd_t server_fd = socket(AF_INET, SOCK_STREAM, 0);
        if (server_fd == kInvalidSocket)
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
            socket_close(server_fd);
#ifndef __ANDROID__
            curl_global_cleanup();
#endif
            return 1;
        }
        if (listen(server_fd, 64) < 0)
        {
            log_line(0, "ERROR", "listen failed");
            socket_close(server_fd);
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
            socket_fd_t client_fd = accept(server_fd, reinterpret_cast<sockaddr *>(&peer), &len);
            if (client_fd == kInvalidSocket)
            {
                if (running())
                    log_line(0, "ERROR", "accept failed");
                continue;
            }
            std::thread(handle_client, client_fd, peer).detach();
        }

        socket_close(server_fd);
#ifdef _WIN32
        WSACleanup();
#endif
#ifndef __ANDROID__
        curl_global_cleanup();
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
