// router.hpp — request routing entry point.
#pragma once

#include <cstdint>

#include "common.hpp"

namespace eversoul
{

    [[nodiscard]] HttpResponse route_request(std::uint64_t id, const HttpRequest &req);

} // namespace eversoul
