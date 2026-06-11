#include "admin_log_sink.hpp"

#include <deque>
#include <map>
#include <mutex>

namespace eversoul::admin
{

namespace
{

static constexpr std::size_t kMaxEntries = 2000;

struct Sink
{
    std::mutex                           mtx;
    std::deque<LogEntry>                 ring;
    std::map<std::size_t, SinkCallback>  subs;
    std::size_t                          next_id = 1;
};

static Sink& sink()
{
    static Sink s;
    return s;
}

} // namespace

void log_sink_push(const LogEntry& entry)
{
    auto& s = sink();
    std::lock_guard<std::mutex> lk(s.mtx);
    s.ring.push_back(entry);
    if (s.ring.size() > kMaxEntries)
        s.ring.pop_front();
    for (auto& [id, cb] : s.subs)
        cb(entry);
}

std::vector<LogEntry> log_sink_recent(std::size_t max)
{
    auto& s = sink();
    std::lock_guard<std::mutex> lk(s.mtx);
    std::size_t n = std::min(max, s.ring.size());
    std::size_t start = s.ring.size() - n;
    return {s.ring.begin() + (std::ptrdiff_t)start, s.ring.end()};
}

void log_sink_clear()
{
    auto& s = sink();
    std::lock_guard<std::mutex> lk(s.mtx);
    s.ring.clear();
}

std::size_t log_sink_subscribe(SinkCallback cb)
{
    auto& s = sink();
    std::lock_guard<std::mutex> lk(s.mtx);
    std::size_t id = s.next_id++;
    s.subs[id] = std::move(cb);
    return id;
}

void log_sink_unsubscribe(std::size_t id)
{
    auto& s = sink();
    std::lock_guard<std::mutex> lk(s.mtx);
    s.subs.erase(id);
}

} // namespace eversoul::admin
