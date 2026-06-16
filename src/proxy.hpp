// proxy.hpp — forward unknown routes to the live upstream (desktop builds only).
#pragma once

#include <cstdint>
#include <string>

#include "common.hpp"

namespace eversoul
{

    [[nodiscard]] std::string upstream_for_path(const std::string &path);

    // Desktop: libcurl → live Kakao upstream.
    // Android: raw TCP → 127.0.0.1:kServerListenPort (adb reverse tcp:9991 tcp:9991 → PC server).
    [[nodiscard]] HttpResponse proxy_request(std::uint64_t id, const HttpRequest &req);

} // namespace eversoul
