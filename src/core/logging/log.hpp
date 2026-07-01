// log.hpp — request-scoped logging to logcat (Android) / stdout (desktop) + a file.
#pragma once

#include <cstdint>
#include <string>

namespace eversoul
{

    [[nodiscard]] std::string clip_body(const std::string &body);

    // 서버 채널 — 시스템 이벤트 (logs/server.log).
    // 게임 API 태그(REQUEST/RESPONSE/MOCK/MOCK_GAME/WS/OK/INJECT/BLOCK/HOOK) → logs/runtime.log 에 저장.
    // 네트워크 태그(CDN/PROXY/NET/HAR) → logs/runtime_net.log 에 저장.
    // 모든 태그는 SSE server 채널로 방송됨.
    void log_line(std::uint64_t id, const std::string &tag, const std::string &text);

    // 네트워크 채널 — CDN·upstream·패치 요청 (logs/runtime_net.log + SSE server 채널).
    void log_net_line(std::uint64_t id, const std::string &tag, const std::string &text);

    // ADB 채널 — ADB 명령 결과 + logcat (logs/adb.log, SSE adb 채널, stdout).
    void log_adb_line(const std::string &text);

    void open_log_file();

} // namespace eversoul
