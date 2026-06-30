// util.hpp — small string/time/JSON helpers with no platform dependencies.
#pragma once

#include <cstdint>
#include <string>
#include <string_view>

namespace eversoul
{

    [[nodiscard]] std::string now_string();
    [[nodiscard]] std::string trim(std::string s);
    [[nodiscard]] std::string lower(std::string s);
    [[nodiscard]] std::int64_t unix_ms();
    [[nodiscard]] std::string json_escape(std::string_view s);

    // Extract a JSON string value for `key` from a flat body. Returns `fallback` if absent.
    [[nodiscard]] std::string body_json_string(const std::string &body, const std::string &key,
                                               const std::string &fallback = "");

} // namespace eversoul
