// storage.cpp - orm::* 공개 API — AccountDatabase 위임 레이어.
#include "orm/storage.hpp"

#include <algorithm>
#include <cstdint>
#include <optional>
#include <string>
#include <vector>

#include "account_database.hpp"
#include "account_db_manager.hpp"
#include "account_registry.hpp"
#include "common.hpp"
#include "log.hpp"
#include "orm/schema.hpp"
#include "sqlite3.h"
#include "sqlite_orm.h"
#include "util.hpp"
#include "ws_session.hpp"

#include <filesystem>

namespace eversoul::orm {
namespace {

auto make_account_storage(const std::string& path) {
    using namespace sqlite_orm;
    return make_storage(
        path,
        make_table("kv",
                   make_column("k", &Kv::k, primary_key()),
                   make_column("v", &Kv::v)),
        make_table("hero",
                   make_column("idx", &Hero::idx, primary_key()),
                   make_column("heroNo", &Hero::heroNo),
                   make_column("level", &Hero::level),
                   make_column("isResonance", &Hero::isResonance),
                   make_column("gradeSno", &Hero::gradeSno),
                   make_column("raceSno", &Hero::raceSno),
                   make_column("isLock", &Hero::isLock)),
        make_table("hero_rep",
                   make_column("heroNo", &HeroRep::heroNo, primary_key()),
                   make_column("reputation", &HeroRep::reputation),
                   make_column("state", &HeroRep::state),
                   make_column("stress", &HeroRep::stress),
                   make_column("lastUpdateDt", &HeroRep::lastUpdateDt),
                   make_column("giftDt", &HeroRep::giftDt),
                   make_column("costumeItemNo", &HeroRep::costumeItemNo),
                   make_column("storyReward", &HeroRep::storyReward),
                   make_column("maxGradeSno", &HeroRep::maxGradeSno),
                   make_column("objetUid", &HeroRep::objetUid),
                   make_column("maxLevelDt", &HeroRep::maxLevelDt),
                   make_column("arbeitExp", &HeroRep::arbeitExp),
                   make_column("priority", &HeroRep::priority),
                   make_column("restFinishDt", &HeroRep::restFinishDt),
                   make_column("objetNo", &HeroRep::objetNo)),
        make_table("currency",
                   make_column("type", &Currency::type, primary_key()),
                   make_column("value", &Currency::value)),
        make_table("item_etc",
                   make_column("itemNo", &ItemEtc::itemNo, primary_key()),
                   make_column("cnt", &ItemEtc::cnt)),
        make_table("item_equip",
                   make_column("id", &ItemEquip::id, primary_key()),
                   make_column("itemNo", &ItemEquip::itemNo),
                   make_column("exp", &ItemEquip::exp)),
        make_table("hero_equip_slot",
                   make_column("heroIdx", &HeroEquipSlot::heroIdx),
                   make_column("slot", &HeroEquipSlot::slot),
                   make_column("itemEquipId", &HeroEquipSlot::itemEquipId),
                   primary_key(&HeroEquipSlot::heroIdx, &HeroEquipSlot::slot)),
        make_table("formation",
                   make_column("no", &Formation::no),
                   make_column("kind", &Formation::kind),
                   make_column("heroidx", &Formation::heroidx),
                   make_column("formationType", &Formation::formationType),
                   make_column("formationName", &Formation::formationName),
                   primary_key(&Formation::no, &Formation::kind)),
        make_table("spirit_tree",
                   make_column("slotNo", &SpiritTree::slotNo, primary_key()),
                   make_column("heroIdx", &SpiritTree::heroIdx),
                   make_column("enableDt", &SpiritTree::enableDt)),
        make_table("hero_option",
                   make_column("id", &HeroOption::id, primary_key()),
                   make_column("heroNo", &HeroOption::heroNo),
                   make_column("groupNo", &HeroOption::groupNo),
                   make_column("optionSlot", &HeroOption::optionSlot),
                   make_column("optionNo", &HeroOption::optionNo),
                   make_column("optionValue", &HeroOption::optionValue),
                   make_column("optionType", &HeroOption::optionType),
                   make_column("optionLock", &HeroOption::optionLock)),
        make_table("challenge_mode",
                   make_column("clearStageNo", &ChallengeMode::clearStageNo, primary_key()),
                   make_column("clearTaskNo", &ChallengeMode::clearTaskNo)),
        make_table("stage",
                   make_column("stageNo", &Stage::stageNo, primary_key()),
                   make_column("stageType", &Stage::stageType),
                   make_column("updateDt", &Stage::updateDt)),
        make_table("story",
                   make_column("storyNo", &Story::storyNo, primary_key()),
                   make_column("updateDt", &Story::updateDt)),
        make_table("tutorial",
                   make_column("tutorialNo", &Tutorial::tutorialNo, primary_key())),
        make_table("dungeon",
                   make_column("dungeonNo", &Dungeon::dungeonNo, primary_key()),
                   make_column("updateDt", &Dungeon::updateDt),
                   make_column("isFirstClear", &Dungeon::isFirstClear)));
}

int raw_count(sqlite3* db, const char* table) {
    std::string sql = std::string("SELECT COUNT(*) FROM ") + table;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db, sql.c_str(), -1, &st, nullptr) != SQLITE_OK) return 0;
    int n = 0;
    if (sqlite3_step(st) == SQLITE_ROW) n = sqlite3_column_int(st, 0);
    sqlite3_finalize(st);
    return n;
}

std::string join_csv(const std::vector<std::string>& values) {
    std::string out;
    for (std::size_t i = 0; i < values.size(); ++i) {
        if (i) out.push_back(',');
        out += values[i];
    }
    return out;
}

Hero to_orm_hero(const HeroRow& r) {
    return Hero{r.idx, r.hero_no, r.level, r.is_resonance,
                r.grade_sno, r.race_sno, r.is_lock};
}

HeroRow to_acdb_hero(const Hero& h) {
    return HeroRow{h.idx, h.heroNo, h.level, h.isResonance,
                   h.gradeSno, h.raceSno, h.isLock};
}

HeroRep to_orm_herorep(const HeroReputationRow& r) {
    return HeroRep{r.hero_no, r.reputation, r.state, r.stress,
                   r.last_update_dt, r.gift_dt, r.costume_item_no,
                   r.story_reward, r.max_grade_sno,
                   static_cast<int>(r.objet_uid), r.max_level_dt,
                   r.arbeit_exp, r.priority, r.rest_finish_dt, r.objet_no};
}

HeroReputationRow to_acdb_herorep(const HeroRep& r) {
    return HeroReputationRow{r.heroNo, r.reputation, r.state, r.stress,
                              r.lastUpdateDt, r.giftDt, r.costumeItemNo,
                              r.storyReward, r.maxGradeSno,
                              static_cast<std::int64_t>(r.objetUid),
                              r.maxLevelDt, r.arbeitExp, r.priority,
                              r.restFinishDt, r.objetNo};
}

ItemEquip to_orm_itemequip(const ItemEquipRow& r) {
    return ItemEquip{r.id, r.item_no, r.exp};
}

ItemEquipRow to_acdb_itemequip(const ItemEquip& i) {
    return ItemEquipRow{i.id, i.itemNo, i.exp};
}

}  // namespace

bool smoke_test() {
    auto storage = make_account_storage(":memory:");
    storage.sync_schema();
    storage.replace(Kv{"probe", "ok"});
    auto row = storage.get_optional<Kv>("probe");
    return row.has_value() && row->v == "ok";
}

bool ensure_ready(const std::string& data_dir, const std::string& db_path_override) {
    const bool use_override = !db_path_override.empty();
    auto& mgr = account_db_manager();
    if (use_override)
        mgr.close_active();
    else if (mgr.active_db())
        return true;

    auto& reg = account_registry();
    if (!use_override && !reg.list_active().empty()) {
        const bool ok = mgr.reload_active();
        const std::string aid = reg.active_account_id();
        if (!aid.empty() && !reg.find_session(aid)) {
            AccountSessionRow sess = ws_session_default_row();
            sess.account_id = aid;
            reg.upsert_session(sess);
        }
        return ok;
    }

    const std::int64_t now = unix_ms();
    const std::string account_id = use_override ? "acct-override" : "acct-default";
    const std::string abs_dir = [&]() -> std::string {
        if (!use_override)
            return (std::filesystem::path(config().state_dir) / "accounts" / account_id).string();
        std::filesystem::path override_path(db_path_override);
        if (override_path.extension() == ".sqlite3" || override_path.extension() == ".db")
            return override_path.parent_path().empty() ? "." : override_path.parent_path().string();
        return override_path.string();
    }();

    auto adb = std::make_unique<AccountDatabase>(abs_dir);
    if (!adb->open()) {
        log_line(0, "ORM", "bootstrap: db open failed: " + abs_dir);
        return false;
    }
    if (!adb->seed_from_fixture("full", data_dir)) {
        log_line(0, "ORM", "bootstrap: seed_from_fixture failed");
    }

    AccountEntry e;
    e.account_id         = account_id;
    e.display_name       = "offline";
    e.player_id          = kDefaultPlayerId;
    e.idp_code           = "zd3";
    e.profile_source     = "responses";
    e.state_db_relpath   = !use_override
        ? "accounts/" + account_id + "/state.sqlite3"
        : (std::filesystem::path(abs_dir) / "state.sqlite3").string();
    e.session_db_relpath = !use_override
        ? "accounts/" + account_id + "/session.sqlite3"
        : (std::filesystem::path(abs_dir) / "session.sqlite3").string();
    e.created_at_ms      = now;
    e.updated_at_ms      = now;

    if (!reg.insert(e)) {
        if (!use_override || !reg.update(e)) {
            log_line(0, "ORM", "bootstrap: registry insert failed");
            return false;
        }
    }

    {
        AccountSessionRow sess = ws_session_default_row();
        sess.account_id = account_id;
        reg.upsert_session(sess);
    }

    reg.set_active(account_id, now);
    adb.reset();
    log_line(0, "ORM", "bootstrap: created default account " + abs_dir);
    return mgr.switch_to(account_id);
}

bool reseed_from_profile(const std::string& data_dir, const std::string& responses_dir) {
    auto* db = account_db_manager().active_db();
    if (!db) return false;
    return db->seed_from_fixture(responses_dir, data_dir);
}

std::string opened_path() {
    auto* db = account_db_manager().active_db();
    if (!db) return {};
    return db->account_dir();
}

int row_count(const std::string& table) {
    auto* db = account_db_manager().active_db();
    if (!db) return 0;
    sqlite3* raw = db->raw_db();
    if (!raw) return 0;
    const std::string& tbl = (table == "hero_rep") ? "hero_reputation" :
                              (table == "kv")        ? "account_meta"    : table;
    return raw_count(raw, tbl.c_str());
}

std::string kv_get(const std::string& key, const std::string& fallback) {
    auto* db = account_db_manager().active_db();
    if (!db) return fallback;
    return db->meta_get(key, fallback);
}

void kv_set(const std::string& key, const std::string& value) {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    db->meta_set(key, value);
}

std::vector<Currency> currencies() {
    auto* db = account_db_manager().active_db();
    if (!db) return {};
    std::vector<Currency> out;
    for (const auto& r : db->currencies())
        out.push_back(Currency{r.type, r.value});
    return out;
}

std::vector<Hero> heroes() {
    auto* db = account_db_manager().active_db();
    if (!db) return {};
    std::vector<Hero> out;
    for (const auto& r : db->heroes())
        out.push_back(to_orm_hero(r));
    return out;
}

std::vector<HeroRep> hero_reps() {
    auto* db = account_db_manager().active_db();
    if (!db) return {};
    std::vector<HeroRep> out;
    for (const auto& r : db->hero_reputations())
        out.push_back(to_orm_herorep(r));
    return out;
}

std::vector<ItemEtc> item_etcs() {
    auto* db = account_db_manager().active_db();
    if (!db) return {};
    sqlite3* raw = db->raw_db();
    if (!raw) return {};
    std::vector<ItemEtc> out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(raw, "SELECT item_no, cnt FROM item_etc", -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW)
            out.push_back(ItemEtc{sqlite3_column_int(st, 0), sqlite3_column_int(st, 1)});
        sqlite3_finalize(st);
    }
    return out;
}

std::vector<ItemEquip> item_equips() {
    auto* db = account_db_manager().active_db();
    if (!db) return {};
    std::vector<ItemEquip> out;
    for (const auto& r : db->item_equips())
        out.push_back(to_orm_itemequip(r));
    return out;
}

std::vector<HeroEquipSlot> hero_equip_slots() {
    auto* db = account_db_manager().active_db();
    if (!db) return {};
    sqlite3* raw = db->raw_db();
    if (!raw) return {};
    std::vector<HeroEquipSlot> out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(raw,
            "SELECT hero_idx, slot, item_equip_id FROM hero_equip_slot",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW) {
            const char* idx = reinterpret_cast<const char*>(sqlite3_column_text(st, 0));
            out.push_back(HeroEquipSlot{idx ? idx : "",
                                        sqlite3_column_int(st, 1),
                                        sqlite3_column_int64(st, 2)});
        }
        sqlite3_finalize(st);
    }
    return out;
}

std::vector<Formation> formations() {
    auto* db = account_db_manager().active_db();
    if (!db) return {};
    std::vector<Formation> out;
    for (const auto& f : db->formations()) {
        std::vector<std::string> idxs;
        for (const auto& h : db->formation_heroes(f.no, f.kind))
            idxs.push_back(h.hero_idx);
        out.push_back(Formation{f.no, f.kind, join_csv(idxs), f.formation_type, f.formation_name});
    }
    return out;
}

std::vector<SpiritTree> spirit_trees() {
    auto* db = account_db_manager().active_db();
    if (!db) return {};
    std::vector<SpiritTree> out;
    for (const auto& r : db->spirit_trees())
        out.push_back(SpiritTree{r.slot_no, r.hero_idx, r.enable_dt});
    return out;
}

std::vector<HeroOption> hero_options() {
    auto* db = account_db_manager().active_db();
    if (!db) return {};
    sqlite3* raw = db->raw_db();
    if (!raw) return {};
    std::vector<HeroOption> out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(raw,
            "SELECT rowid, hero_no, group_no, option_slot, option_no,"
            " option_value, option_type, option_lock FROM hero_option",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW) {
            out.push_back(HeroOption{static_cast<int>(sqlite3_column_int64(st, 0)),
                                     sqlite3_column_int(st, 1),
                                     sqlite3_column_int(st, 2),
                                     sqlite3_column_int(st, 3),
                                     sqlite3_column_int(st, 4),
                                     sqlite3_column_int(st, 5),
                                     sqlite3_column_int(st, 6),
                                     sqlite3_column_int(st, 7)});
        }
        sqlite3_finalize(st);
    }
    return out;
}

std::vector<ChallengeMode> challenge_modes() {
    auto* db = account_db_manager().active_db();
    if (!db) return {};
    sqlite3* raw = db->raw_db();
    if (!raw) return {};
    std::vector<ChallengeMode> out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(raw,
            "SELECT clear_stage_no FROM challenge_mode",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW)
            out.push_back(ChallengeMode{sqlite3_column_int(st, 0), ""});
        sqlite3_finalize(st);
    }
    for (auto& cm : out) {
        sqlite3_stmt* ts = nullptr;
        if (sqlite3_prepare_v2(raw,
                "SELECT clear_task_no FROM challenge_mode_task"
                " WHERE clear_stage_no=? ORDER BY task_order",
                -1, &ts, nullptr) == SQLITE_OK) {
            sqlite3_bind_int(ts, 1, cm.clearStageNo);
            std::string tasks;
            while (sqlite3_step(ts) == SQLITE_ROW) {
                if (!tasks.empty()) tasks.push_back(',');
                tasks += std::to_string(sqlite3_column_int(ts, 0));
            }
            cm.clearTaskNo = std::move(tasks);
            sqlite3_finalize(ts);
        }
    }
    return out;
}

std::vector<Stage> stages() {
    auto* db = account_db_manager().active_db();
    if (!db) return {};
    sqlite3* raw = db->raw_db();
    if (!raw) return {};
    std::vector<Stage> out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(raw,
            "SELECT stage_no, stage_type, update_dt FROM stage",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW)
            out.push_back(Stage{sqlite3_column_int(st, 0),
                                sqlite3_column_int(st, 1),
                                sqlite3_column_int64(st, 2)});
        sqlite3_finalize(st);
    }
    return out;
}

std::vector<Story> stories() {
    auto* db = account_db_manager().active_db();
    if (!db) return {};
    sqlite3* raw = db->raw_db();
    if (!raw) return {};
    std::vector<Story> out;
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(raw,
            "SELECT story_no, update_dt FROM story",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW)
            out.push_back(Story{sqlite3_column_int(st, 0), sqlite3_column_int64(st, 1)});
        sqlite3_finalize(st);
    }
    return out;
}

std::vector<Tutorial> tutorials() {
    auto* db = account_db_manager().active_db();
    if (!db) return {};
    std::vector<Tutorial> out;
    for (int no : db->tutorials())
        out.push_back(Tutorial{no});
    return out;
}

std::vector<Dungeon> dungeons() {
    auto* db = account_db_manager().active_db();
    if (!db) return {};
    std::vector<Dungeon> out;
    for (const auto& r : db->dungeons())
        out.push_back(Dungeon{r.dungeon_no, r.update_dt, r.is_first_clear});
    return out;
}

std::optional<Hero> hero_by_idx(const std::string& idx) {
    auto* db = account_db_manager().active_db();
    if (!db) return std::nullopt;
    auto r = db->hero_by_idx(idx);
    if (!r) return std::nullopt;
    return to_orm_hero(*r);
}

std::optional<HeroRep> hero_rep_by_no(int hero_no) {
    auto* db = account_db_manager().active_db();
    if (!db) return std::nullopt;
    auto r = db->hero_reputation_by_no(hero_no);
    if (!r) return std::nullopt;
    return to_orm_herorep(*r);
}

std::optional<ItemEquip> item_equip_by_id(std::int64_t id) {
    auto* db = account_db_manager().active_db();
    if (!db) return std::nullopt;
    auto r = db->item_equip_by_id(id);
    if (!r) return std::nullopt;
    return to_orm_itemequip(*r);
}

std::optional<HeroEquipSlot> hero_equip_slot(const std::string& hero_idx, int slot) {
    auto* db = account_db_manager().active_db();
    if (!db) return std::nullopt;
    sqlite3* raw = db->raw_db();
    if (!raw) return std::nullopt;
    sqlite3_stmt* st = nullptr;
    std::optional<HeroEquipSlot> result;
    if (sqlite3_prepare_v2(raw,
            "SELECT hero_idx, slot, item_equip_id FROM hero_equip_slot"
            " WHERE hero_idx=? AND slot=?",
            -1, &st, nullptr) == SQLITE_OK) {
        sqlite3_bind_text(st, 1, hero_idx.c_str(), -1, SQLITE_STATIC);
        sqlite3_bind_int(st, 2, slot);
        if (sqlite3_step(st) == SQLITE_ROW) {
            const char* idx = reinterpret_cast<const char*>(sqlite3_column_text(st, 0));
            result = HeroEquipSlot{idx ? idx : "",
                                   sqlite3_column_int(st, 1),
                                   sqlite3_column_int64(st, 2)};
        }
        sqlite3_finalize(st);
    }
    return result;
}

int max_stage_no() {
    auto* db = account_db_manager().active_db();
    if (!db) return 0;
    return db->max_stage_no();
}

int max_tutorial_no() {
    auto* db = account_db_manager().active_db();
    if (!db) return 0;
    return db->max_tutorial_no();
}

void heal_progress() {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    int max_stage = db->max_stage_no();
    int max_tutorial = db->max_tutorial_no();
    const std::int64_t now = unix_ms();
    const auto story_list = db->stories();
    auto has_story = [&](int no) {
        return std::find(story_list.begin(), story_list.end(), no) != story_list.end();
    };
    if (max_stage >= 5 || max_tutorial >= 4800) {
        if (!has_story(10001)) {
            db->upsert_story(10001, now);
            log_line(0, "ORM", "heal: story 10001");
        }
        if (!db->dungeon_by_no(10001)) {
            eversoul::DungeonRow dr;
            dr.dungeon_no     = 10001;
            dr.update_dt      = now;
            dr.is_first_clear = 1;
            db->upsert_dungeon(dr);
            log_line(0, "ORM", "heal: dungeon 10001 cleared");
        }
    }
    if (max_tutorial >= 4700 && db->dungeon_by_no(10001) && max_tutorial < 4800) {
        db->upsert_tutorial(4800);
        log_line(0, "ORM", "heal: tutorial 4800 after dungeon 10001");
    }
    if (max_tutorial >= 4900) {
        if (!has_story(11)) {
            db->upsert_story(11, now);
            log_line(0, "ORM", "heal: story 11");
        }
    }
    if (max_stage >= 5) {
        if (db->item_etc_count(3201) <= 0) {
            db->item_etc_set(3201, 60);
            log_line(0, "ORM", "heal: item_etc 3201 x60 for hero upgrade");
        }
    }
}

int item_etc_count(int item_no) {
    auto* db = account_db_manager().active_db();
    if (!db) return 0;
    return db->item_etc_count(item_no);
}

bool has_dungeon(int dungeon_no) {
    auto* db = account_db_manager().active_db();
    if (!db) return false;
    return db->dungeon_by_no(dungeon_no).has_value();
}

void save_tutorial(int tutorial_no) {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    db->upsert_tutorial(tutorial_no);
}

void save_stage(int stage_no, int stage_type, std::int64_t update_dt) {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    db->upsert_stage(stage_no, stage_type, update_dt);
}

void save_story(int story_no, std::int64_t update_dt) {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    db->upsert_story(story_no, update_dt);
}

void save_dungeon(int dungeon_no, std::int64_t update_dt, int is_first_clear) {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    eversoul::DungeonRow row;
    row.dungeon_no     = dungeon_no;
    row.update_dt      = update_dt;
    row.is_first_clear = is_first_clear;
    db->upsert_dungeon(row);
}

void save_formation(int no, int kind, const std::vector<std::string>& heroidx,
                    int formation_type, const std::string& name) {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    eversoul::FormationRow fr;
    fr.no             = no;
    fr.kind           = kind;
    fr.formation_type = formation_type;
    fr.formation_name = name;
    db->upsert_formation(fr);
    db->delete_formation_heroes(no, kind);
    for (int i = 0; i < static_cast<int>(heroidx.size()); ++i) {
        eversoul::FormationHeroRow fhr;
        fhr.no       = no;
        fhr.kind     = kind;
        fhr.position = i;
        fhr.hero_idx = heroidx[i];
        db->upsert_formation_hero(fhr);
    }
}

void save_hero(const Hero& hero) {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    db->upsert_hero(to_acdb_hero(hero));
}

void save_hero_rep(const HeroRep& rep) {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    db->upsert_hero_reputation(to_acdb_herorep(rep));
}

void save_item_equip(const ItemEquip& item) {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    db->upsert_item_equip(to_acdb_itemequip(item));
}

void save_hero_equip_slot(const std::string& hero_idx, int slot, std::int64_t item_equip_id) {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    eversoul::HeroEquipSlotRow row;
    row.hero_idx      = hero_idx;
    row.slot          = slot;
    row.item_equip_id = item_equip_id;
    db->upsert_hero_equip_slot(row);
}

void clear_hero_equip_slot(const std::string& hero_idx, int slot) {
    save_hero_equip_slot(hero_idx, slot, 0);
}

void save_spirit_tree(int slot_no, const std::string& hero_idx, std::int64_t enable_dt) {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    eversoul::AccountDatabase::SpiritTreeRow row{slot_no, hero_idx, enable_dt};
    db->upsert_spirit_tree(row);
}

void set_hero_level(const std::string& idx, int level) {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    auto r = db->hero_by_idx(idx);
    if (!r) return;
    r->level = level;
    db->upsert_hero(*r);
}

void add_item_etc(int item_no, int delta) {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    db->item_etc_add(item_no, delta);
}

void set_item_etc(int item_no, int count) {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    db->item_etc_set(item_no, count);
}

void add_currency(int type, std::int64_t delta) {
    auto* db = account_db_manager().active_db();
    if (!db) return;
    db->currency_add(type, delta);
}

}  // namespace eversoul::orm
