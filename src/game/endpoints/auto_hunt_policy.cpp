#include "auto_hunt_policy.hpp"

#include <algorithm>
#include <string>

#include "fixture_store.hpp"
#include "protobuf.hpp"

namespace eversoul
{
    namespace
    {

        constexpr AutoHuntRewardPolicy kCapturedFallbackPolicy{
            10,
            10,
            2,
            720,
            600,
            60,
            213,
        };

        AutoHuntRewardPolicy apply_fixture_rates(AutoHuntRewardPolicy policy,
                                                 const std::string &payload)
        {
            const std::int32_t gold = pb_get_int32(payload, 3, 0);
            const std::int32_t mana_dust = pb_get_int32(payload, 4, 0);
            const std::int32_t exp = pb_get_int32(payload, 5, 0);
            if (gold > 0)
                policy.gold_per_minute = gold;
            if (mana_dust > 0)
                policy.mana_dust_per_minute = mana_dust;
            if (exp > 0)
                policy.exp_per_minute = exp;
            return policy;
        }

    } // namespace

    AutoHuntRewardPolicy auto_hunt_reward_policy()
    {
        AutoHuntRewardPolicy policy = kCapturedFallbackPolicy;
        if (auto full = fixture_store().payload("/AutoHuntOpen", false))
            policy = apply_fixture_rates(policy, *full);
        if (auto newbie = fixture_store().payload("/AutoHuntOpen", true))
            policy = apply_fixture_rates(policy, *newbie);
        policy.cap_minutes = std::max<std::int64_t>(1, policy.cap_minutes);
        return policy;
    }

} // namespace eversoul
