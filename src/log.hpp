// log.hpp — request-scoped logging to logcat (Android) / stdout (desktop) + a file.
#pragma once

#include <cstdint>
#include <string>

namespace eversoul
{

    [[nodiscard]] std::string clip_body(const std::string &body);

    // 서버 채널 — 게임 API 요청/응답 (logs/server.log, SSE server 채널).
    void log_line(std::uint64_t id, const std::string &tag, const std::string &text);

    // ADB 채널 — ADB 명령 결과 + logcat (logs/adb.log, SSE adb 채널). stdout 출력 없음.
    void log_adb_line(const std::string &text);

    void open_log_file();

} // namespace eversoul
