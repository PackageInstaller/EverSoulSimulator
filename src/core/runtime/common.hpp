// common.hpp — shared types, configuration, and global runtime state.
#pragma once

#include <atomic>
#include <cstdint>
#include <map>
#include <string>

namespace eversoul
{

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

    struct Config
    {
        bool proxy_enabled = true;
        std::string game_server_url = "http://127.0.0.1:9991";
        std::string data_dir = ".";
        std::string state_dir = "runtime_state";
        bool prefer_fixtures = true;
    };

    // Process-wide state. Defined in server.cpp.
    Config &config();
    std::atomic<bool> &running();
    std::atomic<std::uint64_t> &request_id();

} // namespace eversoul
