#include "gacha_template_data.hpp"

#include <array>

namespace eversoul
{
    namespace
    {

        constexpr std::array<GachaHeroTemplate, 11> kFallbackGachaHeroes{{
            {"", 10, 110011, 110052},
            {"", 20, 110011, 110053},
            {"", 30, 110011, 110054},
            {"", 40, 110011, 110055},
            {"", 110, 110012, 110052},
            {"", 210, 110012, 110053},
            {"", 310, 110012, 110054},
            {"", 410, 110012, 110055},
            {"", 1010, 110014, 110052},
            {"", 1060, 110014, 110052},
            {"", 2070, 110014, 110053},
        }};

        constexpr std::array<GachaHeroTemplate, 10> kTutorialRoll1{{
            {"", 2150, 110014, 110053},
            {"", 210, 110012, 110053},
            {"", 110, 110012, 110052},
            {"", 420, 110012, 110055},
            {"", 110, 110012, 110052},
            {"", 30, 110011, 110054},
            {"", 10, 110011, 110052},
            {"", 20, 110011, 110053},
            {"", 40, 110011, 110055},
            {"", 10, 110011, 110052},
        }};

        constexpr std::array<GachaHeroTemplate, 10> kTutorialRoll2{{
            {"", 2070, 110014, 110053},
            {"", 310, 110012, 110054},
            {"", 410, 110012, 110055},
            {"", 110, 110012, 110052},
            {"", 210, 110012, 110053},
            {"", 20, 110011, 110053},
            {"", 40, 110011, 110055},
            {"", 20, 110011, 110053},
            {"", 20, 110011, 110053},
            {"", 40, 110011, 110055},
        }};

        constexpr std::array<GachaHeroTemplate, 10> kTutorialFixedHeroes{{
            {"0_off_g0", 2070, 110014, 110053},
            {"0_off_g1", 310, 110012, 110054},
            {"0_off_g2", 410, 110012, 110055},
            {"0_off_g3", 110, 110012, 110052},
            {"0_off_g4", 210, 110012, 110053},
            {"0_off_g5", 20, 110011, 110053},
            {"0_off_g6", 40, 110011, 110055},
            {"0_off_g7", 20, 110011, 110053},
            {"0_off_g8", 20, 110011, 110053},
            {"0_off_g9", 40, 110011, 110055},
        }};

    } // namespace

    std::span<const GachaHeroTemplate> fallback_gacha_hero_pool()
    {
        return kFallbackGachaHeroes;
    }

    std::span<const GachaHeroTemplate> tutorial_gacha_roll(int roll)
    {
        return roll == 0 ? std::span<const GachaHeroTemplate>(kTutorialRoll1)
                         : std::span<const GachaHeroTemplate>(kTutorialRoll2);
    }

    std::span<const GachaHeroTemplate> tutorial_fixed_gacha_heroes()
    {
        return kTutorialFixedHeroes;
    }

    GachaHeroTemplate fallback_gacha_hero_for_serial(int serial)
    {
        const std::size_t index = static_cast<std::size_t>(serial) % kFallbackGachaHeroes.size();
        return kFallbackGachaHeroes[index];
    }

} // namespace eversoul
