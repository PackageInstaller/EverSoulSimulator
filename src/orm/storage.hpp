// storage.hpp - sqlite_orm-backed persistence entry points.
#pragma once

#include <string>
#include <vector>
#include <optional>

#include "orm/schema.hpp"

namespace eversoul::orm {

// Minimal compile/runtime check used while the ORM layer is being wired in.
[[nodiscard]] bool smoke_test();

// Opens the account database, synchronizes schema, and seeds it from
// responses/UserInfo.json when the database is new.
[[nodiscard]] bool ensure_ready(const std::string& data_dir = ".",
                                const std::string& db_path_override = "");
[[nodiscard]] bool reseed_from_profile(const std::string& data_dir,
                                       const std::string& responses_dir);

[[nodiscard]] std::string opened_path();
[[nodiscard]] int row_count(const std::string& table);

[[nodiscard]] std::string kv_get(const std::string& key, const std::string& fallback = "");
void kv_set(const std::string& key, const std::string& value);

[[nodiscard]] std::vector<Currency> currencies();
[[nodiscard]] std::vector<Hero> heroes();
[[nodiscard]] std::vector<HeroRep> hero_reps();
[[nodiscard]] std::vector<ItemEtc> item_etcs();
[[nodiscard]] std::vector<ItemEquip> item_equips();
[[nodiscard]] std::vector<HeroEquipSlot> hero_equip_slots();
[[nodiscard]] std::vector<Formation> formations();
[[nodiscard]] std::vector<SpiritTree> spirit_trees();
[[nodiscard]] std::vector<HeroOption> hero_options();
[[nodiscard]] std::vector<ChallengeMode> challenge_modes();
[[nodiscard]] std::vector<Stage> stages();
[[nodiscard]] std::vector<Story> stories();
[[nodiscard]] std::vector<Tutorial> tutorials();
[[nodiscard]] std::vector<Dungeon> dungeons();

[[nodiscard]] std::optional<Hero> hero_by_idx(const std::string& idx);
[[nodiscard]] std::optional<HeroRep> hero_rep_by_no(int hero_no);
[[nodiscard]] std::optional<ItemEquip> item_equip_by_id(std::int64_t id);
[[nodiscard]] std::optional<HeroEquipSlot> hero_equip_slot(const std::string& hero_idx, int slot);
[[nodiscard]] int max_stage_no();
[[nodiscard]] int max_tutorial_no();
[[nodiscard]] int item_etc_count(int item_no);
[[nodiscard]] bool has_dungeon(int dungeon_no);

// Account management — multi-account support backed by the `accounts` table.
// active_account_id KV tracks the currently selected account.
[[nodiscard]] std::vector<Account> accounts();
[[nodiscard]] std::optional<Account> account_by_id(const std::string& id);
[[nodiscard]] std::optional<Account> active_account();
[[nodiscard]] std::string create_account(const std::string& nickname,
                                         const std::string& idp_code,
                                         const std::string& idp_id,
                                         const std::string& data_dir);
bool select_account(const std::string& id, const std::string& data_dir);
bool delete_account(const std::string& id);

// Backfill story/dungeon rows when tutorial progress implies they should exist.
void heal_progress();

void save_tutorial(int tutorial_no);
void save_stage(int stage_no, int stage_type, std::int64_t update_dt);
void save_story(int story_no, std::int64_t update_dt);
void save_dungeon(int dungeon_no, std::int64_t update_dt, int is_first_clear);
void save_formation(int no, int kind, const std::vector<std::string>& heroidx,
                    int formation_type, const std::string& name);
void save_hero(const Hero& hero);
void save_hero_rep(const HeroRep& rep);
void save_item_equip(const ItemEquip& item);
void save_hero_equip_slot(const std::string& hero_idx, int slot, std::int64_t item_equip_id);
void clear_hero_equip_slot(const std::string& hero_idx, int slot);
void save_spirit_tree(int slot_no, const std::string& hero_idx, std::int64_t enable_dt);
void set_hero_level(const std::string& idx, int level);
void add_item_etc(int item_no, int delta);
void set_item_etc(int item_no, int count);
void add_currency(int type, std::int64_t delta);

}  // namespace eversoul::orm
