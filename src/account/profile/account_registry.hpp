// account_registry.hpp — accounts.sqlite3 기반 다중 계정 레지스트리.
#pragma once

#include <cstdint>
#include <optional>
#include <string>
#include <vector>

struct sqlite3;
struct sqlite3_stmt;

namespace eversoul {

struct AccountEntry {
    std::string  account_id;
    std::string  display_name;
    std::string  player_id;
    std::string  idp_code;
    std::string  profile_source;
    std::string  state_db_relpath;
    std::string  session_db_relpath;
    std::int64_t created_at_ms    = 0;
    std::int64_t updated_at_ms    = 0;
    std::int64_t last_login_at_ms = 0;
    std::string  source_account_id;
    std::int64_t deleted_at_ms    = 0;
};

// WSS 세션 자격증명 — 계정별 Kakao SDK JSON-RPC 초기 푸시 및 reply meta 동적 치환용.
struct AccountSessionRow {
    std::string  account_id;
    std::string  player_id;
    std::string  idp_code;
    std::string  idp_id;
    std::string  member_key;
    std::string  app_id;
    std::string  market;
    std::string  lang;
    std::string  zinny_uuid;
    std::string  zat;
    std::string  zrt;
    std::string  external_token;
    std::int64_t zat_expiry_ms   = 0;
    std::int64_t zrt_expiry_ms   = 0;
    std::int64_t first_login_ms  = 0;
    std::int64_t last_login_ms   = 0;
    std::string  push_token;
};

class AccountRegistry {
public:
    explicit AccountRegistry(const std::string& state_dir);
    ~AccountRegistry();

    AccountRegistry(const AccountRegistry&)            = delete;
    AccountRegistry& operator=(const AccountRegistry&) = delete;

    bool open();

    std::vector<AccountEntry>   list_active() const;
    std::optional<AccountEntry> find(const std::string& account_id) const;

    bool insert(const AccountEntry& entry);
    bool update(const AccountEntry& entry);
    bool soft_delete(const std::string& account_id, std::int64_t deleted_at_ms);

    std::string active_account_id() const;
    bool        set_active(const std::string& account_id, std::int64_t switched_at_ms);

    // WSS 세션 자격증명 DB — accounts.sqlite3 account_session 테이블.
    bool                                upsert_session(const AccountSessionRow& row);
    std::optional<AccountSessionRow>    find_session(const std::string& account_id) const;

    bool log_operation(const std::string& account_id,
                       const std::string& operation,
                       const std::string& status,
                       const std::string& detail_json);

private:
    std::string state_dir_;
    sqlite3*    db_ = nullptr;

    void         create_schema();
    AccountEntry row_to_entry(sqlite3_stmt* st) const;
};

AccountRegistry& account_registry();

} // namespace eversoul
