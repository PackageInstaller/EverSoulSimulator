// orm_seed_check.cpp - desktop validator for UserInfo -> ORM seed.
#include <cstdio>
#include <fstream>
#include <string>

#include "orm/storage.hpp"
#include "orm/userinfo_builder.hpp"

int main(int argc, char **argv)
{
    std::string data_dir = argc > 1 ? argv[1] : ".";
    std::string db_path = argc > 2 ? argv[2] : "/tmp/eversoul_orm_seed_check.db";
    if (!eversoul::orm::ensure_ready(data_dir, db_path))
    {
        std::fprintf(stderr, "seed failed\n");
        return 1;
    }

    std::printf("db=%s\n", eversoul::orm::opened_path().c_str());
    for (const char *table : {"hero", "hero_rep", "currency", "item_etc", "item_equip",
                              "hero_equip_slot", "formation", "spirit_tree", "hero_option",
                              "challenge_mode", "stage", "story", "tutorial", "dungeon"})
    {
        std::printf("%s=%d\n", table, eversoul::orm::row_count(table));
    }
    std::printf("seeded=%s\n", eversoul::orm::kv_get("seeded").c_str());

    std::string payload = eversoul::orm::build_user_info_payload(data_dir);
    std::printf("userinfo_payload=%zu\n", payload.size());
    if (argc > 3)
    {
        std::ofstream out(argv[3], std::ios::binary);
        out.write(payload.data(), static_cast<std::streamsize>(payload.size()));
    }
    return 0;
}
