#pragma once

#include <cstdint>
#include <string>

namespace eversoul::account_admin
{
    struct ServiceResult
    {
        long status = 200;
        std::string body;
        bool broadcast_session = false;
    };

    bool ensure_fixture_accounts(std::string &reason);
    std::string selected_fixture_profile();
    std::string active_account_id();

    ServiceResult list_accounts();
    ServiceResult get_account(const std::string &account_id);
    ServiceResult select_account(const std::string &account_id);
    ServiceResult update_identity(const std::string &account_id,
                                  const std::string &nickname,
                                  const std::string &player_id);

    ServiceResult list_currencies(const std::string &account_id);
    ServiceResult get_currency(const std::string &account_id, int type);
    ServiceResult set_currency(const std::string &account_id, int type, std::int64_t value);
    ServiceResult clear_currency(const std::string &account_id, int type);

    ServiceResult list_heroes(const std::string &account_id);
    ServiceResult upsert_hero(const std::string &account_id,
                              const std::string &idx,
                              int hero_no,
                              int level,
                              int grade_sno,
                              int race_sno);
    ServiceResult delete_hero(const std::string &account_id, const std::string &idx);

    ServiceResult list_items(const std::string &account_id);
    ServiceResult set_item(const std::string &account_id, int item_no, int cnt);
    ServiceResult delete_item(const std::string &account_id, int item_no);
}
