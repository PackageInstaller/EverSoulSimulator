// account_registry.cpp — accounts.sqlite3 기반 다중 계정 레지스트리 구현.
#include "account_registry.hpp"

#include <filesystem>
#include <mutex>

#include "sqlite3.h"
#include "common.hpp"
#include "log.hpp"
#include "util.hpp"

namespace eversoul {

namespace {

bool is_safe_account_id(const std::string& id) {
    if (id.empty() || id.size() > 128) return false;
    for (char c : id) {
        if (!((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') ||
              (c >= '0' && c <= '9') || c == '-' || c == '_'))
            return false;
    }
    return true;
}

std::string col_text(sqlite3_stmt* st, int col) {
    const unsigned char* t = sqlite3_column_text(st, col);
    return t ? reinterpret_cast<const char*>(t) : "";
}

} // namespace

AccountRegistry::AccountRegistry(const std::string& state_dir)
    : state_dir_(state_dir) {}

AccountRegistry::~AccountRegistry() {
    if (db_) {
        sqlite3_close(db_);
        db_ = nullptr;
    }
}

bool AccountRegistry::open() {
    if (db_) return true;
    std::error_code ec;
    std::filesystem::create_directories(state_dir_, ec);
    if (ec) {
        log_line(0, "ACCREG", "create_directories failed: " + ec.message());
        return false;
    }
    const std::string path = state_dir_ + "/accounts.sqlite3";
    if (sqlite3_open(path.c_str(), &db_) != SQLITE_OK) {
        log_line(0, "ACCREG", "sqlite3_open failed: " + path);
        db_ = nullptr;
        return false;
    }
    sqlite3_exec(db_, "PRAGMA journal_mode=WAL", nullptr, nullptr, nullptr);
    sqlite3_exec(db_, "PRAGMA synchronous=NORMAL", nullptr, nullptr, nullptr);
    sqlite3_exec(db_, "PRAGMA foreign_keys=ON", nullptr, nullptr, nullptr);
    sqlite3_exec(db_, "PRAGMA busy_timeout=5000", nullptr, nullptr, nullptr);
    create_schema();
    log_line(0, "ACCREG", "opened " + path);
    return true;
}

void AccountRegistry::create_schema() {
    sqlite3_exec(db_,
        "CREATE TABLE IF NOT EXISTS account_registry ("
        "  account_id        TEXT PRIMARY KEY,"
        "  display_name      TEXT NOT NULL,"
        "  player_id         TEXT NOT NULL,"
        "  idp_code          TEXT NOT NULL,"
        "  profile_source    TEXT NOT NULL,"
        "  state_db_relpath  TEXT NOT NULL,"
        "  session_db_relpath TEXT NOT NULL,"
        "  created_at_ms     INTEGER NOT NULL,"
        "  updated_at_ms     INTEGER NOT NULL,"
        "  last_login_at_ms  INTEGER,"
        "  source_account_id TEXT,"
        "  deleted_at_ms     INTEGER,"
        "  UNIQUE(player_id, idp_code)"
        ")",
        nullptr, nullptr, nullptr);

    sqlite3_exec(db_,
        "CREATE TABLE IF NOT EXISTS active_account ("
        "  singleton_id INTEGER PRIMARY KEY CHECK(singleton_id = 1),"
        "  account_id   TEXT NOT NULL,"
        "  switched_at_ms INTEGER NOT NULL,"
        "  FOREIGN KEY(account_id) REFERENCES account_registry(account_id)"
        ")",
        nullptr, nullptr, nullptr);

    sqlite3_exec(db_,
        "CREATE TABLE IF NOT EXISTS account_operation_log ("
        "  op_id       INTEGER PRIMARY KEY AUTOINCREMENT,"
        "  account_id  TEXT,"
        "  operation   TEXT NOT NULL,"
        "  status      TEXT NOT NULL,"
        "  detail_json TEXT,"
        "  created_at_ms INTEGER NOT NULL"
        ")",
        nullptr, nullptr, nullptr);

    sqlite3_exec(db_,
        "CREATE TABLE IF NOT EXISTS account_session ("
        "  account_id     TEXT PRIMARY KEY,"
        "  player_id      TEXT NOT NULL,"
        "  idp_code       TEXT NOT NULL,"
        "  idp_id         TEXT NOT NULL DEFAULT '',"
        "  member_key     TEXT NOT NULL DEFAULT '',"
        "  app_id         TEXT NOT NULL DEFAULT '',"
        "  market         TEXT NOT NULL DEFAULT '',"
        "  lang           TEXT NOT NULL DEFAULT '',"
        "  zinny_uuid     TEXT NOT NULL DEFAULT '',"
        "  zat            TEXT NOT NULL DEFAULT '',"
        "  zrt            TEXT NOT NULL DEFAULT '',"
        "  external_token TEXT NOT NULL DEFAULT '',"
        "  zat_expiry_ms  INTEGER NOT NULL DEFAULT 0,"
        "  zrt_expiry_ms  INTEGER NOT NULL DEFAULT 0,"
        "  first_login_ms INTEGER NOT NULL DEFAULT 0,"
        "  last_login_ms  INTEGER NOT NULL DEFAULT 0,"
        "  push_token     TEXT NOT NULL DEFAULT '',"
        "  FOREIGN KEY(account_id) REFERENCES account_registry(account_id)"
        ")",
        nullptr, nullptr, nullptr);
}

AccountEntry AccountRegistry::row_to_entry(sqlite3_stmt* st) const {
    AccountEntry e;
    e.account_id         = col_text(st, 0);
    e.display_name       = col_text(st, 1);
    e.player_id          = col_text(st, 2);
    e.idp_code           = col_text(st, 3);
    e.profile_source     = col_text(st, 4);
    e.state_db_relpath   = col_text(st, 5);
    e.session_db_relpath = col_text(st, 6);
    e.created_at_ms      = sqlite3_column_int64(st, 7);
    e.updated_at_ms      = sqlite3_column_int64(st, 8);
    e.last_login_at_ms   = sqlite3_column_int64(st, 9);
    e.source_account_id  = col_text(st, 10);
    e.deleted_at_ms      = sqlite3_column_int64(st, 11);
    return e;
}

std::vector<AccountEntry> AccountRegistry::list_active() const {
    std::vector<AccountEntry> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT account_id,display_name,player_id,idp_code,profile_source,"
            "state_db_relpath,session_db_relpath,created_at_ms,updated_at_ms,"
            "last_login_at_ms,source_account_id,deleted_at_ms"
            " FROM account_registry WHERE deleted_at_ms IS NULL OR deleted_at_ms=0"
            " ORDER BY created_at_ms",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW)
            out.push_back(row_to_entry(st));
    }
    sqlite3_finalize(st);
    return out;
}

std::optional<AccountEntry> AccountRegistry::find(const std::string& account_id) const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<AccountEntry> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT account_id,display_name,player_id,idp_code,profile_source,"
            "state_db_relpath,session_db_relpath,created_at_ms,updated_at_ms,"
            "last_login_at_ms,source_account_id,deleted_at_ms"
            " FROM account_registry WHERE account_id=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st, 1, account_id.c_str(), -1, SQLITE_TRANSIENT);
        if (sqlite3_step(st) == SQLITE_ROW)
            out = row_to_entry(st);
    }
    sqlite3_finalize(st);
    return out;
}

bool AccountRegistry::insert(const AccountEntry& entry) {
    if (!db_) return false;
    if (!is_safe_account_id(entry.account_id)) {
        log_line(0, "ACCREG", "insert: unsafe account_id: " + entry.account_id);
        return false;
    }
    sqlite3_stmt* st = nullptr;
    bool ok = false;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO account_registry"
            "(account_id,display_name,player_id,idp_code,profile_source,"
            "state_db_relpath,session_db_relpath,created_at_ms,updated_at_ms,"
            "last_login_at_ms,source_account_id,deleted_at_ms)"
            " VALUES(?1,?2,?3,?4,?5,?6,?7,?8,?9,?10,?11,?12)",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st,  1, entry.account_id.c_str(),         -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  2, entry.display_name.c_str(),        -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  3, entry.player_id.c_str(),           -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  4, entry.idp_code.c_str(),            -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  5, entry.profile_source.c_str(),      -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  6, entry.state_db_relpath.c_str(),    -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  7, entry.session_db_relpath.c_str(),  -1, SQLITE_TRANSIENT);
        sqlite3_bind_int64(st, 8, entry.created_at_ms);
        sqlite3_bind_int64(st, 9, entry.updated_at_ms);
        if (entry.last_login_at_ms)
            sqlite3_bind_int64(st, 10, entry.last_login_at_ms);
        else
            sqlite3_bind_null(st, 10);
        if (!entry.source_account_id.empty())
            sqlite3_bind_text(st, 11, entry.source_account_id.c_str(), -1, SQLITE_TRANSIENT);
        else
            sqlite3_bind_null(st, 11);
        if (entry.deleted_at_ms)
            sqlite3_bind_int64(st, 12, entry.deleted_at_ms);
        else
            sqlite3_bind_null(st, 12);
        ok = sqlite3_step(st) == SQLITE_DONE;
    }
    sqlite3_finalize(st);
    if (ok) log_operation(entry.account_id, "create", "ok", "");
    return ok;
}

bool AccountRegistry::update(const AccountEntry& entry) {
    if (!db_) return false;
    if (!is_safe_account_id(entry.account_id)) return false;
    sqlite3_stmt* st = nullptr;
    bool ok = false;
    if (sqlite3_prepare_v2(db_,
            "UPDATE account_registry SET"
            " display_name=?2, player_id=?3, idp_code=?4, profile_source=?5,"
            " state_db_relpath=?6, session_db_relpath=?7, updated_at_ms=?8,"
            " last_login_at_ms=?9, source_account_id=?10, deleted_at_ms=?11"
            " WHERE account_id=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st,  1, entry.account_id.c_str(),        -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  2, entry.display_name.c_str(),       -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  3, entry.player_id.c_str(),          -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  4, entry.idp_code.c_str(),           -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  5, entry.profile_source.c_str(),     -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  6, entry.state_db_relpath.c_str(),   -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  7, entry.session_db_relpath.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_bind_int64(st, 8, entry.updated_at_ms);
        if (entry.last_login_at_ms)
            sqlite3_bind_int64(st, 9, entry.last_login_at_ms);
        else
            sqlite3_bind_null(st, 9);
        if (!entry.source_account_id.empty())
            sqlite3_bind_text(st, 10, entry.source_account_id.c_str(), -1, SQLITE_TRANSIENT);
        else
            sqlite3_bind_null(st, 10);
        if (entry.deleted_at_ms)
            sqlite3_bind_int64(st, 11, entry.deleted_at_ms);
        else
            sqlite3_bind_null(st, 11);
        ok = sqlite3_step(st) == SQLITE_DONE;
    }
    sqlite3_finalize(st);
    return ok;
}

bool AccountRegistry::soft_delete(const std::string& account_id, std::int64_t deleted_at_ms) {
    if (!db_) return false;
    if (!is_safe_account_id(account_id)) return false;
    sqlite3_stmt* st = nullptr;
    bool ok = false;
    if (sqlite3_prepare_v2(db_,
            "UPDATE account_registry SET deleted_at_ms=?2 WHERE account_id=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st,  1, account_id.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_bind_int64(st, 2, deleted_at_ms);
        ok = sqlite3_step(st) == SQLITE_DONE;
    }
    sqlite3_finalize(st);
    if (ok) log_operation(account_id, "delete", "ok", "");
    return ok;
}

std::string AccountRegistry::active_account_id() const {
    if (!db_) return {};
    sqlite3_stmt* st = nullptr;
    std::string out;
    if (sqlite3_prepare_v2(db_,
            "SELECT account_id FROM active_account WHERE singleton_id=1",
            -1, &st, nullptr) == SQLITE_OK) {
        if (sqlite3_step(st) == SQLITE_ROW)
            out = col_text(st, 0);
    }
    sqlite3_finalize(st);
    return out;
}

bool AccountRegistry::set_active(const std::string& account_id, std::int64_t switched_at_ms) {
    if (!db_) return false;
    if (!is_safe_account_id(account_id)) return false;
    sqlite3_stmt* st = nullptr;
    bool ok = false;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO active_account(singleton_id,account_id,switched_at_ms)"
            " VALUES(1,?1,?2)"
            " ON CONFLICT(singleton_id) DO UPDATE SET"
            " account_id=excluded.account_id, switched_at_ms=excluded.switched_at_ms",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st,  1, account_id.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_bind_int64(st, 2, switched_at_ms);
        ok = sqlite3_step(st) == SQLITE_DONE;
    }
    sqlite3_finalize(st);
    if (ok) log_operation(account_id, "select", "ok", "");
    return ok;
}

bool AccountRegistry::upsert_session(const AccountSessionRow& row) {
    if (!db_) return false;
    sqlite3_stmt* st = nullptr;
    bool ok = false;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO account_session("
            "account_id,player_id,idp_code,idp_id,member_key,app_id,market,lang,"
            "zinny_uuid,zat,zrt,external_token,zat_expiry_ms,zrt_expiry_ms,"
            "first_login_ms,last_login_ms,push_token)"
            " VALUES(?1,?2,?3,?4,?5,?6,?7,?8,?9,?10,?11,?12,?13,?14,?15,?16,?17)"
            " ON CONFLICT(account_id) DO UPDATE SET"
            " player_id=excluded.player_id, idp_code=excluded.idp_code,"
            " idp_id=excluded.idp_id, member_key=excluded.member_key,"
            " app_id=excluded.app_id, market=excluded.market, lang=excluded.lang,"
            " zinny_uuid=excluded.zinny_uuid, zat=excluded.zat, zrt=excluded.zrt,"
            " external_token=excluded.external_token,"
            " zat_expiry_ms=excluded.zat_expiry_ms,"
            " zrt_expiry_ms=excluded.zrt_expiry_ms,"
            " first_login_ms=excluded.first_login_ms,"
            " last_login_ms=excluded.last_login_ms,"
            " push_token=excluded.push_token",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st,  1, row.account_id.c_str(),     -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  2, row.player_id.c_str(),      -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  3, row.idp_code.c_str(),       -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  4, row.idp_id.c_str(),         -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  5, row.member_key.c_str(),     -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  6, row.app_id.c_str(),         -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  7, row.market.c_str(),         -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  8, row.lang.c_str(),           -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  9, row.zinny_uuid.c_str(),     -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st, 10, row.zat.c_str(),            -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st, 11, row.zrt.c_str(),            -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st, 12, row.external_token.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_bind_int64(st, 13, row.zat_expiry_ms);
        sqlite3_bind_int64(st, 14, row.zrt_expiry_ms);
        sqlite3_bind_int64(st, 15, row.first_login_ms);
        sqlite3_bind_int64(st, 16, row.last_login_ms);
        sqlite3_bind_text(st, 17, row.push_token.c_str(),     -1, SQLITE_TRANSIENT);
        ok = sqlite3_step(st) == SQLITE_DONE;
    }
    sqlite3_finalize(st);
    return ok;
}

std::optional<AccountSessionRow> AccountRegistry::find_session(const std::string& account_id) const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<AccountSessionRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT account_id,player_id,idp_code,idp_id,member_key,app_id,market,lang,"
            "zinny_uuid,zat,zrt,external_token,zat_expiry_ms,zrt_expiry_ms,"
            "first_login_ms,last_login_ms,push_token"
            " FROM account_session WHERE account_id=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st, 1, account_id.c_str(), -1, SQLITE_TRANSIENT);
        if (sqlite3_step(st) == SQLITE_ROW) {
            AccountSessionRow r;
            r.account_id     = col_text(st,  0);
            r.player_id      = col_text(st,  1);
            r.idp_code       = col_text(st,  2);
            r.idp_id         = col_text(st,  3);
            r.member_key     = col_text(st,  4);
            r.app_id         = col_text(st,  5);
            r.market         = col_text(st,  6);
            r.lang           = col_text(st,  7);
            r.zinny_uuid     = col_text(st,  8);
            r.zat            = col_text(st,  9);
            r.zrt            = col_text(st, 10);
            r.external_token = col_text(st, 11);
            r.zat_expiry_ms  = sqlite3_column_int64(st, 12);
            r.zrt_expiry_ms  = sqlite3_column_int64(st, 13);
            r.first_login_ms = sqlite3_column_int64(st, 14);
            r.last_login_ms  = sqlite3_column_int64(st, 15);
            r.push_token     = col_text(st, 16);
            out = r;
        }
    }
    sqlite3_finalize(st);
    return out;
}

bool AccountRegistry::log_operation(const std::string& account_id,
                                    const std::string& operation,
                                    const std::string& status,
                                    const std::string& detail_json) {
    if (!db_) return false;
    sqlite3_stmt* st = nullptr;
    bool ok = false;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO account_operation_log(account_id,operation,status,detail_json,created_at_ms)"
            " VALUES(?1,?2,?3,?4,?5)",
            -1, &st, nullptr) == SQLITE_OK) {
        if (!account_id.empty())
            sqlite3_bind_text(st, 1, account_id.c_str(), -1, SQLITE_TRANSIENT);
        else
            sqlite3_bind_null(st, 1);
        sqlite3_bind_text(st,  2, operation.c_str(),   -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  3, status.c_str(),      -1, SQLITE_TRANSIENT);
        if (!detail_json.empty())
            sqlite3_bind_text(st, 4, detail_json.c_str(), -1, SQLITE_TRANSIENT);
        else
            sqlite3_bind_null(st, 4);
        sqlite3_bind_int64(st, 5, unix_ms());
        ok = sqlite3_step(st) == SQLITE_DONE;
    }
    sqlite3_finalize(st);
    return ok;
}

AccountRegistry& account_registry() {
    static AccountRegistry instance(config().state_dir);
    static std::once_flag  flag;
    std::call_once(flag, [&] { instance.open(); });
    return instance;
}

} // namespace eversoul
