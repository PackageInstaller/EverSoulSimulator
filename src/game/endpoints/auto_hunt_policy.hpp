#pragma once

#include <cstdint>

namespace eversoul
{

    struct AutoHuntRewardPolicy
    {
        std::int64_t gold_per_minute = 0;
        std::int64_t mana_dust_per_minute = 0;
        std::int64_t exp_per_minute = 0;
        std::int64_t cap_minutes = 0;
        std::int64_t tutorial_floor_gold = 0;
        std::int64_t tutorial_floor_mana_dust = 0;
        std::int64_t tutorial_floor_exp = 0;
    };

    [[nodiscard]] AutoHuntRewardPolicy auto_hunt_reward_policy();

} // namespace eversoul
