// game_catalog.hpp — catalog.sqlite3 기반 게임데이터 카탈로그.
#pragma once

#include <cstdint>
#include <optional>
#include <string>
#include <vector>

struct sqlite3;
struct sqlite3_stmt;

namespace eversoul {

struct CatalogEndpointRow {
    std::string  endpoint;
    std::string  profile;
    std::string  rel_path;
    std::string  format;
    std::int64_t hits           = 0;
    std::int64_t resp_bytes     = 0;
    int          empty          = 0;
    int          has_req_proto  = 0;
    int          has_resp_proto = 0;
    int          roundtrip      = 0;
    std::string  request_decoded_json;
    std::string  encoded_payload;
};

struct CatalogSchemaRow {
    std::string endpoint;
    std::string root_message;
    std::string rel_path;
    std::string sha256;
};

class GameCatalog {
public:
    explicit GameCatalog(const std::string& state_dir);
    ~GameCatalog();

    GameCatalog(const GameCatalog&)            = delete;
    GameCatalog& operator=(const GameCatalog&) = delete;

    bool open();
    bool populate(const std::string& data_dir);

    std::optional<CatalogEndpointRow> find_endpoint(const std::string& endpoint,
                                                     const std::string& profile) const;
    std::optional<CatalogSchemaRow>   find_schema(const std::string& endpoint) const;

    bool increment_hits(const std::string& endpoint, const std::string& profile,
                        std::int64_t resp_bytes);

    std::string catalog_version() const;

private:
    std::string state_dir_;
    sqlite3*    db_ = nullptr;

    void create_schema();
    bool index_file_group(const std::string& data_dir,
                          const std::string& group_name,
                          const std::string& rel_dir);
    bool index_schema_files(const std::string& data_dir);
    bool index_wss_files(const std::string& data_dir);
    bool index_endpoints(const std::string& data_dir,
                         const std::string& profile,
                         const std::string& responses_dir);

    std::string file_sha256(const std::string& path) const;
    void        set_meta(const std::string& key, const std::string& value);
    std::string get_meta(const std::string& key, const std::string& fallback = "") const;
};

GameCatalog& game_catalog();

} // namespace eversoul
