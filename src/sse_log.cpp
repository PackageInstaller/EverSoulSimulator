// sse_log.cpp — Server/Adb 채널 독립 ring buffer + SSE 브로드캐스터 구현.
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

        struct Channel
        {
            std::mutex mu;
            int next_id = 0;
            std::map<int, SubscriberFn> subs;
            std::deque<std::string> ring;
        };

        Channel g_server;
        Channel g_adb;

        int ch_subscribe(Channel &ch, SubscriberFn fn)
        {
            std::lock_guard lock(ch.mu);
            int id = ++ch.next_id;
            ch.subs.emplace(id, std::move(fn));
            return id;
        }

        void ch_unsubscribe(Channel &ch, int id)
        {
            std::lock_guard lock(ch.mu);
            ch.subs.erase(id);
        }

        void ch_broadcast(Channel &ch, const std::string &json)
        {
            std::lock_guard lock(ch.mu);
            ch.ring.push_back(json);
            if ((int)ch.ring.size() > kRingSize)
                ch.ring.pop_front();
            for (auto it = ch.subs.begin(); it != ch.subs.end(); )
            {
                bool ok = it->second(json);
                if (!ok) it = ch.subs.erase(it);
                else     ++it;
            }
        }

        std::vector<std::string> ch_recent(Channel &ch, int n)
        {
            std::lock_guard lock(ch.mu);
            int start = (int)ch.ring.size() - n;
            if (start < 0) start = 0;
            return std::vector<std::string>(ch.ring.begin() + start, ch.ring.end());
        }
    }

    int  subscribe_server(SubscriberFn fn)          { return ch_subscribe(g_server, std::move(fn)); }
    void unsubscribe_server(int id)                 { ch_unsubscribe(g_server, id); }
    void broadcast_server(const std::string &json)  { ch_broadcast(g_server, json); }
    std::vector<std::string> recent_server(int n)   { return ch_recent(g_server, n); }
    void clear_server()                             { std::lock_guard lock(g_server.mu); g_server.ring.clear(); }

    int  subscribe_adb(SubscriberFn fn)             { return ch_subscribe(g_adb, std::move(fn)); }
    void unsubscribe_adb(int id)                    { ch_unsubscribe(g_adb, id); }
    void broadcast_adb(const std::string &json)     { ch_broadcast(g_adb, json); }
    std::vector<std::string> recent_adb(int n)      { return ch_recent(g_adb, n); }
    void clear_adb()                                { std::lock_guard lock(g_adb.mu); g_adb.ring.clear(); }
}

#endif // !__ANDROID__
