#include "admin_server.hpp"

#include "adb_finder.hpp"
#include "admin_html.hpp"
#include "admin_log_sink.hpp"
#include "common.hpp"
#include "fixture_store.hpp"
#include "http.hpp"
#include "i18n.hpp"
#include "log.hpp"
#include "offline_data.hpp"
#include "orm/storage.hpp"
#include "platform.hpp"
#include "util.hpp"

#include "sqlite3.h"

#include <algorithm>
#include <atomic>
#include <chrono>
#include <condition_variable>
#include <cstdio>
#include <filesystem>
#include <fstream>
#include <memory>
#include <mutex>
#include <queue>
#include <sstream>
#include <string>
#include <thread>
#include <vector>

#ifdef _WIN32
#include <sys/stat.h>
#include <direct.h>
#else
#include <sys/stat.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#endif

namespace eversoul::admin
{

namespace
{

// ── Global server state ───────────────────────────────────────────────────────

std::atomic<bool> g_running{false};
std::thread       g_thread;
socket_fd_t       g_listen_fd{kInvalidSocket};
std::mutex        g_start_mu;
std::int64_t      g_started_at{0};
int               g_current_port{kDefaultAdminPort};

// ── Injector process state ────────────────────────────────────────────────────

std::atomic<bool> g_injector_running{false};
std::mutex        g_injector_mu;
#ifdef _WIN32
HANDLE g_injector_proc = INVALID_HANDLE_VALUE;
#endif

// ── Low-level send returning success/failure ─────────────────────────────────

bool send_checked(socket_fd_t fd, const std::string& data)
{
    const char* p = data.data();
    std::size_t left = data.size();
    while (left > 0) {
        ssize_t n = platform_send(fd, p, left);
        if (n <= 0) return false;
        p    += static_cast<std::size_t>(n);
        left -= static_cast<std::size_t>(n);
    }
    return true;
}

// ── Path / query helpers ──────────────────────────────────────────────────────

std::string split_query(std::string& path)
{
    auto q = path.find('?');
    if (q == std::string::npos) return {};
    std::string qs = path.substr(q + 1);
    path.resize(q);
    return qs;
}

std::string query_param(const std::string& qs, const std::string& key)
{
    std::string prefix = key + "=";
    auto it = qs.find(prefix);
    if (it == std::string::npos) return {};
    std::size_t start = it + prefix.size();
    auto end = qs.find('&', start);
    return qs.substr(start, end == std::string::npos ? std::string::npos : end - start);
}

std::string url_decode(const std::string& s)
{
    std::string out;
    out.reserve(s.size());
    for (std::size_t i = 0; i < s.size(); ++i) {
        if (s[i] == '%' && i + 2 < s.size()) {
            auto hex = [](char c) -> int {
                if (c >= '0' && c <= '9') return c - '0';
                if (c >= 'a' && c <= 'f') return c - 'a' + 10;
                if (c >= 'A' && c <= 'F') return c - 'A' + 10;
                return -1;
            };
            int h = hex(s[i+1]), l = hex(s[i+2]);
            if (h >= 0 && l >= 0) { out += static_cast<char>((h << 4) | l); i += 2; continue; }
        } else if (s[i] == '+') {
            out += ' '; continue;
        }
        out += s[i];
    }
    return out;
}

bool path_exists(const std::string& p)
{
#ifdef _WIN32
    struct _stat st{};
    return _stat(p.c_str(), &st) == 0;
#else
    struct stat st{};
    return ::stat(p.c_str(), &st) == 0;
#endif
}

static std::string exe_dir()
{
#ifdef _WIN32
    char buf[MAX_PATH];
    DWORD len = GetModuleFileNameA(nullptr, buf, MAX_PATH);
    if (len == 0) return ".";
    std::string path(buf, len);
    auto sep = path.find_last_of("\\/");
    return sep == std::string::npos ? "." : path.substr(0, sep);
#else
    return ".";
#endif
}

// ── JSON body bool helpers ────────────────────────────────────────────────────

bool body_has_true(const std::string& body, const std::string& key)
{
    return body.find("\"" + key + "\":true")  != std::string::npos ||
           body.find("\"" + key + "\": true") != std::string::npos;
}

bool body_has_false(const std::string& body, const std::string& key)
{
    return body.find("\"" + key + "\":false")  != std::string::npos ||
           body.find("\"" + key + "\": false") != std::string::npos;
}

// ── Read-only SQLite connection ───────────────────────────────────────────────

struct RoDb
{
    sqlite3* db = nullptr;

    explicit RoDb(const std::string& path) {
        if (!path.empty())
            sqlite3_open_v2(path.c_str(), &db,
                            SQLITE_OPEN_READONLY | SQLITE_OPEN_NOMUTEX, nullptr);
    }
    ~RoDb() { if (db) sqlite3_close(db); }
    bool ok() const { return db != nullptr; }
};

struct DbResult
{
    std::vector<std::string>              columns;
    std::vector<std::vector<std::string>> rows;
    std::vector<std::vector<bool>>        nulls;
    std::string                           error;
};

DbResult db_query(sqlite3* db, const std::string& sql, int limit = 500)
{
    DbResult result;
    sqlite3_stmt* stmt = nullptr;
    int rc = sqlite3_prepare_v2(db, sql.c_str(), -1, &stmt, nullptr);
    if (rc != SQLITE_OK) {
        result.error = sqlite3_errmsg(db);
        return result;
    }
    int ncols = sqlite3_column_count(stmt);
    for (int i = 0; i < ncols; ++i)
        result.columns.push_back(sqlite3_column_name(stmt, i) ? sqlite3_column_name(stmt, i) : "");
    int fetched = 0;
    while ((rc = sqlite3_step(stmt)) == SQLITE_ROW && fetched < limit) {
        std::vector<std::string> row(static_cast<std::size_t>(ncols));
        std::vector<bool>        isnull(static_cast<std::size_t>(ncols), false);
        for (int i = 0; i < ncols; ++i) {
            if (sqlite3_column_type(stmt, i) == SQLITE_NULL) {
                isnull[i] = true;
            } else {
                const char* t = reinterpret_cast<const char*>(sqlite3_column_text(stmt, i));
                row[i] = t ? t : "";
            }
        }
        result.rows.push_back(std::move(row));
        result.nulls.push_back(std::move(isnull));
        ++fetched;
    }
    sqlite3_finalize(stmt);
    return result;
}

std::string result_to_json(const DbResult& r)
{
    if (!r.error.empty())
        return "{\"columns\":[],\"rows\":[],\"error\":\"" + json_escape(r.error) + "\"}";

    std::string out = "{\"columns\":[";
    for (std::size_t i = 0; i < r.columns.size(); ++i) {
        if (i) out += ',';
        out += '"'; out += json_escape(r.columns[i]); out += '"';
    }
    out += "],\"rows\":[";
    for (std::size_t ri = 0; ri < r.rows.size(); ++ri) {
        if (ri) out += ',';
        out += '{';
        for (std::size_t ci = 0; ci < r.columns.size(); ++ci) {
            if (ci) out += ',';
            out += '"'; out += json_escape(r.columns[ci]); out += "\":";
            if (r.nulls[ri][ci]) out += "null";
            else { out += '"'; out += json_escape(r.rows[ri][ci]); out += '"'; }
        }
        out += '}';
    }
    out += "]}";
    return out;
}

// ── SSE per-connection state ──────────────────────────────────────────────────

struct SseState
{
    std::mutex              mtx;
    std::condition_variable cv;
    std::queue<LogEntry>    pending;
    bool                    closed{false};
};

// ── HTTP response helpers ─────────────────────────────────────────────────────

HttpResponse json_200(std::string body)
{
    return {200,
            {{"Access-Control-Allow-Origin", "*"},
             {"Content-Type", "application/json;charset=UTF-8"}},
            std::move(body)};
}

HttpResponse text_200(std::string body, const char* ct = "text/plain;charset=UTF-8")
{
    return {200,
            {{"Access-Control-Allow-Origin", "*"}, {"Content-Type", ct}},
            std::move(body)};
}

HttpResponse cors_preflight()
{
    return {204,
            {{"Access-Control-Allow-Origin", "*"},
             {"Access-Control-Allow-Methods", "GET,POST,OPTIONS"},
             {"Access-Control-Allow-Headers", "Content-Type"}},
            {}};
}

HttpResponse not_found()
{
    return {404, {{"Access-Control-Allow-Origin", "*"}}, "{\"error\":\"not found\"}"};
}

HttpResponse bad_request(const char* msg = "bad request")
{
    return {400, {{"Access-Control-Allow-Origin", "*"}},
            "{\"error\":\"" + std::string(msg) + "\"}"};
}

// ── Log entry serialisation ───────────────────────────────────────────────────

std::string log_entry_json(const LogEntry& e)
{
    std::string s = "{\"id\":";
    s += std::to_string(e.id);
    s += ",\"timestamp\":\""; s += json_escape(e.timestamp); s += '"';
    s += ",\"tag\":\"";       s += json_escape(e.tag);       s += '"';
    s += ",\"text\":\"";      s += json_escape(e.text);      s += "\"}";
    return s;
}

// ── /admin/ → serve web/index.html (fallback: embedded) ─────────────────────

void handle_root(socket_fd_t fd)
{
    std::string html_path = exe_dir() + "/web/index.html";
    FILE* f = fopen(html_path.c_str(), "rb");
    if (f) {
        fseek(f, 0, SEEK_END);
        long sz = ftell(f);
        fseek(f, 0, SEEK_SET);
        std::string data;
        if (sz > 0) { data.resize(static_cast<std::size_t>(sz)); fread(data.data(), 1, static_cast<std::size_t>(sz), f); }
        fclose(f);
        HttpResponse res;
        res.status = 200;
        res.headers["Content-Type"]                = "text/html;charset=UTF-8";
        res.headers["Access-Control-Allow-Origin"] = "*";
        res.headers["Cache-Control"]               = "no-cache";
        res.body = std::move(data);
        send_response(fd, res);
        return;
    }
    HttpResponse res;
    res.status = 200;
    res.headers["Content-Type"]                = "text/html;charset=UTF-8";
    res.headers["Access-Control-Allow-Origin"] = "*";
    res.headers["Cache-Control"]               = "no-cache";
    res.body = kAdminHtml;
    send_response(fd, res);
}

// ── /admin/api/i18n ───────────────────────────────────────────────────────────

void handle_i18n(socket_fd_t fd)
{
    send_response(fd, json_200(i18n::all_strings_json()));
}

// ── /admin/api/status ─────────────────────────────────────────────────────────

void handle_status(socket_fd_t fd)
{
    const auto& cfg = config();
    std::string dbpath = orm::opened_path();

    int db_tables = 0;
    {
        RoDb rodb(dbpath);
        if (rodb.ok()) {
            auto r = db_query(rodb.db,
                "SELECT COUNT(*) FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%'", 1);
            if (!r.rows.empty() && !r.nulls[0][0])
                db_tables = std::stoi(r.rows[0][0]);
        }
    }

    std::string body = "{";
    body += "\"port\":"         + std::to_string(kDefaultPort);
    body += ",\"admin_port\":"  + std::to_string(g_current_port);
    body += ",\"request_count\":" + std::to_string(request_id().load());
    body += ",\"fixture_count\":" + std::to_string(fixture_store().size());
    body += ",\"fixture_errors\":" + std::to_string(fixture_store().errors().size());
    body += ",\"db_tables\":"   + std::to_string(db_tables);
    body += ",\"db_path\":\"";  body += json_escape(dbpath); body += '"';
    body += ",\"lang\":\"";     body += json_escape(i18n::lang_code()); body += '"';
    body += ",\"proxy_enabled\":"; body += (cfg.proxy_enabled ? "true" : "false");
    body += ",\"game_server_url\":\""; body += json_escape(cfg.game_server_url); body += '"';
    body += ",\"data_dir\":\""; body += json_escape(cfg.data_dir); body += '"';
    body += ",\"started_at\":"; body += std::to_string(g_started_at);
    body += '}';

    send_response(fd, json_200(body));
}

// ── /admin/api/health ─────────────────────────────────────────────────────────

void handle_health(socket_fd_t fd)
{
    struct Check { std::string name; std::string status; std::string detail; };
    std::vector<Check> checks;

    auto add = [&](std::string name, bool ok, std::string detail = {}) {
        checks.push_back({std::move(name), ok ? "ok" : "fail", std::move(detail)});
    };
    auto add_warn = [&](std::string name, bool warn, std::string detail = {}) {
        checks.push_back({std::move(name), warn ? "warn" : "ok", std::move(detail)});
    };

    add("Admin Server",
        true,
        "port " + std::to_string(g_current_port));

    add("Game Server",
        running().load(),
        running().load() ? "port " + std::to_string(kDefaultPort) + " active" : "stopped");

    std::string dbpath = orm::opened_path();
    bool db_ok = !dbpath.empty();
    std::string db_detail;
    int db_table_count = 0;
    {
        RoDb rodb(dbpath);
        if (rodb.ok()) {
            auto r = db_query(rodb.db,
                "SELECT COUNT(*) FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%'", 1);
            if (!r.rows.empty() && !r.nulls[0][0]) {
                db_table_count = std::stoi(r.rows[0][0]);
                db_detail = dbpath + " (" + std::to_string(db_table_count) + " tables)";
            } else {
                db_detail = dbpath;
            }
        } else {
            db_ok = false;
            db_detail = "not open";
        }
    }
    add("DB Connection", db_ok, db_detail);
    add("DB Tables",
        db_table_count > 0,
        std::to_string(db_table_count) + " tables");

    bool fix_loaded = fixture_store().loaded();
    std::size_t fix_cnt = fixture_store().size();
    add("Fixtures Loaded",
        fix_loaded,
        fix_loaded ? std::to_string(fix_cnt) + " endpoints" : "not loaded");

    std::size_t fix_errs = fixture_store().errors().size();
    add_warn("Fixture Errors",
             fix_errs > 0,
             fix_errs > 0 ? std::to_string(fix_errs) + " failed" : "none");

    OfflineData& od = offline_data();
    bool od_ok = od.size() > 0;
    std::string od_src = od.source();
    add("Offline Data",
        od_ok,
        od.from_blob()
            ? "blob: " + od_src + " (" + std::to_string(od.size()) + " entries)"
            : "fs: "   + od_src + " (" + std::to_string(od.size()) + " entries)");

    checks.push_back({"Log Sink", "ok",
                       "buffer: " + std::to_string(log_sink_recent(2000).size()) + " entries"});

    const auto& cfg = config();
    checks.push_back({"Proxy Mode",
                       cfg.proxy_enabled ? "ok" : "ok",
                       cfg.proxy_enabled
                           ? "enabled → " + cfg.game_server_url
                           : "disabled (offline)"});

    bool data_ok = path_exists(cfg.data_dir);
    add("Data Dir", data_ok, cfg.data_dir);

    std::string adb_resolved = resolve_adb_path(cfg.data_dir);
    bool adb_file_ok = (adb_resolved != "adb") && path_exists(adb_resolved);
    add("ADB Path", adb_file_ok, adb_resolved);

    std::string edir = exe_dir();
#ifdef _WIN32
    std::string injector_path = edir + "\\eversoul_injector.exe";
    std::string so_path_check  = edir + "\\android\\libswappywrapper.so";
#else
    std::string injector_path = edir + "/eversoul_injector";
    std::string so_path_check  = edir + "/android/libswappywrapper.so";
#endif
    bool injector_ok = path_exists(injector_path);
    bool so_ok       = path_exists(so_path_check);
    add("Injector Exe", injector_ok, injector_path);
    add("SO (arm64)",   so_ok,       so_path_check);

    bool inj_up = g_injector_running.load();
    checks.push_back({"Injector Process", inj_up ? "ok" : "ok", inj_up ? "running" : "idle"});

    std::string body = "[";
    for (std::size_t i = 0; i < checks.size(); ++i) {
        if (i) body += ',';
        body += "{\"name\":\"";   body += json_escape(checks[i].name);   body += '"';
        body += ",\"status\":\""; body += checks[i].status;               body += '"';
        body += ",\"detail\":\""; body += json_escape(checks[i].detail);  body += "\"}";
    }
    body += ']';

    send_response(fd, json_200(body));
}

// ── /admin/api/logs/stream (SSE) ──────────────────────────────────────────────

void handle_logs_stream(socket_fd_t fd)
{
    static const char* kSseHeaders =
        "HTTP/1.1 200 OK\r\n"
        "Content-Type: text/event-stream\r\n"
        "Cache-Control: no-cache\r\n"
        "Connection: keep-alive\r\n"
        "Access-Control-Allow-Origin: *\r\n"
        "\r\n";

    if (!send_checked(fd, kSseHeaders)) {
        socket_close(fd);
        return;
    }

    auto state = std::make_shared<SseState>();

    std::size_t sub_id = log_sink_subscribe([state](const LogEntry& entry) {
        std::lock_guard<std::mutex> lk(state->mtx);
        if (!state->closed) {
            state->pending.push(entry);
            state->cv.notify_one();
        }
    });

    auto last_ping = std::chrono::steady_clock::now();

    while (g_running.load()) {
        std::queue<LogEntry> batch;
        {
            std::unique_lock<std::mutex> lk(state->mtx);
            state->cv.wait_for(lk, std::chrono::seconds(1), [&] {
                return !state->pending.empty() || state->closed;
            });
            if (state->closed) break;
            std::swap(batch, state->pending);
        }

        bool ok = true;
        while (!batch.empty() && ok) {
            std::string msg = "data: " + log_entry_json(batch.front()) + "\n\n";
            ok = send_checked(fd, msg);
            batch.pop();
        }
        if (!ok) break;

        auto now = std::chrono::steady_clock::now();
        if (now - last_ping > std::chrono::seconds(25)) {
            if (!send_checked(fd, ": keepalive\n\n")) break;
            last_ping = now;
        }
    }

    {
        std::lock_guard<std::mutex> lk(state->mtx);
        state->closed = true;
    }
    log_sink_unsubscribe(sub_id);
    socket_close(fd);
}

// ── /admin/api/logs/recent ────────────────────────────────────────────────────

void handle_logs_recent(socket_fd_t fd, const std::string& qs)
{
    std::string ns = query_param(qs, "n");
    std::size_t n = 200;
    if (!ns.empty()) {
        try { n = static_cast<std::size_t>(std::stoull(ns)); } catch (...) {}
    }
    n = std::min(n, std::size_t{2000});

    auto entries = log_sink_recent(n);
    std::string body = "[";
    for (std::size_t i = 0; i < entries.size(); ++i) {
        if (i) body += ',';
        body += log_entry_json(entries[i]);
    }
    body += ']';
    send_response(fd, json_200(body));
}

// ── /admin/api/logs/clear ─────────────────────────────────────────────────────

void handle_logs_clear(socket_fd_t fd)
{
    log_sink_clear();
    send_response(fd, json_200("{\"ok\":true}"));
}

// ── /admin/api/db/tables ──────────────────────────────────────────────────────

void handle_db_tables(socket_fd_t fd)
{
    std::string dbpath = orm::opened_path();
    if (dbpath.empty()) {
        send_response(fd, json_200("[]"));
        return;
    }
    RoDb rodb(dbpath);
    if (!rodb.ok()) {
        send_response(fd, json_200("[]"));
        return;
    }
    auto r = db_query(rodb.db,
        "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%' ORDER BY name");

    std::string body = "[";
    bool first = true;
    for (std::size_t ri = 0; ri < r.rows.size(); ++ri) {
        if (r.nulls[ri][0]) continue;
        const std::string& tname = r.rows[ri][0];
        int cnt = orm::row_count(tname);
        if (!first) body += ',';
        first = false;
        body += "{\"name\":\""; body += json_escape(tname); body += '"';
        body += ",\"rows\":";   body += std::to_string(cnt); body += '}';
    }
    body += ']';
    send_response(fd, json_200(body));
}

// ── /admin/api/db/schema/<name> ──────────────────────────────────────────────

void handle_db_schema(socket_fd_t fd, const std::string& raw_name)
{
    std::string dbpath = orm::opened_path();
    if (dbpath.empty()) { send_response(fd, bad_request("db not ready")); return; }

    RoDb rodb(dbpath);
    if (!rodb.ok()) { send_response(fd, bad_request("db open failed")); return; }

    auto valid_r = db_query(rodb.db,
        "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%'");
    bool found = false;
    for (std::size_t ri = 0; ri < valid_r.rows.size(); ++ri) {
        if (!valid_r.nulls[ri][0] && valid_r.rows[ri][0] == raw_name) { found = true; break; }
    }
    if (!found) { send_response(fd, not_found()); return; }

    auto r = db_query(rodb.db,
        "SELECT sql FROM sqlite_master WHERE type='table' AND name='" + raw_name + "'", 1);

    std::string ddl;
    if (!r.rows.empty() && !r.nulls[0][0]) ddl = r.rows[0][0];

    auto idx_r = db_query(rodb.db,
        "SELECT sql FROM sqlite_master WHERE type='index' AND tbl_name='" + raw_name + "' AND sql IS NOT NULL");
    for (std::size_t ri = 0; ri < idx_r.rows.size(); ++ri) {
        if (!idx_r.nulls[ri][0]) { ddl += "\n" + idx_r.rows[ri][0] + ";"; }
    }

    auto col_r = db_query(rodb.db, "PRAGMA table_info(\"" + raw_name + "\")");
    std::string cols = "[";
    for (std::size_t ri = 0; ri < col_r.rows.size(); ++ri) {
        if (ri) cols += ",";
        cols += "{";
        for (std::size_t ci = 0; ci < col_r.columns.size(); ++ci) {
            if (ci) cols += ",";
            cols += "\"" + json_escape(col_r.columns[ci]) + "\":";
            if (col_r.nulls[ri][ci]) cols += "null";
            else cols += "\"" + json_escape(col_r.rows[ri][ci]) + "\"";
        }
        cols += "}";
    }
    cols += "]";

    int row_cnt = orm::row_count(raw_name);
    std::string body = "{";
    body += "\"ddl\":\"";     body += json_escape(ddl);   body += "\"";
    body += ",\"columns\":";  body += cols;
    body += ",\"row_count\":"; body += std::to_string(row_cnt);
    body += "}";
    send_response(fd, json_200(body));
}

// ── /admin/api/db/table/<name>[?limit=N&offset=M] ────────────────────────────

void handle_db_table(socket_fd_t fd, const std::string& encoded_name, const std::string& qs)
{
    std::string raw_name = url_decode(encoded_name);

    std::string dbpath = orm::opened_path();
    if (dbpath.empty()) { send_response(fd, bad_request("db not ready")); return; }

    RoDb rodb(dbpath);
    if (!rodb.ok()) { send_response(fd, bad_request("db open failed")); return; }

    auto valid_r = db_query(rodb.db,
        "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%'");
    bool found = false;
    for (std::size_t ri = 0; ri < valid_r.rows.size(); ++ri) {
        if (!valid_r.nulls[ri][0] && valid_r.rows[ri][0] == raw_name) {
            found = true; break;
        }
    }
    if (!found) { send_response(fd, not_found()); return; }

    auto qs_get = [&](const std::string& key) -> std::string {
        std::string needle = key + "=";
        auto pos = qs.find(needle);
        if (pos == std::string::npos) return {};
        pos += needle.size();
        auto end = qs.find('&', pos);
        return qs.substr(pos, end == std::string::npos ? std::string::npos : end - pos);
    };
    std::string lim_s    = qs_get("limit");
    std::string offset_s = qs_get("offset");
    int limit  = lim_s.empty()    ? 500  : std::clamp(std::stoi(lim_s),    1, 10000);
    int offset = offset_s.empty() ? 0    : std::max(std::stoi(offset_s), 0);

    auto r = db_query(rodb.db,
        "SELECT * FROM \"" + raw_name + "\" LIMIT " + std::to_string(limit) +
        " OFFSET " + std::to_string(offset));
    send_response(fd, json_200(result_to_json(r)));
}

// ── /admin/api/fixtures ───────────────────────────────────────────────────────

void handle_fixtures(socket_fd_t fd)
{
    OfflineData& od = offline_data();
    std::vector<std::string> paths = od.list("responses/");

    std::string body = "[";
    bool first = true;
    for (const auto& p : paths) {
        std::string fn = p.substr(p.find_last_of('/') + 1);
        if (fn.empty() || fn == "_manifest.json") continue;
        auto content = od.read(p);
        std::size_t bytes = content ? content->size() : 0;
        if (!first) body += ',';
        first = false;
        body += "{\"path\":\"";  body += json_escape(p);                  body += '"';
        body += ",\"bytes\":";   body += std::to_string(bytes);           body += '}';
    }
    body += ']';
    send_response(fd, json_200(body));
}

// ── /admin/api/fixtures/<encoded-path> ───────────────────────────────────────

void handle_fixture_content(socket_fd_t fd, const std::string& encoded)
{
    std::string rel = url_decode(encoded);
    if (rel.empty() || rel.find("..") != std::string::npos) {
        send_response(fd, bad_request("invalid path"));
        return;
    }
    auto content = offline_data().read(rel);
    if (!content) { send_response(fd, not_found()); return; }
    send_response(fd, text_200(*content, "application/json;charset=UTF-8"));
}

// ── /admin/api/config (POST) ──────────────────────────────────────────────────

void handle_config(socket_fd_t fd, const HttpRequest& req)
{
    const std::string& body = req.body;
    auto& cfg = config();

    if (body_has_true(body, "proxy_enabled"))       cfg.proxy_enabled = true;
    else if (body_has_false(body, "proxy_enabled")) cfg.proxy_enabled = false;

    {
        std::string v = body_json_string(body, "game_server_url");
        if (!v.empty()) cfg.game_server_url = v;
    }
    {
        std::string v = body_json_string(body, "data_dir");
        if (!v.empty()) cfg.data_dir = v;
    }
    {
        std::string v = body_json_string(body, "lang");
        if (!v.empty()) i18n::set_lang(v);
    }

    send_response(fd, json_200("{\"ok\":true}"));
}

// ── /admin/api/adb/current (GET) ─────────────────────────────────────────────

void handle_adb_current(socket_fd_t fd)
{
    std::string path = load_saved_adb_path(config().data_dir);
    send_response(fd, json_200("{\"path\":\"" + json_escape(path) + "\"}"));
}

// ── /admin/api/adb/set (POST) ─────────────────────────────────────────────────

void handle_adb_set(socket_fd_t fd, const HttpRequest& req)
{
    std::string path = body_json_string(req.body, "path");
    if (path.empty()) { send_response(fd, bad_request("missing path")); return; }
    save_adb_path(config().data_dir, path);
    send_response(fd, json_200("{\"ok\":true}"));
}

// ── /admin/api/logo (GET) — serve logo.png ───────────────────────────────────

void handle_logo(socket_fd_t fd)
{
    std::string logo_path = exe_dir() + "/web/logo.png";
    FILE* f = fopen(logo_path.c_str(), "rb");
    if (!f) {
        send_response(fd, not_found());
        return;
    }
    fseek(f, 0, SEEK_END);
    long size = ftell(f);
    fseek(f, 0, SEEK_SET);
    std::string data;
    if (size > 0) {
        data.resize(static_cast<std::size_t>(size));
        fread(data.data(), 1, static_cast<std::size_t>(size), f);
    }
    fclose(f);

    HttpResponse res;
    res.status = 200;
    res.headers["Content-Type"]                = "image/png";
    res.headers["Access-Control-Allow-Origin"] = "*";
    res.headers["Cache-Control"]               = "max-age=3600";
    res.body = std::move(data);
    send_response(fd, res);
}

// ── /admin/api/gamedata/<section> (GET / POST) ───────────────────────────────

void handle_gamedata_get(socket_fd_t fd, const std::string& section)
{
    std::ostringstream j;
    if (section == "currencies") {
        auto currencies = orm::currencies();
        j << "[";
        bool first = true;
        for (const auto& c : currencies) {
            if (!first) j << ",";
            j << "{\"type\":" << c.type << ",\"value\":" << c.value << "}";
            first = false;
        }
        j << "]";
        send_response(fd, json_200(j.str()));
        return;
    } else if (section == "heroes") {
        auto heroes = orm::heroes();
        j << "[";
        bool first = true;
        for (const auto& h : heroes) {
            if (!first) j << ",";
            j << "{\"idx\":\"" << json_escape(h.idx) << "\""
              << ",\"heroNo\":" << h.heroNo
              << ",\"level\":" << h.level
              << ",\"gradeSno\":" << h.gradeSno
              << ",\"raceSno\":" << h.raceSno
              << ",\"isLock\":" << h.isLock << "}";
            first = false;
        }
        j << "]";
        send_response(fd, json_200(j.str()));
        return;
    } else if (section == "items") {
        auto items = orm::item_etcs();
        j << "[";
        bool first = true;
        for (const auto& it : items) {
            if (!first) j << ",";
            j << "{\"itemNo\":" << it.itemNo << ",\"cnt\":" << it.cnt << "}";
            first = false;
        }
        j << "]";
        send_response(fd, json_200(j.str()));
        return;
    } else if (section == "summary") {
        auto currencies = orm::currencies();
        auto heroes     = orm::heroes();
        int64_t gold = 0, crystal = 0, stamina = 0;
        for (const auto& c : currencies) {
            if      (c.type ==  1) gold    = c.value;
            else if (c.type ==  2) crystal = c.value;
            else if (c.type == 11) stamina = c.value;
        }
        j << "{\"hero_count\":" << heroes.size()
          << ",\"gold\":"       << gold
          << ",\"crystal\":"    << crystal
          << ",\"stamina\":"    << stamina << "}";
        send_response(fd, json_200(j.str()));
        return;
    } else if (section == "userinfo") {
        std::string nickname = orm::kv_get("nickname");
        std::string level    = orm::kv_get("tree_level", "1");
        auto currencies      = orm::currencies();
        int64_t gold = 0, crystal = 0, stamina = 0, arena = 0;
        for (const auto& c : currencies) {
            if      (c.type ==  1) gold    = c.value;
            else if (c.type ==  2) crystal = c.value;
            else if (c.type == 11) stamina = c.value;
            else if (c.type == 14) arena   = c.value;
        }
        j << "{\"nickname\":\"" << json_escape(nickname) << "\""
          << ",\"level\":"    << level
          << ",\"gold\":"     << gold
          << ",\"crystal\":"  << crystal
          << ",\"stamina\":"  << stamina
          << ",\"arena_tickets\":" << arena << "}";
    } else if (section == "settings") {
        std::string proxy = orm::kv_get("proxy_enabled", "false");
        std::string url   = orm::kv_get("game_server_url");
        j << "{\"proxy_enabled\":" << proxy
          << ",\"game_server_url\":\"" << json_escape(url) << "\"}";
    } else {
        send_response(fd, json_200("{\"error\":\"unknown section\"}"));
        return;
    }
    send_response(fd, json_200(j.str()));
}

void handle_gamedata_post(socket_fd_t fd, const std::string& section, const HttpRequest& req)
{
    if (section == "userinfo") {
        auto get_int64 = [&](const std::string& key) -> std::optional<int64_t> {
            auto pos = req.body.find("\"" + key + "\":");
            if (pos == std::string::npos) return std::nullopt;
            pos += key.size() + 3;
            while (pos < req.body.size() && req.body[pos] == ' ') ++pos;
            size_t end = pos;
            while (end < req.body.size() && (std::isdigit(req.body[end]) || req.body[end] == '-')) ++end;
            if (end == pos) return std::nullopt;
            return std::stoll(req.body.substr(pos, end - pos));
        };
        std::string nick = body_json_string(req.body, "nickname");
        if (!nick.empty()) orm::kv_set("nickname", nick);
        auto level = get_int64("level");
        if (level) orm::kv_set("tree_level", std::to_string(*level));
        auto currencies = orm::currencies();
        auto cur_val = [&](int type) -> int64_t {
            for (const auto& c : currencies) if (c.type == type) return c.value;
            return 0;
        };
        static const struct { const char* key; int type; } kMap[] = {
            {"gold", 1}, {"crystal", 2}, {"stamina", 11}, {"arena_tickets", 14}
        };
        for (const auto& m : kMap) {
            auto nv = get_int64(m.key);
            if (nv) {
                int64_t delta = *nv - cur_val(m.type);
                if (delta != 0) orm::add_currency(m.type, delta);
            }
        }
        send_response(fd, json_200("{\"ok\":true}"));
    } else if (section == "settings") {
        std::string url = body_json_string(req.body, "game_server_url");
        if (!url.empty()) orm::kv_set("game_server_url", url);
        send_response(fd, json_200("{\"ok\":true}"));
    } else {
        send_response(fd, json_200("{\"ok\":false,\"reason\":\"unknown section\"}"));
    }
}

// ── /admin/api/setup/status (GET) ────────────────────────────────────────────

void handle_setup_status(socket_fd_t fd)
{
    std::string adb = load_saved_adb_path(config().data_dir);
    bool complete = !adb.empty() && adb != "adb" && path_exists(adb);
    send_response(fd, json_200(std::string("{\"complete\":") + (complete ? "true" : "false") + "}"));
}

// ── /admin/api/setup/complete (POST) ─────────────────────────────────────────

void handle_setup_complete(socket_fd_t fd)
{
    send_response(fd, json_200("{\"ok\":true}"));
}

// ── /admin/api/adb/validate (POST) ───────────────────────────────────────────

void handle_adb_validate(socket_fd_t fd, const HttpRequest& req)
{
    std::string input = body_json_string(req.body, "path");
    if (input.empty()) {
        send_response(fd, json_200("{\"ok\":false,\"resolved\":\"\",\"reason\":\"empty path\"}"));
        return;
    }

    auto try_path = [](const std::string& p) -> bool {
#ifdef _WIN32
        struct _stat st{};
        if (_stat(p.c_str(), &st) != 0) return false;
        return (st.st_mode & _S_IFREG) != 0;
#else
        struct stat st{};
        if (::stat(p.c_str(), &st) != 0) return false;
        return S_ISREG(st.st_mode);
#endif
    };

    auto is_dir = [](const std::string& p) -> bool {
#ifdef _WIN32
        struct _stat st{};
        if (_stat(p.c_str(), &st) != 0) return false;
        return (st.st_mode & _S_IFDIR) != 0;
#else
        struct stat st{};
        if (::stat(p.c_str(), &st) != 0) return false;
        return S_ISDIR(st.st_mode);
#endif
    };

    std::string resolved;

    if (try_path(input)) {
        resolved = input;
    } else if (is_dir(input)) {
#ifdef _WIN32
        std::string candidate = input + "\\adb.exe";
        if (!try_path(candidate)) candidate = input + "/adb.exe";
#else
        std::string candidate = input + "/adb";
#endif
        if (try_path(candidate)) resolved = candidate;
    }

    if (resolved.empty()) {
        send_response(fd, json_200(
            "{\"ok\":false,\"resolved\":\"\",\"reason\":\"adb.exe not found at path\"}"));
        return;
    }
    send_response(fd, json_200(
        "{\"ok\":true,\"resolved\":\"" + json_escape(resolved) + "\"}"));
}

// ── /admin/api/accounts (GET, POST) ──────────────────────────────────────────

void handle_accounts_list(socket_fd_t fd)
{
    namespace fs = std::filesystem;
    const std::string dir = config().data_dir;
    auto list   = orm::accounts(dir);
    auto active = orm::active_account();
    std::string active_id = active ? active->id : "";

    std::string body = "[";
    for (std::size_t i = 0; i < list.size(); ++i) {
        if (i) body += ',';
        const auto& a = list[i];
        body += "{\"id\":\""        + json_escape(a.id)        + "\"";
        body += ",\"nickname\":\""  + json_escape(a.nickname)  + "\"";
        body += ",\"player_id\":\"" + json_escape(a.player_id) + "\"";
        body += ",\"idp_code\":\""  + json_escape(a.idp_code)  + "\"";
        body += ",\"idp_id\":\""    + json_escape(a.idp_id)    + "\"";
        body += ",\"created_at\":"  + std::to_string(a.created_at);
        body += ",\"last_login\":"  + std::to_string(a.last_login);
        body += ",\"active\":"      + std::string(a.id == active_id ? "true" : "false");

        std::string gpath = orm::account_game_db_path(dir, a.id);
        int hero_count = 0;
        {
            RoDb rodb(gpath);
            if (rodb.ok()) {
                auto r = db_query(rodb.db, "SELECT COUNT(*) FROM hero", 1);
                if (!r.rows.empty() && !r.nulls[0][0]) hero_count = std::stoi(r.rows[0][0]);
            }
        }
        body += ",\"hero_count\":" + std::to_string(hero_count);
        body += '}';
    }
    body += ']';
    send_response(fd, json_200(body));
}

void handle_accounts_create(socket_fd_t fd, const HttpRequest& req)
{
    std::string nickname = body_json_string(req.body, "nickname");
    std::string idp_code = body_json_string(req.body, "idpCode");
    std::string idp_id   = body_json_string(req.body, "idpId");
    if (nickname.empty()) { send_response(fd, bad_request("missing nickname")); return; }
    std::string id = orm::create_account(nickname, idp_code, idp_id, config().data_dir);
    if (id.empty()) { send_response(fd, bad_request("account creation failed")); return; }
    log_line(0, "ADMIN", "account created id=" + id);
    send_response(fd, json_200("{\"ok\":true,\"id\":\"" + json_escape(id) + "\"}"));
}

// ── /admin/api/accounts/{id} (GET, PATCH, DELETE) ────────────────────────────

void handle_account_get(socket_fd_t fd, const std::string& acct_id)
{
    const std::string dir = config().data_dir;
    auto acct = orm::account_by_id(acct_id, dir);
    if (!acct) { send_response(fd, not_found()); return; }
    auto active = orm::active_account();
    bool is_active = active && active->id == acct_id;
    std::string body;
    body += "{\"id\":\""        + json_escape(acct->id)        + "\"";
    body += ",\"nickname\":\""  + json_escape(acct->nickname)  + "\"";
    body += ",\"player_id\":\"" + json_escape(acct->player_id) + "\"";
    body += ",\"idp_code\":\""  + json_escape(acct->idp_code)  + "\"";
    body += ",\"idp_id\":\""    + json_escape(acct->idp_id)    + "\"";
    body += ",\"created_at\":"  + std::to_string(acct->created_at);
    body += ",\"last_login\":"  + std::to_string(acct->last_login);
    body += ",\"active\":"      + std::string(is_active ? "true" : "false");
    body += '}';
    send_response(fd, json_200(body));
}

void handle_account_update(socket_fd_t fd, const std::string& acct_id, const HttpRequest& req)
{
    std::string nickname  = body_json_string(req.body, "nickname");
    std::string player_id = body_json_string(req.body, "player_id");
    std::string idp_code  = body_json_string(req.body, "idp_code");
    if (!orm::update_account(acct_id, nickname, player_id, idp_code, config().data_dir)) {
        send_response(fd, not_found()); return;
    }
    log_line(0, "ADMIN", "account updated id=" + acct_id);
    send_response(fd, json_200("{\"ok\":true}"));
}

void handle_account_delete(socket_fd_t fd, const std::string& acct_id)
{
    if (!orm::delete_account(acct_id, config().data_dir)) {
        send_response(fd, not_found()); return;
    }
    log_line(0, "ADMIN", "account deleted id=" + acct_id);
    send_response(fd, json_200("{\"ok\":true}"));
}

// ── /admin/api/accounts/{id}/select (POST) ───────────────────────────────────

void handle_account_select(socket_fd_t fd, const std::string& acct_id)
{
    if (!orm::select_account(acct_id, config().data_dir)) {
        send_response(fd, not_found()); return;
    }
    log_line(0, "ADMIN", "account selected id=" + acct_id);
    send_response(fd, json_200("{\"ok\":true}"));
}

// ── /admin/api/accounts/{id}/import (POST) ───────────────────────────────────

void handle_account_import(socket_fd_t fd, const std::string& acct_id, const HttpRequest& req)
{
    if (req.body.empty()) { send_response(fd, bad_request("empty body")); return; }
    if (!orm::import_userinfo_for(acct_id, req.body, config().data_dir)) {
        send_response(fd, bad_request("import failed")); return;
    }
    log_line(0, "ADMIN", "userinfo imported for account id=" + acct_id);
    send_response(fd, json_200("{\"ok\":true}"));
}

// ── /admin/api/accounts/{id}/gamedata/{section} (GET, POST) ──────────────────

void handle_account_gamedata_get(socket_fd_t fd, const std::string& acct_id, const std::string& section)
{
    std::string gpath = orm::account_game_db_path(config().data_dir, acct_id);
    RoDb rodb(gpath);
    if (!rodb.ok()) { send_response(fd, bad_request("game db not found")); return; }

    std::ostringstream j;
    if (section == "currencies") {
        auto r = db_query(rodb.db, "SELECT type, value FROM currency");
        j << "[";
        for (std::size_t ri = 0; ri < r.rows.size(); ++ri) {
            if (ri) j << ",";
            j << "{\"type\":" << r.rows[ri][0] << ",\"value\":" << r.rows[ri][1] << "}";
        }
        j << "]";
    } else if (section == "heroes") {
        auto r = db_query(rodb.db, "SELECT idx,heroNo,level,gradeSno,raceSno,isLock FROM hero");
        j << "[";
        for (std::size_t ri = 0; ri < r.rows.size(); ++ri) {
            if (ri) j << ",";
            j << "{\"idx\":\""  << json_escape(r.rows[ri][0]) << "\""
              << ",\"heroNo\":" << r.rows[ri][1]
              << ",\"level\":"  << r.rows[ri][2]
              << ",\"gradeSno\":"<< r.rows[ri][3]
              << ",\"raceSno\":" << r.rows[ri][4]
              << ",\"isLock\":"  << r.rows[ri][5] << "}";
        }
        j << "]";
    } else if (section == "userinfo") {
        auto kv_r = db_query(rodb.db, "SELECT k,v FROM kv");
        std::string nickname, gold_s = "0", crystal_s = "0", stamina_s = "0";
        for (const auto& row : kv_r.rows) {
            if (row[0] == "nickname") nickname = row[1];
        }
        auto cur_r = db_query(rodb.db, "SELECT type,value FROM currency");
        for (const auto& row : cur_r.rows) {
            int type = std::stoi(row[0]);
            if      (type ==  1) gold_s    = row[1];
            else if (type ==  2) crystal_s = row[1];
            else if (type == 11) stamina_s = row[1];
        }
        j << "{\"nickname\":\"" << json_escape(nickname) << "\""
          << ",\"gold\":"     << gold_s
          << ",\"crystal\":"  << crystal_s
          << ",\"stamina\":"  << stamina_s << "}";
    } else {
        send_response(fd, json_200("{\"error\":\"unknown section\"}"));
        return;
    }
    send_response(fd, json_200(j.str()));
}

void handle_account_gamedata_post(socket_fd_t fd, const std::string& acct_id,
                                   const std::string& section, const HttpRequest& req)
{
    auto active = orm::active_account();
    bool is_active = active && active->id == acct_id;
    if (!is_active) {
        if (!orm::select_account(acct_id, config().data_dir)) {
            send_response(fd, not_found()); return;
        }
    }
    handle_gamedata_post(fd, section, req);
    if (!is_active && active) {
        orm::select_account(active->id, config().data_dir);
    }
}

// ── /admin/api/files/list?prefix=... ─────────────────────────────────────────

void handle_files_list(socket_fd_t fd, const std::string& qs)
{
    namespace fs = std::filesystem;
    std::string prefix = url_decode(query_param(qs, "prefix"));
    std::vector<std::string> paths = offline_data().list(prefix);

    const std::string& data_dir = config().data_dir;
    if (!data_dir.empty() && !prefix.empty()) {
        fs::path dir = fs::path(data_dir) / prefix;
        if (fs::is_directory(dir)) {
            for (const auto& entry : fs::directory_iterator(dir)) {
                if (!entry.is_regular_file()) continue;
                std::string rel = prefix + entry.path().filename().string();
                bool dup = false;
                for (const auto& p : paths) if (p == rel) { dup = true; break; }
                if (!dup) paths.push_back(rel);
            }
        }
    }

    std::string body = "[";
    for (std::size_t i = 0; i < paths.size(); ++i) {
        if (i) body += ',';
        body += "{\"path\":\""; body += json_escape(paths[i]); body += "\"}";
    }
    body += "]";
    send_response(fd, json_200(body));
}

// ── /admin/api/files?path=... (GET) ──────────────────────────────────────────

void handle_file_read(socket_fd_t fd, const std::string& qs)
{
    std::string rel = url_decode(query_param(qs, "path"));
    if (rel.empty() || rel.find("..") != std::string::npos) {
        send_response(fd, bad_request("invalid path")); return;
    }

    if (auto content = offline_data().read(rel)) {
        send_response(fd, text_200(*content, "application/json;charset=UTF-8")); return;
    }

    const std::string& data_dir = config().data_dir;
    if (!data_dir.empty()) {
        namespace fs = std::filesystem;
        fs::path fpath = fs::path(data_dir) / rel;
        std::ifstream f(fpath, std::ios::binary);
        if (f) {
            std::ostringstream ss;
            ss << f.rdbuf();
            send_response(fd, text_200(ss.str(), "application/json;charset=UTF-8")); return;
        }
    }
    send_response(fd, not_found());
}

// ── /admin/api/files?path=... (POST) ─────────────────────────────────────────

void handle_file_write(socket_fd_t fd, const std::string& qs, const HttpRequest& req)
{
    std::string rel = url_decode(query_param(qs, "path"));
    if (rel.empty() || rel.find("..") != std::string::npos) {
        send_response(fd, bad_request("invalid path")); return;
    }

    const std::string& data_dir = config().data_dir;
    if (data_dir.empty()) { send_response(fd, bad_request("data_dir not set")); return; }

    namespace fs = std::filesystem;
    fs::path fpath = fs::path(data_dir) / rel;
    std::error_code ec;
    fs::create_directories(fpath.parent_path(), ec);
    if (ec) { send_response(fd, bad_request("cannot create directory")); return; }

    std::ofstream f(fpath, std::ios::binary);
    if (!f) { send_response(fd, bad_request("cannot write file")); return; }
    f << req.body;
    f.close();

    log_line(0, "ADMIN", "file written: " + rel + " (" + std::to_string(req.body.size()) + " bytes)");
    send_response(fd, json_200("{\"ok\":true,\"path\":\"" + json_escape(rel) + "\"}"));
}

// ── Serve static web file from web/ dir ──────────────────────────────────────

void serve_static_web_file(socket_fd_t fd, const std::string& filename)
{
    if (filename.empty() || filename.find("..") != std::string::npos ||
        filename.find('/') != std::string::npos || filename.find('\\') != std::string::npos) {
        send_response(fd, not_found());
        return;
    }

    std::string file_path = exe_dir() + "/web/" + filename;
    FILE* f = fopen(file_path.c_str(), "rb");
    if (!f) { send_response(fd, not_found()); return; }

    fseek(f, 0, SEEK_END);
    long sz = ftell(f);
    fseek(f, 0, SEEK_SET);
    std::string data;
    if (sz > 0) {
        data.resize(static_cast<std::size_t>(sz));
        fread(data.data(), 1, static_cast<std::size_t>(sz), f);
    }
    fclose(f);

    const char* ct = "application/octet-stream";
    auto ext_pos = filename.rfind('.');
    if (ext_pos != std::string::npos) {
        std::string ext = filename.substr(ext_pos + 1);
        if      (ext == "css")  ct = "text/css;charset=UTF-8";
        else if (ext == "js")   ct = "application/javascript;charset=UTF-8";
        else if (ext == "html") ct = "text/html;charset=UTF-8";
        else if (ext == "png")  ct = "image/png";
        else if (ext == "jpg" || ext == "jpeg") ct = "image/jpeg";
        else if (ext == "svg")  ct = "image/svg+xml";
        else if (ext == "ico")  ct = "image/x-icon";
        else if (ext == "json") ct = "application/json;charset=UTF-8";
        else if (ext == "woff2") ct = "font/woff2";
    }

    HttpResponse res;
    res.status = 200;
    res.headers["Content-Type"]                = ct;
    res.headers["Access-Control-Allow-Origin"] = "*";
    res.headers["Cache-Control"]               = "max-age=60";
    res.body = std::move(data);
    send_response(fd, res);
}

// ── Injector process runner (background thread) ───────────────────────────────

static void run_injector_bg(const std::string& serial)
{
    std::string dir = exe_dir();
#ifdef _WIN32
    std::string injector = dir + "\\eversoul_injector.exe";
    std::string so_path  = dir + "\\android\\libswappywrapper.so";
    std::string srv_exe  = dir + "\\eversoul_offline_server.exe";
#else
    std::string injector = dir + "/eversoul_injector";
    std::string so_path  = dir + "/android/libswappywrapper.so";
    std::string srv_exe  = dir + "/eversoul_offline_server";
#endif

    if (!path_exists(injector)) {
        log_line(0, "INJECTOR", "missing injector: " + injector);
        g_injector_running.store(false);
        return;
    }
    if (!path_exists(so_path)) {
        log_line(0, "INJECTOR", "missing SO: " + so_path);
        g_injector_running.store(false);
        return;
    }

    std::string adb_path = resolve_adb_path(config().data_dir);

    std::string cmd = "\"" + injector + "\" \"" + so_path + "\" \"" +
                      srv_exe + "\" --no-wait";
    if (!serial.empty())    cmd += " --serial \"" + serial   + "\"";
    if (!adb_path.empty())  cmd += " --adb \""    + adb_path + "\"";

#ifdef _WIN32
    SECURITY_ATTRIBUTES sa{};
    sa.nLength              = sizeof(SECURITY_ATTRIBUTES);
    sa.bInheritHandle       = TRUE;
    HANDLE hRead = INVALID_HANDLE_VALUE, hWrite = INVALID_HANDLE_VALUE;
    if (!CreatePipe(&hRead, &hWrite, &sa, 0)) {
        log_line(0, "INJECTOR", "CreatePipe failed");
        g_injector_running.store(false);
        return;
    }
    SetHandleInformation(hRead, HANDLE_FLAG_INHERIT, 0);

    STARTUPINFOA si{};
    si.cb        = sizeof(si);
    si.dwFlags   = STARTF_USESTDHANDLES;
    si.hStdOutput = hWrite;
    si.hStdError  = hWrite;
    si.hStdInput  = INVALID_HANDLE_VALUE;

    PROCESS_INFORMATION pi{};
    std::vector<char> cmd_buf(cmd.begin(), cmd.end());
    cmd_buf.push_back('\0');

    if (!CreateProcessA(nullptr, cmd_buf.data(), nullptr, nullptr,
                        TRUE, 0, nullptr, nullptr, &si, &pi)) {
        CloseHandle(hRead);
        CloseHandle(hWrite);
        log_line(0, "INJECTOR", "CreateProcess failed: " + std::to_string(GetLastError()));
        g_injector_running.store(false);
        return;
    }
    CloseHandle(hWrite);
    {
        std::lock_guard<std::mutex> lk(g_injector_mu);
        if (g_injector_proc != INVALID_HANDLE_VALUE) CloseHandle(g_injector_proc);
        g_injector_proc = pi.hProcess;
    }
    CloseHandle(pi.hThread);

    char buf[1024];
    DWORD nread;
    std::string line_buf;
    while (ReadFile(hRead, buf, sizeof(buf) - 1, &nread, nullptr) && nread > 0) {
        buf[nread] = '\0';
        line_buf += buf;
        std::size_t pos;
        while ((pos = line_buf.find('\n')) != std::string::npos) {
            std::string line = line_buf.substr(0, pos);
            if (!line.empty() && line.back() == '\r') line.pop_back();
            if (!line.empty()) log_line(0, "INJECTOR", line);
            line_buf.erase(0, pos + 1);
        }
    }
    if (!line_buf.empty()) log_line(0, "INJECTOR", line_buf);
    CloseHandle(hRead);
    {
        std::lock_guard<std::mutex> lk(g_injector_mu);
        CloseHandle(g_injector_proc);
        g_injector_proc = INVALID_HANDLE_VALUE;
    }
#else
    FILE* pipe = popen(cmd.c_str(), "r");
    if (!pipe) {
        log_line(0, "INJECTOR", "popen failed");
        g_injector_running.store(false);
        return;
    }
    char buf[1024];
    std::string line_buf;
    while (fgets(buf, sizeof(buf), pipe)) {
        line_buf += buf;
        std::size_t pos;
        while ((pos = line_buf.find('\n')) != std::string::npos) {
            std::string line = line_buf.substr(0, pos);
            if (!line.empty() && line.back() == '\r') line.pop_back();
            if (!line.empty()) log_line(0, "INJECTOR", line);
            line_buf.erase(0, pos + 1);
        }
    }
    pclose(pipe);
#endif

    log_line(0, "INJECTOR", "process exited");
    g_injector_running.store(false);
}

// ── /admin/api/injector/run (POST) ────────────────────────────────────────────

void handle_injector_run(socket_fd_t fd, const HttpRequest& req)
{
    if (g_injector_running.load()) {
        send_response(fd, json_200("{\"ok\":false,\"reason\":\"already running\"}"));
        return;
    }
    std::string serial = body_json_string(req.body, "serial");
    g_injector_running.store(true);
    std::thread([serial]() { run_injector_bg(serial); }).detach();
    send_response(fd, json_200("{\"ok\":true}"));
}

// ── /admin/api/injector/stop (POST) ──────────────────────────────────────────

void handle_injector_stop(socket_fd_t fd)
{
#ifdef _WIN32
    {
        std::lock_guard<std::mutex> lk(g_injector_mu);
        if (g_injector_proc != INVALID_HANDLE_VALUE) {
            TerminateProcess(g_injector_proc, 0);
        }
    }
#endif
    g_injector_running.store(false);
    send_response(fd, json_200("{\"ok\":true}"));
}

// ── /admin/api/injector/status (GET) ─────────────────────────────────────────

void handle_injector_status(socket_fd_t fd)
{
    bool r = g_injector_running.load();
    send_response(fd, json_200(std::string("{\"running\":") + (r ? "true" : "false") + "}"));
}

// ── /admin/api/injector/devices (GET) ────────────────────────────────────────

void handle_injector_devices(socket_fd_t fd)
{
    std::string adb = resolve_adb_path(config().data_dir);
    std::string raw;
    if (FILE* pipe = adb_popen(adb, "devices")) {
        char buf[512];
        while (fgets(buf, sizeof(buf), pipe)) raw += buf;
        adb_pclose(pipe);
    }

    std::string body = "{\"raw\":\"" + json_escape(raw) + "\",\"devices\":[";
    bool first = true;
    std::istringstream ss(raw);
    std::string line;
    while (std::getline(ss, line)) {
        if (line.find("List of") != std::string::npos) continue;
        if (line.find("offline")  != std::string::npos) continue;
        auto tab = line.find('\t');
        if (tab == std::string::npos) continue;
        if (line.find("device") == std::string::npos) continue;
        std::string serial = line.substr(0, tab);
        if (!first) body += ',';
        first = false;
        body += '"'; body += json_escape(serial); body += '"';
    }
    body += "]}";
    send_response(fd, json_200(body));
}

// ── /admin/api/injector/check (GET) ──────────────────────────────────────────

void handle_injector_check(socket_fd_t fd, const std::string& qs)
{
    std::string serial = url_decode(query_param(qs, "serial"));
    std::string adb    = resolve_adb_path(config().data_dir);

    bool adb_ok = path_exists(adb);

    if (serial.empty()) {
        std::string raw;
        if (FILE* pipe = adb_popen(adb, "devices")) {
            char buf[512];
            while (fgets(buf, sizeof(buf), pipe)) raw += buf;
            adb_pclose(pipe);
        }
        std::istringstream ss(raw);
        std::string line;
        while (std::getline(ss, line)) {
            if (line.find("List of") != std::string::npos) continue;
            if (line.find("offline")  != std::string::npos) continue;
            auto tab = line.find('\t');
            if (tab == std::string::npos) continue;
            if (line.find("device") == std::string::npos) continue;
            serial = line.substr(0, tab);
            break;
        }
    }

    bool has_eversoul = false;

    if (!serial.empty() && adb_ok) {
        auto run = [&](const std::string& args) -> std::string {
            std::string out;
            FILE* pipe = adb_popen(adb, args);
            if (!pipe) return {};
            char buf[512];
            while (fgets(buf, sizeof(buf), pipe)) out += buf;
            adb_pclose(pipe);
            return out;
        };
        std::string pm = run("-s " + serial + " shell pm list packages com.kakaogames.eversoul");
        has_eversoul = pm.find("com.kakaogames.eversoul") != std::string::npos;
    }

    std::string body = "{";
    body += "\"adb\":\"";         body += json_escape(adb);    body += "\"";
    body += ",\"adb_ok\":";       body += (adb_ok       ? "true" : "false");
    body += ",\"serial\":\"";  body += json_escape(serial); body += "\"";
    body += ",\"eversoul\":"; body += (has_eversoul ? "true" : "false");
    body += "}";
    send_response(fd, json_200(body));
}

// ── /admin/api/injector/adb (POST) — direct adb command ──────────────────────

void handle_injector_adb(socket_fd_t fd, const HttpRequest& req)
{
    std::string cmd_arg = body_json_string(req.body, "cmd");
    if (cmd_arg.empty()) { send_response(fd, bad_request("missing cmd")); return; }

    std::string adb = resolve_adb_path(config().data_dir);
    std::string out;
    if (FILE* pipe = adb_popen(adb, cmd_arg)) {
        char buf[1024];
        while (fgets(buf, sizeof(buf), pipe)) out += buf;
        adb_pclose(pipe);
    }
    log_line(0, "ADB", "> " + cmd_arg);
    std::istringstream ss(out);
    std::string line;
    while (std::getline(ss, line)) {
        if (!line.empty() && line.back() == '\r') line.pop_back();
        if (!line.empty()) log_line(0, "ADB", line);
    }
    send_response(fd, json_200("{\"ok\":true,\"output\":\"" + json_escape(out) + "\"}"));
}

// ── Connection dispatcher ─────────────────────────────────────────────────────

void handle_connection(socket_fd_t fd)
{
    HttpRequest req;
    if (!parse_request(fd, req)) {
        socket_close(fd);
        return;
    }

    if (req.method == "OPTIONS") {
        send_response(fd, cors_preflight());
        socket_close(fd);
        return;
    }

    std::string path = req.path;
    std::string qs   = split_query(path);

    // Root HTML — redirect trailing-slash-less URLs so relative paths resolve correctly
    if (path == "/" || path == "/admin") {
        HttpResponse redir;
        redir.status = 301;
        redir.headers["Location"] = "/admin/";
        send_response(fd, redir);
        socket_close(fd);
        return;
    }
    if (path == "/admin/") {
        handle_root(fd);
        socket_close(fd);
        return;
    }

    // API dispatch
    if (path == "/admin/api/i18n" && req.method == "GET") {
        handle_i18n(fd);
    } else if (path == "/admin/api/status" && req.method == "GET") {
        handle_status(fd);
    } else if (path == "/admin/api/health" && req.method == "GET") {
        handle_health(fd);
    } else if (path == "/admin/api/logs/stream" && req.method == "GET") {
        handle_logs_stream(fd);
        return;  // SSE handler closes fd itself
    } else if (path == "/admin/api/logs/recent" && req.method == "GET") {
        handle_logs_recent(fd, qs);
    } else if (path == "/admin/api/logs/clear" && req.method == "POST") {
        handle_logs_clear(fd);
    } else if (path == "/admin/api/db/tables" && req.method == "GET") {
        handle_db_tables(fd);
    } else if (path.rfind("/admin/api/db/schema/", 0) == 0 && req.method == "GET") {
        handle_db_schema(fd, url_decode(path.substr(std::string("/admin/api/db/schema/").size())));
    } else if (path.rfind("/admin/api/db/table/", 0) == 0 && req.method == "GET") {
        handle_db_table(fd, path.substr(std::string("/admin/api/db/table/").size()), qs);
    } else if (path == "/admin/api/fixtures" && req.method == "GET") {
        handle_fixtures(fd);
    } else if (path.rfind("/admin/api/fixtures/", 0) == 0 && req.method == "GET") {
        handle_fixture_content(fd, path.substr(std::string("/admin/api/fixtures/").size()));
    } else if (path == "/admin/api/config" && req.method == "POST") {
        handle_config(fd, req);
    } else if (path == "/admin/api/adb/current" && req.method == "GET") {
        handle_adb_current(fd);
    } else if (path == "/admin/api/adb/set" && req.method == "POST") {
        handle_adb_set(fd, req);
    } else if (path == "/admin/api/injector/run" && req.method == "POST") {
        handle_injector_run(fd, req);
    } else if (path == "/admin/api/injector/stop" && req.method == "POST") {
        handle_injector_stop(fd);
    } else if (path == "/admin/api/injector/status" && req.method == "GET") {
        handle_injector_status(fd);
    } else if (path == "/admin/api/injector/devices" && req.method == "GET") {
        handle_injector_devices(fd);
    } else if (path == "/admin/api/injector/check" && req.method == "GET") {
        handle_injector_check(fd, qs);
    } else if (path == "/admin/api/injector/adb" && req.method == "POST") {
        handle_injector_adb(fd, req);
    } else if (path == "/admin/api/logo" && req.method == "GET") {
        handle_logo(fd);
    } else if (path == "/admin/api/setup/status" && req.method == "GET") {
        handle_setup_status(fd);
    } else if (path == "/admin/api/setup/complete" && req.method == "POST") {
        handle_setup_complete(fd);
    } else if (path == "/admin/api/adb/validate" && req.method == "POST") {
        handle_adb_validate(fd, req);
    } else if (path.rfind("/admin/api/gamedata/", 0) == 0) {
        std::string section = path.substr(std::string("/admin/api/gamedata/").size());
        if (req.method == "GET")       handle_gamedata_get(fd, section);
        else if (req.method == "POST") handle_gamedata_post(fd, section, req);
        else                           send_response(fd, not_found());
    } else if (path == "/admin/api/accounts" && req.method == "GET") {
        handle_accounts_list(fd);
    } else if (path == "/admin/api/accounts" && req.method == "POST") {
        handle_accounts_create(fd, req);
    } else if (path.rfind("/admin/api/accounts/", 0) == 0) {
        std::string rest = path.substr(std::string("/admin/api/accounts/").size());
        auto slash = rest.find('/');
        std::string acct_id = slash == std::string::npos ? rest : rest.substr(0, slash);
        std::string sub     = slash == std::string::npos ? "" : rest.substr(slash + 1);
        if (acct_id.empty()) {
            send_response(fd, bad_request("missing account id"));
        } else if (sub.empty()) {
            if      (req.method == "GET")                    handle_account_get(fd, acct_id);
            else if (req.method == "PATCH" ||
                     req.method == "PUT")                    handle_account_update(fd, acct_id, req);
            else if (req.method == "DELETE")                 handle_account_delete(fd, acct_id);
            else                                             send_response(fd, not_found());
        } else if (sub == "select" && req.method == "POST") {
            handle_account_select(fd, acct_id);
        } else if (sub == "import" && req.method == "POST") {
            handle_account_import(fd, acct_id, req);
        } else if (sub.rfind("gamedata/", 0) == 0) {
            std::string section = sub.substr(std::string("gamedata/").size());
            if      (req.method == "GET")  handle_account_gamedata_get(fd, acct_id, section);
            else if (req.method == "POST") handle_account_gamedata_post(fd, acct_id, section, req);
            else                           send_response(fd, not_found());
        } else {
            send_response(fd, not_found());
        }
    } else if (path == "/admin/api/files/list" && req.method == "GET") {
        handle_files_list(fd, qs);
    } else if (path == "/admin/api/files" && req.method == "GET") {
        handle_file_read(fd, qs);
    } else if (path == "/admin/api/files" && req.method == "POST") {
        handle_file_write(fd, qs, req);
    } else if (path.rfind("/admin/", 0) == 0) {
        std::string fname = path.substr(std::string("/admin/").size());
        if (!fname.empty() && fname.find('/') == std::string::npos)
            serve_static_web_file(fd, fname);
        else
            send_response(fd, not_found());
    } else {
        send_response(fd, not_found());
    }

    socket_close(fd);
}

// ── Accept loop ───────────────────────────────────────────────────────────────

void accept_loop(int port)
{
#ifdef _WIN32
    WSADATA wsadata{};
    WSAStartup(MAKEWORD(2, 2), &wsadata);
#endif

    socket_fd_t srv = ::socket(AF_INET, SOCK_STREAM, 0);
    if (srv == kInvalidSocket) return;

    int yes = 1;
#ifdef _WIN32
    ::setsockopt(srv, SOL_SOCKET, SO_REUSEADDR,
                 reinterpret_cast<const char*>(&yes), static_cast<int>(sizeof(yes)));
#else
    ::setsockopt(srv, SOL_SOCKET, SO_REUSEADDR,
                 reinterpret_cast<const char*>(&yes), static_cast<socklen_t>(sizeof(yes)));
#endif

    sockaddr_in addr{};
    addr.sin_family      = AF_INET;
    addr.sin_port        = htons(static_cast<uint16_t>(port));
    addr.sin_addr.s_addr = INADDR_ANY;

#ifdef _WIN32
    if (::bind(srv, reinterpret_cast<sockaddr*>(&addr), static_cast<int>(sizeof(addr))) != 0 ||
#else
    if (::bind(srv, reinterpret_cast<sockaddr*>(&addr), static_cast<socklen_t>(sizeof(addr))) != 0 ||
#endif
        ::listen(srv, 16) != 0) {
        socket_close(srv);
        return;
    }

    {
        std::lock_guard<std::mutex> lk(g_start_mu);
        g_listen_fd = srv;
    }

    while (g_running.load()) {
        sockaddr_in peer{};
#ifdef _WIN32
        int peer_len = static_cast<int>(sizeof(peer));
#else
        socklen_t peer_len = static_cast<socklen_t>(sizeof(peer));
#endif
        socket_fd_t client = ::accept(srv, reinterpret_cast<sockaddr*>(&peer), &peer_len);
        if (client == kInvalidSocket) break;

        std::thread([client]() { handle_connection(client); }).detach();
    }

    socket_close(srv);
    g_listen_fd = kInvalidSocket;
}

} // anonymous namespace

// ── Public API ────────────────────────────────────────────────────────────────

void start_admin(int port)
{
    std::lock_guard<std::mutex> lk(g_start_mu);
    if (g_running.load()) return;

    g_current_port = port;
    g_started_at   = unix_ms() / 1000;
    g_running.store(true);
    g_thread = std::thread([port]() { accept_loop(port); });
    g_thread.detach();
}

void stop_admin()
{
    g_running.store(false);
    socket_fd_t fd = g_listen_fd;
    if (fd != kInvalidSocket) socket_close(fd);
}

} // namespace eversoul::admin
