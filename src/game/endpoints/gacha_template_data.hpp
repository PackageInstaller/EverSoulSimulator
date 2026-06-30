#pragma once

#include <cstddef>
#include <span>

namespace eversoul
{

    struct GachaHeroTemplate
    {
        const char *idx;
        int no;
        int grade;
        int race;
    };

    [[nodiscard]] std::span<const GachaHeroTemplate> fallback_gacha_hero_pool();
    [[nodiscard]] std::span<const GachaHeroTemplate> tutorial_gacha_roll(int roll);
    [[nodiscard]] std::span<const GachaHeroTemplate> tutorial_fixed_gacha_heroes();
    [[nodiscard]] GachaHeroTemplate fallback_gacha_hero_for_serial(int serial);

} // namespace eversoul
