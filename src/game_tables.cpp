// game_tables.cpp — sss/Tables_json/ → tables.sqlite3 로더.
#include "game_tables.hpp"

#include <filesystem>
#include <fstream>
#include <sstream>
#include <stdexcept>

#include "sqlite3.h"
#include "common.hpp"
#include "json.hpp"
#include "log.hpp"

namespace fs = std::filesystem;

namespace eversoul {

namespace {

std::string read_file(const std::string& path) {
    std::ifstream f(path, std::ios::binary);
    if (!f) return {};
    std::stringstream ss;
    ss << f.rdbuf();
    return ss.str();
}

int col_int(sqlite3_stmt* st, int col) {
    return sqlite3_column_int(st, col);
}

double col_double(sqlite3_stmt* st, int col) {
    return sqlite3_column_double(st, col);
}

} // namespace

// ---- 생성자 / 소멸자 ----

GameTables::GameTables(const std::string& cache_dir)
    : cache_dir_(cache_dir) {}

GameTables::~GameTables() {
    if (db_) {
        sqlite3_close(db_);
        db_ = nullptr;
    }
}

// ---- open ----

bool GameTables::open() {
    if (db_) return true;
    std::error_code ec;
    fs::create_directories(cache_dir_, ec);
    const std::string path = cache_dir_ + "/tables.sqlite3";
    if (sqlite3_open(path.c_str(), &db_) != SQLITE_OK) {
        log_line(0, "TABLES", "sqlite3_open failed: " + path);
        db_ = nullptr;
        return false;
    }
    sqlite3_exec(db_, "PRAGMA journal_mode=WAL",   nullptr, nullptr, nullptr);
    sqlite3_exec(db_, "PRAGMA synchronous=NORMAL", nullptr, nullptr, nullptr);
    sqlite3_exec(db_, "PRAGMA foreign_keys=ON",    nullptr, nullptr, nullptr);
    sqlite3_exec(db_, "PRAGMA busy_timeout=5000",  nullptr, nullptr, nullptr);
    create_schema();
    return true;
}

// ---- create_schema ----

void GameTables::create_schema() {
    const char* stmts[] = {
        "CREATE TABLE IF NOT EXISTS tbl_meta ("
        "  key   TEXT PRIMARY KEY,"
        "  value TEXT NOT NULL"
        ")",

        "CREATE TABLE IF NOT EXISTS hero_catalog ("
        "  hero_no        INTEGER PRIMARY KEY,"
        "  race_sno       INTEGER NOT NULL,"
        "  grade_sno      INTEGER NOT NULL,"
        "  max_grade_sno  INTEGER NOT NULL,"
        "  attack         INTEGER NOT NULL DEFAULT 0,"
        "  defence        INTEGER NOT NULL DEFAULT 0,"
        "  max_hp         INTEGER NOT NULL DEFAULT 0,"
        "  inc_attack     INTEGER NOT NULL DEFAULT 0,"
        "  inc_defence    INTEGER NOT NULL DEFAULT 0,"
        "  inc_max_hp     INTEGER NOT NULL DEFAULT 0,"
        "  thumbnail_item INTEGER NOT NULL DEFAULT 0"
        ")",

        "CREATE TABLE IF NOT EXISTS hero_grade ("
        "  grade_sno   INTEGER PRIMARY KEY,"
        "  max_level   INTEGER NOT NULL,"
        "  grade_value REAL    NOT NULL"
        ")",

        "CREATE TABLE IF NOT EXISTS hero_upgrade ("
        "  no                  INTEGER PRIMARY KEY,"
        "  grade_sno           INTEGER NOT NULL,"
        "  race_sno            INTEGER NOT NULL,"
        "  material_race_sno1  INTEGER NOT NULL DEFAULT 0,"
        "  material_grade_sno1 INTEGER NOT NULL DEFAULT 0,"
        "  material_race_sno2  INTEGER NOT NULL DEFAULT 0,"
        "  material_grade_sno2 INTEGER NOT NULL DEFAULT 0,"
        "  replace_hero_no1    INTEGER NOT NULL DEFAULT 0,"
        "  replace_hero_count1 INTEGER NOT NULL DEFAULT 0,"
        "  replace_hero_no2    INTEGER NOT NULL DEFAULT 0,"
        "  replace_hero_count2 INTEGER NOT NULL DEFAULT 0"
        ")",

        "CREATE INDEX IF NOT EXISTS ix_hero_upgrade_grade_race"
        "  ON hero_upgrade(grade_sno, race_sno)",

        "CREATE TABLE IF NOT EXISTS item_catalog ("
        "  no           INTEGER PRIMARY KEY,"
        "  category_sno INTEGER NOT NULL DEFAULT 0,"
        "  grade_sno    INTEGER NOT NULL DEFAULT 0,"
        "  name_sno     INTEGER NOT NULL DEFAULT 0,"
        "  item_sort_no INTEGER NOT NULL DEFAULT 0"
        ")",

        "CREATE TABLE IF NOT EXISTS item_transcendence ("
        "  no                      INTEGER PRIMARY KEY,"
        "  grade_sno               INTEGER NOT NULL,"
        "  slot_limit_sno          INTEGER NOT NULL DEFAULT 0,"
        "  stat_limit_sno          INTEGER NOT NULL DEFAULT 0,"
        "  level_limit             INTEGER NOT NULL DEFAULT 0,"
        "  material_no1            INTEGER NOT NULL DEFAULT 0,"
        "  material_amount1        INTEGER NOT NULL DEFAULT 0,"
        "  material_no2            INTEGER NOT NULL DEFAULT 0,"
        "  material_amount2        INTEGER NOT NULL DEFAULT 0,"
        "  material_no2_substitute INTEGER NOT NULL DEFAULT 0,"
        "  material_amount2_sub    INTEGER NOT NULL DEFAULT 0"
        ")",

        "CREATE INDEX IF NOT EXISTS ix_item_transcendence_grade"
        "  ON item_transcendence(grade_sno)",

        "CREATE TABLE IF NOT EXISTS hero_gacha_prob ("
        "  no         INTEGER PRIMARY KEY,"
        "  gacha_type INTEGER NOT NULL,"
        "  grade_sno  INTEGER NOT NULL,"
        "  race_sno   INTEGER NOT NULL DEFAULT 0,"
        "  weight     INTEGER NOT NULL DEFAULT 0,"
        "  pool_no    INTEGER NOT NULL DEFAULT 0"
        ")",

        "CREATE INDEX IF NOT EXISTS ix_hero_gacha_prob_type"
        "  ON hero_gacha_prob(gacha_type)",
    };
    for (const char* sql : stmts)
        sqlite3_exec(db_, sql, nullptr, nullptr, nullptr);
}

// ---- is_populated ----

bool GameTables::is_populated() const {
    if (!db_) return false;
    sqlite3_stmt* st = nullptr;
    bool ok = false;
    if (sqlite3_prepare_v2(db_,
            "SELECT value FROM tbl_meta WHERE key='tables_version'",
            -1, &st, nullptr) == SQLITE_OK) {
        ok = sqlite3_step(st) == SQLITE_ROW;
    }
    sqlite3_finalize(st);
    return ok;
}

// ---- load_hero ----

bool GameTables::load_hero(const std::string& tables_dir) {
    const std::string path = tables_dir + "/Hero.json";
    const std::string text = read_file(path);
    if (text.empty()) {
        log_line(0, "TABLES", "Hero.json not found: " + path);
        return false;
    }
    json::Value root;
    std::string err;
    if (!json::parse(text, root, err)) {
        log_line(0, "TABLES", "Hero.json parse error: " + err);
        return false;
    }
    const json::Value* arr = root.find("json");
    if (!arr || !arr->is_array()) return false;

    sqlite3_stmt* st = nullptr;
    sqlite3_prepare_v2(db_,
        "INSERT OR REPLACE INTO hero_catalog"
        "(hero_no,race_sno,grade_sno,max_grade_sno,attack,defence,max_hp,"
        " inc_attack,inc_defence,inc_max_hp,thumbnail_item)"
        " VALUES(?1,?2,?3,?4,?5,?6,?7,?8,?9,?10,?11)",
        -1, &st, nullptr);
    if (!st) return false;

    int count = 0;
    for (const auto& row : arr->arr) {
        auto gi = [&](const char* k) -> int {
            const json::Value* v = row.find(k);
            return (v && v->is_number()) ? static_cast<int>(v->as_int64()) : 0;
        };
        sqlite3_reset(st);
        sqlite3_bind_int(st,  1, gi("No"));
        sqlite3_bind_int(st,  2, gi("RaceSno"));
        sqlite3_bind_int(st,  3, gi("GradeSno"));
        sqlite3_bind_int(st,  4, gi("MaxGradeSno"));
        sqlite3_bind_int(st,  5, gi("Attack"));
        sqlite3_bind_int(st,  6, gi("Defence"));
        sqlite3_bind_int(st,  7, gi("MaxHp"));
        sqlite3_bind_int(st,  8, gi("IncAttack"));
        sqlite3_bind_int(st,  9, gi("IncDefence"));
        sqlite3_bind_int(st, 10, gi("IncMaxHp"));
        sqlite3_bind_int(st, 11, gi("ThumbnailItem"));
        sqlite3_step(st);
        ++count;
    }
    sqlite3_finalize(st);
    log_line(0, "TABLES", "Hero: " + std::to_string(count) + " rows");
    return true;
}

// ---- load_hero_grade ----

bool GameTables::load_hero_grade(const std::string& tables_dir) {
    const std::string path = tables_dir + "/HeroGrade.json";
    const std::string text = read_file(path);
    if (text.empty()) return false;
    json::Value root;
    std::string err;
    if (!json::parse(text, root, err)) return false;
    const json::Value* arr = root.find("json");
    if (!arr || !arr->is_array()) return false;

    sqlite3_stmt* st = nullptr;
    sqlite3_prepare_v2(db_,
        "INSERT OR REPLACE INTO hero_grade(grade_sno,max_level,grade_value)"
        " VALUES(?1,?2,?3)",
        -1, &st, nullptr);
    if (!st) return false;

    int count = 0;
    for (const auto& row : arr->arr) {
        const json::Value* sno = row.find("NameSno");
        const json::Value* lvl = row.find("HeroMaxLevel");
        const json::Value* val = row.find("HeroGradeValue");
        if (!sno || !lvl) continue;
        sqlite3_reset(st);
        sqlite3_bind_int(st,    1, static_cast<int>(sno->as_int64()));
        sqlite3_bind_int(st,    2, static_cast<int>(lvl->as_int64()));
        sqlite3_bind_double(st, 3, val ? val->as_double() : 1.0);
        sqlite3_step(st);
        ++count;
    }
    sqlite3_finalize(st);
    log_line(0, "TABLES", "HeroGrade: " + std::to_string(count) + " rows");
    return true;
}

// ---- load_hero_upgrade ----

bool GameTables::load_hero_upgrade(const std::string& tables_dir) {
    const std::string path = tables_dir + "/HeroUpgrade.json";
    const std::string text = read_file(path);
    if (text.empty()) return false;
    json::Value root;
    std::string err;
    if (!json::parse(text, root, err)) return false;
    const json::Value* arr = root.find("json");
    if (!arr || !arr->is_array()) return false;

    sqlite3_stmt* st = nullptr;
    sqlite3_prepare_v2(db_,
        "INSERT OR REPLACE INTO hero_upgrade"
        "(no,grade_sno,race_sno,material_race_sno1,material_grade_sno1,"
        " material_race_sno2,material_grade_sno2,"
        " replace_hero_no1,replace_hero_count1,"
        " replace_hero_no2,replace_hero_count2)"
        " VALUES(?1,?2,?3,?4,?5,?6,?7,?8,?9,?10,?11)",
        -1, &st, nullptr);
    if (!st) return false;

    int count = 0;
    for (const auto& row : arr->arr) {
        auto gi = [&](const char* k) -> int {
            const json::Value* v = row.find(k);
            return (v && v->is_number()) ? static_cast<int>(v->as_int64()) : 0;
        };
        sqlite3_reset(st);
        sqlite3_bind_int(st,  1, gi("No"));
        sqlite3_bind_int(st,  2, gi("GradeSno"));
        sqlite3_bind_int(st,  3, gi("RaceSno"));
        sqlite3_bind_int(st,  4, gi("MaterialRaceSno1"));
        sqlite3_bind_int(st,  5, gi("MaterialGradeSno1"));
        sqlite3_bind_int(st,  6, gi("MaterialRaceSno2"));
        sqlite3_bind_int(st,  7, gi("MaterialGradeSno2"));
        sqlite3_bind_int(st,  8, gi("ReplaceHeroNo1"));
        sqlite3_bind_int(st,  9, gi("ReplaceHeroCount1"));
        sqlite3_bind_int(st, 10, gi("ReplaceHeroNo2"));
        sqlite3_bind_int(st, 11, gi("ReplaceHeroCount2"));
        sqlite3_step(st);
        ++count;
    }
    sqlite3_finalize(st);
    log_line(0, "TABLES", "HeroUpgrade: " + std::to_string(count) + " rows");
    return true;
}

// ---- load_item ----

bool GameTables::load_item(const std::string& tables_dir) {
    const std::string path = tables_dir + "/Item.json";
    const std::string text = read_file(path);
    if (text.empty()) return false;
    json::Value root;
    std::string err;
    if (!json::parse(text, root, err)) return false;
    const json::Value* arr = root.find("json");
    if (!arr || !arr->is_array()) return false;

    sqlite3_stmt* st = nullptr;
    sqlite3_prepare_v2(db_,
        "INSERT OR REPLACE INTO item_catalog"
        "(no,category_sno,grade_sno,name_sno,item_sort_no)"
        " VALUES(?1,?2,?3,?4,?5)",
        -1, &st, nullptr);
    if (!st) return false;

    int count = 0;
    for (const auto& row : arr->arr) {
        auto gi = [&](const char* k) -> int {
            const json::Value* v = row.find(k);
            return (v && v->is_number()) ? static_cast<int>(v->as_int64()) : 0;
        };
        sqlite3_reset(st);
        sqlite3_bind_int(st, 1, gi("No"));
        sqlite3_bind_int(st, 2, gi("CategorySno"));
        sqlite3_bind_int(st, 3, gi("GradeSno"));
        sqlite3_bind_int(st, 4, gi("NameSno"));
        sqlite3_bind_int(st, 5, gi("ItemSortNo"));
        sqlite3_step(st);
        ++count;
    }
    sqlite3_finalize(st);
    log_line(0, "TABLES", "Item: " + std::to_string(count) + " rows");
    return true;
}

// ---- load_item_transcendence ----

bool GameTables::load_item_transcendence(const std::string& tables_dir) {
    const std::string path = tables_dir + "/ItemTranscendence.json";
    const std::string text = read_file(path);
    if (text.empty()) return false;
    json::Value root;
    std::string err;
    if (!json::parse(text, root, err)) return false;
    const json::Value* arr = root.find("json");
    if (!arr || !arr->is_array()) return false;

    sqlite3_stmt* st = nullptr;
    sqlite3_prepare_v2(db_,
        "INSERT OR REPLACE INTO item_transcendence"
        "(no,grade_sno,slot_limit_sno,stat_limit_sno,level_limit,"
        " material_no1,material_amount1,"
        " material_no2,material_amount2,"
        " material_no2_substitute,material_amount2_sub)"
        " VALUES(?1,?2,?3,?4,?5,?6,?7,?8,?9,?10,?11)",
        -1, &st, nullptr);
    if (!st) return false;

    int count = 0;
    for (const auto& row : arr->arr) {
        auto gi = [&](const char* k) -> int {
            const json::Value* v = row.find(k);
            return (v && v->is_number()) ? static_cast<int>(v->as_int64()) : 0;
        };
        sqlite3_reset(st);
        sqlite3_bind_int(st,  1, gi("No"));
        sqlite3_bind_int(st,  2, gi("GradeSno"));
        sqlite3_bind_int(st,  3, gi("SlotLimitSno"));
        sqlite3_bind_int(st,  4, gi("StatLimitSno"));
        sqlite3_bind_int(st,  5, gi("LevelLimit"));
        sqlite3_bind_int(st,  6, gi("MaterialNo1"));
        sqlite3_bind_int(st,  7, gi("MaterialAmount1"));
        sqlite3_bind_int(st,  8, gi("MaterialNo2"));
        sqlite3_bind_int(st,  9, gi("MaterialAmount2"));
        sqlite3_bind_int(st, 10, gi("MaterialNo2Substitute"));
        sqlite3_bind_int(st, 11, gi("MaterialAmount2Substitute"));
        sqlite3_step(st);
        ++count;
    }
    sqlite3_finalize(st);
    log_line(0, "TABLES", "ItemTranscendence: " + std::to_string(count) + " rows");
    return true;
}

// ---- load_hero_gacha_prob ----

bool GameTables::load_hero_gacha_prob(const std::string& tables_dir) {
    const std::string path = tables_dir + "/HeroGachaProb.json";
    const std::string text = read_file(path);
    if (text.empty()) return false;
    json::Value root;
    std::string err;
    if (!json::parse(text, root, err)) return false;
    const json::Value* arr = root.find("json");
    if (!arr || !arr->is_array()) return false;

    sqlite3_stmt* st = nullptr;
    sqlite3_prepare_v2(db_,
        "INSERT OR REPLACE INTO hero_gacha_prob"
        "(no,gacha_type,grade_sno,race_sno,weight,pool_no)"
        " VALUES(?1,?2,?3,?4,?5,?6)",
        -1, &st, nullptr);
    if (!st) return false;

    int count = 0;
    for (const auto& row : arr->arr) {
        auto gi = [&](const char* k) -> int {
            const json::Value* v = row.find(k);
            return (v && v->is_number()) ? static_cast<int>(v->as_int64()) : 0;
        };
        sqlite3_reset(st);
        sqlite3_bind_int(st, 1, gi("field_0"));
        sqlite3_bind_int(st, 2, gi("field_1"));
        sqlite3_bind_int(st, 3, gi("field_2"));
        sqlite3_bind_int(st, 4, gi("field_3"));
        sqlite3_bind_int(st, 5, gi("field_6"));
        sqlite3_bind_int(st, 6, gi("field_7"));
        sqlite3_step(st);
        ++count;
    }
    sqlite3_finalize(st);
    log_line(0, "TABLES", "HeroGachaProb: " + std::to_string(count) + " rows");
    return true;
}

// ---- populate ----

bool GameTables::populate(const std::string& tables_dir) {
    if (!db_) return false;
    if (is_populated()) return true;

    if (!fs::is_directory(tables_dir)) {
        log_line(0, "TABLES", "Tables_json directory not found: " + tables_dir);
        return false;
    }

    sqlite3_exec(db_, "BEGIN", nullptr, nullptr, nullptr);

    bool ok = true;
    ok &= load_hero(tables_dir);
    ok &= load_hero_grade(tables_dir);
    ok &= load_hero_upgrade(tables_dir);
    ok &= load_item(tables_dir);
    ok &= load_item_transcendence(tables_dir);
    ok &= load_hero_gacha_prob(tables_dir);

    if (ok) {
        sqlite3_stmt* st = nullptr;
        if (sqlite3_prepare_v2(db_,
                "INSERT OR REPLACE INTO tbl_meta(key,value) VALUES('tables_version','1')",
                -1, &st, nullptr) == SQLITE_OK)
            sqlite3_step(st);
        sqlite3_finalize(st);
        sqlite3_exec(db_, "COMMIT", nullptr, nullptr, nullptr);
        log_line(0, "TABLES", "populated from " + tables_dir);
    } else {
        sqlite3_exec(db_, "ROLLBACK", nullptr, nullptr, nullptr);
        log_line(0, "TABLES", "populate failed — rolled back");
    }
    return ok;
}

// ---- hero_catalog 조회 ----

std::vector<HeroCatalogRow> GameTables::all_heroes() const {
    std::vector<HeroCatalogRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT hero_no,race_sno,grade_sno,max_grade_sno,"
            " attack,defence,max_hp,inc_attack,inc_defence,inc_max_hp,thumbnail_item"
            " FROM hero_catalog",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW) {
            HeroCatalogRow r;
            r.hero_no        = col_int(st, 0);
            r.race_sno       = col_int(st, 1);
            r.grade_sno      = col_int(st, 2);
            r.max_grade_sno  = col_int(st, 3);
            r.attack         = col_int(st, 4);
            r.defence        = col_int(st, 5);
            r.max_hp         = col_int(st, 6);
            r.inc_attack     = col_int(st, 7);
            r.inc_defence    = col_int(st, 8);
            r.inc_max_hp     = col_int(st, 9);
            r.thumbnail_item = col_int(st, 10);
            out.push_back(r);
        }
    }
    sqlite3_finalize(st);
    return out;
}

std::optional<HeroCatalogRow> GameTables::hero_by_no(int hero_no) const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<HeroCatalogRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT hero_no,race_sno,grade_sno,max_grade_sno,"
            " attack,defence,max_hp,inc_attack,inc_defence,inc_max_hp,thumbnail_item"
            " FROM hero_catalog WHERE hero_no=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, hero_no);
        if (sqlite3_step(st) == SQLITE_ROW) {
            HeroCatalogRow r;
            r.hero_no        = col_int(st, 0);
            r.race_sno       = col_int(st, 1);
            r.grade_sno      = col_int(st, 2);
            r.max_grade_sno  = col_int(st, 3);
            r.attack         = col_int(st, 4);
            r.defence        = col_int(st, 5);
            r.max_hp         = col_int(st, 6);
            r.inc_attack     = col_int(st, 7);
            r.inc_defence    = col_int(st, 8);
            r.inc_max_hp     = col_int(st, 9);
            r.thumbnail_item = col_int(st, 10);
            out = r;
        }
    }
    sqlite3_finalize(st);
    return out;
}

std::vector<HeroCatalogRow> GameTables::heroes_by_race(int race_sno) const {
    std::vector<HeroCatalogRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT hero_no,race_sno,grade_sno,max_grade_sno,"
            " attack,defence,max_hp,inc_attack,inc_defence,inc_max_hp,thumbnail_item"
            " FROM hero_catalog WHERE race_sno=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, race_sno);
        while (sqlite3_step(st) == SQLITE_ROW) {
            HeroCatalogRow r;
            r.hero_no        = col_int(st, 0);
            r.race_sno       = col_int(st, 1);
            r.grade_sno      = col_int(st, 2);
            r.max_grade_sno  = col_int(st, 3);
            r.attack         = col_int(st, 4);
            r.defence        = col_int(st, 5);
            r.max_hp         = col_int(st, 6);
            r.inc_attack     = col_int(st, 7);
            r.inc_defence    = col_int(st, 8);
            r.inc_max_hp     = col_int(st, 9);
            r.thumbnail_item = col_int(st, 10);
            out.push_back(r);
        }
    }
    sqlite3_finalize(st);
    return out;
}

std::vector<HeroCatalogRow> GameTables::heroes_by_grade(int grade_sno) const {
    std::vector<HeroCatalogRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT hero_no,race_sno,grade_sno,max_grade_sno,"
            " attack,defence,max_hp,inc_attack,inc_defence,inc_max_hp,thumbnail_item"
            " FROM hero_catalog WHERE max_grade_sno>=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, grade_sno);
        while (sqlite3_step(st) == SQLITE_ROW) {
            HeroCatalogRow r;
            r.hero_no        = col_int(st, 0);
            r.race_sno       = col_int(st, 1);
            r.grade_sno      = col_int(st, 2);
            r.max_grade_sno  = col_int(st, 3);
            r.attack         = col_int(st, 4);
            r.defence        = col_int(st, 5);
            r.max_hp         = col_int(st, 6);
            r.inc_attack     = col_int(st, 7);
            r.inc_defence    = col_int(st, 8);
            r.inc_max_hp     = col_int(st, 9);
            r.thumbnail_item = col_int(st, 10);
            out.push_back(r);
        }
    }
    sqlite3_finalize(st);
    return out;
}

// ---- hero_grade 조회 ----

std::vector<HeroGradeRow> GameTables::all_grades() const {
    std::vector<HeroGradeRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT grade_sno,max_level,grade_value FROM hero_grade ORDER BY grade_sno",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW) {
            HeroGradeRow r;
            r.grade_sno   = col_int(st, 0);
            r.max_level   = col_int(st, 1);
            r.grade_value = col_double(st, 2);
            out.push_back(r);
        }
    }
    sqlite3_finalize(st);
    return out;
}

std::optional<HeroGradeRow> GameTables::grade_by_sno(int grade_sno) const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<HeroGradeRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT grade_sno,max_level,grade_value FROM hero_grade WHERE grade_sno=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, grade_sno);
        if (sqlite3_step(st) == SQLITE_ROW) {
            HeroGradeRow r;
            r.grade_sno   = col_int(st, 0);
            r.max_level   = col_int(st, 1);
            r.grade_value = col_double(st, 2);
            out = r;
        }
    }
    sqlite3_finalize(st);
    return out;
}

// ---- hero_upgrade 조회 ----

std::optional<HeroUpgradeRow> GameTables::upgrade_by_grade_race(int grade_sno, int race_sno) const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<HeroUpgradeRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT no,grade_sno,race_sno,"
            " material_race_sno1,material_grade_sno1,"
            " material_race_sno2,material_grade_sno2,"
            " replace_hero_no1,replace_hero_count1,"
            " replace_hero_no2,replace_hero_count2"
            " FROM hero_upgrade WHERE grade_sno=?1 AND race_sno=?2 LIMIT 1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, grade_sno);
        sqlite3_bind_int(st, 2, race_sno);
        if (sqlite3_step(st) == SQLITE_ROW) {
            HeroUpgradeRow r;
            r.no                  = col_int(st, 0);
            r.grade_sno           = col_int(st, 1);
            r.race_sno            = col_int(st, 2);
            r.material_race_sno1  = col_int(st, 3);
            r.material_grade_sno1 = col_int(st, 4);
            r.material_race_sno2  = col_int(st, 5);
            r.material_grade_sno2 = col_int(st, 6);
            r.replace_hero_no1    = col_int(st, 7);
            r.replace_hero_count1 = col_int(st, 8);
            r.replace_hero_no2    = col_int(st, 9);
            r.replace_hero_count2 = col_int(st, 10);
            out = r;
        }
    }
    sqlite3_finalize(st);
    return out;
}

// ---- item_catalog 조회 ----

std::optional<ItemCatalogRow> GameTables::item_by_no(int item_no) const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<ItemCatalogRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT no,category_sno,grade_sno,name_sno,item_sort_no"
            " FROM item_catalog WHERE no=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, item_no);
        if (sqlite3_step(st) == SQLITE_ROW) {
            ItemCatalogRow r;
            r.no           = col_int(st, 0);
            r.category_sno = col_int(st, 1);
            r.grade_sno    = col_int(st, 2);
            r.name_sno     = col_int(st, 3);
            r.item_sort_no = col_int(st, 4);
            out = r;
        }
    }
    sqlite3_finalize(st);
    return out;
}

// ---- item_transcendence 조회 ----

std::vector<ItemTranscendenceRow> GameTables::transcendences_by_grade(int grade_sno) const {
    std::vector<ItemTranscendenceRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT no,grade_sno,slot_limit_sno,stat_limit_sno,level_limit,"
            " material_no1,material_amount1,material_no2,material_amount2,"
            " material_no2_substitute,material_amount2_sub"
            " FROM item_transcendence WHERE grade_sno=?1 ORDER BY no",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, grade_sno);
        while (sqlite3_step(st) == SQLITE_ROW) {
            ItemTranscendenceRow r;
            r.no                      = col_int(st, 0);
            r.grade_sno               = col_int(st, 1);
            r.slot_limit_sno          = col_int(st, 2);
            r.stat_limit_sno          = col_int(st, 3);
            r.level_limit             = col_int(st, 4);
            r.material_no1            = col_int(st, 5);
            r.material_amount1        = col_int(st, 6);
            r.material_no2            = col_int(st, 7);
            r.material_amount2        = col_int(st, 8);
            r.material_no2_substitute = col_int(st, 9);
            r.material_amount2_sub    = col_int(st, 10);
            out.push_back(r);
        }
    }
    sqlite3_finalize(st);
    return out;
}

std::optional<ItemTranscendenceRow> GameTables::transcendence_by_no(int no) const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<ItemTranscendenceRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT no,grade_sno,slot_limit_sno,stat_limit_sno,level_limit,"
            " material_no1,material_amount1,material_no2,material_amount2,"
            " material_no2_substitute,material_amount2_sub"
            " FROM item_transcendence WHERE no=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, no);
        if (sqlite3_step(st) == SQLITE_ROW) {
            ItemTranscendenceRow r;
            r.no                      = col_int(st, 0);
            r.grade_sno               = col_int(st, 1);
            r.slot_limit_sno          = col_int(st, 2);
            r.stat_limit_sno          = col_int(st, 3);
            r.level_limit             = col_int(st, 4);
            r.material_no1            = col_int(st, 5);
            r.material_amount1        = col_int(st, 6);
            r.material_no2            = col_int(st, 7);
            r.material_amount2        = col_int(st, 8);
            r.material_no2_substitute = col_int(st, 9);
            r.material_amount2_sub    = col_int(st, 10);
            out = r;
        }
    }
    sqlite3_finalize(st);
    return out;
}

// ---- hero_gacha_prob 조회 ----

std::vector<HeroGachaProbRow> GameTables::gacha_probs_by_type(int gacha_type) const {
    std::vector<HeroGachaProbRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT no,gacha_type,grade_sno,race_sno,weight,pool_no"
            " FROM hero_gacha_prob WHERE gacha_type=?1 ORDER BY no",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, gacha_type);
        while (sqlite3_step(st) == SQLITE_ROW) {
            HeroGachaProbRow r;
            r.no         = col_int(st, 0);
            r.gacha_type = col_int(st, 1);
            r.grade_sno  = col_int(st, 2);
            r.race_sno   = col_int(st, 3);
            r.weight     = col_int(st, 4);
            r.pool_no    = col_int(st, 5);
            out.push_back(r);
        }
    }
    sqlite3_finalize(st);
    return out;
}

// ---- 싱글톤 ----

GameTables& game_tables() {
    static GameTables instance(config().tables_cache_dir);
    return instance;
}

} // namespace eversoul
