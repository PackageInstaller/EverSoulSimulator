// sse_log.cpp — 서버 로그 SSE 브로드캐스터 구현.
#include "sse_log.hpp"
#ifndef __ANDROID__

#include <deque>
#include <map>
#include <mutex>

namespace eversoul::sse_log
{
    namespace
    {
        constexpr int kRingSize = 2000;
        std::mutex g_mu;
        int g_next_id = 0;
        std::map<int, SubscriberFn> g_subs;
        std::deque<std::string> g_ring;
    }

    int subscribe(SubscriberFn fn)
    {
        std::lock_guard lock(g_mu);
        int id = ++g_next_id;
        g_subs.emplace(id, std::move(fn));
        return id;
    }

    void unsubscribe(int id)
    {
        std::lock_guard lock(g_mu);
        g_subs.erase(id);
    }

    void broadcast(const std::string &json)
    {
        std::lock_guard lock(g_mu);
        g_ring.push_back(json);
        if ((int)g_ring.size() > kRingSize)
            g_ring.pop_front();
        for (auto it = g_subs.begin(); it != g_subs.end(); )
        {
            bool ok = it->second(json);
            if (!ok)
                it = g_subs.erase(it);
            else
                ++it;
        }
    }

    std::vector<std::string> recent(int n)
    {
        std::lock_guard lock(g_mu);
        int start = (int)g_ring.size() - n;
        if (start < 0) start = 0;
        return std::vector<std::string>(g_ring.begin() + start, g_ring.end());
    }

    void clear_history()
    {
        std::lock_guard lock(g_mu);
        g_ring.clear();
    }
}

#endif // !__ANDROID__
