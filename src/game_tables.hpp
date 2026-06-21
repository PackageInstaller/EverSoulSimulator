// game_tables.hpp — Tables_json SQLite 로더.  sss/Tables_json/ → tables.sqlite3
#pragma once

#include <cstdint>
#include <optional>
#include <string>
#include <vector>

struct sqlite3;

namespace eversoul {

struct HeroCatalogRow {
    int  hero_no        = 0;
    int  race_sno       = 0;
    int  grade_sno      = 0;
    int  max_grade_sno  = 0;
    int  attack         = 0;
    int  defence        = 0;
    int  max_hp         = 0;
    int  inc_attack     = 0;
    int  inc_defence    = 0;
    int  inc_max_hp     = 0;
    int  thumbnail_item = 0;
};

struct HeroGradeRow {
    int    grade_sno   = 0;
    int    max_level   = 0;
    double grade_value = 1.0;
};

struct HeroUpgradeRow {
    int no                  = 0;
    int grade_sno           = 0;
    int race_sno            = 0;
    int material_race_sno1  = 0;
    int material_grade_sno1 = 0;
    int material_race_sno2  = 0;
    int material_grade_sno2 = 0;
    int replace_hero_no1    = 0;
    int replace_hero_count1 = 0;
    int replace_hero_no2    = 0;
    int replace_hero_count2 = 0;
};

struct ItemCatalogRow {
    int no           = 0;
    int category_sno = 0;
    int grade_sno    = 0;
    int name_sno     = 0;
    int item_sort_no = 0;
};

struct ItemTranscendenceRow {
    int no                       = 0;
    int grade_sno                = 0;
    int slot_limit_sno           = 0;
    int stat_limit_sno           = 0;
    int level_limit              = 0;
    int material_no1             = 0;
    int material_amount1         = 0;
    int material_no2             = 0;
    int material_amount2         = 0;
    int material_no2_substitute  = 0;
    int material_amount2_sub     = 0;
};

struct HeroGachaProbRow {
    int no         = 0;
    int gacha_type = 0;
    int grade_sno  = 0;
    int race_sno   = 0;
    int weight     = 0;
    int pool_no    = 0;
};

class GameTables {
public:
    explicit GameTables(const std::string& cache_dir);
    ~GameTables();

    GameTables(const GameTables&)            = delete;
    GameTables& operator=(const GameTables&) = delete;

    bool open();
    bool populate(const std::string& tables_dir);
    bool is_populated() const;

    // hero_catalog
    std::vector<HeroCatalogRow>       all_heroes()                        const;
    std::optional<HeroCatalogRow>     hero_by_no(int hero_no)             const;
    std::vector<HeroCatalogRow>       heroes_by_race(int race_sno)        const;
    std::vector<HeroCatalogRow>       heroes_by_grade(int grade_sno)      const;

    // hero_grade
    std::vector<HeroGradeRow>         all_grades()                        const;
    std::optional<HeroGradeRow>       grade_by_sno(int grade_sno)         const;

    // hero_upgrade
    std::optional<HeroUpgradeRow>     upgrade_by_grade_race(int grade_sno, int race_sno) const;

    // item_catalog
    std::optional<ItemCatalogRow>     item_by_no(int item_no)             const;

    // item_transcendence
    std::vector<ItemTranscendenceRow> transcendences_by_grade(int grade_sno) const;
    std::optional<ItemTranscendenceRow> transcendence_by_no(int no)       const;

    // hero_gacha_prob
    std::vector<HeroGachaProbRow>     gacha_probs_by_type(int gacha_type) const;

private:
    std::string cache_dir_;
    sqlite3*    db_ = nullptr;

    void create_schema();

    bool load_hero(const std::string& tables_dir);
    bool load_hero_grade(const std::string& tables_dir);
    bool load_hero_upgrade(const std::string& tables_dir);
    bool load_item(const std::string& tables_dir);
    bool load_item_transcendence(const std::string& tables_dir);
    bool load_hero_gacha_prob(const std::string& tables_dir);
};

GameTables& game_tables();

} // namespace eversoul
