// game_catalog.cpp — catalog.sqlite3 기반 게임데이터 카탈로그 구현.
#include "game_catalog.hpp"

#include <filesystem>
#include <fstream>
#include <mutex>
#include <sstream>
#include <stdexcept>
#include <vector>

#include "sqlite3.h"
#include "common.hpp"
#include "crypto.hpp"
#include "json.hpp"
#include "json_encoder.hpp"
#include "log.hpp"

namespace fs = std::filesystem;

namespace eversoul {

namespace {

std::string read_file_bytes(const std::string& path) {
    std::ifstream f(path, std::ios::binary);
    if (!f) return {};
    std::stringstream ss;
    ss << f.rdbuf();
    return ss.str();
}

std::string col_text_cat(sqlite3_stmt* st, int col) {
    const unsigned char* t = sqlite3_column_text(st, col);
    return t ? reinterpret_cast<const char*>(t) : "";
}

bool db_insert_catalog_file(sqlite3* db,
                             const std::string& rel_path,
                             const std::string& group_name,
                             std::int64_t       byte_size,
                             const std::string& sha256,
                             std::int64_t       loaded_at_ms) {
    sqlite3_stmt* st = nullptr;
    bool ok = false;
    if (sqlite3_prepare_v2(db,
            "INSERT OR REPLACE INTO catalog_file"
            "(rel_path,group_name,byte_size,sha256,loaded_at_ms)"
            " VALUES(?1,?2,?3,?4,?5)",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st,  1, rel_path.c_str(),   -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  2, group_name.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_bind_int64(st, 3, byte_size);
        sqlite3_bind_text(st,  4, sha256.c_str(),     -1, SQLITE_TRANSIENT);
        sqlite3_bind_int64(st, 5, loaded_at_ms);
        ok = sqlite3_step(st) == SQLITE_DONE;
    }
    sqlite3_finalize(st);
    return ok;
}

} // namespace

// ---- 생성자 / 소멸자 ----

GameCatalog::GameCatalog(const std::string& state_dir)
    : state_dir_(state_dir) {}

GameCatalog::~GameCatalog() {
    if (db_) {
        sqlite3_close(db_);
        db_ = nullptr;
    }
}

// ---- open ----

bool GameCatalog::open() {
    if (db_) return true;
    std::error_code ec;
    fs::create_directories(state_dir_, ec);
    if (ec) {
        log_line(0, "CATALOG", "create_directories failed: " + ec.message());
        return false;
    }
    const std::string path = state_dir_ + "/catalog.sqlite3";
    if (sqlite3_open(path.c_str(), &db_) != SQLITE_OK) {
        log_line(0, "CATALOG", "sqlite3_open failed: " + path);
        db_ = nullptr;
        return false;
    }
    sqlite3_exec(db_, "PRAGMA journal_mode=WAL",   nullptr, nullptr, nullptr);
    sqlite3_exec(db_, "PRAGMA synchronous=NORMAL", nullptr, nullptr, nullptr);
    sqlite3_exec(db_, "PRAGMA foreign_keys=ON",    nullptr, nullptr, nullptr);
    sqlite3_exec(db_, "PRAGMA busy_timeout=5000",  nullptr, nullptr, nullptr);
    create_schema();
    log_line(0, "CATALOG", "opened " + path);
    return true;
}

// ---- create_schema ----

void GameCatalog::create_schema() {
    const char* stmts[] = {
        "CREATE TABLE IF NOT EXISTS catalog_meta ("
        "  key   TEXT PRIMARY KEY,"
        "  value TEXT NOT NULL"
        ")",

        "CREATE TABLE IF NOT EXISTS catalog_file ("
        "  rel_path     TEXT PRIMARY KEY,"
        "  group_name   TEXT NOT NULL,"
        "  byte_size    INTEGER NOT NULL,"
        "  sha256       TEXT NOT NULL,"
        "  loaded_at_ms INTEGER NOT NULL"
        ")",

        "CREATE TABLE IF NOT EXISTS catalog_endpoint ("
        "  endpoint           TEXT NOT NULL,"
        "  profile            TEXT NOT NULL,"
        "  rel_path           TEXT NOT NULL,"
        "  format             TEXT NOT NULL,"
        "  hits               INTEGER NOT NULL DEFAULT 0,"
        "  resp_bytes         INTEGER NOT NULL DEFAULT 0,"
        "  empty              INTEGER NOT NULL DEFAULT 0,"
        "  has_request_proto  INTEGER NOT NULL DEFAULT 0,"
        "  has_response_proto INTEGER NOT NULL DEFAULT 0,"
        "  roundtrip          INTEGER NOT NULL DEFAULT 0,"
        "  request_decoded_json TEXT,"
        "  encoded_payload    BLOB,"
        "  PRIMARY KEY(endpoint, profile),"
        "  FOREIGN KEY(rel_path) REFERENCES catalog_file(rel_path)"
        ")",

        "CREATE TABLE IF NOT EXISTS catalog_schema ("
        "  endpoint     TEXT PRIMARY KEY,"
        "  root_message TEXT NOT NULL,"
        "  rel_path     TEXT NOT NULL,"
        "  sha256       TEXT NOT NULL,"
        "  FOREIGN KEY(rel_path) REFERENCES catalog_file(rel_path)"
        ")",

        "CREATE TABLE IF NOT EXISTS catalog_schema_message ("
        "  endpoint     TEXT NOT NULL,"
        "  message_name TEXT NOT NULL,"
        "  PRIMARY KEY(endpoint, message_name),"
        "  FOREIGN KEY(endpoint) REFERENCES catalog_schema(endpoint)"
        ")",

        "CREATE TABLE IF NOT EXISTS catalog_schema_field ("
        "  endpoint     TEXT NOT NULL,"
        "  message_name TEXT NOT NULL,"
        "  field_number INTEGER NOT NULL,"
        "  field_name   TEXT NOT NULL,"
        "  field_type   TEXT NOT NULL,"
        "  type_name    TEXT,"
        "  repeated     INTEGER NOT NULL,"
        "  packed       INTEGER NOT NULL,"
        "  PRIMARY KEY(endpoint, message_name, field_number),"
        "  UNIQUE(endpoint, message_name, field_name),"
        "  FOREIGN KEY(endpoint, message_name)"
        "    REFERENCES catalog_schema_message(endpoint, message_name)"
        ")",

        "CREATE TABLE IF NOT EXISTS catalog_schema_enum ("
        "  endpoint      TEXT NOT NULL,"
        "  enum_name     TEXT NOT NULL,"
        "  member_name   TEXT NOT NULL,"
        "  member_number INTEGER NOT NULL,"
        "  PRIMARY KEY(endpoint, enum_name, member_name),"
        "  UNIQUE(endpoint, enum_name, member_number),"
        "  FOREIGN KEY(endpoint) REFERENCES catalog_schema(endpoint)"
        ")",

        "CREATE TABLE IF NOT EXISTS catalog_wss ("
        "  rel_path  TEXT PRIMARY KEY,"
        "  host      TEXT,"
        "  json_body TEXT NOT NULL,"
        "  sha256    TEXT NOT NULL,"
        "  FOREIGN KEY(rel_path) REFERENCES catalog_file(rel_path)"
        ")",

        "CREATE TABLE IF NOT EXISTS catalog_wss_reply ("
        "  rel_path           TEXT NOT NULL,"
        "  topic              TEXT NOT NULL,"
        "  meta_template_json TEXT NOT NULL,"
        "  body_json          TEXT NOT NULL,"
        "  PRIMARY KEY(rel_path, topic),"
        "  FOREIGN KEY(rel_path) REFERENCES catalog_wss(rel_path)"
        ")",
    };
    for (const char* sql : stmts)
        sqlite3_exec(db_, sql, nullptr, nullptr, nullptr);
}

// ---- set_meta / get_meta ----

void GameCatalog::set_meta(const std::string& key, const std::string& value) {
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO catalog_meta(key,value) VALUES(?1,?2)"
            " ON CONFLICT(key) DO UPDATE SET value=excluded.value",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st, 1, key.c_str(),   -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st, 2, value.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

std::string GameCatalog::get_meta(const std::string& key,
                                   const std::string& fallback) const {
    if (!db_) return fallback;
    sqlite3_stmt* st = nullptr;
    std::string out = fallback;
    if (sqlite3_prepare_v2(db_,
            "SELECT value FROM catalog_meta WHERE key=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st, 1, key.c_str(), -1, SQLITE_TRANSIENT);
        if (sqlite3_step(st) == SQLITE_ROW)
            out = col_text_cat(st, 0);
    }
    sqlite3_finalize(st);
    return out;
}

// ---- file_sha256 ----

std::string GameCatalog::file_sha256(const std::string& path) const {
    const std::string content = read_file_bytes(path);
    return content.empty() ? "" : hmac_sha256("", content);
}

// ---- catalog_version ----

std::string GameCatalog::catalog_version() const {
    return get_meta("catalog_version");
}

// ---- index_file_group ----

bool GameCatalog::index_file_group(const std::string& data_dir,
                                    const std::string& group_name,
                                    const std::string& rel_dir) {
    const fs::path dir = fs::path(data_dir) / rel_dir;
    std::error_code ec;
    if (!fs::is_directory(dir, ec)) return true;

    int count = 0;
    for (const auto& entry : fs::directory_iterator(dir, ec)) {
        if (ec) break;
        if (!entry.is_regular_file()) continue;
        const std::string abs_path = entry.path().string();
        const std::string rel_path = rel_dir + "/" + entry.path().filename().string();
        const std::string sha      = file_sha256(abs_path);
        const auto byte_size = static_cast<std::int64_t>(entry.file_size(ec));
        if (sha.empty()) continue;
        db_insert_catalog_file(db_, rel_path, group_name, byte_size, sha, 0);
        ++count;
    }
    set_meta(group_name + "_file_count", std::to_string(count));
    return true;
}

// ---- index_schema_files ----

bool GameCatalog::index_schema_files(const std::string& data_dir) {
    const fs::path dir = fs::path(data_dir) / "schema";
    std::error_code ec;
    if (!fs::is_directory(dir, ec)) return true;

    for (const auto& entry : fs::directory_iterator(dir, ec)) {
        if (ec) break;
        if (!entry.is_regular_file()) continue;
        const std::string fname = entry.path().filename().string();
        if (fname.size() <= 5) continue;
        const std::string ep_name  = fname.substr(0, fname.size() - 5);
        const std::string endpoint = "/" + ep_name;
        const std::string rel_path = "schema/" + fname;
        const std::string abs_path = entry.path().string();
        const std::string sha      = file_sha256(abs_path);
        const std::string text     = read_file_bytes(abs_path);
        if (text.empty() || sha.empty()) continue;

        json::Value schema;
        std::string perr;
        if (!json::parse(text, schema, perr)) {
            log_line(0, "CATALOG", "schema parse error " + fname + ": " + perr);
            continue;
        }

        const json::Value* root_v = schema.find("root");
        if (!root_v || !root_v->is_string()) continue;
        const std::string root_msg = root_v->str;

        {
            sqlite3_stmt* st = nullptr;
            if (sqlite3_prepare_v2(db_,
                    "INSERT OR REPLACE INTO catalog_schema"
                    "(endpoint,root_message,rel_path,sha256)"
                    " VALUES(?1,?2,?3,?4)",
                    -1, &st, nullptr) == SQLITE_OK) {
                sqlite3_bind_text(st, 1, endpoint.c_str(), -1, SQLITE_TRANSIENT);
                sqlite3_bind_text(st, 2, root_msg.c_str(), -1, SQLITE_TRANSIENT);
                sqlite3_bind_text(st, 3, rel_path.c_str(), -1, SQLITE_TRANSIENT);
                sqlite3_bind_text(st, 4, sha.c_str(),      -1, SQLITE_TRANSIENT);
                sqlite3_step(st);
            }
            sqlite3_finalize(st);
        }

        const json::Value* messages_v = schema.find("messages");
        if (messages_v && messages_v->is_object()) {
            for (const auto& [msg_name, msg_val] : messages_v->obj) {
                {
                    sqlite3_stmt* st = nullptr;
                    if (sqlite3_prepare_v2(db_,
                            "INSERT OR IGNORE INTO catalog_schema_message"
                            "(endpoint,message_name) VALUES(?1,?2)",
                            -1, &st, nullptr) == SQLITE_OK) {
                        sqlite3_bind_text(st, 1, endpoint.c_str(), -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(st, 2, msg_name.c_str(), -1, SQLITE_TRANSIENT);
                        sqlite3_step(st);
                    }
                    sqlite3_finalize(st);
                }
                const json::Value* fields_v = msg_val.find("fields");
                if (!fields_v || !fields_v->is_array()) continue;
                for (const auto& fv : fields_v->arr) {
                    const json::Value* fn   = fv.find("name");
                    const json::Value* fnum = fv.find("number");
                    const json::Value* ftyp = fv.find("type");
                    const json::Value* frep = fv.find("repeated");
                    const json::Value* fpak = fv.find("packed");
                    const json::Value* ftn  = fv.find("type_name");
                    if (!fn || !fnum || !ftyp) continue;
                    const std::string field_name = fn->is_string() ? fn->str : "";
                    const int field_number = fnum->is_number()
                        ? static_cast<int>(fnum->as_int64()) : 0;
                    const std::string field_type = ftyp->is_string() ? ftyp->str : "";
                    const int repeated = (frep && frep->is_bool() && frep->b) ? 1 : 0;
                    const int packed   = (fpak && fpak->is_bool() && fpak->b) ? 1 : 0;
                    const std::string type_name =
                        (ftn && ftn->is_string()) ? ftn->str : "";

                    sqlite3_stmt* st = nullptr;
                    if (sqlite3_prepare_v2(db_,
                            "INSERT OR REPLACE INTO catalog_schema_field"
                            "(endpoint,message_name,field_number,field_name,"
                            " field_type,type_name,repeated,packed)"
                            " VALUES(?1,?2,?3,?4,?5,?6,?7,?8)",
                            -1, &st, nullptr) == SQLITE_OK) {
                        sqlite3_bind_text(st, 1, endpoint.c_str(),   -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(st, 2, msg_name.c_str(),   -1, SQLITE_TRANSIENT);
                        sqlite3_bind_int(st,  3, field_number);
                        sqlite3_bind_text(st, 4, field_name.c_str(), -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(st, 5, field_type.c_str(), -1, SQLITE_TRANSIENT);
                        if (!type_name.empty())
                            sqlite3_bind_text(st, 6, type_name.c_str(), -1, SQLITE_TRANSIENT);
                        else
                            sqlite3_bind_null(st, 6);
                        sqlite3_bind_int(st, 7, repeated);
                        sqlite3_bind_int(st, 8, packed);
                        sqlite3_step(st);
                    }
                    sqlite3_finalize(st);
                }
            }
        }

        const json::Value* enums_v = schema.find("enums");
        if (enums_v && enums_v->is_object()) {
            for (const auto& [enum_name, enum_val] : enums_v->obj) {
                if (!enum_val.is_object()) continue;
                for (const auto& [member_name, member_num] : enum_val.obj) {
                    int num = 0;
                    if (member_num.is_number()) {
                        try { num = static_cast<int>(member_num.as_int64()); }
                        catch (...) {}
                    }
                    sqlite3_stmt* st = nullptr;
                    if (sqlite3_prepare_v2(db_,
                            "INSERT OR IGNORE INTO catalog_schema_enum"
                            "(endpoint,enum_name,member_name,member_number)"
                            " VALUES(?1,?2,?3,?4)",
                            -1, &st, nullptr) == SQLITE_OK) {
                        sqlite3_bind_text(st, 1, endpoint.c_str(),    -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(st, 2, enum_name.c_str(),   -1, SQLITE_TRANSIENT);
                        sqlite3_bind_text(st, 3, member_name.c_str(), -1, SQLITE_TRANSIENT);
                        sqlite3_bind_int(st,  4, num);
                        sqlite3_step(st);
                    }
                    sqlite3_finalize(st);
                }
            }
        }
    }
    return true;
}

// ---- index_wss_files ----

bool GameCatalog::index_wss_files(const std::string& data_dir) {
    const fs::path dir = fs::path(data_dir) / "wss";
    std::error_code ec;
    if (!fs::is_directory(dir, ec)) return true;

    for (const auto& entry : fs::directory_iterator(dir, ec)) {
        if (ec) break;
        if (!entry.is_regular_file()) continue;
        const std::string fname    = entry.path().filename().string();
        const std::string rel_path = "wss/" + fname;
        const std::string abs_path = entry.path().string();
        const std::string sha      = file_sha256(abs_path);
        const std::string text     = read_file_bytes(abs_path);
        if (text.empty() || sha.empty()) continue;

        json::Value root;
        std::string perr;
        if (!json::parse(text, root, perr)) {
            log_line(0, "CATALOG", "wss parse error " + fname + ": " + perr);
            continue;
        }

        const json::Value* host_v = root.find("host");
        const std::string host = (host_v && host_v->is_string()) ? host_v->str : "";

        {
            sqlite3_stmt* st = nullptr;
            if (sqlite3_prepare_v2(db_,
                    "INSERT OR REPLACE INTO catalog_wss"
                    "(rel_path,host,json_body,sha256)"
                    " VALUES(?1,?2,?3,?4)",
                    -1, &st, nullptr) == SQLITE_OK) {
                sqlite3_bind_text(st, 1, rel_path.c_str(), -1, SQLITE_TRANSIENT);
                if (!host.empty())
                    sqlite3_bind_text(st, 2, host.c_str(), -1, SQLITE_TRANSIENT);
                else
                    sqlite3_bind_null(st, 2);
                sqlite3_bind_text(st, 3, text.c_str(), -1, SQLITE_TRANSIENT);
                sqlite3_bind_text(st, 4, sha.c_str(),  -1, SQLITE_TRANSIENT);
                sqlite3_step(st);
            }
            sqlite3_finalize(st);
        }

        const json::Value* replies_v = root.find("replies");
        if (replies_v && replies_v->is_object()) {
            for (const auto& [topic, reply_val] : replies_v->obj) {
                const json::Value* meta_v = reply_val.find("meta");
                const json::Value* body_v = reply_val.find("body");
                if (!meta_v || !body_v) continue;
                const std::string meta_json = meta_v->dump();
                const std::string body_json = body_v->dump();

                sqlite3_stmt* st = nullptr;
                if (sqlite3_prepare_v2(db_,
                        "INSERT OR REPLACE INTO catalog_wss_reply"
                        "(rel_path,topic,meta_template_json,body_json)"
                        " VALUES(?1,?2,?3,?4)",
                        -1, &st, nullptr) == SQLITE_OK) {
                    sqlite3_bind_text(st, 1, rel_path.c_str(),  -1, SQLITE_TRANSIENT);
                    sqlite3_bind_text(st, 2, topic.c_str(),     -1, SQLITE_TRANSIENT);
                    sqlite3_bind_text(st, 3, meta_json.c_str(), -1, SQLITE_TRANSIENT);
                    sqlite3_bind_text(st, 4, body_json.c_str(), -1, SQLITE_TRANSIENT);
                    sqlite3_step(st);
                }
                sqlite3_finalize(st);
            }
        }
    }
    return true;
}

// ---- index_endpoints ----

bool GameCatalog::index_endpoints(const std::string& data_dir,
                                   const std::string& profile,
                                   const std::string& responses_dir) {
    const fs::path dir = fs::path(data_dir) / responses_dir;
    std::error_code ec;
    if (!fs::is_directory(dir, ec)) return true;

    for (const auto& entry : fs::directory_iterator(dir, ec)) {
        if (ec) break;
        if (!entry.is_regular_file()) continue;
        const std::string fname = entry.path().filename().string();
        if (fname.size() <= 5) continue;
        if (fname == "_manifest.json") continue;
        const std::string ep_name  = fname.substr(0, fname.size() - 5);
        const std::string endpoint = "/" + ep_name;
        const std::string rel_path = responses_dir + "/" + fname;
        const std::string abs_path = entry.path().string();
        const std::string sha      = file_sha256(abs_path);
        const std::string text     = read_file_bytes(abs_path);
        if (text.empty() || sha.empty()) continue;

        json::Value fixture;
        std::string perr;
        if (!json::parse(text, fixture, perr)) {
            log_line(0, "CATALOG", "fixture parse error " + fname + ": " + perr);
            continue;
        }

        const json::Value* fmt_v = fixture.find("__format__");
        const std::string format = (fmt_v && fmt_v->is_string()) ? fmt_v->str : "proto";

        int empty_flag = 0;
        std::string encoded_payload;

        if (format == "empty") {
            empty_flag = 1;
        } else if (format == "raw") {
            const json::Value* hexv = fixture.find("hex");
            const std::string hex = (hexv && hexv->is_string()) ? hexv->str : "";
            encoded_payload.reserve(hex.size() / 2);
            auto nib = [](char c) -> int {
                if (c >= '0' && c <= '9') return c - '0';
                if (c >= 'a' && c <= 'f') return c - 'a' + 10;
                if (c >= 'A' && c <= 'F') return c - 'A' + 10;
                return 0;
            };
            for (std::size_t i = 0; i + 1 < hex.size(); i += 2)
                encoded_payload.push_back(
                    static_cast<char>((nib(hex[i]) << 4) | nib(hex[i + 1])));
        } else {
            const std::string schema_path =
                (fs::path(data_dir) / "schema" / (ep_name + ".json")).string();
            const std::string schema_text = read_file_bytes(schema_path);
            if (!schema_text.empty()) {
                std::string enc_err;
                if (!json_encode_from_text(schema_text, text, encoded_payload, enc_err)) {
                    log_line(0, "CATALOG", "encode error " + fname + ": " + enc_err);
                    encoded_payload.clear();
                }
            }
        }

        const auto byte_size = static_cast<std::int64_t>(entry.file_size(ec));
        db_insert_catalog_file(db_, rel_path, responses_dir, byte_size, sha, 0);

        {
            sqlite3_stmt* st = nullptr;
            if (sqlite3_prepare_v2(db_,
                    "INSERT OR REPLACE INTO catalog_endpoint"
                    "(endpoint,profile,rel_path,format,hits,resp_bytes,"
                    " empty,has_request_proto,has_response_proto,roundtrip,"
                    " request_decoded_json,encoded_payload)"
                    " VALUES(?1,?2,?3,?4,0,0,?5,0,0,0,NULL,?6)",
                    -1, &st, nullptr) == SQLITE_OK) {
                sqlite3_bind_text(st, 1, endpoint.c_str(), -1, SQLITE_TRANSIENT);
                sqlite3_bind_text(st, 2, profile.c_str(),  -1, SQLITE_TRANSIENT);
                sqlite3_bind_text(st, 3, rel_path.c_str(), -1, SQLITE_TRANSIENT);
                sqlite3_bind_text(st, 4, format.c_str(),   -1, SQLITE_TRANSIENT);
                sqlite3_bind_int(st,  5, empty_flag);
                if (!encoded_payload.empty())
                    sqlite3_bind_blob(st, 6,
                        encoded_payload.data(),
                        static_cast<int>(encoded_payload.size()),
                        SQLITE_TRANSIENT);
                else
                    sqlite3_bind_null(st, 6);
                sqlite3_step(st);
            }
            sqlite3_finalize(st);
        }
    }
    return true;
}

// ---- populate ----

bool GameCatalog::populate(const std::string& data_dir) {
    if (!db_) return false;
    if (!get_meta("catalog_version").empty()) return true;

    sqlite3_exec(db_, "BEGIN", nullptr, nullptr, nullptr);

    index_file_group(data_dir, "schema",           "schema");
    index_file_group(data_dir, "responses",        "responses");
    index_file_group(data_dir, "responses_newbie", "responses_newbie");
    index_file_group(data_dir, "wss",              "wss");

    index_schema_files(data_dir);
    index_wss_files(data_dir);
    index_endpoints(data_dir, "full",   "responses");
    index_endpoints(data_dir, "newbie", "responses_newbie");

    set_meta("catalog_version", "1");
    set_meta("source_hash",     hmac_sha256("", data_dir));

    sqlite3_exec(db_, "COMMIT", nullptr, nullptr, nullptr);
    log_line(0, "CATALOG", "populated from " + data_dir);
    return true;
}

// ---- find_endpoint ----

std::optional<CatalogEndpointRow> GameCatalog::find_endpoint(
        const std::string& endpoint, const std::string& profile) const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<CatalogEndpointRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT endpoint,profile,rel_path,format,hits,resp_bytes,"
            " empty,has_request_proto,has_response_proto,roundtrip,"
            " request_decoded_json,encoded_payload"
            " FROM catalog_endpoint WHERE endpoint=?1 AND profile=?2",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st, 1, endpoint.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st, 2, profile.c_str(),  -1, SQLITE_TRANSIENT);
        if (sqlite3_step(st) == SQLITE_ROW) {
            CatalogEndpointRow row;
            row.endpoint             = col_text_cat(st, 0);
            row.profile              = col_text_cat(st, 1);
            row.rel_path             = col_text_cat(st, 2);
            row.format               = col_text_cat(st, 3);
            row.hits                 = sqlite3_column_int64(st, 4);
            row.resp_bytes           = sqlite3_column_int64(st, 5);
            row.empty                = sqlite3_column_int(st, 6);
            row.has_req_proto        = sqlite3_column_int(st, 7);
            row.has_resp_proto       = sqlite3_column_int(st, 8);
            row.roundtrip            = sqlite3_column_int(st, 9);
            row.request_decoded_json = col_text_cat(st, 10);
            const void* blob = sqlite3_column_blob(st, 11);
            const int   bsz  = sqlite3_column_bytes(st, 11);
            if (blob && bsz > 0)
                row.encoded_payload.assign(
                    reinterpret_cast<const char*>(blob), bsz);
            out = std::move(row);
        }
    }
    sqlite3_finalize(st);
    return out;
}

// ---- find_schema ----

std::optional<CatalogSchemaRow> GameCatalog::find_schema(
        const std::string& endpoint) const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<CatalogSchemaRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT endpoint,root_message,rel_path,sha256"
            " FROM catalog_schema WHERE endpoint=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st, 1, endpoint.c_str(), -1, SQLITE_TRANSIENT);
        if (sqlite3_step(st) == SQLITE_ROW) {
            CatalogSchemaRow row;
            row.endpoint     = col_text_cat(st, 0);
            row.root_message = col_text_cat(st, 1);
            row.rel_path     = col_text_cat(st, 2);
            row.sha256       = col_text_cat(st, 3);
            out = std::move(row);
        }
    }
    sqlite3_finalize(st);
    return out;
}

// ---- increment_hits ----

bool GameCatalog::increment_hits(const std::string& endpoint,
                                  const std::string& profile,
                                  std::int64_t       resp_bytes) {
    if (!db_) return false;
    sqlite3_stmt* st = nullptr;
    bool ok = false;
    if (sqlite3_prepare_v2(db_,
            "UPDATE catalog_endpoint"
            " SET hits=hits+1, resp_bytes=resp_bytes+?3"
            " WHERE endpoint=?1 AND profile=?2",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st,  1, endpoint.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  2, profile.c_str(),  -1, SQLITE_TRANSIENT);
        sqlite3_bind_int64(st, 3, resp_bytes);
        ok = sqlite3_step(st) == SQLITE_DONE;
    }
    sqlite3_finalize(st);
    return ok;
}

// ---- 싱글턴 ----

GameCatalog& game_catalog() {
    static GameCatalog  instance(config().state_dir);
    static std::once_flag flag;
    std::call_once(flag, [&] { instance.open(); });
    return instance;
}

} // namespace eversoul
