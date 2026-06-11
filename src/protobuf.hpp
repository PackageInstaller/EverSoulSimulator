// protobuf.hpp — minimal protobuf wire-format encode/decode helpers + hex utility.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

namespace eversoul
{

    // --- encoders (append to `out`) ---
    void pb_varint(std::string &out, std::uint64_t value);
    void pb_key(std::string &out, int field, int wire_type);
    void pb_int32(std::string &out, int field, std::int32_t value);
    void pb_int64(std::string &out, int field, std::int64_t value);
    void pb_float(std::string &out, int field, float value);
    void pb_bool(std::string &out, int field, bool value);
    void pb_string(std::string &out, int field, const std::string &value);
    void pb_message(std::string &out, int field, const std::string &nested);

    // --- decoders ---
    bool pb_read_varint(const std::string &data, std::size_t &pos, std::uint64_t &value);
    bool pb_skip(const std::string &data, std::size_t &pos, int wire_type);
    [[nodiscard]] std::int32_t pb_get_int32(const std::string &data, int wanted_field, std::int32_t fallback);
    [[nodiscard]] std::int64_t pb_get_int64(const std::string &data, int wanted_field, std::int64_t fallback);
    [[nodiscard]] float pb_get_float(const std::string &data, int wanted_field, float fallback);
    [[nodiscard]] bool pb_has_field(const std::string &data, int wanted_field);
    [[nodiscard]] std::string pb_get_string(const std::string &data, int wanted_field, const std::string &fallback);
    [[nodiscard]] std::vector<std::string> pb_get_all_strings(const std::string &data, int wanted_field);
    [[nodiscard]] std::string pb_get_message(const std::string &data, int wanted_field);
    [[nodiscard]] std::vector<std::string> pb_get_all_messages(const std::string &data, int wanted_field);

    // Rebuild a message, replacing one top-level field (or appending if absent).
    [[nodiscard]] std::string pb_replace_int32(const std::string &data, int field, std::int32_t value);
    [[nodiscard]] std::string pb_replace_int64(const std::string &data, int field, std::int64_t value);
    [[nodiscard]] std::string pb_replace_float(const std::string &data, int field, float value);
    [[nodiscard]] std::string pb_replace_bytes(const std::string &data, int field, const std::string &value);
    [[nodiscard]] std::string pb_replace_message(const std::string &data, int field, const std::string &nested);

    // --- hex ---
    [[nodiscard]] std::string hex_to_bytes(const char *hex);

} // namespace eversoul
