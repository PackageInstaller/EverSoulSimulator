// account_db_manager.hpp — 활성 계정 AccountDatabase 핸들 수명 관리.
#pragma once

#include <memory>
#include <mutex>
#include <string>

namespace eversoul {

class AccountDatabase;
class AccountRegistry;

class AccountDatabaseManager {
public:
    explicit AccountDatabaseManager(AccountRegistry& registry,
                                     const std::string& state_dir);
    ~AccountDatabaseManager() = default;

    AccountDatabaseManager(const AccountDatabaseManager&)            = delete;
    AccountDatabaseManager& operator=(const AccountDatabaseManager&) = delete;

    AccountDatabase* active_db();

    bool switch_to(const std::string& account_id);
    bool reload_active();

    void close_active();

    const std::string& active_account_id() const { return active_account_id_; }

private:
    AccountRegistry&                      registry_;
    std::string                           state_dir_;
    std::string                           active_account_id_;
    std::unique_ptr<AccountDatabase>      active_db_;
    mutable std::mutex                    mu_;

    bool open_account_locked(const std::string& account_id,
                              const std::string& state_db_relpath);
};

AccountDatabaseManager& account_db_manager();

} // namespace eversoul
