// account_database.cpp — 계정별 state.sqlite3 스키마 및 시드 로더 구현.
#include "account_database.hpp"

#include <filesystem>
#include <fstream>
#include <map>
#include <mutex>
#include <sstream>
#include <stdexcept>

#include "sqlite3.h"
#include "common.hpp"
#include "json.hpp"
#include "log.hpp"
#include "util.hpp"

namespace fs = std::filesystem;

namespace eversoul {

namespace {

std::string read_file_acdb(const std::string& path) {
    std::ifstream f(path, std::ios::binary);
    if (!f) return {};
    std::stringstream ss;
    ss << f.rdbuf();
    return ss.str();
}

std::string col_str(sqlite3_stmt* st, int col) {
    const unsigned char* t = sqlite3_column_text(st, col);
    return t ? reinterpret_cast<const char*>(t) : "";
}

std::int64_t json_as_int64(const json::Value& v) {
    if (v.is_number()) return v.as_int64();
    if (v.is_string()) {
        try { return std::stoll(v.str); } catch (...) {}
    }
    return 0;
}

std::map<std::string, int> build_enum_map(const json::Value& schema,
                                           const std::string& enum_name) {
    std::map<std::string, int> m;
    const json::Value* enums_v = schema.find("enums");
    if (!enums_v || !enums_v->is_object()) return m;
    for (const auto& [k, v] : enums_v->obj) {
        if (k != enum_name) continue;
        if (!v.is_object()) break;
        for (const auto& [member, num] : v.obj) {
            if (num.is_number()) {
                try { m[member] = static_cast<int>(num.as_int64()); }
                catch (...) {}
            }
        }
        break;
    }
    return m;
}

} // namespace

// ---- 생성자 / 소멸자 ----

AccountDatabase::AccountDatabase(const std::string& account_dir)
    : account_dir_(account_dir) {}

AccountDatabase::~AccountDatabase() {
    close();
}

void AccountDatabase::close() {
    if (db_) {
        sqlite3_close(db_);
        db_ = nullptr;
    }
}

// ---- open ----

bool AccountDatabase::open() {
    if (db_) return true;
    std::error_code ec;
    fs::create_directories(account_dir_, ec);
    if (ec) {
        log_line(0, "ACCTDB", "create_directories failed: " + ec.message());
        return false;
    }
    const std::string path = account_dir_ + "/state.sqlite3";
    if (sqlite3_open(path.c_str(), &db_) != SQLITE_OK) {
        log_line(0, "ACCTDB", "sqlite3_open failed: " + path);
        db_ = nullptr;
        return false;
    }
    sqlite3_exec(db_, "PRAGMA journal_mode=WAL",   nullptr, nullptr, nullptr);
    sqlite3_exec(db_, "PRAGMA synchronous=NORMAL", nullptr, nullptr, nullptr);
    sqlite3_exec(db_, "PRAGMA foreign_keys=ON",    nullptr, nullptr, nullptr);
    sqlite3_exec(db_, "PRAGMA busy_timeout=5000",  nullptr, nullptr, nullptr);
    create_schema();
    log_line(0, "ACCTDB", "opened " + path);
    return true;
}

// ---- create_schema ----

void AccountDatabase::create_schema() {
    const char* stmts[] = {
        "CREATE TABLE IF NOT EXISTS account_meta ("
        "  key   TEXT PRIMARY KEY,"
        "  value TEXT NOT NULL"
        ")",

        "CREATE TABLE IF NOT EXISTS user_profile ("
        "  singleton_id      INTEGER PRIMARY KEY CHECK(singleton_id = 1),"
        "  idx               TEXT NOT NULL,"
        "  nick_name         TEXT,"
        "  last_login_dt     INTEGER,"
        "  channel_no        INTEGER,"
        "  tree_level        INTEGER,"
        "  is_log            INTEGER,"
        "  about             TEXT,"
        "  return_user_dt    INTEGER,"
        "  created_dt        INTEGER,"
        "  popularity        INTEGER,"
        "  is_first_cash_buy INTEGER,"
        "  review_flag       INTEGER,"
        "  review_dt         INTEGER,"
        "  equip_flag        INTEGER,"
        "  payment_agree_dt  INTEGER,"
        "  payment_agree_type INTEGER,"
        "  first_title       INTEGER,"
        "  second_title      INTEGER"
        ")",

        "CREATE TABLE IF NOT EXISTS user_thumbnail ("
        "  singleton_id     INTEGER PRIMARY KEY CHECK(singleton_id = 1),"
        "  thumbnail_frame  INTEGER,"
        "  thumbnail_image  INTEGER,"
        "  use_custom       INTEGER NOT NULL DEFAULT 0,"
        "  thumbnail        BLOB,"
        "  first_title      INTEGER,"
        "  second_title     INTEGER"
        ")",

        "CREATE TABLE IF NOT EXISTS currency ("
        "  type      INTEGER PRIMARY KEY,"
        "  enum_name TEXT,"
        "  value     INTEGER NOT NULL DEFAULT 0"
        ")",

        "CREATE TABLE IF NOT EXISTS hero ("
        "  idx          TEXT PRIMARY KEY,"
        "  hero_no      INTEGER NOT NULL,"
        "  level        INTEGER NOT NULL,"
        "  is_resonance INTEGER NOT NULL DEFAULT 0,"
        "  grade_sno    INTEGER NOT NULL DEFAULT 0,"
        "  race_sno     INTEGER NOT NULL DEFAULT 0,"
        "  is_lock      INTEGER NOT NULL DEFAULT 0"
        ")",
        "CREATE INDEX IF NOT EXISTS idx_hero_hero_no ON hero(hero_no)",

        "CREATE TABLE IF NOT EXISTS hero_reputation ("
        "  hero_no         INTEGER PRIMARY KEY,"
        "  reputation      INTEGER NOT NULL DEFAULT 0,"
        "  state           INTEGER NOT NULL DEFAULT 0,"
        "  stress          INTEGER NOT NULL DEFAULT 0,"
        "  last_update_dt  INTEGER,"
        "  gift_dt         INTEGER,"
        "  costume_item_no INTEGER,"
        "  story_reward    INTEGER,"
        "  max_grade_sno   INTEGER,"
        "  objet_uid       INTEGER,"
        "  max_level_dt    INTEGER,"
        "  arbeit_exp      INTEGER,"
        "  priority        INTEGER,"
        "  rest_finish_dt  INTEGER,"
        "  objet_no        TEXT"
        ")",

        "CREATE TABLE IF NOT EXISTS item_etc ("
        "  item_no INTEGER PRIMARY KEY,"
        "  cnt     INTEGER NOT NULL DEFAULT 0"
        ")",

        "CREATE TABLE IF NOT EXISTS item_equip ("
        "  id      INTEGER PRIMARY KEY,"
        "  item_no INTEGER NOT NULL,"
        "  exp     INTEGER NOT NULL DEFAULT 0"
        ")",

        "CREATE TABLE IF NOT EXISTS hero_equip_slot ("
        "  hero_idx     TEXT NOT NULL,"
        "  slot         INTEGER NOT NULL,"
        "  item_equip_id INTEGER NOT NULL DEFAULT 0,"
        "  PRIMARY KEY(hero_idx, slot),"
        "  FOREIGN KEY(hero_idx) REFERENCES hero(idx)"
        ")",

        "CREATE TABLE IF NOT EXISTS hero_equip_preset_slot ("
        "  preset_slot INTEGER PRIMARY KEY,"
        "  preset_name TEXT NOT NULL"
        ")",

        "CREATE TABLE IF NOT EXISTS hero_equip_preset_item ("
        "  preset_slot   INTEGER NOT NULL,"
        "  hero_order    INTEGER NOT NULL DEFAULT 0,"
        "  item_order    INTEGER NOT NULL DEFAULT 0,"
        "  hero_idx      TEXT NOT NULL,"
        "  slot          INTEGER NOT NULL,"
        "  item_equip_id INTEGER NOT NULL DEFAULT 0,"
        "  PRIMARY KEY(preset_slot, hero_idx, slot),"
        "  FOREIGN KEY(preset_slot) REFERENCES hero_equip_preset_slot(preset_slot)"
        ")",

        "CREATE TABLE IF NOT EXISTS stage ("
        "  stage_no   INTEGER PRIMARY KEY,"
        "  stage_type INTEGER NOT NULL,"
        "  update_dt  INTEGER NOT NULL"
        ")",

        "CREATE TABLE IF NOT EXISTS story ("
        "  story_no  INTEGER PRIMARY KEY,"
        "  update_dt INTEGER NOT NULL"
        ")",

        "CREATE TABLE IF NOT EXISTS tutorial ("
        "  tutorial_no INTEGER PRIMARY KEY"
        ")",

        "CREATE TABLE IF NOT EXISTS formation ("
        "  no             INTEGER NOT NULL,"
        "  kind           INTEGER NOT NULL,"
        "  formation_type INTEGER NOT NULL DEFAULT 0,"
        "  formation_name TEXT,"
        "  PRIMARY KEY(no, kind)"
        ")",

        "CREATE TABLE IF NOT EXISTS formation_hero ("
        "  no       INTEGER NOT NULL,"
        "  kind     INTEGER NOT NULL,"
        "  position INTEGER NOT NULL,"
        "  hero_idx TEXT NOT NULL,"
        "  PRIMARY KEY(no, kind, position),"
        "  FOREIGN KEY(no, kind) REFERENCES formation(no, kind)"
        ")",

        "CREATE TABLE IF NOT EXISTS formation_relic ("
        "  no           INTEGER NOT NULL,"
        "  kind         INTEGER NOT NULL,"
        "  type         INTEGER,"
        "  formation    INTEGER,"
        "  relic_order  INTEGER,"
        "  relic_no     INTEGER,"
        "  PRIMARY KEY(no, kind),"
        "  FOREIGN KEY(no, kind) REFERENCES formation(no, kind)"
        ")",

        "CREATE TABLE IF NOT EXISTS spirit_tree ("
        "  slot_no   INTEGER PRIMARY KEY,"
        "  hero_idx  TEXT,"
        "  enable_dt INTEGER"
        ")",

        "CREATE TABLE IF NOT EXISTS hero_option ("
        "  hero_no      INTEGER NOT NULL,"
        "  group_no     INTEGER NOT NULL,"
        "  option_slot  INTEGER NOT NULL,"
        "  option_no    INTEGER NOT NULL,"
        "  option_value INTEGER NOT NULL,"
        "  option_type  INTEGER NOT NULL,"
        "  option_lock  INTEGER NOT NULL DEFAULT 0,"
        "  PRIMARY KEY(hero_no, group_no, option_slot)"
        ")",

        "CREATE TABLE IF NOT EXISTS challenge_mode ("
        "  clear_stage_no INTEGER PRIMARY KEY"
        ")",

        "CREATE TABLE IF NOT EXISTS challenge_mode_task ("
        "  clear_stage_no INTEGER NOT NULL,"
        "  task_order     INTEGER NOT NULL,"
        "  clear_task_no  INTEGER NOT NULL,"
        "  PRIMARY KEY(clear_stage_no, task_order),"
        "  FOREIGN KEY(clear_stage_no) REFERENCES challenge_mode(clear_stage_no)"
        ")",

        "CREATE TABLE IF NOT EXISTS auto_hunt ("
        "  singleton_id INTEGER PRIMARY KEY CHECK(singleton_id = 1),"
        "  stage_no     INTEGER,"
        "  lab_dt       INTEGER,"
        "  receive_dt   INTEGER"
        ")",

        "CREATE TABLE IF NOT EXISTS arbeit_task ("
        "  no                  INTEGER PRIMARY KEY,"
        "  date                INTEGER NOT NULL DEFAULT 0,"
        "  arbeit_choice_no    INTEGER NOT NULL DEFAULT 0,"
        "  arbeit_no           INTEGER NOT NULL DEFAULT 0,"
        "  objet_no            INTEGER NOT NULL DEFAULT 0,"
        "  start_timestamp     INTEGER NOT NULL DEFAULT 0,"
        "  end_timestamp       INTEGER NOT NULL DEFAULT 0,"
        "  state               INTEGER NOT NULL DEFAULT 0,"
        "  hero_no_csv         TEXT,"
        "  kind                TEXT,"
        "  ingame_day          INTEGER NOT NULL DEFAULT 0"
        ")",

        "CREATE TABLE IF NOT EXISTS dungeon_list_state ("
        "  singleton_id                  INTEGER PRIMARY KEY CHECK(singleton_id = 1),"
        "  rotation_dungeon_no           INTEGER,"
        "  rotation_dungeon_expire_dt    INTEGER,"
        "  labyrinth_expire_dt           INTEGER,"
        "  labyrinth_clear_cnt           INTEGER,"
        "  labyrinth_ticket_cnt          INTEGER,"
        "  rotation_dungeon_clear_cnt    INTEGER,"
        "  rotation_dungeon_ticket_cnt   INTEGER"
        ")",

        "CREATE TABLE IF NOT EXISTS dungeon ("
        "  dungeon_no                    INTEGER PRIMARY KEY,"
        "  id                            INTEGER,"
        "  dungeon_level                 INTEGER,"
        "  x                             REAL,"
        "  z                             REAL,"
        "  map_info                      BLOB,"
        "  condition_info                BLOB,"
        "  hero_info                     BLOB,"
        "  additional_info               BLOB,"
        "  relic_info                    BLOB,"
        "  is_enter                      INTEGER,"
        "  is_clear                      INTEGER,"
        "  is_first_clear                INTEGER,"
        "  mission_no                    INTEGER,"
        "  mission_cnt                   INTEGER,"
        "  seed                          INTEGER,"
        "  dungeon_item                  BLOB,"
        "  difficulty                    INTEGER,"
        "  ultimate_point                INTEGER,"
        "  player_object_id              INTEGER,"
        "  use_ticket                    INTEGER,"
        "  max_clear_level               INTEGER,"
        "  is_sweep                      INTEGER,"
        "  is_perfect_clear              INTEGER,"
        "  is_hidden_key_not_available   INTEGER,"
        "  random_gimmick_seed           INTEGER,"
        "  update_dt                     INTEGER"
        ")",

        "CREATE TABLE IF NOT EXISTS dungeon_reward ("
        "  dungeon_no   INTEGER NOT NULL,"
        "  reward_order INTEGER NOT NULL,"
        "  type         INTEGER NOT NULL,"
        "  reward_no    INTEGER NOT NULL,"
        "  PRIMARY KEY(dungeon_no, reward_order),"
        "  FOREIGN KEY(dungeon_no) REFERENCES dungeon(dungeon_no)"
        ")",

        "CREATE TABLE IF NOT EXISTS dungeon_perfect_clear_record ("
        "  type         INTEGER NOT NULL,"
        "  dungeon_no   INTEGER NOT NULL,"
        "  dungeon_level INTEGER NOT NULL,"
        "  PRIMARY KEY(type, dungeon_no, dungeon_level)"
        ")",

        "CREATE TABLE IF NOT EXISTS userinfo_preserved_field ("
        "  field_name   TEXT PRIMARY KEY,"
        "  field_number INTEGER NOT NULL,"
        "  type_name    TEXT,"
        "  json_body    TEXT NOT NULL,"
        "  schema_sha256 TEXT NOT NULL,"
        "  updated_at_ms INTEGER NOT NULL"
        ")",
    };
    for (const char* sql : stmts)
        sqlite3_exec(db_, sql, nullptr, nullptr, nullptr);
}

// ---- account_meta ----

std::string AccountDatabase::meta_get(const std::string& key,
                                       const std::string& fallback) const {
    if (!db_) return fallback;
    sqlite3_stmt* st = nullptr;
    std::string out = fallback;
    if (sqlite3_prepare_v2(db_,
            "SELECT value FROM account_meta WHERE key=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st, 1, key.c_str(), -1, SQLITE_TRANSIENT);
        if (sqlite3_step(st) == SQLITE_ROW) out = col_str(st, 0);
    }
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::meta_set(const std::string& key, const std::string& value) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO account_meta(key,value) VALUES(?1,?2)"
            " ON CONFLICT(key) DO UPDATE SET value=excluded.value",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st, 1, key.c_str(),   -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st, 2, value.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

// ---- is_seeded ----

bool AccountDatabase::is_seeded() const {
    return meta_get("seeded") == "1";
}

// ---- user_profile / user_thumbnail ----

std::optional<AccountDatabase::UserProfileRow> AccountDatabase::user_profile() const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<UserProfileRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT idx,nick_name,last_login_dt,channel_no,tree_level,is_log,about,"
            " return_user_dt,created_dt,popularity,is_first_cash_buy,review_flag,"
            " review_dt,equip_flag,payment_agree_dt,payment_agree_type,"
            " first_title,second_title"
            " FROM user_profile WHERE singleton_id=1",
            -1, &st, nullptr) == SQLITE_OK) {
        if (sqlite3_step(st) == SQLITE_ROW) {
            UserProfileRow r;
            r.idx               = col_str(st, 0);
            r.nick_name         = col_str(st, 1);
            r.last_login_dt     = sqlite3_column_int64(st, 2);
            r.channel_no        = sqlite3_column_int(st, 3);
            r.tree_level        = sqlite3_column_int(st, 4);
            r.is_log            = sqlite3_column_int(st, 5);
            r.about             = col_str(st, 6);
            r.return_user_dt    = sqlite3_column_int64(st, 7);
            r.created_dt        = sqlite3_column_int64(st, 8);
            r.popularity        = sqlite3_column_int(st, 9);
            r.is_first_cash_buy = sqlite3_column_int(st, 10);
            r.review_flag       = sqlite3_column_int(st, 11);
            r.review_dt         = sqlite3_column_int64(st, 12);
            r.equip_flag        = sqlite3_column_int(st, 13);
            r.payment_agree_dt  = sqlite3_column_int64(st, 14);
            r.payment_agree_type = sqlite3_column_int(st, 15);
            r.first_title       = sqlite3_column_int(st, 16);
            r.second_title      = sqlite3_column_int(st, 17);
            out = r;
        }
    }
    sqlite3_finalize(st);
    return out;
}

std::optional<AccountDatabase::UserThumbnailRow> AccountDatabase::user_thumbnail() const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<UserThumbnailRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT thumbnail_frame,thumbnail_image,use_custom,thumbnail,"
            " first_title,second_title"
            " FROM user_thumbnail WHERE singleton_id=1",
            -1, &st, nullptr) == SQLITE_OK) {
        if (sqlite3_step(st) == SQLITE_ROW) {
            UserThumbnailRow r;
            r.thumbnail_frame = sqlite3_column_int(st, 0);
            r.thumbnail_image = sqlite3_column_int(st, 1);
            r.use_custom      = sqlite3_column_int(st, 2);
            r.thumbnail       = col_str(st, 3);
            r.first_title     = sqlite3_column_int(st, 4);
            r.second_title    = sqlite3_column_int(st, 5);
            out = r;
        }
    }
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::set_user_identity(const std::string& nick_name,
                                        const std::string& player_id) {
    if (!db_) return;

    std::optional<UserProfileRow> current = user_profile();
    UserProfileRow row = current.value_or(UserProfileRow{});
    if (!player_id.empty())
        row.idx = player_id;
    if (!nick_name.empty())
        row.nick_name = nick_name;
    if (row.idx.empty())
        row.idx = meta_get("account_id", "");

    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO user_profile"
            "(singleton_id,idx,nick_name,last_login_dt,channel_no,tree_level,is_log,"
            " about,return_user_dt,created_dt,popularity,is_first_cash_buy,review_flag,"
            " review_dt,equip_flag,payment_agree_dt,payment_agree_type,first_title,second_title)"
            " VALUES(1,?1,?2,?3,?4,?5,?6,?7,?8,?9,?10,?11,?12,?13,?14,?15,?16,?17,?18)"
            " ON CONFLICT(singleton_id) DO UPDATE SET"
            " idx=excluded.idx,"
            " nick_name=excluded.nick_name,"
            " last_login_dt=excluded.last_login_dt,"
            " channel_no=excluded.channel_no,"
            " tree_level=excluded.tree_level,"
            " is_log=excluded.is_log,"
            " about=excluded.about,"
            " return_user_dt=excluded.return_user_dt,"
            " created_dt=excluded.created_dt,"
            " popularity=excluded.popularity,"
            " is_first_cash_buy=excluded.is_first_cash_buy,"
            " review_flag=excluded.review_flag,"
            " review_dt=excluded.review_dt,"
            " equip_flag=excluded.equip_flag,"
            " payment_agree_dt=excluded.payment_agree_dt,"
            " payment_agree_type=excluded.payment_agree_type,"
            " first_title=excluded.first_title,"
            " second_title=excluded.second_title",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st,  1, row.idx.c_str(),       -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  2, row.nick_name.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_bind_int64(st, 3, row.last_login_dt);
        sqlite3_bind_int(st,   4, row.channel_no);
        sqlite3_bind_int(st,   5, row.tree_level);
        sqlite3_bind_int(st,   6, row.is_log);
        sqlite3_bind_text(st,  7, row.about.c_str(),     -1, SQLITE_TRANSIENT);
        sqlite3_bind_int64(st, 8, row.return_user_dt);
        sqlite3_bind_int64(st, 9, row.created_dt);
        sqlite3_bind_int(st,  10, row.popularity);
        sqlite3_bind_int(st,  11, row.is_first_cash_buy);
        sqlite3_bind_int(st,  12, row.review_flag);
        sqlite3_bind_int64(st,13, row.review_dt);
        sqlite3_bind_int(st,  14, row.equip_flag);
        sqlite3_bind_int64(st,15, row.payment_agree_dt);
        sqlite3_bind_int(st,  16, row.payment_agree_type);
        sqlite3_bind_int(st,  17, row.first_title);
        sqlite3_bind_int(st,  18, row.second_title);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);

    if (!player_id.empty())
        meta_set("account_id", player_id);
    meta_set("updated_at_ms", std::to_string(unix_ms()));
}

// ---- currency ----

std::vector<AccountDatabase::CurrencyRow> AccountDatabase::currencies() const {
    std::vector<CurrencyRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT type,enum_name,value FROM currency ORDER BY type",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW) {
            CurrencyRow r;
            r.type      = sqlite3_column_int(st, 0);
            r.enum_name = col_str(st, 1);
            r.value     = sqlite3_column_int64(st, 2);
            out.push_back(std::move(r));
        }
    }
    sqlite3_finalize(st);
    return out;
}

std::int64_t AccountDatabase::currency_get(int type) const {
    if (!db_) return 0;
    sqlite3_stmt* st = nullptr;
    std::int64_t out = 0;
    if (sqlite3_prepare_v2(db_,
            "SELECT value FROM currency WHERE type=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, type);
        if (sqlite3_step(st) == SQLITE_ROW) out = sqlite3_column_int64(st, 0);
    }
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::currency_set(int type, std::int64_t value) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO currency(type,value) VALUES(?1,?2)"
            " ON CONFLICT(type) DO UPDATE SET value=excluded.value",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st,   1, type);
        sqlite3_bind_int64(st, 2, value);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

void AccountDatabase::currency_add(int type, std::int64_t delta) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO currency(type,value) VALUES(?1,?2)"
            " ON CONFLICT(type) DO UPDATE SET value=MAX(0,value+?2)",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st,   1, type);
        sqlite3_bind_int64(st, 2, delta);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

// ---- hero ----

HeroRow AccountDatabase::row_to_hero(sqlite3_stmt* st) const {
    HeroRow r;
    r.idx          = col_str(st, 0);
    r.hero_no      = sqlite3_column_int(st, 1);
    r.level        = sqlite3_column_int(st, 2);
    r.is_resonance = sqlite3_column_int(st, 3);
    r.grade_sno    = sqlite3_column_int(st, 4);
    r.race_sno     = sqlite3_column_int(st, 5);
    r.is_lock      = sqlite3_column_int(st, 6);
    return r;
}

std::vector<HeroRow> AccountDatabase::heroes() const {
    std::vector<HeroRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT idx,hero_no,level,is_resonance,grade_sno,race_sno,is_lock"
            " FROM hero ORDER BY rowid",
            -1, &st, nullptr) == SQLITE_OK)
        while (sqlite3_step(st) == SQLITE_ROW) out.push_back(row_to_hero(st));
    sqlite3_finalize(st);
    return out;
}

std::optional<HeroRow> AccountDatabase::hero_by_idx(const std::string& idx) const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<HeroRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT idx,hero_no,level,is_resonance,grade_sno,race_sno,is_lock"
            " FROM hero WHERE idx=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st, 1, idx.c_str(), -1, SQLITE_TRANSIENT);
        if (sqlite3_step(st) == SQLITE_ROW) out = row_to_hero(st);
    }
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::upsert_hero(const HeroRow& r) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO hero(idx,hero_no,level,is_resonance,grade_sno,race_sno,is_lock)"
            " VALUES(?1,?2,?3,?4,?5,?6,?7)"
            " ON CONFLICT(idx) DO UPDATE SET"
            " hero_no=excluded.hero_no, level=excluded.level,"
            " is_resonance=excluded.is_resonance, grade_sno=excluded.grade_sno,"
            " race_sno=excluded.race_sno, is_lock=excluded.is_lock",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st, 1, r.idx.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_bind_int(st,  2, r.hero_no);
        sqlite3_bind_int(st,  3, r.level);
        sqlite3_bind_int(st,  4, r.is_resonance);
        sqlite3_bind_int(st,  5, r.grade_sno);
        sqlite3_bind_int(st,  6, r.race_sno);
        sqlite3_bind_int(st,  7, r.is_lock);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

void AccountDatabase::delete_hero(const std::string& idx) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "DELETE FROM hero WHERE idx=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st, 1, idx.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

// ---- hero_reputation ----

HeroReputationRow AccountDatabase::row_to_hero_rep(sqlite3_stmt* st) const {
    HeroReputationRow r;
    r.hero_no         = sqlite3_column_int(st, 0);
    r.reputation      = sqlite3_column_int(st, 1);
    r.state           = sqlite3_column_int(st, 2);
    r.stress          = sqlite3_column_int(st, 3);
    r.last_update_dt  = sqlite3_column_int64(st, 4);
    r.gift_dt         = sqlite3_column_int64(st, 5);
    r.costume_item_no = sqlite3_column_int(st, 6);
    r.story_reward    = sqlite3_column_int(st, 7);
    r.max_grade_sno   = sqlite3_column_int(st, 8);
    r.objet_uid       = sqlite3_column_int64(st, 9);
    r.max_level_dt    = sqlite3_column_int64(st, 10);
    r.arbeit_exp      = sqlite3_column_int(st, 11);
    r.priority        = sqlite3_column_int(st, 12);
    r.rest_finish_dt  = sqlite3_column_int64(st, 13);
    r.objet_no        = col_str(st, 14);
    return r;
}

std::vector<HeroReputationRow> AccountDatabase::hero_reputations() const {
    std::vector<HeroReputationRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT hero_no,reputation,state,stress,last_update_dt,gift_dt,"
            " costume_item_no,story_reward,max_grade_sno,objet_uid,max_level_dt,"
            " arbeit_exp,priority,rest_finish_dt,objet_no"
            " FROM hero_reputation ORDER BY hero_no",
            -1, &st, nullptr) == SQLITE_OK)
        while (sqlite3_step(st) == SQLITE_ROW) out.push_back(row_to_hero_rep(st));
    sqlite3_finalize(st);
    return out;
}

std::optional<HeroReputationRow> AccountDatabase::hero_reputation_by_no(int hero_no) const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<HeroReputationRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT hero_no,reputation,state,stress,last_update_dt,gift_dt,"
            " costume_item_no,story_reward,max_grade_sno,objet_uid,max_level_dt,"
            " arbeit_exp,priority,rest_finish_dt,objet_no"
            " FROM hero_reputation WHERE hero_no=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, hero_no);
        if (sqlite3_step(st) == SQLITE_ROW) out = row_to_hero_rep(st);
    }
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::upsert_hero_reputation(const HeroReputationRow& r) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO hero_reputation"
            "(hero_no,reputation,state,stress,last_update_dt,gift_dt,"
            " costume_item_no,story_reward,max_grade_sno,objet_uid,max_level_dt,"
            " arbeit_exp,priority,rest_finish_dt,objet_no)"
            " VALUES(?1,?2,?3,?4,?5,?6,?7,?8,?9,?10,?11,?12,?13,?14,?15)"
            " ON CONFLICT(hero_no) DO UPDATE SET"
            " reputation=excluded.reputation, state=excluded.state,"
            " stress=excluded.stress, last_update_dt=excluded.last_update_dt,"
            " gift_dt=excluded.gift_dt, costume_item_no=excluded.costume_item_no,"
            " story_reward=excluded.story_reward, max_grade_sno=excluded.max_grade_sno,"
            " objet_uid=excluded.objet_uid, max_level_dt=excluded.max_level_dt,"
            " arbeit_exp=excluded.arbeit_exp, priority=excluded.priority,"
            " rest_finish_dt=excluded.rest_finish_dt, objet_no=excluded.objet_no",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st,   1,  r.hero_no);
        sqlite3_bind_int(st,   2,  r.reputation);
        sqlite3_bind_int(st,   3,  r.state);
        sqlite3_bind_int(st,   4,  r.stress);
        sqlite3_bind_int64(st, 5,  r.last_update_dt);
        sqlite3_bind_int64(st, 6,  r.gift_dt);
        sqlite3_bind_int(st,   7,  r.costume_item_no);
        sqlite3_bind_int(st,   8,  r.story_reward);
        sqlite3_bind_int(st,   9,  r.max_grade_sno);
        sqlite3_bind_int64(st, 10, r.objet_uid);
        sqlite3_bind_int64(st, 11, r.max_level_dt);
        sqlite3_bind_int(st,   12, r.arbeit_exp);
        sqlite3_bind_int(st,   13, r.priority);
        sqlite3_bind_int64(st, 14, r.rest_finish_dt);
        if (!r.objet_no.empty())
            sqlite3_bind_text(st, 15, r.objet_no.c_str(), -1, SQLITE_TRANSIENT);
        else
            sqlite3_bind_null(st, 15);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

// ---- item_etc ----

std::vector<ItemEtcRow> AccountDatabase::item_etcs() const {
    std::vector<ItemEtcRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT item_no,cnt FROM item_etc ORDER BY item_no",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW) {
            ItemEtcRow row;
            row.item_no = sqlite3_column_int(st, 0);
            row.cnt = sqlite3_column_int(st, 1);
            out.push_back(row);
        }
    }
    sqlite3_finalize(st);
    return out;
}

int AccountDatabase::item_etc_count(int item_no) const {
    if (!db_) return 0;
    sqlite3_stmt* st = nullptr;
    int out = 0;
    if (sqlite3_prepare_v2(db_,
            "SELECT cnt FROM item_etc WHERE item_no=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, item_no);
        if (sqlite3_step(st) == SQLITE_ROW) out = sqlite3_column_int(st, 0);
    }
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::item_etc_set(int item_no, int cnt) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO item_etc(item_no,cnt) VALUES(?1,?2)"
            " ON CONFLICT(item_no) DO UPDATE SET cnt=excluded.cnt",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, item_no);
        sqlite3_bind_int(st, 2, cnt);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

void AccountDatabase::item_etc_add(int item_no, int delta) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO item_etc(item_no,cnt) VALUES(?1,?2)"
            " ON CONFLICT(item_no) DO UPDATE SET cnt=MAX(0,cnt+?2)",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, item_no);
        sqlite3_bind_int(st, 2, delta);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

void AccountDatabase::item_etc_delete(int item_no) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "DELETE FROM item_etc WHERE item_no=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, item_no);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

// ---- item_equip ----

ItemEquipRow AccountDatabase::row_to_item_equip(sqlite3_stmt* st) const {
    ItemEquipRow r;
    r.id      = sqlite3_column_int64(st, 0);
    r.item_no = sqlite3_column_int(st, 1);
    r.exp     = sqlite3_column_int(st, 2);
    return r;
}

std::vector<ItemEquipRow> AccountDatabase::item_equips() const {
    std::vector<ItemEquipRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT id,item_no,exp FROM item_equip ORDER BY id",
            -1, &st, nullptr) == SQLITE_OK)
        while (sqlite3_step(st) == SQLITE_ROW) out.push_back(row_to_item_equip(st));
    sqlite3_finalize(st);
    return out;
}

std::optional<ItemEquipRow> AccountDatabase::item_equip_by_id(std::int64_t id) const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<ItemEquipRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT id,item_no,exp FROM item_equip WHERE id=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int64(st, 1, id);
        if (sqlite3_step(st) == SQLITE_ROW) out = row_to_item_equip(st);
    }
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::upsert_item_equip(const ItemEquipRow& r) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO item_equip(id,item_no,exp) VALUES(?1,?2,?3)"
            " ON CONFLICT(id) DO UPDATE SET item_no=excluded.item_no, exp=excluded.exp",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int64(st, 1, r.id);
        sqlite3_bind_int(st,   2, r.item_no);
        sqlite3_bind_int(st,   3, r.exp);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

// ---- hero_equip_slot ----

std::vector<HeroEquipSlotRow> AccountDatabase::hero_equip_slots(
        const std::string& hero_idx) const {
    std::vector<HeroEquipSlotRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT hero_idx,slot,item_equip_id"
            " FROM hero_equip_slot WHERE hero_idx=?1 ORDER BY slot",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st, 1, hero_idx.c_str(), -1, SQLITE_TRANSIENT);
        while (sqlite3_step(st) == SQLITE_ROW) {
            HeroEquipSlotRow r;
            r.hero_idx      = col_str(st, 0);
            r.slot          = sqlite3_column_int(st, 1);
            r.item_equip_id = sqlite3_column_int64(st, 2);
            out.push_back(std::move(r));
        }
    }
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::upsert_hero_equip_slot(const HeroEquipSlotRow& r) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO hero_equip_slot(hero_idx,slot,item_equip_id)"
            " VALUES(?1,?2,?3)"
            " ON CONFLICT(hero_idx,slot) DO UPDATE SET"
            " item_equip_id=excluded.item_equip_id",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st,  1, r.hero_idx.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_bind_int(st,   2, r.slot);
        sqlite3_bind_int64(st, 3, r.item_equip_id);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

void AccountDatabase::delete_hero_equip_slot(const std::string& hero_idx, int slot) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "DELETE FROM hero_equip_slot WHERE hero_idx=?1 AND slot=?2",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st, 1, hero_idx.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_bind_int(st, 2, slot);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

// ---- hero_equip_preset ----

std::vector<HeroEquipPresetSlotRow> AccountDatabase::hero_equip_preset_slots() const {
    std::vector<HeroEquipPresetSlotRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT preset_slot,preset_name FROM hero_equip_preset_slot ORDER BY preset_slot",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW) {
            HeroEquipPresetSlotRow row;
            row.preset_slot = sqlite3_column_int(st, 0);
            row.preset_name = col_str(st, 1);
            out.push_back(std::move(row));
        }
    }
    sqlite3_finalize(st);
    return out;
}

std::optional<HeroEquipPresetSlotRow> AccountDatabase::hero_equip_preset_slot(int preset_slot) const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<HeroEquipPresetSlotRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT preset_slot,preset_name FROM hero_equip_preset_slot WHERE preset_slot=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, preset_slot);
        if (sqlite3_step(st) == SQLITE_ROW) {
            HeroEquipPresetSlotRow row;
            row.preset_slot = sqlite3_column_int(st, 0);
            row.preset_name = col_str(st, 1);
            out = std::move(row);
        }
    }
    sqlite3_finalize(st);
    return out;
}

std::vector<HeroEquipPresetItemRow> AccountDatabase::hero_equip_preset_items(int preset_slot) const {
    std::vector<HeroEquipPresetItemRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT preset_slot,hero_order,item_order,hero_idx,slot,item_equip_id"
            " FROM hero_equip_preset_item WHERE preset_slot=?1"
            " ORDER BY hero_order,item_order,hero_idx,slot",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, preset_slot);
        while (sqlite3_step(st) == SQLITE_ROW) {
            HeroEquipPresetItemRow row;
            row.preset_slot   = sqlite3_column_int(st, 0);
            row.hero_order    = sqlite3_column_int(st, 1);
            row.item_order    = sqlite3_column_int(st, 2);
            row.hero_idx      = col_str(st, 3);
            row.slot          = sqlite3_column_int(st, 4);
            row.item_equip_id = sqlite3_column_int64(st, 5);
            out.push_back(std::move(row));
        }
    }
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::upsert_hero_equip_preset_slot(const HeroEquipPresetSlotRow& row) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO hero_equip_preset_slot(preset_slot,preset_name) VALUES(?1,?2)"
            " ON CONFLICT(preset_slot) DO UPDATE SET preset_name=excluded.preset_name",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, row.preset_slot);
        sqlite3_bind_text(st, 2, row.preset_name.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

void AccountDatabase::replace_hero_equip_preset_items(
        int preset_slot, const std::vector<HeroEquipPresetItemRow>& rows) {
    if (!db_) return;

    sqlite3_stmt* delete_st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "DELETE FROM hero_equip_preset_item WHERE preset_slot=?1",
            -1, &delete_st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(delete_st, 1, preset_slot);
        sqlite3_step(delete_st);
    }
    sqlite3_finalize(delete_st);

    sqlite3_stmt* insert_st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO hero_equip_preset_item(preset_slot,hero_order,item_order,hero_idx,slot,item_equip_id)"
            " VALUES(?1,?2,?3,?4,?5,?6)"
            " ON CONFLICT(preset_slot,hero_idx,slot) DO UPDATE SET"
            " hero_order=excluded.hero_order,"
            " item_order=excluded.item_order,"
            " item_equip_id=excluded.item_equip_id",
            -1, &insert_st, nullptr) == SQLITE_OK) {
        for (const HeroEquipPresetItemRow& row : rows) {
            sqlite3_bind_int(insert_st, 1, preset_slot);
            sqlite3_bind_int(insert_st, 2, row.hero_order);
            sqlite3_bind_int(insert_st, 3, row.item_order);
            sqlite3_bind_text(insert_st, 4, row.hero_idx.c_str(), -1, SQLITE_TRANSIENT);
            sqlite3_bind_int(insert_st, 5, row.slot);
            sqlite3_bind_int64(insert_st, 6, row.item_equip_id);
            sqlite3_step(insert_st);
            sqlite3_reset(insert_st);
            sqlite3_clear_bindings(insert_st);
        }
    }
    sqlite3_finalize(insert_st);
}

// ---- formation ----

std::vector<FormationRow> AccountDatabase::formations() const {
    std::vector<FormationRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT no,kind,formation_type,formation_name FROM formation ORDER BY no,kind",
            -1, &st, nullptr) == SQLITE_OK)
        while (sqlite3_step(st) == SQLITE_ROW) {
            FormationRow r;
            r.no             = sqlite3_column_int(st, 0);
            r.kind           = sqlite3_column_int(st, 1);
            r.formation_type = sqlite3_column_int(st, 2);
            r.formation_name = col_str(st, 3);
            out.push_back(std::move(r));
        }
    sqlite3_finalize(st);
    return out;
}

std::vector<FormationHeroRow> AccountDatabase::formation_heroes(int no, int kind) const {
    std::vector<FormationHeroRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT no,kind,position,hero_idx FROM formation_hero"
            " WHERE no=?1 AND kind=?2 ORDER BY position",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, no);
        sqlite3_bind_int(st, 2, kind);
        while (sqlite3_step(st) == SQLITE_ROW) {
            FormationHeroRow r;
            r.no       = sqlite3_column_int(st, 0);
            r.kind     = sqlite3_column_int(st, 1);
            r.position = sqlite3_column_int(st, 2);
            r.hero_idx = col_str(st, 3);
            out.push_back(std::move(r));
        }
    }
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::upsert_formation(const FormationRow& r) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO formation(no,kind,formation_type,formation_name)"
            " VALUES(?1,?2,?3,?4)"
            " ON CONFLICT(no,kind) DO UPDATE SET"
            " formation_type=excluded.formation_type,"
            " formation_name=excluded.formation_name",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st,  1, r.no);
        sqlite3_bind_int(st,  2, r.kind);
        sqlite3_bind_int(st,  3, r.formation_type);
        sqlite3_bind_text(st, 4, r.formation_name.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

void AccountDatabase::upsert_formation_hero(const FormationHeroRow& r) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO formation_hero(no,kind,position,hero_idx)"
            " VALUES(?1,?2,?3,?4)"
            " ON CONFLICT(no,kind,position) DO UPDATE SET hero_idx=excluded.hero_idx",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st,  1, r.no);
        sqlite3_bind_int(st,  2, r.kind);
        sqlite3_bind_int(st,  3, r.position);
        sqlite3_bind_text(st, 4, r.hero_idx.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

void AccountDatabase::delete_formation_heroes(int no, int kind) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "DELETE FROM formation_hero WHERE no=?1 AND kind=?2",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, no);
        sqlite3_bind_int(st, 2, kind);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

// ---- stage ----

std::vector<std::pair<int,int>> AccountDatabase::stages() const {
    std::vector<std::pair<int,int>> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT stage_no,stage_type FROM stage ORDER BY stage_no",
            -1, &st, nullptr) == SQLITE_OK)
        while (sqlite3_step(st) == SQLITE_ROW)
            out.emplace_back(sqlite3_column_int(st, 0), sqlite3_column_int(st, 1));
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::upsert_stage(int stage_no, int stage_type, std::int64_t update_dt) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO stage(stage_no,stage_type,update_dt) VALUES(?1,?2,?3)"
            " ON CONFLICT(stage_no) DO UPDATE SET"
            " stage_type=excluded.stage_type, update_dt=excluded.update_dt",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st,   1, stage_no);
        sqlite3_bind_int(st,   2, stage_type);
        sqlite3_bind_int64(st, 3, update_dt);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

int AccountDatabase::max_stage_no() const {
    if (!db_) return 0;
    sqlite3_stmt* st = nullptr;
    int out = 0;
    if (sqlite3_prepare_v2(db_,
            "SELECT IFNULL(MAX(stage_no),0) FROM stage",
            -1, &st, nullptr) == SQLITE_OK)
        if (sqlite3_step(st) == SQLITE_ROW) out = sqlite3_column_int(st, 0);
    sqlite3_finalize(st);
    return out;
}

// ---- story ----

std::vector<int> AccountDatabase::stories() const {
    std::vector<int> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT story_no FROM story ORDER BY story_no",
            -1, &st, nullptr) == SQLITE_OK)
        while (sqlite3_step(st) == SQLITE_ROW)
            out.push_back(sqlite3_column_int(st, 0));
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::upsert_story(int story_no, std::int64_t update_dt) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO story(story_no,update_dt) VALUES(?1,?2)"
            " ON CONFLICT(story_no) DO UPDATE SET update_dt=excluded.update_dt",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st,   1, story_no);
        sqlite3_bind_int64(st, 2, update_dt);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

// ---- tutorial ----

std::vector<int> AccountDatabase::tutorials() const {
    std::vector<int> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT tutorial_no FROM tutorial ORDER BY tutorial_no",
            -1, &st, nullptr) == SQLITE_OK)
        while (sqlite3_step(st) == SQLITE_ROW)
            out.push_back(sqlite3_column_int(st, 0));
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::upsert_tutorial(int tutorial_no) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT OR IGNORE INTO tutorial(tutorial_no) VALUES(?1)",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, tutorial_no);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

int AccountDatabase::max_tutorial_no() const {
    if (!db_) return 0;
    sqlite3_stmt* st = nullptr;
    int out = 0;
    if (sqlite3_prepare_v2(db_,
            "SELECT IFNULL(MAX(tutorial_no),0) FROM tutorial",
            -1, &st, nullptr) == SQLITE_OK)
        if (sqlite3_step(st) == SQLITE_ROW) out = sqlite3_column_int(st, 0);
    sqlite3_finalize(st);
    return out;
}

// ---- dungeon ----

DungeonRow AccountDatabase::row_to_dungeon(sqlite3_stmt* st) const {
    DungeonRow r;
    r.dungeon_no                  = sqlite3_column_int(st, 0);
    r.dungeon_no_id               = sqlite3_column_int(st, 1);
    r.dungeon_level               = sqlite3_column_int(st, 2);
    r.x                           = sqlite3_column_double(st, 3);
    r.z                           = sqlite3_column_double(st, 4);
    r.is_enter                    = sqlite3_column_int(st, 5);
    r.is_clear                    = sqlite3_column_int(st, 6);
    r.is_first_clear              = sqlite3_column_int(st, 7);
    r.update_dt                   = sqlite3_column_int64(st, 8);
    return r;
}

std::vector<DungeonRow> AccountDatabase::dungeons() const {
    std::vector<DungeonRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT dungeon_no,id,dungeon_level,x,z,"
            " is_enter,is_clear,is_first_clear,update_dt"
            " FROM dungeon ORDER BY dungeon_no",
            -1, &st, nullptr) == SQLITE_OK)
        while (sqlite3_step(st) == SQLITE_ROW) out.push_back(row_to_dungeon(st));
    sqlite3_finalize(st);
    return out;
}

std::optional<DungeonRow> AccountDatabase::dungeon_by_no(int dungeon_no) const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<DungeonRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT dungeon_no,id,dungeon_level,x,z,"
            " is_enter,is_clear,is_first_clear,update_dt"
            " FROM dungeon WHERE dungeon_no=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, dungeon_no);
        if (sqlite3_step(st) == SQLITE_ROW) out = row_to_dungeon(st);
    }
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::upsert_dungeon(const DungeonRow& r) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO dungeon(dungeon_no,id,dungeon_level,x,z,"
            " is_enter,is_clear,is_first_clear,update_dt)"
            " VALUES(?1,?2,?3,?4,?5,?6,?7,?8,?9)"
            " ON CONFLICT(dungeon_no) DO UPDATE SET"
            " id=excluded.id, dungeon_level=excluded.dungeon_level,"
            " x=excluded.x, z=excluded.z,"
            " is_enter=excluded.is_enter, is_clear=excluded.is_clear,"
            " is_first_clear=excluded.is_first_clear, update_dt=excluded.update_dt",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st,    1, r.dungeon_no);
        sqlite3_bind_int(st,    2, r.dungeon_no_id);
        sqlite3_bind_int(st,    3, r.dungeon_level);
        sqlite3_bind_double(st, 4, r.x);
        sqlite3_bind_double(st, 5, r.z);
        sqlite3_bind_int(st,    6, r.is_enter);
        sqlite3_bind_int(st,    7, r.is_clear);
        sqlite3_bind_int(st,    8, r.is_first_clear);
        sqlite3_bind_int64(st,  9, r.update_dt);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

// ---- spirit_tree ----

std::vector<AccountDatabase::SpiritTreeRow> AccountDatabase::spirit_trees() const {
    std::vector<SpiritTreeRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT slot_no,hero_idx,enable_dt FROM spirit_tree ORDER BY slot_no",
            -1, &st, nullptr) == SQLITE_OK)
        while (sqlite3_step(st) == SQLITE_ROW) {
            SpiritTreeRow r;
            r.slot_no   = sqlite3_column_int(st, 0);
            r.hero_idx  = col_str(st, 1);
            r.enable_dt = sqlite3_column_int64(st, 2);
            out.push_back(std::move(r));
        }
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::upsert_spirit_tree(const SpiritTreeRow& r) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO spirit_tree(slot_no,hero_idx,enable_dt) VALUES(?1,?2,?3)"
            " ON CONFLICT(slot_no) DO UPDATE SET"
            " hero_idx=excluded.hero_idx, enable_dt=excluded.enable_dt",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st,   1, r.slot_no);
        if (!r.hero_idx.empty())
            sqlite3_bind_text(st, 2, r.hero_idx.c_str(), -1, SQLITE_TRANSIENT);
        else
            sqlite3_bind_null(st, 2);
        sqlite3_bind_int64(st, 3, r.enable_dt);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

// ---- auto_hunt ----

std::optional<AccountDatabase::AutoHuntRow> AccountDatabase::auto_hunt() const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<AutoHuntRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT stage_no,lab_dt,receive_dt FROM auto_hunt WHERE singleton_id=1",
            -1, &st, nullptr) == SQLITE_OK)
        if (sqlite3_step(st) == SQLITE_ROW) {
            AutoHuntRow r;
            r.stage_no  = sqlite3_column_int(st, 0);
            r.lab_dt    = sqlite3_column_int64(st, 1);
            r.receive_dt = sqlite3_column_int64(st, 2);
            out = r;
        }
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::upsert_auto_hunt(const AutoHuntRow& r) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO auto_hunt(singleton_id,stage_no,lab_dt,receive_dt)"
            " VALUES(1,?1,?2,?3)"
            " ON CONFLICT(singleton_id) DO UPDATE SET"
            " stage_no=excluded.stage_no, lab_dt=excluded.lab_dt,"
            " receive_dt=excluded.receive_dt",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st,   1, r.stage_no);
        sqlite3_bind_int64(st, 2, r.lab_dt);
        sqlite3_bind_int64(st, 3, r.receive_dt);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

// ---- arbeit_task ----

ArbeitTaskRow AccountDatabase::row_to_arbeit_task(sqlite3_stmt* st) const {
    ArbeitTaskRow r;
    r.no               = sqlite3_column_int(st, 0);
    r.date             = sqlite3_column_int(st, 1);
    r.arbeit_choice_no = sqlite3_column_int(st, 2);
    r.arbeit_no        = sqlite3_column_int(st, 3);
    r.objet_no         = sqlite3_column_int(st, 4);
    r.start_timestamp  = sqlite3_column_int64(st, 5);
    r.end_timestamp    = sqlite3_column_int64(st, 6);
    r.state            = sqlite3_column_int(st, 7);
    r.hero_no_csv      = col_str(st, 8);
    r.kind             = col_str(st, 9);
    r.ingame_day       = sqlite3_column_int(st, 10);
    return r;
}

std::vector<ArbeitTaskRow> AccountDatabase::arbeit_tasks() const {
    std::vector<ArbeitTaskRow> out;
    if (!db_) return out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "SELECT no,date,arbeit_choice_no,arbeit_no,objet_no,start_timestamp,"
            " end_timestamp,state,hero_no_csv,kind,ingame_day"
            " FROM arbeit_task ORDER BY no",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW) out.push_back(row_to_arbeit_task(st));
    }
    sqlite3_finalize(st);
    return out;
}

std::optional<ArbeitTaskRow> AccountDatabase::arbeit_task_by_no(int no) const {
    if (!db_) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<ArbeitTaskRow> out;
    if (sqlite3_prepare_v2(db_,
            "SELECT no,date,arbeit_choice_no,arbeit_no,objet_no,start_timestamp,"
            " end_timestamp,state,hero_no_csv,kind,ingame_day"
            " FROM arbeit_task WHERE no=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st, 1, no);
        if (sqlite3_step(st) == SQLITE_ROW) out = row_to_arbeit_task(st);
    }
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::upsert_arbeit_task(const ArbeitTaskRow& r) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO arbeit_task"
            "(no,date,arbeit_choice_no,arbeit_no,objet_no,start_timestamp,"
            " end_timestamp,state,hero_no_csv,kind,ingame_day)"
            " VALUES(?1,?2,?3,?4,?5,?6,?7,?8,?9,?10,?11)"
            " ON CONFLICT(no) DO UPDATE SET"
            " date=excluded.date,"
            " arbeit_choice_no=excluded.arbeit_choice_no,"
            " arbeit_no=excluded.arbeit_no,"
            " objet_no=excluded.objet_no,"
            " start_timestamp=excluded.start_timestamp,"
            " end_timestamp=excluded.end_timestamp,"
            " state=excluded.state,"
            " hero_no_csv=excluded.hero_no_csv,"
            " kind=excluded.kind,"
            " ingame_day=excluded.ingame_day",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_int(st,   1,  r.no);
        sqlite3_bind_int(st,   2,  r.date);
        sqlite3_bind_int(st,   3,  r.arbeit_choice_no);
        sqlite3_bind_int(st,   4,  r.arbeit_no);
        sqlite3_bind_int(st,   5,  r.objet_no);
        sqlite3_bind_int64(st, 6,  r.start_timestamp);
        sqlite3_bind_int64(st, 7,  r.end_timestamp);
        sqlite3_bind_int(st,   8,  r.state);
        sqlite3_bind_text(st,  9,  r.hero_no_csv.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  10, r.kind.c_str(), -1, SQLITE_TRANSIENT);
        sqlite3_bind_int(st,   11, r.ingame_day);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

// ---- userinfo_preserved_field ----

std::string AccountDatabase::preserved_field(const std::string& field_name) const {
    if (!db_) return {};
    sqlite3_stmt* st = nullptr;
    std::string out;
    if (sqlite3_prepare_v2(db_,
            "SELECT json_body FROM userinfo_preserved_field WHERE field_name=?1",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st, 1, field_name.c_str(), -1, SQLITE_TRANSIENT);
        if (sqlite3_step(st) == SQLITE_ROW) out = col_str(st, 0);
    }
    sqlite3_finalize(st);
    return out;
}

void AccountDatabase::set_preserved_field(const std::string& field_name,
                                           int                field_number,
                                           const std::string& type_name,
                                           const std::string& json_body,
                                           const std::string& schema_sha256,
                                           std::int64_t       updated_at_ms) {
    if (!db_) return;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db_,
            "INSERT INTO userinfo_preserved_field"
            "(field_name,field_number,type_name,json_body,schema_sha256,updated_at_ms)"
            " VALUES(?1,?2,?3,?4,?5,?6)"
            " ON CONFLICT(field_name) DO UPDATE SET"
            " field_number=excluded.field_number, type_name=excluded.type_name,"
            " json_body=excluded.json_body, schema_sha256=excluded.schema_sha256,"
            " updated_at_ms=excluded.updated_at_ms",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st,  1, field_name.c_str(),   -1, SQLITE_TRANSIENT);
        sqlite3_bind_int(st,   2, field_number);
        if (!type_name.empty())
            sqlite3_bind_text(st, 3, type_name.c_str(), -1, SQLITE_TRANSIENT);
        else
            sqlite3_bind_null(st, 3);
        sqlite3_bind_text(st,  4, json_body.c_str(),    -1, SQLITE_TRANSIENT);
        sqlite3_bind_text(st,  5, schema_sha256.c_str(),-1, SQLITE_TRANSIENT);
        sqlite3_bind_int64(st, 6, updated_at_ms);
        sqlite3_step(st);
    }
    sqlite3_finalize(st);
}

// ---- 트랜잭션 ----

void AccountDatabase::begin()    { if (db_) sqlite3_exec(db_, "BEGIN",    nullptr, nullptr, nullptr); }
void AccountDatabase::commit()   { if (db_) sqlite3_exec(db_, "COMMIT",   nullptr, nullptr, nullptr); }
void AccountDatabase::rollback() { if (db_) sqlite3_exec(db_, "ROLLBACK", nullptr, nullptr, nullptr); }

bool AccountDatabase::backup_to(const std::string& dest_path) const {
    if (!db_) return false;
    sqlite3* dest = nullptr;
    if (sqlite3_open(dest_path.c_str(), &dest) != SQLITE_OK) return false;
    sqlite3_backup* bk = sqlite3_backup_init(dest, "main", db_, "main");
    if (!bk) { sqlite3_close(dest); return false; }
    sqlite3_backup_step(bk, -1);
    sqlite3_backup_finish(bk);
    const bool ok = sqlite3_errcode(dest) == SQLITE_OK;
    sqlite3_close(dest);
    return ok;
}

// ---- seed_from_fixture ----

bool AccountDatabase::seed_from_fixture(const std::string& profile,
                                         const std::string& data_dir) {
    if (!db_ || is_seeded()) return true;

    const std::string resp_dir = (profile == "newbie") ? "responses_newbie" : "responses";
    const std::string userinfo_text =
        read_file_acdb(data_dir + "/" + resp_dir + "/UserInfo.json");
    const std::string schema_text =
        read_file_acdb(data_dir + "/schema/UserInfo.json");

    if (userinfo_text.empty()) {
        log_line(0, "ACCTDB", "seed: UserInfo.json missing in " + resp_dir);
        return false;
    }

    if (!seed_from_json(userinfo_text, schema_text)) return false;
    meta_set("seed_source",  profile);
    meta_set("account_mode", profile);
    log_line(0, "ACCTDB", "seeded from " + resp_dir + "/UserInfo.json");
    return true;
}

// ---- seed_from_json ----

bool AccountDatabase::seed_from_json(const std::string& userinfo_json,
                                      const std::string& schema_text) {
    if (!db_) return false;

    json::Value userinfo;
    std::string perr;
    if (!json::parse(userinfo_json, userinfo, perr)) {
        log_line(0, "ACCTDB", "seed_from_json: parse error: " + perr);
        return false;
    }

    json::Value schema_root;
    if (!schema_text.empty()) json::parse(schema_text, schema_root, perr);

    const std::map<std::string, int> currency_enum =
        build_enum_map(schema_root, "E_CURRENCY");

    const std::int64_t now = unix_ms();

    begin();

    // ---- user_profile ----
    const json::Value* user_v = userinfo.find("user");
    if (user_v && user_v->is_object()) {
        const auto fstr = [&](const char* k) -> std::string {
            const json::Value* v = user_v->find(k);
            return (v && v->is_string()) ? v->str : "";
        };
        const auto fint = [&](const char* k) -> std::int64_t {
            const json::Value* v = user_v->find(k);
            return v ? json_as_int64(*v) : 0;
        };
        const std::string idx = fstr("idx");
        sqlite3_stmt* st = nullptr;
        if (sqlite3_prepare_v2(db_,
                "INSERT OR REPLACE INTO user_profile"
                "(singleton_id,idx,nick_name,last_login_dt,channel_no,"
                " tree_level,about,created_dt,is_first_cash_buy,review_flag,review_dt,"
                " first_title,second_title)"
                " VALUES(1,?1,?2,?3,?4,?5,?6,?7,?8,?9,?10,?11,?12)",
                -1, &st, nullptr) == SQLITE_OK) {
            sqlite3_bind_text(st,  1, idx.c_str(),           -1, SQLITE_TRANSIENT);
            sqlite3_bind_text(st,  2, fstr("nickName").c_str(), -1, SQLITE_TRANSIENT);
            sqlite3_bind_int64(st, 3, fint("lastLoginDt"));
            sqlite3_bind_int64(st, 4, fint("channelNo"));
            sqlite3_bind_int64(st, 5, fint("treeLevel"));
            sqlite3_bind_text(st,  6, fstr("about").c_str(),   -1, SQLITE_TRANSIENT);
            sqlite3_bind_int64(st, 7, fint("createdDt"));
            sqlite3_bind_int64(st, 8, fint("isFirstCashBuy"));
            sqlite3_bind_int64(st, 9, fint("reviewFlag"));
            sqlite3_bind_int64(st, 10, fint("reviewDt"));
            sqlite3_bind_int64(st, 11, fint("firstTitle"));
            sqlite3_bind_int64(st, 12, fint("secondTitle"));
            sqlite3_step(st);
        }
        sqlite3_finalize(st);

        const json::Value* thumb_v = user_v->find("thumbnail");
        if (thumb_v && thumb_v->is_object()) {
            const auto tint = [&](const char* k) -> std::int64_t {
                const json::Value* v = thumb_v->find(k);
                return v ? json_as_int64(*v) : 0;
            };
            const int use_custom = [&]() -> int {
                const json::Value* v = thumb_v->find("useCustom");
                return (v && v->is_bool() && v->b) ? 1 : 0;
            }();
            sqlite3_stmt* ts = nullptr;
            if (sqlite3_prepare_v2(db_,
                    "INSERT OR REPLACE INTO user_thumbnail"
                    "(singleton_id,thumbnail_frame,thumbnail_image,use_custom,"
                    " first_title,second_title)"
                    " VALUES(1,?1,?2,?3,?4,?5)",
                    -1, &ts, nullptr) == SQLITE_OK) {
                sqlite3_bind_int64(ts, 1, tint("thumbnailFrame"));
                sqlite3_bind_int64(ts, 2, tint("thumbnailImage"));
                sqlite3_bind_int(ts,   3, use_custom);
                sqlite3_bind_int64(ts, 4, tint("firstTitle"));
                sqlite3_bind_int64(ts, 5, tint("secondTitle"));
                sqlite3_step(ts);
            }
            sqlite3_finalize(ts);
        }

        meta_set("account_id", idx);
    }

    // ---- currency ----
    const json::Value* curr_v = userinfo.find("currency");
    if (curr_v && curr_v->is_object()) {
        const json::Value* all_v = curr_v->find("allCurrency");
        if (all_v && all_v->is_array()) {
            for (const auto& c : all_v->arr) {
                const json::Value* type_v = c.find("type");
                const json::Value* val_v  = c.find("value");
                if (!type_v) continue;
                int type_num = 0;
                if (type_v->is_number())
                    type_num = static_cast<int>(type_v->as_int64());
                else if (type_v->is_string()) {
                    auto it = currency_enum.find(type_v->str);
                    if (it != currency_enum.end()) type_num = it->second;
                }
                std::int64_t val = 0;
                if (val_v) val = json_as_int64(*val_v);
                if (type_num > 0) {
                    const std::string name =
                        type_v->is_string() ? type_v->str : std::to_string(type_num);
                    sqlite3_stmt* st = nullptr;
                    if (sqlite3_prepare_v2(db_,
                            "INSERT OR REPLACE INTO currency(type,enum_name,value)"
                            " VALUES(?1,?2,?3)",
                            -1, &st, nullptr) == SQLITE_OK) {
                        sqlite3_bind_int(st,   1, type_num);
                        sqlite3_bind_text(st,  2, name.c_str(), -1, SQLITE_TRANSIENT);
                        sqlite3_bind_int64(st, 3, val);
                        sqlite3_step(st);
                    }
                    sqlite3_finalize(st);
                }
            }
        }
    }

    // ---- hero ----
    const json::Value* heroes_v = userinfo.find("hero");
    if (heroes_v && heroes_v->is_array()) {
        for (const auto& h : heroes_v->arr) {
            const json::Value* idx_v   = h.find("idx");
            const json::Value* no_v    = h.find("heroNo");
            const json::Value* lvl_v   = h.find("level");
            const json::Value* grade_v = h.find("gradeSno");
            const json::Value* race_v  = h.find("raceSno");
            const json::Value* lock_v  = h.find("isLock");
            const json::Value* res_v   = h.find("isResonance");
            if (!idx_v || !no_v) continue;
            HeroRow r;
            r.idx          = idx_v->is_string() ? idx_v->str : "";
            r.hero_no      = no_v->is_number() ? static_cast<int>(no_v->as_int64()) : 0;
            r.level        = lvl_v   ? static_cast<int>(json_as_int64(*lvl_v))  : 1;
            r.grade_sno    = grade_v ? static_cast<int>(json_as_int64(*grade_v)) : 0;
            r.race_sno     = race_v  ? static_cast<int>(json_as_int64(*race_v))  : 0;
            r.is_lock      = lock_v  ? static_cast<int>(json_as_int64(*lock_v))  : 0;
            r.is_resonance = res_v   ? static_cast<int>(json_as_int64(*res_v))   : 0;
            if (r.idx.empty() || r.hero_no == 0) continue;
            upsert_hero(r);
            auto rep = hero_reputation_by_no(r.hero_no);
            HeroReputationRow rr = rep.value_or(HeroReputationRow{});
            rr.hero_no = r.hero_no;
            if (r.grade_sno > rr.max_grade_sno) rr.max_grade_sno = r.grade_sno;
            upsert_hero_reputation(rr);
        }
    }

    // ---- heroReputation (덮어쓰기) ----
    const json::Value* hrep_v = userinfo.find("heroReputation");
    if (hrep_v && hrep_v->is_array()) {
        for (const auto& h : hrep_v->arr) {
            const json::Value* no_v = h.find("heroNo");
            if (!no_v) continue;
            HeroReputationRow r;
            r.hero_no = static_cast<int>(json_as_int64(*no_v));
            const auto gi = [&](const char* k) -> std::int64_t {
                const json::Value* v = h.find(k);
                return v ? json_as_int64(*v) : 0;
            };
            r.reputation      = static_cast<int>(gi("reputation"));
            r.state           = static_cast<int>(gi("state"));
            r.stress          = static_cast<int>(gi("stress"));
            r.last_update_dt  = gi("lastUpdateDt");
            r.gift_dt         = gi("giftDt");
            r.costume_item_no = static_cast<int>(gi("costumeItemNo"));
            r.story_reward    = static_cast<int>(gi("storyReward"));
            r.max_grade_sno   = static_cast<int>(gi("maxGradeSno"));
            r.objet_uid       = gi("objetUid");
            r.max_level_dt    = gi("maxLevelDt");
            r.arbeit_exp      = static_cast<int>(gi("arbeitExp"));
            r.priority        = static_cast<int>(gi("priority"));
            r.rest_finish_dt  = gi("restFinishDt");
            const json::Value* obn_v = h.find("objetNo");
            r.objet_no = (obn_v && obn_v->is_string()) ? obn_v->str : "";
            upsert_hero_reputation(r);
        }
    }

    // ---- itemEtc ----
    const json::Value* ietc_v = userinfo.find("itemEtc");
    if (ietc_v && ietc_v->is_array()) {
        for (const auto& it : ietc_v->arr) {
            const json::Value* no_v  = it.find("itemNo");
            const json::Value* cnt_v = it.find("cnt");
            if (!no_v) continue;
            item_etc_set(static_cast<int>(json_as_int64(*no_v)),
                         cnt_v ? static_cast<int>(json_as_int64(*cnt_v)) : 0);
        }
    }

    // ---- itemEquip ----
    const json::Value* ieq_v = userinfo.find("itemEquip");
    if (ieq_v && ieq_v->is_array()) {
        for (const auto& it : ieq_v->arr) {
            const json::Value* id_v  = it.find("id");
            const json::Value* no_v  = it.find("itemNo");
            const json::Value* exp_v = it.find("exp");
            if (!id_v || !no_v) continue;
            ItemEquipRow r;
            r.id      = json_as_int64(*id_v);
            r.item_no = static_cast<int>(json_as_int64(*no_v));
            r.exp     = exp_v ? static_cast<int>(json_as_int64(*exp_v)) : 0;
            upsert_item_equip(r);
        }
    }

    // ---- heroEquip (hero_equip_slot) ----
    const json::Value* heq_v = userinfo.find("heroEquip");
    if (heq_v && heq_v->is_array()) {
        for (const auto& he : heq_v->arr) {
            const json::Value* hidx_v = he.find("heroIdx");
            const json::Value* slots_v = he.find("slot");
            if (!hidx_v || !hidx_v->is_string()) continue;
            if (!slots_v || !slots_v->is_array()) continue;
            for (const auto& slot_entry : slots_v->arr) {
                const json::Value* sno_v  = slot_entry.find("slot");
                const json::Value* ieid_v = slot_entry.find("itemEquipId");
                if (!sno_v || !ieid_v) continue;
                HeroEquipSlotRow r;
                r.hero_idx      = hidx_v->str;
                r.slot          = static_cast<int>(json_as_int64(*sno_v));
                r.item_equip_id = json_as_int64(*ieid_v);
                upsert_hero_equip_slot(r);
            }
        }
    }

    // ---- stage ----
    const json::Value* stage_v = userinfo.find("stage");
    if (stage_v && stage_v->is_array()) {
        for (const auto& s : stage_v->arr) {
            const json::Value* no_v  = s.find("stageNo");
            const json::Value* typ_v = s.find("stageType");
            const json::Value* dt_v  = s.find("updateDt");
            if (!no_v) continue;
            upsert_stage(static_cast<int>(json_as_int64(*no_v)),
                         typ_v ? static_cast<int>(json_as_int64(*typ_v)) : 0,
                         dt_v  ? json_as_int64(*dt_v) : now);
        }
    }

    // ---- story ----
    const json::Value* story_v = userinfo.find("story");
    if (story_v && story_v->is_array()) {
        for (const auto& s : story_v->arr) {
            const json::Value* no_v = s.find("storyNo");
            const json::Value* dt_v = s.find("updateDt");
            if (!no_v) continue;
            upsert_story(static_cast<int>(json_as_int64(*no_v)),
                         dt_v ? json_as_int64(*dt_v) : now);
        }
    }

    // ---- tutorial ----
    const json::Value* tut_v = userinfo.find("tutorial");
    if (tut_v && tut_v->is_array()) {
        for (const auto& t : tut_v->arr) {
            const json::Value* no_v = t.find("tutorialNo");
            if (!no_v) continue;
            upsert_tutorial(static_cast<int>(json_as_int64(*no_v)));
        }
    }

    // ---- formation ----
    const json::Value* form_v = userinfo.find("formation");
    if (form_v && form_v->is_array()) {
        for (const auto& f : form_v->arr) {
            const json::Value* no_v   = f.find("no");
            const json::Value* kind_v = f.find("kind");
            if (!no_v || !kind_v) continue;
            FormationRow fr;
            fr.no             = static_cast<int>(json_as_int64(*no_v));
            fr.kind           = static_cast<int>(json_as_int64(*kind_v));
            const json::Value* ftyp_v  = f.find("formationType");
            const json::Value* fname_v = f.find("formationName");
            fr.formation_type = ftyp_v  ? static_cast<int>(json_as_int64(*ftyp_v)) : 0;
            fr.formation_name = (fname_v && fname_v->is_string()) ? fname_v->str : "";
            upsert_formation(fr);
            delete_formation_heroes(fr.no, fr.kind);
            const json::Value* heroes_arr = f.find("hero");
            if (heroes_arr && heroes_arr->is_array()) {
                int pos = 0;
                for (const auto& hv : heroes_arr->arr) {
                    std::string hidx;
                    if (hv.is_string()) hidx = hv.str;
                    else {
                        const json::Value* hi = hv.find("idx");
                        if (hi && hi->is_string()) hidx = hi->str;
                    }
                    if (!hidx.empty()) {
                        FormationHeroRow fhr;
                        fhr.no       = fr.no;
                        fhr.kind     = fr.kind;
                        fhr.position = pos;
                        fhr.hero_idx = hidx;
                        upsert_formation_hero(fhr);
                    }
                    ++pos;
                }
            }
        }
    }

    // ---- spiritTree ----
    const json::Value* st_v = userinfo.find("spiritTree");
    if (st_v && st_v->is_array()) {
        for (const auto& s : st_v->arr) {
            const json::Value* sno_v  = s.find("slotNo");
            const json::Value* hidx_v = s.find("heroIdx");
            const json::Value* edt_v  = s.find("enableDt");
            if (!sno_v) continue;
            SpiritTreeRow r;
            r.slot_no   = static_cast<int>(json_as_int64(*sno_v));
            r.hero_idx  = (hidx_v && hidx_v->is_string()) ? hidx_v->str : "";
            r.enable_dt = edt_v ? json_as_int64(*edt_v) : 0;
            upsert_spirit_tree(r);
        }
    }

    // ---- autoHunt ----
    const json::Value* ah_v = userinfo.find("autoHunt");
    if (ah_v && ah_v->is_object()) {
        AutoHuntRow r;
        const json::Value* sno_v = ah_v->find("stageNo");
        const json::Value* ldt_v = ah_v->find("labDt");
        const json::Value* rdt_v = ah_v->find("receiveDt");
        r.stage_no  = sno_v ? static_cast<int>(json_as_int64(*sno_v)) : 0;
        r.lab_dt    = ldt_v ? json_as_int64(*ldt_v) : 0;
        r.receive_dt = rdt_v ? json_as_int64(*rdt_v) : (now - 7200000LL);
        upsert_auto_hunt(r);
    } else {
        AutoHuntRow r;
        r.receive_dt = now - 7200000LL;
        upsert_auto_hunt(r);
    }

    // ---- 보존 필드 (정규화 미완성 필드 raw JSON 저장) ----
    static const struct { const char* name; int number; const char* type_name; } kPreserved[] = {
        {"zodiac",                 6,  "sZodiac"},
        {"building",              11,  "sBuilding"},
        {"dailyContent",          12,  "sDailyContent"},
        {"talk",                  13,  "sTalk"},
        {"guild",                 19,  "sGuild"},
        {"guildMember",           20,  "sGuildMember"},
        {"guildJoinRequest",      21,  "sGuildJoinRequest"},
        {"doubleGate",            22,  "sDoubleGate"},
        {"secureSeed",            23,  "int64"},
        {"lobbyBackground",       24,  "sLobbyBackground"},
        {"dungeonList",           25,  "sDungeonList"},
        {"bgm",                   26,  "sBGM"},
        {"buff",                  27,  "sContentBuff"},
        {"chatKey",               28,  "string"},
        {"collectionNo",          29,  "int32"},
        {"dungeonFirstRewardList",30,  "sDungeonFirstReward"},
        {"chatServerUrl",         31,  "string"},
        {"sdHeroNo",              32,  "int32"},
        {"speed",                 33,  "int32"},
        {"battleAutoActive",      34,  "int32"},
        {"cashDailyN",            36,  "sCashDailyN"},
        {"battleAutoUltimate",    37,  "int32"},
        {"scalingLevel",          38,  "int32"},
        {"lastClearDungeonLevel", 39,  "int32"},
        {"townVisitHero",         40,  "sTownVisitHero"},
        {"monthlyHeroResetFlag",  41,  "int32"},
        {"tutorialStory",         42,  "sTutorialStory"},
        {"challengeMode",         43,  "sChallengeMode"},
        {"arkCore",               44,  "sArkCore"},
        {"actionActive",          45,  "int32"},
        {"actionUltimate",        46,  "int32"},
        {"contentLimitNo",        47,  "int32"},
        {"arkOverClockLevel",     48,  "int32"},
        {"arkOperator",           49,  "int32"},
        {"doubleGateDailyContent",50,  "DoubleGateDailyContent"},
        {"heroOption",            51,  "sHeroOption"},
        {"arbeitOption",          52,  "sArbeitOption"},
    };
    for (const auto& p : kPreserved) {
        const json::Value* fv = userinfo.find(p.name);
        if (!fv) continue;
        set_preserved_field(p.name, p.number, p.type_name, fv->dump(), "", now);
    }

    commit();

    meta_set("seed_source",     "imported_userinfo");
    meta_set("schema_endpoint", "/UserInfo");
    meta_set("created_at_ms",   std::to_string(now));
    meta_set("updated_at_ms",   std::to_string(now));
    meta_set("seeded", "1");

    log_line(0, "ACCTDB", "seeded from JSON");
    return true;
}

} // namespace eversoul
