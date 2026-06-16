// log.hpp — request-scoped logging to logcat (Android) / stdout (desktop) + a file.
#pragma once

#include <cstdint>
#include <string>

namespace eversoul
{

    [[nodiscard]] std::string clip_body(const std::string &body);
    void log_line(std::uint64_t id, const std::string &tag, const std::string &text);
    void open_log_file();

} // namespace eversoul
