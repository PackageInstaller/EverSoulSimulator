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

// ── /admin/ → embedded HTML ───────────────────────────────────────────────────

void handle_root(socket_fd_t fd)
{
    HttpResponse res;
    res.status = 200;
    res.headers["Content-Type"] = "text/html;charset=UTF-8";
    res.headers["Access-Control-Allow-Origin"] = "*";
    res.headers["Cache-Control"] = "no-cache";
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
    std::string injector_path  = edir + "\\eversoul_injector.exe";
    std::string frida_srv_path = edir + "\\offline_data\\frida-server-android-x86_64";
#else
    std::string injector_path  = edir + "/eversoul_injector";
    std::string frida_srv_path = edir + "/offline_data/frida-server-android-x86_64";
#endif
    bool injector_ok  = path_exists(injector_path);
    add("Injector Exe",      injector_ok,  injector_path);
    bool frida_bin_ok = path_exists(frida_srv_path);
    add("Frida Server Bin",  frida_bin_ok, frida_srv_path);

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

// ── /admin/api/db/table/<name> ────────────────────────────────────────────────

void handle_db_table(socket_fd_t fd, const std::string& raw_name)
{
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

    auto r = db_query(rodb.db, "SELECT * FROM \"" + raw_name + "\" LIMIT 500");
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

// ── Injector process runner (background thread) ───────────────────────────────

static void run_injector_bg(const std::string& serial)
{
    std::string dir = exe_dir();
#ifdef _WIN32
    std::string injector  = dir + "\\eversoul_injector.exe";
    std::string so_path   = dir + "\\android\\libswappywrapper.so";
    std::string srv_exe   = dir + "\\eversoul_offline_server.exe";
    std::string frida_srv = dir + "\\offline_data\\frida-server-android-x86_64";
#else
    std::string injector  = dir + "/eversoul_injector";
    std::string so_path   = dir + "/android/libswappywrapper.so";
    std::string srv_exe   = dir + "/eversoul_offline_server";
    std::string frida_srv = dir + "/offline_data/frida-server-android-x86_64";
#endif

    for (const std::string& f : {injector, so_path, frida_srv}) {
        if (!path_exists(f)) {
            log_line(0, "INJECTOR", "missing: " + f);
            g_injector_running.store(false);
            return;
        }
    }

    std::string adb_path = resolve_adb_path(config().data_dir);

    std::string cmd = "\"" + injector + "\" \"" + so_path + "\" \"" +
                      srv_exe + "\" \"" + frida_srv + "\" --no-wait";
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
    std::lock_guard<std::mutex> lk(g_injector_mu);
    if (g_injector_proc != INVALID_HANDLE_VALUE) {
        TerminateProcess(g_injector_proc, 0);
    }
#endif
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
#ifdef _WIN32
    FILE* pipe = _popen(("\"" + adb + "\" devices 2>&1").c_str(), "r");
#else
    FILE* pipe = popen((adb + " devices 2>&1").c_str(), "r");
#endif
    if (pipe) {
        char buf[512];
        while (fgets(buf, sizeof(buf), pipe)) raw += buf;
#ifdef _WIN32
        _pclose(pipe);
#else
        pclose(pipe);
#endif
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
#ifdef _WIN32
        FILE* pipe = _popen(("\"" + adb + "\" devices 2>&1").c_str(), "r");
#else
        FILE* pipe = popen((adb + " devices 2>&1").c_str(), "r");
#endif
        if (pipe) {
            char buf[512];
            while (fgets(buf, sizeof(buf), pipe)) raw += buf;
#ifdef _WIN32
            _pclose(pipe);
#else
            pclose(pipe);
#endif
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

    bool has_eversoul  = false;
    bool frida_up      = false;

    if (!serial.empty() && adb_ok) {
        auto run = [&](const std::string& args) -> std::string {
            std::string cmd = "\"" + adb + "\" " + args + " 2>&1";
            std::string out;
#ifdef _WIN32
            FILE* pipe = _popen(cmd.c_str(), "r");
#else
            FILE* pipe = popen(cmd.c_str(), "r");
#endif
            if (!pipe) return {};
            char buf[512];
            while (fgets(buf, sizeof(buf), pipe)) out += buf;
#ifdef _WIN32
            _pclose(pipe);
#else
            pclose(pipe);
#endif
            return out;
        };
        std::string pm = run("-s " + serial + " shell pm list packages com.kakaogames.eversoul");
        has_eversoul = pm.find("com.kakaogames.eversoul") != std::string::npos;
        std::string pg = run("-s " + serial + " shell pgrep -x frida-server");
        pg.erase(std::remove_if(pg.begin(), pg.end(), ::isspace), pg.end());
        frida_up = !pg.empty();
    }

    std::string body = "{";
    body += "\"adb\":\"";         body += json_escape(adb);    body += "\"";
    body += ",\"adb_ok\":";       body += (adb_ok       ? "true" : "false");
    body += ",\"serial\":\"";     body += json_escape(serial); body += "\"";
    body += ",\"eversoul\":";     body += (has_eversoul ? "true" : "false");
    body += ",\"frida_server\":"; body += (frida_up     ? "true" : "false");
    body += "}";
    send_response(fd, json_200(body));
}

// ── /admin/api/injector/adb (POST) — direct adb command ──────────────────────

void handle_injector_adb(socket_fd_t fd, const HttpRequest& req)
{
    std::string cmd_arg = body_json_string(req.body, "cmd");
    if (cmd_arg.empty()) { send_response(fd, bad_request("missing cmd")); return; }

    std::string adb = resolve_adb_path(config().data_dir);
    std::string full = "\"" + adb + "\" " + cmd_arg + " 2>&1";
    std::string out;
#ifdef _WIN32
    FILE* pipe = _popen(full.c_str(), "r");
#else
    FILE* pipe = popen(full.c_str(), "r");
#endif
    if (pipe) {
        char buf[1024];
        while (fgets(buf, sizeof(buf), pipe)) out += buf;
#ifdef _WIN32
        _pclose(pipe);
#else
        pclose(pipe);
#endif
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

    // Root HTML
    if (path == "/" || path == "/admin" || path == "/admin/") {
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
    } else if (path.rfind("/admin/api/db/table/", 0) == 0 && req.method == "GET") {
        handle_db_table(fd, path.substr(std::string("/admin/api/db/table/").size()));
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
