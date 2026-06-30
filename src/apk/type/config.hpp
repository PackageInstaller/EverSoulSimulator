// apk/type/config.hpp — Android runtime configuration for the in-process offline server.
#pragma once

#include <string>

namespace eversoul
{

    struct Config
    {
        bool proxy_enabled = true;
        std::string game_server_url = "http://127.0.0.1:9991";
        std::string data_dir = "/data/data/com.kakaogames.eversoul/files/offline_data";
        bool prefer_fixtures = true;
    };

    Config &config();

} // namespace eversoul
