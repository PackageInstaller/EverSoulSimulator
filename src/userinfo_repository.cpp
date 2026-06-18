// userinfo_repository.cpp — AccountDatabase 정규화 테이블 + preserved_field → UserInfo JSON/payload.
#include "userinfo_repository.hpp"

#include <algorithm>
#include <filesystem>
#include <fstream>
#include <map>
#include <sstream>
#include <string>

#include "account_database.hpp"
#include "sqlite3.h"
#include "json.hpp"
#include "json_encoder.hpp"
#include "log.hpp"
#include "offline_data.hpp"
#include "util.hpp"

namespace fs = std::filesystem;

namespace eversoul {

namespace {

json::Value object_v() { json::Value v; v.type = json::Type::Object; return v; }
json::Value array_v()  { json::Value v; v.type = json::Type::Array;  return v; }

json::Value num_v(std::int64_t n) {
    json::Value v; v.type = json::Type::Number;
    v.num_text = std::to_string(n);
    return v;
}

json::Value str_v(const std::string& s) {
    json::Value v; v.type = json::Type::String; v.str = s;
    return v;
}

json::Value bool_v(bool b) {
    json::Value v; v.type = json::Type::Bool; v.b = b;
    return v;
}

void set_f(json::Value& obj, const std::string& k, json::Value val) {
    if (json::Value* ex = obj.find_mut(k)) { *ex = std::move(val); return; }
    obj.obj.emplace_back(k, std::move(val));
}

void set_num(json::Value& obj, const std::string& k, std::int64_t n) {
    set_f(obj, k, num_v(n));
}

void set_num_if(json::Value& obj, const std::string& k, std::int64_t n) {
    if (n != 0) set_num(obj, k, n);
}

void set_str_if(json::Value& obj, const std::string& k, const std::string& s) {
    if (!s.empty()) set_f(obj, k, str_v(s));
}

void set_i64str_if(json::Value& obj, const std::string& k, std::int64_t n) {
    if (n != 0) set_f(obj, k, str_v(std::to_string(n)));
}

std::string read_repo_file(const std::string& data_dir, const std::string& rel) {
    if (auto blob = offline_data().read(rel)) return *blob;
    if (!data_dir.empty()) {
        std::ifstream f(fs::path(data_dir) / rel, std::ios::binary);
        if (f) { std::ostringstream ss; ss << f.rdbuf(); return ss.str(); }
    }
    std::ifstream f(rel, std::ios::binary);
    if (f) { std::ostringstream ss; ss << f.rdbuf(); return ss.str(); }
    return {};
}

// ---- 섹션 빌더들 ----

json::Value build_user_section(const AccountDatabase& db) {
    json::Value user = object_v();
    auto prof = db.user_profile();
    if (prof) {
        set_str_if(user, "idx",           prof->idx);
        set_str_if(user, "nickName",      prof->nick_name);
        set_f(user, "lastLoginDt",        str_v(std::to_string(unix_ms())));
        set_num_if(user, "channelNo",     prof->channel_no);
        set_num_if(user, "treeLevel",     prof->tree_level);
        set_str_if(user, "about",         prof->about);
        set_i64str_if(user, "createdDt",  prof->created_dt);
        set_num_if(user, "isFirstCashBuy", prof->is_first_cash_buy);
        set_num_if(user, "reviewFlag",    prof->review_flag);
        set_i64str_if(user, "reviewDt",   prof->review_dt);
        set_num_if(user, "firstTitle",    prof->first_title);
        set_num_if(user, "secondTitle",   prof->second_title);
    }
    auto thumb = db.user_thumbnail();
    if (thumb) {
        json::Value t = object_v();
        set_num_if(t, "thumbnailFrame",  thumb->thumbnail_frame);
        set_num_if(t, "thumbnailImage",  thumb->thumbnail_image);
        if (thumb->use_custom)  set_f(t, "useCustom", bool_v(true));
        set_str_if(t, "thumbnail",       thumb->thumbnail);
        set_num_if(t, "firstTitle",      thumb->first_title);
        set_num_if(t, "secondTitle",     thumb->second_title);
        set_f(user, "thumbnail", std::move(t));
    }
    return user;
}

json::Value build_currency_section(const AccountDatabase& db) {
    json::Value currency = object_v();
    json::Value all = array_v();
    auto rows = db.currencies();
    std::sort(rows.begin(), rows.end(),
        [](const AccountDatabase::CurrencyRow& a, const AccountDatabase::CurrencyRow& b) {
            return a.type < b.type;
        });
    for (const auto& r : rows) {
        json::Value c = object_v();
        if (!r.enum_name.empty())
            set_f(c, "type", str_v(r.enum_name));
        else
            set_num(c, "type", r.type);
        set_i64str_if(c, "value", r.value);
        all.arr.push_back(std::move(c));
    }
    set_f(currency, "allCurrency", std::move(all));
    return currency;
}

json::Value build_heroes_section(const AccountDatabase& db) {
    json::Value arr = array_v();
    auto rows = db.heroes();
    std::sort(rows.begin(), rows.end(),
        [](const HeroRow& a, const HeroRow& b) { return a.idx < b.idx; });
    for (const auto& r : rows) {
        json::Value h = object_v();
        set_str_if(h, "idx",         r.idx);
        set_num_if(h, "heroNo",      r.hero_no);
        set_num_if(h, "level",       r.level);
        set_num_if(h, "isResonance", r.is_resonance);
        set_num_if(h, "gradeSno",    r.grade_sno);
        set_num_if(h, "raceSno",     r.race_sno);
        set_num_if(h, "isLock",      r.is_lock);
        arr.arr.push_back(std::move(h));
    }
    return arr;
}

json::Value build_hero_reps_section(const AccountDatabase& db) {
    json::Value arr = array_v();
    auto rows = db.hero_reputations();
    std::sort(rows.begin(), rows.end(),
        [](const HeroReputationRow& a, const HeroReputationRow& b) {
            return a.hero_no < b.hero_no;
        });
    for (const auto& r : rows) {
        json::Value o = object_v();
        set_num_if(o, "heroNo",         r.hero_no);
        set_num_if(o, "reputation",     r.reputation);
        set_num_if(o, "state",          r.state);
        set_num_if(o, "stress",         r.stress);
        set_i64str_if(o, "lastUpdateDt", r.last_update_dt);
        set_i64str_if(o, "giftDt",      r.gift_dt);
        set_num_if(o, "costumeItemNo",  r.costume_item_no);
        set_num_if(o, "storyReward",    r.story_reward);
        set_num_if(o, "maxGradeSno",    r.max_grade_sno);
        set_num_if(o, "objetUid",       r.objet_uid);
        set_i64str_if(o, "maxLevelDt",  r.max_level_dt);
        set_num_if(o, "arbeitExp",      r.arbeit_exp);
        set_num_if(o, "priority",       r.priority);
        set_i64str_if(o, "restFinishDt", r.rest_finish_dt);
        set_str_if(o, "objetNo",        r.objet_no);
        arr.arr.push_back(std::move(o));
    }
    return arr;
}

json::Value build_item_etc_section(const AccountDatabase& db) {
    json::Value arr = array_v();
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db.raw_db(),
            "SELECT item_no,cnt FROM item_etc ORDER BY item_no",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW) {
            json::Value o = object_v();
            int no  = sqlite3_column_int(st, 0);
            int cnt = sqlite3_column_int(st, 1);
            set_num_if(o, "itemNo", no);
            set_num_if(o, "cnt",    cnt);
            arr.arr.push_back(std::move(o));
        }
    }
    sqlite3_finalize(st);
    return arr;
}

json::Value build_item_equip_section(const AccountDatabase& db) {
    json::Value arr = array_v();
    auto rows = db.item_equips();
    std::sort(rows.begin(), rows.end(),
        [](const ItemEquipRow& a, const ItemEquipRow& b) { return a.id < b.id; });
    for (const auto& r : rows) {
        json::Value o = object_v();
        set_f(o, "id",          str_v(std::to_string(r.id)));
        set_num_if(o, "itemNo", r.item_no);
        set_num_if(o, "exp",    r.exp);
        arr.arr.push_back(std::move(o));
    }
    return arr;
}

json::Value build_hero_equip_section(const AccountDatabase& db) {
    json::Value arr = array_v();
    auto all_slots = db.hero_equip_slots("");
    if (all_slots.empty()) {
        sqlite3_stmt* st = nullptr;
        if (sqlite3_prepare_v2(db.raw_db(),
                "SELECT hero_idx,slot,item_equip_id FROM hero_equip_slot"
                " ORDER BY hero_idx,slot",
                -1, &st, nullptr) == SQLITE_OK) {
            while (sqlite3_step(st) == SQLITE_ROW) {
                HeroEquipSlotRow r;
                const unsigned char* t = sqlite3_column_text(st, 0);
                r.hero_idx = t ? reinterpret_cast<const char*>(t) : "";
                r.slot          = sqlite3_column_int(st, 1);
                r.item_equip_id = sqlite3_column_int64(st, 2);
                all_slots.push_back(r);
            }
        }
        sqlite3_finalize(st);
    }
    std::map<std::string, std::vector<HeroEquipSlotRow>> grouped;
    for (const auto& r : all_slots) grouped[r.hero_idx].push_back(r);
    for (const auto& [hidx, slots] : grouped) {
        json::Value he = object_v();
        set_str_if(he, "heroIdx", hidx);
        json::Value equip = array_v();
        for (const auto& s : slots) {
            json::Value se = object_v();
            set_num_if(se, "slot",        s.slot);
            set_num_if(se, "itemEquipId", static_cast<std::int64_t>(s.item_equip_id));
            equip.arr.push_back(std::move(se));
        }
        set_f(he, "slot", std::move(equip));
        arr.arr.push_back(std::move(he));
    }
    return arr;
}

json::Value build_stage_section(const AccountDatabase& db) {
    json::Value arr = array_v();
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db.raw_db(),
            "SELECT stage_no,stage_type,update_dt FROM stage ORDER BY stage_no",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW) {
            json::Value o = object_v();
            set_num_if(o, "stageNo",   sqlite3_column_int(st, 0));
            set_num_if(o, "stageType", sqlite3_column_int(st, 1));
            set_i64str_if(o, "updateDt", sqlite3_column_int64(st, 2));
            arr.arr.push_back(std::move(o));
        }
    }
    sqlite3_finalize(st);
    return arr;
}

json::Value build_story_section(const AccountDatabase& db) {
    json::Value arr = array_v();
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db.raw_db(),
            "SELECT story_no,update_dt FROM story ORDER BY story_no",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW) {
            json::Value o = object_v();
            set_num_if(o, "storyNo", sqlite3_column_int(st, 0));
            set_i64str_if(o, "updateDt", sqlite3_column_int64(st, 1));
            arr.arr.push_back(std::move(o));
        }
    }
    sqlite3_finalize(st);
    return arr;
}

json::Value build_tutorial_section(const AccountDatabase& db) {
    json::Value arr = array_v();
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db.raw_db(),
            "SELECT tutorial_no FROM tutorial ORDER BY tutorial_no",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW) {
            json::Value o = object_v();
            set_num_if(o, "tutorialNo", sqlite3_column_int(st, 0));
            arr.arr.push_back(std::move(o));
        }
    }
    sqlite3_finalize(st);
    return arr;
}

json::Value build_formation_section(const AccountDatabase& db) {
    json::Value arr = array_v();
    auto rows = db.formations();
    std::sort(rows.begin(), rows.end(),
        [](const FormationRow& a, const FormationRow& b) {
            return a.kind != b.kind ? a.kind < b.kind : a.no < b.no;
        });
    for (const auto& r : rows) {
        json::Value f = object_v();
        set_num_if(f, "no",            r.no);
        set_num_if(f, "kind",          r.kind);
        set_num_if(f, "formationType", r.formation_type);
        set_str_if(f, "formationName", r.formation_name);
        json::Value heroes = array_v();
        auto fh = db.formation_heroes(r.no, r.kind);
        std::sort(fh.begin(), fh.end(),
            [](const FormationHeroRow& a, const FormationHeroRow& b) {
                return a.position < b.position;
            });
        for (const auto& h : fh) heroes.arr.push_back(str_v(h.hero_idx));
        set_f(f, "hero", std::move(heroes));
        arr.arr.push_back(std::move(f));
    }
    return arr;
}

json::Value build_spirit_tree_section(const AccountDatabase& db) {
    json::Value arr = array_v();
    auto rows = db.spirit_trees();
    std::sort(rows.begin(), rows.end(),
        [](const AccountDatabase::SpiritTreeRow& a, const AccountDatabase::SpiritTreeRow& b) {
            return a.slot_no < b.slot_no;
        });
    for (const auto& r : rows) {
        json::Value o = object_v();
        set_num_if(o, "slotNo",       r.slot_no);
        set_str_if(o, "heroIdx",      r.hero_idx);
        set_i64str_if(o, "enableDt",  r.enable_dt);
        arr.arr.push_back(std::move(o));
    }
    return arr;
}

json::Value build_auto_hunt_section(const AccountDatabase& db) {
    json::Value ah = object_v();
    auto row = db.auto_hunt();
    if (row) {
        set_num_if(ah, "stageNo",        row->stage_no);
        set_i64str_if(ah, "labDt",       row->lab_dt);
        set_i64str_if(ah, "receiveDt",   row->receive_dt);
    }
    return ah;
}

json::Value build_dungeon_list_section(const AccountDatabase& db,
                                        const json::Value& preserved) {
    json::Value list = object_v();

    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db.raw_db(),
            "SELECT rotation_dungeon_no,rotation_dungeon_expire_dt,"
            " labyrinth_expire_dt,labyrinth_clear_cnt,labyrinth_ticket_cnt,"
            " rotation_dungeon_clear_cnt,rotation_dungeon_ticket_cnt"
            " FROM dungeon_list_state WHERE singleton_id=1",
            -1, &st, nullptr) == SQLITE_OK) {
        if (sqlite3_step(st) == SQLITE_ROW) {
            set_num_if(list, "rotationDungeonNo",         sqlite3_column_int(st, 0));
            set_i64str_if(list, "rotationDungeonExpireDt", sqlite3_column_int64(st, 1));
            set_i64str_if(list, "labyrinthExpireDt",       sqlite3_column_int64(st, 2));
            set_num_if(list, "labyrinthClearCnt",          sqlite3_column_int(st, 3));
            set_num_if(list, "labyrinthTicketCnt",         sqlite3_column_int(st, 4));
            set_num_if(list, "rotationDungeonClearCnt",    sqlite3_column_int(st, 5));
            set_num_if(list, "rotationDungeonTicketCnt",   sqlite3_column_int(st, 6));
        }
    }
    sqlite3_finalize(st);

    if (!list.find("rotationDungeonNo"))
        set_num(list, "rotationDungeonNo", 2003);
    if (!list.find("rotationDungeonExpireDt"))
        set_f(list, "rotationDungeonExpireDt", str_v("1760918400000"));
    if (!list.find("labyrinthExpireDt"))
        set_f(list, "labyrinthExpireDt", str_v("1760832000000"));

    if (preserved.is_object()) {
        const char* overlay_keys[] = {
            "rotationDungeonNo","rotationDungeonExpireDt",
            "labyrinthExpireDt","labyrinthClearCnt","labyrinthTicketCnt",
            "rotationDungeonClearCnt","rotationDungeonTicketCnt"
        };
        for (const char* k : overlay_keys) {
            if (!list.find(k)) {
                if (const json::Value* pv = preserved.find(k))
                    set_f(list, k, *pv);
            }
        }
    }

    json::Value rewards = array_v();
    auto dungeons = db.dungeons();
    std::sort(dungeons.begin(), dungeons.end(),
        [](const DungeonRow& a, const DungeonRow& b) { return a.dungeon_no < b.dungeon_no; });
    for (const auto& d : dungeons) {
        json::Value entry = object_v();
        json::Value dobj  = object_v();
        set_num(dobj, "dungeonNo",    d.dungeon_no);
        set_num(dobj, "dungeonLevel", d.dungeon_level > 0 ? d.dungeon_level : 1);
        set_num(dobj, "isClear",      1);
        if (d.is_first_clear) set_num(dobj, "isFirstClear", 1);
        set_f(entry, "dungeon", std::move(dobj));
        rewards.arr.push_back(std::move(entry));
    }
    set_f(list, "dungeonReward", std::move(rewards));
    return list;
}

json::Value build_challenge_mode_section(const AccountDatabase& db) {
    json::Value arr = array_v();
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db.raw_db(),
            "SELECT cm.clear_stage_no, GROUP_CONCAT(ct.clear_task_no ORDER BY ct.task_order)"
            " FROM challenge_mode cm"
            " LEFT JOIN challenge_mode_task ct ON cm.clear_stage_no=ct.clear_stage_no"
            " GROUP BY cm.clear_stage_no ORDER BY cm.clear_stage_no",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW) {
            json::Value m = object_v();
            set_num_if(m, "clearStageNo", sqlite3_column_int(st, 0));
            json::Value tasks = array_v();
            const unsigned char* csv = sqlite3_column_text(st, 1);
            if (csv) {
                std::string s = reinterpret_cast<const char*>(csv);
                std::size_t i = 0;
                while (i <= s.size()) {
                    std::size_t j = s.find(',', i);
                    std::string token = (j == std::string::npos) ? s.substr(i) : s.substr(i, j-i);
                    if (!token.empty()) {
                        json::Value tv; tv.type = json::Type::Number; tv.num_text = token;
                        tasks.arr.push_back(tv);
                    }
                    if (j == std::string::npos) break;
                    i = j + 1;
                }
            }
            set_f(m, "clearTaskNo", std::move(tasks));
            arr.arr.push_back(std::move(m));
        }
    }
    sqlite3_finalize(st);
    return arr;
}

json::Value build_hero_option_section(const AccountDatabase& db) {
    json::Value arr = array_v();
    sqlite3_stmt* st = nullptr;
    if (sqlite3_prepare_v2(db.raw_db(),
            "SELECT hero_no,group_no,option_slot,option_no,option_value,option_type,option_lock"
            " FROM hero_option ORDER BY hero_no,group_no,option_slot",
            -1, &st, nullptr) == SQLITE_OK) {
        while (sqlite3_step(st) == SQLITE_ROW) {
            json::Value o = object_v();
            set_num_if(o, "heroNo",      sqlite3_column_int(st, 0));
            set_num_if(o, "groupNo",     sqlite3_column_int(st, 1));
            set_num_if(o, "optionSlot",  sqlite3_column_int(st, 2));
            set_num_if(o, "optionNo",    sqlite3_column_int(st, 3));
            set_num_if(o, "optionValue", sqlite3_column_int(st, 4));
            set_num_if(o, "optionType",  sqlite3_column_int(st, 5));
            set_num_if(o, "optionLock",  sqlite3_column_int(st, 6));
            arr.arr.push_back(std::move(o));
        }
    }
    sqlite3_finalize(st);
    return arr;
}

} // namespace

// ---- UserInfoRepository ----

UserInfoRepository::UserInfoRepository(AccountDatabase& db, const std::string& data_dir)
    : db_(db), data_dir_(data_dir) {}

std::string UserInfoRepository::build_json() const {
    const std::string schema_text =
        read_repo_file(data_dir_, "schema/UserInfo.json");

    json::Value schema_root;
    if (!schema_text.empty()) {
        std::string err;
        json::parse(schema_text, schema_root, err);
    }

    json::Value root = object_v();

    // ---- 정규화 테이블에서 재구성 ----
    set_f(root, "user",           build_user_section(db_));
    set_f(root, "currency",       build_currency_section(db_));
    set_f(root, "hero",           build_heroes_section(db_));
    set_f(root, "heroEquip",      build_hero_equip_section(db_));
    set_f(root, "stage",          build_stage_section(db_));
    set_f(root, "formation",      build_formation_section(db_));
    set_f(root, "heroReputation", build_hero_reps_section(db_));
    set_f(root, "autoHunt",       build_auto_hunt_section(db_));
    set_f(root, "spiritTree",     build_spirit_tree_section(db_));
    set_f(root, "tutorial",       build_tutorial_section(db_));
    set_f(root, "story",          build_story_section(db_));
    set_f(root, "itemEquip",      build_item_equip_section(db_));
    set_f(root, "itemEtc",        build_item_etc_section(db_));
    set_f(root, "challengeMode",  build_challenge_mode_section(db_));
    set_f(root, "heroOption",     build_hero_option_section(db_));

    // ---- preserved_field 복원 (정규화 미완성 필드 원본 그대로) ----
    static const struct { const char* name; int number; } kPreservedFields[] = {
        {"zodiac",                  6},
        {"building",               11},
        {"dailyContent",           12},
        {"talk",                   13},
        {"guild",                  19},
        {"guildMember",            20},
        {"guildJoinRequest",       21},
        {"doubleGate",             22},
        {"secureSeed",             23},
        {"lobbyBackground",        24},
        {"bgm",                    26},
        {"buff",                   27},
        {"chatKey",                28},
        {"collectionNo",           29},
        {"dungeonFirstRewardList", 30},
        {"chatServerUrl",          31},
        {"sdHeroNo",               32},
        {"speed",                  33},
        {"battleAutoActive",       34},
        {"cashDailyN",             36},
        {"battleAutoUltimate",     37},
        {"scalingLevel",           38},
        {"lastClearDungeonLevel",  39},
        {"townVisitHero",          40},
        {"monthlyHeroResetFlag",   41},
        {"tutorialStory",          42},
        {"arkCore",                44},
        {"actionActive",           45},
        {"actionUltimate",         46},
        {"contentLimitNo",         47},
        {"arkOverClockLevel",      48},
        {"arkOperator",            49},
        {"doubleGateDailyContent", 50},
        {"arbeitOption",           52},
    };

    json::Value preserved_dungeon_list;
    bool has_preserved_dl = false;

    for (const auto& pf : kPreservedFields) {
        std::string body = db_.preserved_field(pf.name);
        if (body.empty()) continue;
        json::Value fv;
        std::string perr;
        if (json::parse(body, fv, perr)) {
            set_f(root, pf.name, std::move(fv));
        }
    }

    {
        std::string dl_body = db_.preserved_field("dungeonList");
        if (!dl_body.empty()) {
            json::parse(dl_body, preserved_dungeon_list, has_preserved_dl ? has_preserved_dl : has_preserved_dl);
            has_preserved_dl = !dl_body.empty();
        }
    }
    set_f(root, "dungeonList",
          build_dungeon_list_section(db_,
              has_preserved_dl ? preserved_dungeon_list : json::Value{}));

    return root.dump();
}

std::string UserInfoRepository::build_payload() const {
    const std::string json_str    = build_json();
    const std::string schema_text = read_repo_file(data_dir_, "schema/UserInfo.json");

    if (json_str.empty() || schema_text.empty()) {
        log_line(0, "UIREPO", "build_payload: missing json or schema");
        return {};
    }

    std::string out, err;
    if (!json_encode_from_text(schema_text, json_str, out, err)) {
        log_line(0, "UIREPO", "build_payload encode failed: " + err);
        return {};
    }
    return out;
}

} // namespace eversoul
