#pragma once

#include <cstdint>
#include <functional>
#include <string>
#include <vector>

namespace eversoul::admin
{

struct LogEntry
{
    std::uint64_t   id;
    std::string     timestamp;
    std::string     tag;
    std::string     text;
};

// Ring-buffer log sink.  log_line() in log.cpp feeds every line here.
// Subscribers receive new entries via SSE (registered per-connection).
// Thread-safe; all methods may be called from any thread.

void log_sink_push(const LogEntry& entry);

// Returns up to `max` most recent entries (newest last).
std::vector<LogEntry> log_sink_recent(std::size_t max = 500);

// Clears the ring buffer.
void log_sink_clear();

// Subscriber callbacks — called on the sink's internal mutex; must not block.
using SinkCallback = std::function<void(const LogEntry&)>;
std::size_t log_sink_subscribe(SinkCallback cb);
void        log_sink_unsubscribe(std::size_t id);

} // namespace eversoul::admin
