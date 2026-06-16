// fixture_store.cpp — load + encode JSON response fixtures at runtime.
#include "fixture_store.hpp"

#include "json.hpp"
#include "json_encoder.hpp"
#include "log.hpp"
#include "offline_data.hpp"

namespace eversoul
{

    std::size_t FixtureStore::load(const std::string &base_dir)
    {
        payloads_.clear();
        newbie_payloads_.clear();
        errors_.clear();

        // 데이터 소스 (blob 위장 so 우선, 없으면 base_dir 디렉토리 파일).
        OfflineData &data = offline_data();
        data.init(base_dir);

        auto load_profile = [&](const std::string &prefix,
                                std::map<std::string, std::string> &payload_map) -> std::size_t
        {
            std::vector<std::string> resp_files = data.list(prefix + "/");
            if (resp_files.empty())
            {
                log_line(0, "FIXTURE", "no fixtures under " + prefix + "/ from " + data.source());
                return 0;
            }

            for (const std::string &rel : resp_files)
            {
                // rel 예시: "responses/UserInfo.json" 또는 "responses_newbie/UserInfo.json"
                std::string fn = rel.substr(rel.find_last_of('/') + 1);
                if (fn.size() <= 5)
                    continue;                                 // *.json 아님
                std::string ep = fn.substr(0, fn.size() - 5); // ".json" 제거
                if (ep == "_manifest")
                    continue;
                std::string path = "/" + ep;

                auto fixture_opt = data.read(rel);
                if (!fixture_opt)
                {
                    errors_[path] = "read failed " + rel;
                    continue;
                }
                const std::string &fixture_text = *fixture_opt;
                json::Value fixture;
                std::string perr;
                if (!json::parse(fixture_text, fixture, perr))
                {
                    errors_[path] = "fixture parse: " + perr;
                    continue;
                }

                // Determine format.
                const json::Value *fmt = fixture.find("__format__");
                std::string format = (fmt && fmt->is_string()) ? fmt->str : "proto";

                if (format == "empty")
                {
                    payload_map[path] = std::string(); // present, zero-length
                    continue;
                }
                if (format == "raw")
                {
                    const json::Value *hexv = fixture.find("hex");
                    std::string hex = (hexv && hexv->is_string()) ? hexv->str : "";
                    std::string bytes;
                    bytes.reserve(hex.size() / 2);
                    auto nib = [](char c) -> int
                    {
                        if (c >= '0' && c <= '9')
                            return c - '0';
                        if (c >= 'a' && c <= 'f')
                            return c - 'a' + 10;
                        if (c >= 'A' && c <= 'F')
                            return c - 'A' + 10;
                        return 0;
                    };
                    for (std::size_t i = 0; i + 1 < hex.size(); i += 2)
                    {
                        bytes.push_back(static_cast<char>((nib(hex[i]) << 4) | nib(hex[i + 1])));
                    }
                    payload_map[path] = bytes;
                    continue;
                }

                // proto: encode via schema.
                auto schema_opt = data.read("schema/" + ep + ".json");
                if (!schema_opt)
                {
                    errors_[path] = "missing schema/" + ep + ".json";
                    continue;
                }
                std::string encoded, err;
                if (!json_encode_from_text(*schema_opt, fixture_text, encoded, err))
                {
                    errors_[path] = "encode: " + err;
                    continue;
                }
                payload_map[path] = encoded;
            }
            return payload_map.size();
        };

        std::size_t full = load_profile("responses", payloads_);
        std::size_t newbie = load_profile("responses_newbie", newbie_payloads_);
        loaded_ = full > 0 || newbie > 0;
        log_line(0, "FIXTURE", "loaded " + std::to_string(payloads_.size()) + " full endpoints, " + std::to_string(newbie_payloads_.size()) + " newbie endpoints, " + std::to_string(errors_.size()) + " errors from " + data.source());
        for (const auto &[path, err] : errors_)
        {
            log_line(0, "FIXTURE_ERR", path + ": " + err);
        }
        return payloads_.size() + newbie_payloads_.size();
    }

    std::optional<std::string> FixtureStore::payload(const std::string &path, bool newbie) const
    {
        if (newbie)
        {
            auto nit = newbie_payloads_.find(path);
            if (nit != newbie_payloads_.end())
                return nit->second;
        }
        auto it = payloads_.find(path);
        if (it == payloads_.end())
            return std::nullopt;
        return it->second;
    }

    FixtureStore &fixture_store()
    {
        static FixtureStore store;
        return store;
    }

} // namespace eversoul
