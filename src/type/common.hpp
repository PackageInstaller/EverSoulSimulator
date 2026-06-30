// common.hpp — shared types, configuration, and global runtime state.
#pragma once

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
    inline constexpr const char *kTblDir        = "database/tbl";
    inline constexpr const char *kTblJsonDir    = "database/tbl_json";
    inline constexpr const char *kTblDefaultDir = "database/tbl_default";
    inline constexpr const char *kSchemasDir    = "database/schemas";
    inline constexpr const char *kExpectedDir   = "expected";
    inline constexpr const char *kFlatcExe      = "flatc.exe";

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

} // namespace eversoul
