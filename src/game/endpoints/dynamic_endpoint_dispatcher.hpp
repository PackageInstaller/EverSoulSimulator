#pragma once

#include <cstdint>
#include <optional>

#include "common.hpp"

namespace eversoul
{

    using CurrencyFixtureSync = void (*)();

    [[nodiscard]] std::optional<HttpResponse> dispatch_dynamic_game_endpoint(
        std::uint64_t id,
        const HttpRequest &req,
        bool newbie_mode,
        CurrencyFixtureSync sync_currencies);

} // namespace eversoul
