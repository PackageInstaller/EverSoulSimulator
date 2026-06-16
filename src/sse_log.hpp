// sse_log.hpp — 서버 로그 SSE 브로드캐스터. log_line()이 호출될 때마다
// JSON 엔트리를 ring buffer에 저장하고 모든 SSE 구독자에게 전송한다.
#pragma once
#ifndef __ANDROID__

#include <functional>
#include <string>
#include <vector>

namespace eversoul::sse_log
{
    using SubscriberFn = std::function<bool(const std::string &json)>;

    // 구독자 등록 (반환값 false 이면 자동 제거).
    int  subscribe(SubscriberFn fn);
    void unsubscribe(int id);

    // log_line() 내부에서 호출 — JSON을 ring buffer에 추가하고 모든 구독자에게 전송.
    void broadcast(const std::string &json);

    // 최근 n개 로그 JSON 엔트리 반환 (ring buffer, 최대 2000개 보관).
    std::vector<std::string> recent(int n);

    // 로그 히스토리 클리어.
    void clear_history();
}

#endif // !__ANDROID__
