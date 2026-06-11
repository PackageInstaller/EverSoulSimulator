// userinfo_builder.cpp - dynamic /UserInfo reconstruction.
#include "orm/userinfo_builder.hpp"

#include <algorithm>
#include <filesystem>
#include <fstream>
#include <map>
#include <sstream>
#include <string>
#include <vector>

#include "json.hpp"
#include "json_encoder.hpp"
#include "log.hpp"
#include "offline_data.hpp"
#include "orm/storage.hpp"
#include "util.hpp"

namespace fs = std::filesystem;

namespace eversoul::orm {
namespace {

json::Value object_value() {
    json::Value v;
    v.type = json::Type::Object;
    return v;
}

json::Value array_value() {
    json::Value v;
    v.type = json::Type::Array;
    return v;
}

json::Value number_value(std::int64_t n) {
    json::Value v;
    v.type = json::Type::Number;
    v.num_text = std::to_string(n);
    return v;
}

json::Value string_value(const std::string& s) {
    json::Value v;
    v.type = json::Type::String;
    v.str = s;
    return v;
}

json::Value bool_value(bool b) {
    json::Value v;
    v.type = json::Type::Bool;
    v.b = b;
    return v;
}

void set_field(json::Value& obj, const std::string& key, json::Value value) {
    if (json::Value* existing = obj.find_mut(key)) {
        *existing = std::move(value);
        return;
    }
    obj.obj.emplace_back(key, std::move(value));
}

void set_number(json::Value& obj, const std::string& key, std::int64_t value) {
    set_field(obj, key, number_value(value));
}

void set_number_if(json::Value& obj, const std::string& key, std::int64_t value) {
    if (value != 0) set_number(obj, key, value);
}

void set_int64_string_if(json::Value& obj, const std::string& key, std::int64_t value) {
    if (value != 0) set_field(obj, key, string_value(std::to_string(value)));
}

void set_string_if(json::Value& obj, const std::string& key, const std::string& value) {
    if (!value.empty()) set_field(obj, key, string_value(value));
}

std::vector<std::string> split_csv(const std::string& s) {
    std::vector<std::string> out;
    if (s.empty()) return out;
    std::size_t i = 0;
    while (i <= s.size()) {
        std::size_t j = s.find(',', i);
        if (j == std::string::npos) {
            out.push_back(s.substr(i));
            break;
        }
        out.push_back(s.substr(i, j - i));
        i = j + 1;
    }
    return out;
}

std::string read_file(const fs::path& path) {
    std::ifstream f(path, std::ios::binary);
    if (!f) return {};
    std::ostringstream ss;
    ss << f.rdbuf();
    return ss.str();
}

std::string read_data_file(const std::string& data_dir, const std::string& rel) {
    if (auto blob = offline_data().read(rel)) return *blob;
    if (!data_dir.empty()) {
        std::string text = read_file(fs::path(data_dir) / rel);
        if (!text.empty()) return text;
    }
    return read_file(rel);
}

json::Value build_user() {
    json::Value user = object_value();
    set_string_if(user, "idx", kv_get("user_idx"));
    set_string_if(user, "nickName", kv_get("nickname"));
    set_field(user, "lastLoginDt", string_value(std::to_string(unix_ms())));
    set_number_if(user, "channelNo", std::atoll(kv_get("channel_no").c_str()));
    set_number_if(user, "treeLevel", std::atoll(kv_get("tree_level").c_str()));
    set_string_if(user, "about", kv_get("about"));
    set_int64_string_if(user, "createdDt", std::atoll(kv_get("created_dt").c_str()));
    set_number_if(user, "firstTitle", std::atoll(kv_get("first_title").c_str()));
    set_number_if(user, "secondTitle", std::atoll(kv_get("second_title").c_str()));

    json::Value thumb = object_value();
    set_number_if(thumb, "thumbnailFrame", std::atoll(kv_get("thumbnail_frame").c_str()));
    set_number_if(thumb, "thumbnailImage", std::atoll(kv_get("thumbnail_image").c_str()));
    if (kv_get("thumbnail_use_custom") == "1") set_field(thumb, "useCustom", bool_value(true));
    set_string_if(thumb, "thumbnail", kv_get("thumbnail_blob"));
    set_number_if(thumb, "firstTitle", std::atoll(kv_get("thumbnail_first_title").c_str()));
    set_number_if(thumb, "secondTitle", std::atoll(kv_get("thumbnail_second_title").c_str()));
    set_field(user, "thumbnail", std::move(thumb));
    return user;
}

json::Value build_currency() {
    json::Value currency = object_value();
    json::Value all = array_value();
    auto rows = currencies();
    std::sort(rows.begin(), rows.end(), [](const Currency& a, const Currency& b) { return a.type < b.type; });
    for (const auto& row : rows) {
        json::Value c = object_value();
        set_number(c, "type", row.type);
        set_int64_string_if(c, "value", row.value);
        all.arr.push_back(std::move(c));
    }
    set_field(currency, "allCurrency", std::move(all));
    return currency;
}

json::Value build_heroes() {
    json::Value arr = array_value();
    auto rows = heroes();
    std::sort(rows.begin(), rows.end(), [](const Hero& a, const Hero& b) { return a.idx < b.idx; });
    for (const auto& row : rows) {
        json::Value h = object_value();
        set_string_if(h, "idx", row.idx);
        set_number_if(h, "heroNo", row.heroNo);
        set_number_if(h, "level", row.level);
        set_number_if(h, "isResonance", row.isResonance);
        set_number_if(h, "gradeSno", row.gradeSno);
        set_number_if(h, "raceSno", row.raceSno);
        set_number_if(h, "isLock", row.isLock);
        arr.arr.push_back(std::move(h));
    }
    return arr;
}

json::Value build_hero_reps() {
    json::Value arr = array_value();
    auto rows = hero_reps();
    std::sort(rows.begin(), rows.end(), [](const HeroRep& a, const HeroRep& b) { return a.heroNo < b.heroNo; });
    for (const auto& row : rows) {
        json::Value r = object_value();
        set_number_if(r, "heroNo", row.heroNo);
        set_number_if(r, "reputation", row.reputation);
        set_number_if(r, "state", row.state);
        set_number_if(r, "stress", row.stress);
        set_int64_string_if(r, "lastUpdateDt", row.lastUpdateDt);
        set_int64_string_if(r, "giftDt", row.giftDt);
        set_number_if(r, "costumeItemNo", row.costumeItemNo);
        set_number_if(r, "storyReward", row.storyReward);
        set_number_if(r, "maxGradeSno", row.maxGradeSno);
        set_number_if(r, "objetUid", row.objetUid);
        set_int64_string_if(r, "maxLevelDt", row.maxLevelDt);
        set_number_if(r, "arbeitExp", row.arbeitExp);
        set_number_if(r, "priority", row.priority);
        set_int64_string_if(r, "restFinishDt", row.restFinishDt);
        set_string_if(r, "objetNo", row.objetNo);
        arr.arr.push_back(std::move(r));
    }
    return arr;
}

json::Value build_item_etcs() {
    json::Value arr = array_value();
    auto rows = item_etcs();
    std::sort(rows.begin(), rows.end(), [](const ItemEtc& a, const ItemEtc& b) { return a.itemNo < b.itemNo; });
    for (const auto& row : rows) {
        json::Value it = object_value();
        set_number_if(it, "itemNo", row.itemNo);
        set_number_if(it, "cnt", row.cnt);
        arr.arr.push_back(std::move(it));
    }
    return arr;
}

json::Value build_item_equips() {
    json::Value arr = array_value();
    auto rows = item_equips();
    std::sort(rows.begin(), rows.end(), [](const ItemEquip& a, const ItemEquip& b) { return a.id < b.id; });
    for (const auto& row : rows) {
        json::Value it = object_value();
        set_field(it, "id", string_value(std::to_string(row.id)));
        set_number_if(it, "itemNo", row.itemNo);
        set_number_if(it, "exp", row.exp);
        arr.arr.push_back(std::move(it));
    }
    return arr;
}

json::Value build_hero_equips() {
    json::Value arr = array_value();
    auto rows = hero_equip_slots();
    std::sort(rows.begin(), rows.end(), [](const HeroEquipSlot& a, const HeroEquipSlot& b) {
        if (a.heroIdx != b.heroIdx) return a.heroIdx < b.heroIdx;
        return a.slot < b.slot;
    });
    std::map<std::string, std::vector<HeroEquipSlot>> grouped;
    for (const auto& row : rows) grouped[row.heroIdx].push_back(row);
    for (const auto& [hero_idx, slots] : grouped) {
        json::Value he = object_value();
        set_string_if(he, "heroIdx", hero_idx);
        json::Value equip = array_value();
        for (const auto& slot : slots) {
            json::Value s = object_value();
            set_number_if(s, "slot", slot.slot);
            set_number_if(s, "itemEquipId", slot.itemEquipId);
            equip.arr.push_back(std::move(s));
        }
        set_field(he, "equip", std::move(equip));
        arr.arr.push_back(std::move(he));
    }
    return arr;
}

json::Value build_formations() {
    json::Value arr = array_value();
    auto rows = formations();
    std::sort(rows.begin(), rows.end(), [](const Formation& a, const Formation& b) {
        if (a.kind != b.kind) return a.kind < b.kind;
        return a.no < b.no;
    });
    for (const auto& row : rows) {
        json::Value f = object_value();
        set_number_if(f, "no", row.no);
        set_number_if(f, "kind", row.kind);
        json::Value hx = array_value();
        for (const auto& s : split_csv(row.heroidx)) hx.arr.push_back(string_value(s));
        set_field(f, "heroidx", std::move(hx));
        set_number_if(f, "formationType", row.formationType);
        set_string_if(f, "formationName", row.formationName);
        arr.arr.push_back(std::move(f));
    }
    return arr;
}

json::Value build_spirit_trees() {
    json::Value arr = array_value();
    auto rows = spirit_trees();
    std::sort(rows.begin(), rows.end(), [](const SpiritTree& a, const SpiritTree& b) { return a.slotNo < b.slotNo; });
    for (const auto& row : rows) {
        json::Value t = object_value();
        set_number_if(t, "slotNo", row.slotNo);
        set_string_if(t, "heroIdx", row.heroIdx);
        set_int64_string_if(t, "enableDt", row.enableDt);
        arr.arr.push_back(std::move(t));
    }
    return arr;
}

json::Value build_hero_options() {
    json::Value arr = array_value();
    auto rows = hero_options();
    std::sort(rows.begin(), rows.end(), [](const HeroOption& a, const HeroOption& b) { return a.id < b.id; });
    for (const auto& row : rows) {
        json::Value o = object_value();
        set_number_if(o, "heroNo", row.heroNo);
        set_number_if(o, "groupNo", row.groupNo);
        set_number_if(o, "optionSlot", row.optionSlot);
        set_number_if(o, "optionNo", row.optionNo);
        set_number_if(o, "optionValue", row.optionValue);
        set_number_if(o, "optionType", row.optionType);
        set_number_if(o, "optionLock", row.optionLock);
        arr.arr.push_back(std::move(o));
    }
    return arr;
}

json::Value build_challenge_modes() {
    json::Value arr = array_value();
    auto rows = challenge_modes();
    std::sort(rows.begin(), rows.end(), [](const ChallengeMode& a, const ChallengeMode& b) {
        return a.clearStageNo < b.clearStageNo;
    });
    for (const auto& row : rows) {
        json::Value m = object_value();
        set_number_if(m, "clearStageNo", row.clearStageNo);
        json::Value tasks = array_value();
        for (const auto& s : split_csv(row.clearTaskNo)) {
            if (!s.empty()) tasks.arr.push_back(number_value(std::atoll(s.c_str())));
        }
        set_field(m, "clearTaskNo", std::move(tasks));
        arr.arr.push_back(std::move(m));
    }
    return arr;
}

template <class Row, class NoField, class DtField>
json::Value build_no_dt_array(std::vector<Row> rows, const char* no_name, NoField no_field,
                              const char* dt_name, DtField dt_field) {
    json::Value arr = array_value();
    std::sort(rows.begin(), rows.end(), [&](const Row& a, const Row& b) { return no_field(a) < no_field(b); });
    for (const auto& row : rows) {
        json::Value o = object_value();
        set_number_if(o, no_name, no_field(row));
        set_int64_string_if(o, dt_name, dt_field(row));
        arr.arr.push_back(std::move(o));
    }
    return arr;
}

json::Value build_tutorials() {
    json::Value arr = array_value();
    auto rows = tutorials();
    std::sort(rows.begin(), rows.end(), [](const Tutorial& a, const Tutorial& b) { return a.tutorialNo < b.tutorialNo; });
    for (const auto& row : rows) {
        json::Value t = object_value();
        set_number_if(t, "tutorialNo", row.tutorialNo);
        arr.arr.push_back(std::move(t));
    }
    return arr;
}

json::Value build_auto_hunt() {
    json::Value ah = object_value();
    set_number_if(ah, "stageNo", std::atoll(kv_get("autohunt_stage_no").c_str()));
    set_int64_string_if(ah, "labDt", std::atoll(kv_get("autohunt_lab_dt").c_str()));
    set_int64_string_if(ah, "receiveDt", std::atoll(kv_get("autohunt_receive_dt").c_str()));
    return ah;
}

json::Value build_dungeon_list(const json::Value& fixture) {
    json::Value list = object_value();
    if (const json::Value* base = fixture.find("dungeonList")) {
        if (const json::Value* v = base->find("rotationDungeonNo"))
            set_field(list, "rotationDungeonNo", *v);
        if (const json::Value* v = base->find("rotationDungeonExpireDt"))
            set_field(list, "rotationDungeonExpireDt", *v);
        if (const json::Value* v = base->find("labyrinthExpireDt"))
            set_field(list, "labyrinthExpireDt", *v);
        if (const json::Value* v = base->find("labyrinthClearCnt"))
            set_field(list, "labyrinthClearCnt", *v);
        if (const json::Value* v = base->find("labyrinthTicketCnt"))
            set_field(list, "labyrinthTicketCnt", *v);
        if (const json::Value* v = base->find("rotationDungeonClearCnt"))
            set_field(list, "rotationDungeonClearCnt", *v);
        if (const json::Value* v = base->find("rotationDungeonTicketCnt"))
            set_field(list, "rotationDungeonTicketCnt", *v);
    }
    if (!list.find("rotationDungeonNo"))
        set_number(list, "rotationDungeonNo", 2003);
    if (!list.find("rotationDungeonExpireDt"))
        set_field(list, "rotationDungeonExpireDt", string_value("1760918400000"));
    if (!list.find("labyrinthExpireDt"))
        set_field(list, "labyrinthExpireDt", string_value("1760832000000"));

    json::Value rewards = array_value();
    auto rows = dungeons();
    std::sort(rows.begin(), rows.end(), [](const Dungeon& a, const Dungeon& b) {
        return a.dungeonNo < b.dungeonNo;
    });
    for (const auto& row : rows) {
        json::Value entry = object_value();
        json::Value dungeon = object_value();
        set_number(dungeon, "dungeonNo", row.dungeonNo);
        set_number(dungeon, "dungeonLevel", 1);
        set_number(dungeon, "isClear", 1);
        if (row.isFirstClear)
            set_number(dungeon, "isFirstClear", 1);
        set_field(entry, "dungeon", std::move(dungeon));
        rewards.arr.push_back(std::move(entry));
    }
    set_field(list, "dungeonReward", std::move(rewards));
    return list;
}

}  // namespace

std::string build_user_info_payload(const std::string& data_dir) {
    if (!ensure_ready(data_dir)) return {};
    heal_progress();

    const std::string responses_dir = kv_get("account_mode", "full") == "newbie" ? "responses_newbie" : "responses";
    std::string fixture_text = read_data_file(data_dir, responses_dir + "/UserInfo.json");
    std::string schema_text = read_data_file(data_dir, "schema/UserInfo.json");
    if (fixture_text.empty() || schema_text.empty()) {
        log_line(0, "ORM", responses_dir + "/UserInfo base/schema missing");
        return {};
    }

    json::Value fixture;
    json::Value schema;
    std::string err;
    if (!json::parse(fixture_text, fixture, err)) {
        log_line(0, "ORM", "UserInfo fixture parse failed: " + err);
        return {};
    }
    if (!json::parse(schema_text, schema, err)) {
        log_line(0, "ORM", "UserInfo schema parse failed: " + err);
        return {};
    }

    set_field(fixture, "user", build_user());
    set_field(fixture, "currency", build_currency());
    set_field(fixture, "hero", build_heroes());
    set_field(fixture, "heroEquip", build_hero_equips());
    set_field(fixture, "stage", build_no_dt_array<Stage>(stages(), "stageNo", [](const Stage& s) { return s.stageNo; },
                                                          "updateDt", [](const Stage& s) { return s.updateDt; }));
    set_field(fixture, "formation", build_formations());
    set_field(fixture, "heroReputation", build_hero_reps());
    set_field(fixture, "autoHunt", build_auto_hunt());
    set_field(fixture, "spiritTree", build_spirit_trees());
    set_field(fixture, "tutorial", build_tutorials());
    set_field(fixture, "story", build_no_dt_array<Story>(stories(), "storyNo", [](const Story& s) { return s.storyNo; },
                                                          "updateDt", [](const Story& s) { return s.updateDt; }));
    set_field(fixture, "itemEquip", build_item_equips());
    set_field(fixture, "itemEtc", build_item_etcs());
    set_field(fixture, "challengeMode", build_challenge_modes());
    set_field(fixture, "heroOption", build_hero_options());
    set_field(fixture, "dungeonList", build_dungeon_list(fixture));

    std::string out;
    if (!json_encode_message(schema, fixture, out, err)) {
        log_line(0, "ORM", "UserInfo encode failed: " + err);
        return {};
    }
    return out;
}

}  // namespace eversoul::orm
