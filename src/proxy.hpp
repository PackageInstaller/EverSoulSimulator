// proxy.hpp — forward unknown routes to the live upstream (desktop builds only).
#pragma once

#include <cstdint>
#include <string>

#include "common.hpp"

namespace eversoul
{

    [[nodiscard]] std::string upstream_for_path(const std::string &path);

    // On Android this returns a 404 stub (no curl dependency); on desktop it proxies via libcurl.
    [[nodiscard]] HttpResponse proxy_request(std::uint64_t id, const HttpRequest &req);

} // namespace eversoul
