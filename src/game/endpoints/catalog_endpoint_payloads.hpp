#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "account_database.hpp"

namespace eversoul
{

[[nodiscard]] std::string build_event_story_info_payload();
[[nodiscard]] std::string build_signature_list_payload(const std::vector<HeroRow> &heroes);
[[nodiscard]] std::string build_cash_shop_list_payload(std::int32_t request_no);
[[nodiscard]] std::string build_cash_shop_user_able_cash_item_ids_payload(const std::vector<std::int32_t> &tab_ids);

} // namespace eversoul
