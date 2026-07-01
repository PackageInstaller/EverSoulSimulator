// proxy.hpp — forward unknown routes to the live upstream via libcurl.
#pragma once

#include <cstdint>
#include <string>

#include "common.hpp"

namespace eversoul
{

    [[nodiscard]] std::string upstream_for_path(const std::string &path);

    [[nodiscard]] HttpResponse proxy_request(std::uint64_t id, const HttpRequest &req);

} // namespace eversoul
