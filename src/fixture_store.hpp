// fixture_store.hpp — runtime loader for JSON response fixtures.
//
// At startup, loads responses/<Endpoint>.json (+ schema/<Endpoint>.json for the
// "proto" ones) from a base directory, encodes each to its protobuf payload via
// the descriptor-driven json_encoder, and serves them by endpoint path.
//
// This replaces the build-time hex blobs (harvested_session.inc): fixtures are
// now editable JSON with real field names, converted to protobuf on device.
#pragma once

#include <map>
#include <optional>
#include <string>

namespace eversoul
{

    class FixtureStore
    {
    public:
        // Loads fixtures + schemas from `base_dir` (the directory that contains the
        // `responses/` and `schema/` subdirectories). Safe to call once at startup.
        // Returns the number of endpoints loaded.
        std::size_t load(const std::string &base_dir);

        // Returns the protobuf PAYLOAD (no envelope) for an endpoint path like
        // "/UserInfo", or std::nullopt if not present. Empty-payload endpoints
        // return an empty string (present, zero-length). Newbie lookup tries
        // responses_newbie/ first, then falls back to responses/.
        std::optional<std::string> payload(const std::string &path, bool newbie = false) const;

        bool loaded() const { return loaded_; }
        std::size_t size() const { return payloads_.size(); }

        // Diagnostics: endpoints that failed to encode at load time (path -> error).
        const std::map<std::string, std::string> &errors() const { return errors_; }

    private:
        bool loaded_ = false;
        // endpoint path ("/UserInfo") -> encoded payload bytes.
        std::map<std::string, std::string> payloads_;
        std::map<std::string, std::string> newbie_payloads_;
        std::map<std::string, std::string> errors_;
    };

    // Process-wide fixture store (loaded once from the configured data dir).
    FixtureStore &fixture_store();

} // namespace eversoul
