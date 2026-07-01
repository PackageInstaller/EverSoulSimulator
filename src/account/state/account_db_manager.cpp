// account_db_manager.cpp — 활성 계정 AccountDatabase 핸들 수명 관리 구현.
#include "account_db_manager.hpp"

#include <filesystem>

#include "account_database.hpp"
#include "account_registry.hpp"
#include "common.hpp"
#include "log.hpp"
#include "util.hpp"

namespace fs = std::filesystem;

namespace eversoul {

AccountDatabaseManager::AccountDatabaseManager(AccountRegistry& registry,
                                                 const std::string& state_dir)
    : registry_(registry), state_dir_(state_dir) {}

bool AccountDatabaseManager::open_account_locked(const std::string& account_id,
                                                   const std::string& state_db_relpath) {
    const std::string abs_dir = [&]() -> std::string {
        fs::path rel(state_db_relpath);
        fs::path parent = rel.parent_path();
        if (parent.is_absolute()) return parent.string();
        return (fs::path(state_dir_) / parent).string();
    }();

    auto db = std::make_unique<AccountDatabase>(abs_dir);
    if (!db->open()) {
        log_line(0, "ACCTMGR", "open failed for account: " + account_id);
        return false;
    }
    if (!db->is_seeded()) {
        auto entry = registry_.find(account_id);
        const std::string seed_profile =
            (entry && entry->profile_source == "responses_newbie") ? "newbie" : "full";
        log_line(0, "ACCTMGR", "unseeded db detected, restoring as " + seed_profile + " for account: " + account_id);
        if (!db->seed_from_fixture(seed_profile, config().data_dir)) {
            log_line(0, "ACCTMGR", "restore seed failed for account: " + account_id);
        }
    }
    active_db_        = std::move(db);
    active_account_id_ = account_id;
    log_line(0, "ACCTMGR", "active account: " + account_id);
    return true;
}

AccountDatabase* AccountDatabaseManager::active_db() {
    std::lock_guard<std::mutex> lk(mu_);
    if (!active_db_) {
        const std::string aid = registry_.active_account_id();
        if (aid.empty()) return nullptr;
        auto entry = registry_.find(aid);
        if (!entry) return nullptr;
        open_account_locked(aid, entry->state_db_relpath);
    }
    return active_db_.get();
}

bool AccountDatabaseManager::switch_to(const std::string& account_id) {
    std::lock_guard<std::mutex> lk(mu_);
    if (active_account_id_ == account_id && active_db_) return true;
    auto entry = registry_.find(account_id);
    if (!entry || entry->deleted_at_ms != 0) {
        log_line(0, "ACCTMGR", "switch_to: account not found or deleted: " + account_id);
        return false;
    }
    active_db_.reset();
    active_account_id_.clear();
    return open_account_locked(account_id, entry->state_db_relpath);
}

bool AccountDatabaseManager::reload_active() {
    std::lock_guard<std::mutex> lk(mu_);
    const std::string aid = registry_.active_account_id();
    if (aid.empty()) {
        active_db_.reset();
        active_account_id_.clear();
        return false;
    }
    if (active_account_id_ == aid && active_db_) return true;
    auto entry = registry_.find(aid);
    if (!entry) {
        active_db_.reset();
        active_account_id_.clear();
        return false;
    }
    active_db_.reset();
    active_account_id_.clear();
    return open_account_locked(aid, entry->state_db_relpath);
}

void AccountDatabaseManager::close_active() {
    std::lock_guard<std::mutex> lk(mu_);
    active_db_.reset();
    active_account_id_.clear();
}

AccountDatabaseManager& account_db_manager() {
    static AccountDatabaseManager instance(account_registry(), config().state_dir);
    return instance;
}

} // namespace eversoul
