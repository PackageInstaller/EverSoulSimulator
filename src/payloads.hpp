// payloads.hpp — game-server protobuf payload builders and harvested fixtures.
#pragma once

#include <cstdint>
#include <string>

#include "common.hpp"

namespace eversoul
{

    // Wrap a protobuf payload in the game-server response envelope (4-byte seq + 4-byte size).
    [[nodiscard]] HttpResponse game_binary_response(const HttpRequest &req, const std::string &payload);

    // Request envelope helpers.
    [[nodiscard]] std::string request_sequence(const HttpRequest &req);
    [[nodiscard]] std::string request_payload(const HttpRequest &req);

    // Payload builders.
    [[nodiscard]] std::string hero_payload(const std::string &idx, std::int32_t hero_no, std::int32_t level);
    [[nodiscard]] std::string currency_all_payload();
    [[nodiscard]] std::string login_payload(const std::string &player_id, std::int32_t type);
    [[nodiscard]] std::string server_time_payload();
    [[nodiscard]] std::string user_info_payload();
    [[nodiscard]] std::string lobby_refresh_payload();
    [[nodiscard]] std::string minimal_dungeon_payload(std::int32_t dungeon_id, std::int32_t dungeon_no, bool clear);

    // Harvested fixtures keyed by endpoint path. Returns true and sets `payload` if matched.
    [[nodiscard]] bool harvested_game_payload(const std::string &path, std::string &payload);

    // Real responses captured from a login->tutorial session HAR (envelope stripped).
    // Highest-fidelity source: self-consistent, version-correct (table 4725).
    [[nodiscard]] bool session_harvested_payload(const std::string &path, std::string &payload);

    // Endpoints that should reply with an empty protobuf payload.
    [[nodiscard]] bool is_empty_game_endpoint(const std::string &path);

} // namespace eversoul
