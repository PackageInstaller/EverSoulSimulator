// apk/net/proxy.hpp — Android TCP proxy to PC server via adb reverse.
#pragma once

#include <cstdint>
#include <string>

#include "type/common.hpp"

namespace eversoul
{

    [[nodiscard]] HttpResponse proxy_request(std::uint64_t id, const HttpRequest &req);

    void proxy_websocket(std::uint64_t id, int client_fd, const HttpRequest &req,
                         const std::string &pre);

} // namespace eversoul
