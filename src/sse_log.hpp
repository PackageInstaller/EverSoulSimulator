// sse_log.hpp — 로그 SSE 브로드캐스터. Server/Adb 두 채널을 독립적으로 관리한다.
#pragma once
#ifndef __ANDROID__

#include <functional>
#include <string>
#include <vector>

namespace eversoul::sse_log
{
    using SubscriberFn = std::function<bool(const std::string &json)>;

    // ── Server 채널: 게임 API 요청/응답 로그 ─────────────────────────────────
    int  subscribe_server(SubscriberFn fn);
    void unsubscribe_server(int id);
    void broadcast_server(const std::string &json);
    std::vector<std::string> recent_server(int n);
    void clear_server();

    // ── Adb 채널: ADB 명령 결과 + logcat 스트림 ──────────────────────────────
    int  subscribe_adb(SubscriberFn fn);
    void unsubscribe_adb(int id);
    void broadcast_adb(const std::string &json);
    std::vector<std::string> recent_adb(int n);
    void clear_adb();

    // ── 하위 호환 별칭 (기존 router.cpp 코드와 호환) ─────────────────────────
    inline int  subscribe(SubscriberFn fn)                { return subscribe_server(std::move(fn)); }
    inline void unsubscribe(int id)                       { unsubscribe_server(id); }
    inline void broadcast(const std::string &j)           { broadcast_server(j); }
    inline std::vector<std::string> recent(int n)         { return recent_server(n); }
    inline void clear_history()                           { clear_server(); }
}

#endif // !__ANDROID__
