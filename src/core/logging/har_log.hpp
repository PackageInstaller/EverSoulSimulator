#pragma once

#include <cstdint>
#include <string>

#include "common.hpp"

namespace eversoul::har_log
{
    void record(std::uint64_t id, const std::string& client_ip,
                const HttpRequest& req, const HttpResponse& res);
}
