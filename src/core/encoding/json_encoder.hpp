// json_encoder.hpp — descriptor-driven JSON -> protobuf encoder.
//
// Encodes a response fixture (responses/<Endpoint>.json) into game-server
// protobuf bytes using a flattened schema (schema/<Endpoint>.json). No
// libprotobuf: a single recursive walk over the schema + parsed JSON handles
// every endpoint (all 135 message/enum types) uniformly.
//
// Field-type handling mirrors what MessageToDict produced on the Python side:
//   - int64/uint64/fixed64 values arrive as JSON strings (precision-safe)
//   - enum values arrive as JSON enum-NAMES -> resolved to numbers via schema
//   - bytes fields arrive as base64 (blob string_-> bytes patch)
//   - numeric repeated scalars are packed (schema "packed": true)
#pragma once

#include <string>

#include "json.hpp"

namespace eversoul
{

    // Encodes `fixture` (the response JSON) using `schema` (the flattened schema
    // JSON). Both are pre-parsed json::Value objects. Returns the protobuf payload
    // (no envelope). On a schema/value mismatch sets `error` and returns false.
    bool json_encode_message(const json::Value &schema, const json::Value &fixture,
                             std::string &out, std::string &error);

    // Convenience: parse the two JSON documents and encode. Used by the fixture
    // store and the desktop validator.
    bool json_encode_from_text(const std::string &schema_text,
                               const std::string &fixture_text, std::string &out,
                               std::string &error);

} // namespace eversoul
