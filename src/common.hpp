// common.hpp — shared types, configuration, and global runtime state.
#pragma once

#include <atomic>
#include <cstdint>
#include <map>
#include <string>

namespace eversoul
{

    inline constexpr int kDefaultPort = 9999;
    inline constexpr int kServerListenPort = 9991;
    inline constexpr std::size_t kMaxHeaderBytes = 1024 * 1024;
    inline constexpr std::size_t kMaxLogBody = 1024 * 1024;
    inline constexpr const char *kDefaultPlayerId = "431921183232";

    // HTTP request/response value types shared across the server and router.
    struct HttpRequest
    {
        std::string method;
        std::string path;
        std::string version;
        std::map<std::string, std::string> headers;
        std::string body;
    };

    struct HttpResponse
    {
        long status = 200;
        std::map<std::string, std::string> headers;
        std::string body;
    };

    // Runtime configuration. On Android the offline backend is mock-only and points the
    // client at the in-process server; on desktop it can proxy to the live upstream.
    struct Config
    {
#ifdef __ANDROID__
        bool proxy_enabled = true;
        std::string game_server_url = "http://127.0.0.1:9991";
        std::string data_dir = "/data/data/com.kakaogames.eversoul/files/offline_data";
        bool prefer_fixtures = true;
#else
        bool proxy_enabled = true;
        std::string game_server_url = "http://127.0.0.1:9991";
        std::string data_dir = ".";
        std::string state_dir = "runtime_state";
        bool prefer_fixtures = true;
#endif
    };

    // Process-wide state. Defined in server.cpp.
    Config &config();
    std::atomic<bool> &running();
    std::atomic<std::uint64_t> &request_id();

} // namespace eversoul
