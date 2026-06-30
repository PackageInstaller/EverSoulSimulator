// endpoint_mutation_service.cpp — AccountDatabase 기반 엔드포인트 뮤테이션 처리.
#include "endpoint_mutation_service.hpp"

#include <algorithm>
#include <cstdlib>
#include <ctime>
#include <map>
#include <optional>
#include <set>

#include "account_database.hpp"
#include "auto_hunt_policy.hpp"
#include "fixture_store.hpp"
#include "gacha_template_data.hpp"
#include "json.hpp"
#include "log.hpp"
#include "offline_data.hpp"
#include "payloads.hpp"
#include "protobuf.hpp"
#include "tbl_store.hpp"
#include "util.hpp"

namespace eversoul {

namespace {

// ---- protobuf sub-message builders (static, no state) ----

std::string hero_pb_msg(const HeroRow& h) {
    std::string s;
    pb_string(s, 1, h.idx);
    pb_int32(s, 2, h.hero_no);
    pb_int32(s, 3, h.level);
    pb_int32(s, 5, h.grade_sno);
    pb_int32(s, 6, h.race_sno);
    if (h.is_lock) pb_int32(s, 7, h.is_lock);
    return s;
}

std::string rep_pb_msg(int hero_no, int max_grade) {
    std::string r;
    pb_int32(r, 1, hero_no);
    pb_int32(r, 9, max_grade);
    pb_string(r, 15, "0");
    return r;
}

std::string hero_rep_full_pb_msg(const HeroReputationRow& rep) {
    std::string r;
    pb_int32(r, 1, rep.hero_no);
    if (rep.reputation)      pb_int32(r, 2, rep.reputation);
    if (rep.state)           pb_int32(r, 3, rep.state);
    if (rep.stress)          pb_int32(r, 4, rep.stress);
    if (rep.last_update_dt)  pb_int64(r, 5, rep.last_update_dt);
    if (rep.gift_dt)         pb_int64(r, 6, rep.gift_dt);
    if (rep.costume_item_no) pb_int32(r, 7, rep.costume_item_no);
    if (rep.story_reward)    pb_int32(r, 8, rep.story_reward);
    if (rep.max_grade_sno)   pb_int32(r, 9, rep.max_grade_sno);
    if (rep.objet_uid)       pb_int32(r, 10, static_cast<std::int32_t>(rep.objet_uid));
    if (rep.max_level_dt)    pb_int64(r, 11, rep.max_level_dt);
    if (rep.arbeit_exp)      pb_int32(r, 12, rep.arbeit_exp);
    if (rep.priority)        pb_int32(r, 13, rep.priority);
    if (rep.rest_finish_dt)  pb_int64(r, 14, rep.rest_finish_dt);
    if (!rep.objet_no.empty()) pb_string(r, 15, rep.objet_no);
    return r;
}

std::vector<std::int32_t> parse_int_csv(const std::string& csv) {
    std::vector<std::int32_t> out;
    std::size_t pos = 0;
    while (pos < csv.size()) {
        const std::size_t comma = csv.find(',', pos);
        const std::string part = csv.substr(pos, comma == std::string::npos ? std::string::npos : comma - pos);
        if (!part.empty())
            out.push_back(static_cast<std::int32_t>(std::strtol(part.c_str(), nullptr, 10)));
        if (comma == std::string::npos)
            break;
        pos = comma + 1;
    }
    return out;
}

std::string join_int_csv(const std::vector<std::int32_t>& values) {
    std::string out;
    for (std::size_t i = 0; i < values.size(); ++i) {
        if (i) out.push_back(',');
        out += std::to_string(values[i]);
    }
    return out;
}

std::optional<std::int64_t> json_int_field(const json::Value& value, const std::string& field) {
    const json::Value* found = value.find(field);
    if (!found || found->is_null())
        return std::nullopt;
    return found->as_int64();
}

std::string json_string_field(const json::Value& value, const std::string& field) {
    const json::Value* found = value.find(field);
    if (!found)
        return {};
    return found->text();
}

int tbl_int(const json::Value* row, const std::string& field, int fallback = 0) {
    if (!row)
        return fallback;
    if (const auto value = json_int_field(*row, field))
        return static_cast<int>(*value);
    return fallback;
}

std::string tbl_string(const json::Value* row, const std::string& field) {
    return row ? json_string_field(*row, field) : "";
}

bool event_pickup_select_has_tbl_row(std::int32_t event_group, std::int32_t gacha_no) {
    const TblTable* table = tbl_store().table("EventPickupSelect");
    if (!table)
        return false;

    for (const json::Value& row : table->rows) {
        if (tbl_int(&row, "group", 0) == event_group && tbl_int(&row, "gacha_no", 0) == gacha_no)
            return true;
    }
    return false;
}

bool event_pickup_select_has_har_echo(std::int32_t event_group, std::int32_t gacha_no) {
    return event_group == 4 && gacha_no == 5416;
}

int today_yymmdd() {
    std::time_t seconds = static_cast<std::time_t>(unix_ms() / 1000);
    std::tm local{};
#if defined(_WIN32)
    localtime_s(&local, &seconds);
#else
    localtime_r(&local, &seconds);
#endif
    return ((local.tm_year + 1900) % 100) * 10000 + (local.tm_mon + 1) * 100 + local.tm_mday;
}

std::string arbeit_task_pb_msg(const ArbeitTaskRow& row) {
    std::string s;
    if (row.no)               pb_int32(s, 1, row.no);
    if (row.date)             pb_int32(s, 2, row.date);
    if (row.arbeit_choice_no) pb_int32(s, 3, row.arbeit_choice_no);
    if (row.arbeit_no)        pb_int32(s, 4, row.arbeit_no);
    if (row.objet_no)         pb_int32(s, 5, row.objet_no);
    if (row.start_timestamp)  pb_int64(s, 6, row.start_timestamp);
    if (row.end_timestamp)    pb_int64(s, 7, row.end_timestamp);
    if (row.state)            pb_int32(s, 8, row.state);
    pb_packed_int32(s, 9, parse_int_csv(row.hero_no_csv));
    if (!row.kind.empty())    pb_string(s, 10, row.kind);
    if (row.ingame_day)       pb_int32(s, 11, row.ingame_day);
    return s;
}

std::string item_equip_raw_pb(const ItemEquipRow& item) {
    std::string s;
    pb_int64(s, 1, item.id);
    if (item.item_no) pb_int32(s, 2, item.item_no);
    if (item.exp)     pb_int32(s, 3, item.exp);
    return s;
}

std::string hero_equip_info_raw_pb(const std::string& hero_idx, int slot,
                                   const ItemEquipRow& item) {
    std::string slot_item;
    if (slot) pb_int32(slot_item, 1, slot);
    pb_message(slot_item, 2, item_equip_raw_pb(item));
    std::string out;
    pb_string(out, 1, hero_idx);
    pb_message(out, 2, slot_item);
    return out;
}

std::string auto_hunt_state_raw_pb(int max_stage, std::int64_t lab_dt,
                                    std::int64_t receive_dt) {
    std::string s;
    if (max_stage) pb_int32(s, 1, max_stage);
    pb_int64(s, 2, lab_dt);
    pb_int64(s, 3, receive_dt);
    return s;
}

std::string auto_hunt_currency_raw_pb(std::int64_t gold, std::int64_t mana_dust,
                                       std::int64_t exp) {
    auto add = [&](std::string& ahc, int type, std::int64_t val) {
        std::string c;
        pb_int32(c, 1, type);
        if (val) pb_int64(c, 2, val);
        pb_message(ahc, 1, c);
    };
    std::string ahc;
    add(ahc, 1, gold);
    add(ahc, 3, mana_dust);
    add(ahc, 5, exp);
    return ahc;
}

std::string cleared_dungeon_raw_pb(std::int32_t dungeon_id, int dungeon_no,
                                    int is_first_clear) {
    std::string d;
    if (dungeon_id > 0) pb_int32(d, 1, dungeon_id);
    pb_int32(d, 2, dungeon_no);
    pb_int32(d, 3, 1);
    pb_int32(d, 11, 0);
    pb_int32(d, 12, 1);
    if (is_first_clear) pb_int32(d, 13, 1);
    return d;
}

void append_auto_hunt_boxes(std::string& out, int field) {
    static const int kBoxes[] = {101, 102, 103, 104};
    for (int no : kBoxes) {
        std::string box;
        pb_int32(box, 1, no);
        pb_int32(box, 2, 1);
        pb_message(out, field, box);
    }
}

GachaHeroTemplate hero_template_for_serial(int serial) {
    const auto &pool = tbl_store().heroes();
    if (!pool.empty())
    {
        const auto &h = pool[static_cast<std::size_t>(serial) % pool.size()];
        return {"", h.no, h.grade_sno, h.race_sno};
    }
    return fallback_gacha_hero_for_serial(serial);
}

} // namespace

// ---- EndpointMutationService ----

EndpointMutationService::EndpointMutationService(AccountDatabase& db)
    : db_(db) {}

// ---- private helpers ----

int EndpointMutationService::meta_int(const std::string& key, int fallback) const {
    return static_cast<int>(
        std::strtol(db_.meta_get(key, std::to_string(fallback)).c_str(), nullptr, 10));
}

void EndpointMutationService::meta_set_int(const std::string& key, int value) {
    db_.meta_set(key, std::to_string(value));
}

std::int64_t EndpointMutationService::day_number() const {
    return unix_ms() / 86400000LL;
}

bool EndpointMutationService::mark_once_per_day(const std::string& key) {
    const std::string today = std::to_string(day_number());
    if (db_.meta_get(key, "") == today) return false;
    db_.meta_set(key, today);
    return true;
}

EndpointMutationService::Pending EndpointMutationService::compute_pending() const {
    const AutoHuntRewardPolicy policy = auto_hunt_reward_policy();
    const std::int64_t now     = unix_ms();
    const std::int64_t created = std::atoll(
        db_.meta_get("created_dt", std::to_string(now)).c_str());
    const std::int64_t rdt = std::atoll(
        db_.meta_get("autohunt_receive_dt", std::to_string(created)).c_str());
    std::int64_t mins = (now - rdt) / 60000;
    if (mins < 0)              mins = 0;
    if (mins > policy.cap_minutes) mins = policy.cap_minutes;
    return {policy.gold_per_minute * mins,
            policy.mana_dust_per_minute * mins,
            policy.exp_per_minute * mins};
}

EndpointMutationService::Pending
EndpointMutationService::apply_pending_floor(Pending p) const {
    if (p.gold || p.mana_dust || p.exp) return p;
    if (db_.max_tutorial_no() >= 3100 && db_.max_stage_no() > 5) return p;
    const AutoHuntRewardPolicy policy = auto_hunt_reward_policy();
    return {policy.tutorial_floor_gold,
            policy.tutorial_floor_mana_dust,
            policy.tutorial_floor_exp};
}

void EndpointMutationService::spend_gacha_cost(int ticket_currency,
                                                int dia_currency,
                                                int count,
                                                int is_use_pay_dia) {
    const int ticket_count = meta_int("prefer_ticket_cost", 1) ? count : 0;
    if (ticket_count > 0)
        db_.currency_add(ticket_currency, -static_cast<std::int64_t>(ticket_count));
    else
        db_.currency_add(is_use_pay_dia ? 42 : dia_currency,
                         -300LL * count);
}

std::string EndpointMutationService::currency_all_pb() const {
    std::string all;
    for (const auto& row : db_.currencies()) {
        std::string c;
        pb_int32(c, 1, row.type);
        if (row.value) pb_int64(c, 2, row.value);
        pb_message(all, 1, c);
    }
    return all;
}

std::string EndpointMutationService::item_etc_pb_msg(int item_no) const {
    std::string s;
    pb_int32(s, 1, item_no);
    pb_int32(s, 2, db_.item_etc_count(item_no));
    return s;
}

std::string EndpointMutationService::gacha_mileage_pb_msg(int mileage_no,
                                                           int changed_point) {
    const std::string key = "gacha_mileage_" + std::to_string(mileage_no);
    int after = meta_int(key, 0) + changed_point;
    meta_set_int(key, after);
    std::string m;
    if (mileage_no)    pb_int32(m, 1, mileage_no);
    if (changed_point) pb_int32(m, 2, changed_point);
    if (after)         pb_int32(m, 3, after);
    return m;
}

std::string EndpointMutationService::build_gacha_state_pb_msg() const {
    std::string g;
    pb_int32(g, 1, meta_int("gacha_hero_ceil",              0));
    pb_int32(g, 2, meta_int("gacha_premium_ceil",           0));
    pb_int32(g, 3, meta_int("gacha_wish_ceil",              0));
    pb_int32(g, 4, meta_int("gacha_tutorial_fixed",         1));
    pb_int32(g, 5, meta_int("gacha_hero_auto_release",      1));
    pb_int32(g, 6, meta_int("gacha_signature_auto_release", 1));
    return g;
}

int EndpointMutationService::clamp_count(int count) {
    if (count <= 0) return 1;
    if (count > 10) return 10;
    return count;
}

std::vector<std::string> EndpointMutationService::split_comma(const std::string& s) {
    std::vector<std::string> v;
    std::size_t i = 0;
    while (true) {
        std::size_t j = s.find(',', i);
        if (j == std::string::npos) { v.push_back(s.substr(i)); break; }
        v.push_back(s.substr(i, j - i));
        i = j + 1;
    }
    return v;
}

// ---- mutation methods ----

std::string EndpointMutationService::tutorial_active(std::int32_t tutorial_no) {
    db_.upsert_tutorial(tutorial_no);

    auto grant = [&](const char* idx, int no, int grade, int race) -> std::pair<HeroRow, HeroReputationRow> {
        auto existing = db_.hero_by_idx(idx);
        HeroRow h;
        h.idx      = idx;
        h.hero_no  = no;
        h.level    = existing ? existing->level : 1;
        h.grade_sno = grade;
        h.race_sno  = race;
        db_.upsert_hero(h);

        auto rep = db_.hero_reputation_by_no(no).value_or(HeroReputationRow{});
        rep.hero_no = no;
        if (!rep.max_grade_sno) rep.max_grade_sno = grade;
        db_.upsert_hero_reputation(rep);
        return {h, rep};
    };

    std::string out;
    switch (tutorial_no) {
        case 1400: {
            auto [h, rep] = grant("0_off_h1400", 120, 110012, 110052);
            pb_message(out, 1, hero_pb_msg(h));
            pb_message(out, 2, rep_pb_msg(rep.hero_no, rep.max_grade_sno));
            break;
        }
        case 2200: {
            auto [h, rep] = grant("0_off_h2200", 1060, 110014, 110052);
            pb_message(out, 1, hero_pb_msg(h));
            pb_message(out, 2, rep_pb_msg(rep.hero_no, rep.max_grade_sno));
            break;
        }
        case 4805: {
            auto [h, rep] = grant("0_off_h4805", 1010, 110014, 110052);
            pb_message(out, 1, hero_pb_msg(h));
            pb_message(out, 2, rep_pb_msg(rep.hero_no, rep.max_grade_sno));
            db_.item_etc_add(31010, 1);
            std::string item;
            pb_int32(item, 1, 31010);
            pb_int32(item, 2, db_.item_etc_count(31010));
            pb_message(out, 4, item);
            break;
        }
        case 5300: {
            auto [h1, r1] = grant("0_off_h5300a", 120, 110012, 110052);
            auto [h2, r2] = grant("0_off_h5300b", 120, 110012, 110052);
            pb_message(out, 1, hero_pb_msg(h1));
            pb_message(out, 1, hero_pb_msg(h2));
            pb_message(out, 2, rep_pb_msg(r1.hero_no, r1.max_grade_sno));
            pb_message(out, 2, rep_pb_msg(r2.hero_no, r2.max_grade_sno));
            break;
        }
        default: break;
    }
    std::string tut;
    pb_int32(tut, 1, tutorial_no);
    pb_message(out, 3, tut);
    log_line(0, "ADB", "tutorial_active " + std::to_string(tutorial_no));
    return out;
}

std::string EndpointMutationService::stage_clear(std::int32_t stage_no) {
    const std::int64_t now = unix_ms();
    db_.upsert_stage(stage_no, 1, now);
    if (stage_no == 5) db_.item_etc_set(3201, 60);

    const std::int64_t receive_dt = std::atoll(
        db_.meta_get("autohunt_receive_dt",
                     std::to_string(now - 7200000)).c_str());
    db_.meta_set("autohunt_stage_no", std::to_string(stage_no));
    db_.meta_set("autohunt_lab_dt",   std::to_string(now));

    if (auto fx = fixture_store().payload("/StageClear", true)) {
        std::string o = *fx;
        o = pb_replace_int32(o, 8, stage_no);
        o = pb_replace_message(o, 6, auto_hunt_state_raw_pb(stage_no, now, receive_dt));
        if (stage_no == 5) {
            std::string item;
            pb_int32(item, 1, 3201);
            pb_int32(item, 2, 60);
            pb_message(o, 2, item);
        }
        log_line(0, "ADB", "stage_clear " + std::to_string(stage_no)
                           + " fixture protoBytes=" + std::to_string(o.size()));
        return o;
    }

    std::string out;
    pb_message(out, 1, currency_all_pb());
    if (stage_no == 5) {
        std::string item;
        pb_int32(item, 1, 3201);
        pb_int32(item, 2, 60);
        pb_message(out, 2, item);
    }
    pb_message(out, 6, auto_hunt_state_raw_pb(stage_no, now, receive_dt));
    pb_int32(out, 8, stage_no);
    log_line(0, "ADB", "stage_clear " + std::to_string(stage_no));
    return out;
}

std::string EndpointMutationService::story_clear(std::int32_t story_no) {
    const std::int64_t now = unix_ms();
    db_.upsert_story(story_no, now);
    std::string out;
    std::string s;
    pb_int32(s, 1, story_no);
    pb_int64(s, 2, now);
    pb_message(out, 1, s);
    pb_message(out, 2, currency_all_pb());
    log_line(0, "ADB", "story_clear " + std::to_string(story_no));
    return out;
}

std::string EndpointMutationService::dungeon_clear(std::int32_t dungeon_id) {
    constexpr int kDungeonNo = 10001;
    if (dungeon_id <= 0) {
        dungeon_id = static_cast<std::int32_t>(
            std::strtol(db_.meta_get("session_dungeon_id", "1406786").c_str(), nullptr, 10));
    }
    const bool had = db_.dungeon_by_no(kDungeonNo).has_value();
    const std::int64_t now = unix_ms();

    DungeonRow dr{};
    dr.dungeon_no    = kDungeonNo;
    dr.update_dt     = now;
    dr.is_clear      = 1;
    dr.is_first_clear = had ? 0 : 1;
    db_.upsert_dungeon(dr);

    db_.meta_set("session_dungeon_id", std::to_string(dungeon_id));
    db_.meta_set("session_dungeon_no", std::to_string(kDungeonNo));
    if (!had) db_.upsert_tutorial(4800);

    if (auto fx = fixture_store().payload("/DungeonClear", true)) {
        std::string o = *fx;
        std::string dungeon = pb_get_message(o, 1);
        if (!dungeon.empty()) {
            dungeon = pb_replace_int32(dungeon, 1, dungeon_id);
            dungeon = pb_replace_int32(dungeon, 2, kDungeonNo);
            dungeon = pb_replace_int32(dungeon, 11, 0);
            dungeon = pb_replace_int32(dungeon, 12, 1);
            if (!had) dungeon = pb_replace_int32(dungeon, 13, 1);
            o = pb_replace_message(o, 1, dungeon);
        }
        log_line(0, "ADB", "dungeon_clear dungeonId=" + std::to_string(dungeon_id)
                           + " fixture protoBytes=" + std::to_string(o.size()));
        return o;
    }

    std::string out;
    pb_message(out, 1, cleared_dungeon_raw_pb(dungeon_id, kDungeonNo, had ? 0 : 1));
    pb_message(out, 3, currency_all_pb());
    log_line(0, "ADB", "dungeon_clear dungeonId=" + std::to_string(dungeon_id));
    return out;
}

std::string EndpointMutationService::dungeon_enter(std::int32_t dungeon_no) {
    if (dungeon_no <= 0) dungeon_no = 10001;
    constexpr std::int32_t kSessionDungeonId = 1406786;
    db_.meta_set("session_dungeon_id", std::to_string(kSessionDungeonId));
    db_.meta_set("session_dungeon_no", std::to_string(dungeon_no));

    if (auto fx = fixture_store().payload("/DungeonEnter", true)) {
        log_line(0, "ADB", "dungeon_enter dungeonNo=" + std::to_string(dungeon_no)
                           + " dungeonId=" + std::to_string(kSessionDungeonId));
        return *fx;
    }
    log_line(0, "ADB", "dungeon_enter fallback minimal dungeonNo=" + std::to_string(dungeon_no));
    return minimal_dungeon_payload(kSessionDungeonId, dungeon_no, false);
}

std::string EndpointMutationService::dungeon_info_update(const std::string& req) {
    const int dungeon_no = static_cast<int>(
        std::strtol(db_.meta_get("session_dungeon_no", "10001").c_str(), nullptr, 10));
    const int32_t dungeon_id = pb_get_int32(req, 3,
        static_cast<std::int32_t>(
            std::strtol(db_.meta_get("session_dungeon_id", "1406786").c_str(), nullptr, 10)));

    std::string dungeon;
    if (auto fx = fixture_store().payload("/DungeonInfoUpdate", true))
        dungeon = pb_get_message(*fx, 1);
    if (dungeon.empty()) {
        if (auto fx = fixture_store().payload("/DungeonEnter", true))
            dungeon = pb_get_message(*fx, 1);
    }
    if (dungeon.empty())
        dungeon = pb_get_message(minimal_dungeon_payload(dungeon_id, dungeon_no, false), 1);

    auto merge_bytes = [&](int req_field, int resp_field) {
        if (!pb_has_field(req, req_field)) return;
        dungeon = pb_replace_bytes(dungeon, resp_field, pb_get_string(req, req_field, ""));
    };

    dungeon = pb_replace_int32(dungeon, 1, dungeon_id);
    dungeon = pb_replace_int32(dungeon, 2, dungeon_no);
    if (pb_has_field(req, 1))
        dungeon = pb_replace_float(dungeon, 4, pb_get_float(req, 1, 0.f));
    if (pb_has_field(req, 2))
        dungeon = pb_replace_float(dungeon, 5, pb_get_float(req, 2, 0.f));
    merge_bytes(4,  6);
    merge_bytes(5,  7);
    merge_bytes(10, 8);
    merge_bytes(6,  9);
    merge_bytes(7,  10);
    merge_bytes(11, 17);
    if (pb_has_field(req, 8))
        dungeon = pb_replace_int32(dungeon, 14, pb_get_int32(req, 8, -1));
    if (pb_has_field(req, 9))
        dungeon = pb_replace_int32(dungeon, 15, pb_get_int32(req, 9, -1));
    if (pb_has_field(req, 12))
        dungeon = pb_replace_int32(dungeon, 19, pb_get_int32(req, 12, 0));
    if (pb_has_field(req, 13))
        dungeon = pb_replace_int32(dungeon, 20, pb_get_int32(req, 13, 1701));
    if (!pb_has_field(dungeon, 11))
        dungeon = pb_replace_int32(dungeon, 11, 1);

    std::string out;
    pb_message(out, 1, dungeon);
    log_line(0, "ADB", "dungeon_info_update dungeonId=" + std::to_string(dungeon_id)
                       + " protoBytes=" + std::to_string(out.size()));
    return out;
}

std::string EndpointMutationService::formation_save(
        std::int32_t no, std::int32_t kind,
        const std::vector<std::string>& heroidx,
        std::int32_t formation_type,
        const std::string& name) {

    const std::vector<std::string>& hx =
        heroidx.empty()
            ? std::vector<std::string>{"0","0","0","0","0"}
            : heroidx;

    FormationRow f{};
    f.no             = no;
    f.kind           = kind;
    f.formation_type = formation_type;
    f.formation_name = name;
    db_.upsert_formation(f);

    db_.delete_formation_heroes(no, kind);
    for (int i = 0; i < static_cast<int>(hx.size()); ++i) {
        FormationHeroRow fh{};
        fh.no       = no;
        fh.kind     = kind;
        fh.position = i;
        fh.hero_idx = hx[static_cast<std::size_t>(i)];
        db_.upsert_formation_hero(fh);
    }

    std::string fm;
    if (no)            pb_int32(fm, 1, no);
    pb_int32(fm, 2, kind);
    for (const auto& h : hx) pb_string(fm, 3, h);
    if (formation_type) pb_int32(fm, 4, formation_type);
    if (!name.empty())  pb_string(fm, 5, name);
    std::string out;
    pb_message(out, 1, fm);
    log_line(0, "ADB", "formation_save no=" + std::to_string(no)
                       + " kind=" + std::to_string(kind));
    return out;
}

std::string EndpointMutationService::hero_level_up(const std::string& hero_idx,
                                                    std::int32_t to_level) {
    auto existing = db_.hero_by_idx(hero_idx);
    const int prev = existing ? existing->level : 1;

    if (existing) {
        existing->level = to_level;
        db_.upsert_hero(*existing);
    }

    std::string out;
    pb_message(out, 1, currency_all_pb());
    pb_int32(out, 2, prev);
    pb_int32(out, 3, 1);
    log_line(0, "ADB", "hero_level_up idx=" + hero_idx
                       + " to=" + std::to_string(to_level));
    return out;
}

std::string EndpointMutationService::hero_upgrade(const std::string& hero_idx_list,
                                                   const std::string& upgrade_no_list) {
    auto idxs    = split_comma(hero_idx_list);
    auto nos     = split_comma(upgrade_no_list);
    std::string out;
    for (std::size_t i = 0; i < idxs.size(); ++i) {
        if (idxs[i].empty()) continue;
        auto hero = db_.hero_by_idx(idxs[i]);
        if (!hero) continue;
        if (i < nos.size() && !nos[i].empty()) {
            int next_grade = static_cast<int>(std::strtol(nos[i].c_str(), nullptr, 10));
            if (next_grade > 0) hero->grade_sno = next_grade;
        }
        db_.upsert_hero(*hero);
        pb_message(out, 1, hero_pb_msg(*hero));

        auto rep = db_.hero_reputation_by_no(hero->hero_no)
                       .value_or(HeroReputationRow{});
        rep.hero_no = hero->hero_no;
        if (hero->grade_sno > rep.max_grade_sno)
            rep.max_grade_sno = hero->grade_sno;
        db_.upsert_hero_reputation(rep);
        pb_message(out, 5, rep_pb_msg(rep.hero_no, rep.max_grade_sno));
    }
    pb_message(out, 4, currency_all_pb());
    log_line(0, "ADB", "hero_upgrade list=" + hero_idx_list);
    return out;
}

std::string EndpointMutationService::hero_gift(std::int32_t gift_no,
                                                std::int32_t hero_no,
                                                std::int32_t gift_count) {
    if (gift_count <= 0) gift_count = 1;
    auto rep = db_.hero_reputation_by_no(hero_no).value_or(HeroReputationRow{});
    rep.hero_no    = hero_no;
    rep.reputation += gift_count * 10;
    rep.gift_dt    = unix_ms();
    db_.upsert_hero_reputation(rep);
    if (gift_no) db_.item_etc_add(gift_no, -gift_count);

    std::string out;
    pb_int32(out, 1, hero_no);
    pb_int32(out, 2, rep.reputation);
    pb_int32(out, 3, rep.reputation);
    pb_int64(out, 4, rep.gift_dt);
    if (gift_no) {
        std::string item;
        pb_int32(item, 1, gift_no);
        pb_int32(item, 2, db_.item_etc_count(gift_no));
        pb_message(out, 6, item);
    }
    pb_message(out, 7, currency_all_pb());
    log_line(0, "ADB", "hero_gift heroNo=" + std::to_string(hero_no));
    return out;
}

std::string EndpointMutationService::hero_equip(const std::string& hero_idx,
                                                 std::int64_t item_equip_id,
                                                 std::int32_t slot) {
    HeroEquipSlotRow r{};
    r.hero_idx      = hero_idx;
    r.slot          = slot;
    r.item_equip_id = item_equip_id;
    db_.upsert_hero_equip_slot(r);
    std::string out;
    pb_string(out, 1, "");
    log_line(0, "ADB", "hero_equip idx=" + hero_idx
                       + " slot=" + std::to_string(slot));
    return out;
}

std::string EndpointMutationService::hero_unequip(const std::string& hero_idx,
                                                   std::int32_t slot) {
    db_.delete_hero_equip_slot(hero_idx, slot);
    std::string out;
    pb_string(out, 1, "");
    log_line(0, "ADB", "hero_unequip idx=" + hero_idx
                       + " slot=" + std::to_string(slot));
    return out;
}

std::string EndpointMutationService::hero_equip_preset_info_list() {
    const std::vector<HeroEquipPresetSlotRow> slots = db_.hero_equip_preset_slots();

    std::string out;
    if (!slots.empty())
        pb_int32(out, 1, static_cast<std::int32_t>(slots.size()));
    for (const HeroEquipPresetSlotRow& row : slots) {
        std::string slot;
        if (row.preset_slot != 0)
            pb_int32(slot, 1, row.preset_slot);
        pb_string(slot, 2, row.preset_name);
        pb_message(out, 3, slot);
    }

    log_line(0, "ADB", "hero_equip_preset_info_list slots=" + std::to_string(slots.size()));
    return out;
}

std::string EndpointMutationService::hero_equip_preset_list(std::int32_t preset_slot) {
    const std::optional<HeroEquipPresetSlotRow> slot_row = db_.hero_equip_preset_slot(preset_slot);
    if (!slot_row) {
        log_line(0, "ADB", "hero_equip_preset_list missing slot=" + std::to_string(preset_slot));
        return {};
    }

    std::vector<std::pair<std::string, std::vector<HeroEquipPresetItemRow>>> items_by_hero;
    for (const HeroEquipPresetItemRow& item : db_.hero_equip_preset_items(preset_slot)) {
        if (items_by_hero.empty() || items_by_hero.back().first != item.hero_idx)
            items_by_hero.emplace_back(item.hero_idx, std::vector<HeroEquipPresetItemRow>{});
        items_by_hero.back().second.push_back(item);
    }

    std::string out;
    if (slot_row->preset_slot != 0)
        pb_int32(out, 1, slot_row->preset_slot);
    pb_string(out, 2, slot_row->preset_name);
    for (const auto& entry : items_by_hero) {
        std::string hero;
        pb_string(hero, 1, entry.first);
        for (const HeroEquipPresetItemRow& item : entry.second) {
            std::string item_slot;
            if (item.slot != 0)
                pb_int32(item_slot, 1, item.slot);
            if (item.item_equip_id != 0)
                pb_int32(item_slot, 2, static_cast<std::int32_t>(item.item_equip_id));
            pb_message(hero, 2, item_slot);
        }
        pb_message(out, 3, hero);
    }

    log_line(0, "ADB", "hero_equip_preset_list slot=" + std::to_string(preset_slot)
                       + " heroes=" + std::to_string(items_by_hero.size()));
    return out;
}

std::string EndpointMutationService::hero_equip_preset_save(const std::string& request) {
    const std::int32_t preset_slot = pb_get_int32(request, 1, 0);
    const std::string preset_name = pb_get_string(request, 2, "");

    std::vector<HeroEquipPresetItemRow> items;
    int hero_order = 0;
    for (const std::string& hero_message : pb_get_all_messages(request, 3)) {
        const std::string hero_idx = pb_get_string(hero_message, 1, "");
        if (hero_idx.empty())
            continue;

        int item_order = 0;
        for (const std::string& item_message : pb_get_all_messages(hero_message, 2)) {
            HeroEquipPresetItemRow item;
            item.preset_slot = preset_slot;
            item.hero_order = hero_order;
            item.item_order = item_order;
            item.hero_idx = hero_idx;
            item.slot = pb_get_int32(item_message, 1, 0);
            item.item_equip_id = pb_get_int64(item_message, 2, 0);
            items.push_back(std::move(item));
            ++item_order;
        }
        ++hero_order;
    }

    HeroEquipPresetSlotRow slot_row;
    slot_row.preset_slot = preset_slot;
    slot_row.preset_name = preset_name;
    db_.begin();
    db_.upsert_hero_equip_preset_slot(slot_row);
    db_.replace_hero_equip_preset_items(preset_slot, items);
    db_.commit();

    log_line(0, "ADB", "hero_equip_preset_save slot=" + std::to_string(preset_slot)
                       + " items=" + std::to_string(items.size()));
    return hero_equip_preset_list(preset_slot);
}

std::string EndpointMutationService::hero_equip_preset_apply(const std::string& request) {
    const std::int32_t preset_slot = pb_get_int32(request, 1, 0);
    std::vector<std::pair<std::string, std::vector<HeroEquipPresetItemRow>>> items_by_hero;

    int hero_order = 0;
    for (const std::string& hero_message : pb_get_all_messages(request, 2)) {
        const std::string hero_idx = pb_get_string(hero_message, 1, "");
        if (hero_idx.empty())
            continue;

        items_by_hero.emplace_back(hero_idx, std::vector<HeroEquipPresetItemRow>{});
        int item_order = 0;
        for (const std::string& item_message : pb_get_all_messages(hero_message, 2)) {
            HeroEquipPresetItemRow item;
            item.preset_slot = preset_slot;
            item.hero_order = hero_order;
            item.item_order = item_order;
            item.hero_idx = hero_idx;
            item.slot = pb_get_int32(item_message, 1, 0);
            item.item_equip_id = pb_get_int64(item_message, 2, 0);
            items_by_hero.back().second.push_back(std::move(item));
            ++item_order;
        }
        ++hero_order;
    }

    if (items_by_hero.empty()) {
        for (const HeroEquipPresetItemRow& item : db_.hero_equip_preset_items(preset_slot)) {
            if (items_by_hero.empty() || items_by_hero.back().first != item.hero_idx)
                items_by_hero.emplace_back(item.hero_idx, std::vector<HeroEquipPresetItemRow>{});
            items_by_hero.back().second.push_back(item);
        }
    }

    db_.begin();
    for (const auto& entry : items_by_hero) {
        for (const HeroEquipPresetItemRow& item : entry.second) {
            HeroEquipSlotRow slot;
            slot.hero_idx = entry.first;
            slot.slot = item.slot;
            slot.item_equip_id = item.item_equip_id;
            db_.upsert_hero_equip_slot(slot);
        }
    }
    db_.commit();

    std::string out;
    for (const auto& entry : items_by_hero) {
        std::string hero;
        pb_string(hero, 1, entry.first);
        for (const HeroEquipPresetItemRow& item : entry.second) {
            std::string equip;
            if (item.slot != 0)
                pb_int32(equip, 1, item.slot);
            if (item.item_equip_id != 0)
                pb_int32(equip, 2, static_cast<std::int32_t>(item.item_equip_id));
            pb_message(hero, 2, equip);
        }
        pb_message(out, 2, hero);
    }

    log_line(0, "ADB", "hero_equip_preset_apply slot=" + std::to_string(preset_slot)
                       + " heroes=" + std::to_string(items_by_hero.size()));
    return out;
}

std::string EndpointMutationService::equip_item_upgrade(
        const std::string& hero_idx, std::int32_t slot,
        const std::vector<std::string>& materials) {

    std::optional<HeroEquipSlotRow> slot_row;
    for (const auto& s : db_.hero_equip_slots(hero_idx))
        if (s.slot == slot) { slot_row = s; break; }

    ItemEquipRow item{};
    if (slot_row) {
        auto found = db_.item_equip_by_id(slot_row->item_equip_id);
        if (found) item = *found;
        else       item.id = slot_row->item_equip_id;
    }
    item.exp += static_cast<int>(materials.size()) * 100;
    if (item.id) db_.upsert_item_equip(item);

    for (const auto& m : materials) {
        int32_t type = pb_get_int32(m, 1, 0);
        if (type == 1) {
            int32_t item_no = pb_get_int32(m, 3, 0);
            if (item_no) db_.item_etc_add(item_no, -1);
        }
    }

    std::string out;
    pb_message(out, 1, currency_all_pb());
    if (item.id)
        pb_message(out, 2, hero_equip_info_raw_pb(hero_idx, slot, item));
    log_line(0, "ADB", "equip_item_upgrade idx=" + hero_idx
                       + " slot=" + std::to_string(slot));
    return out;
}

std::string EndpointMutationService::equip_item_transcendence(
        const std::string& hero_idx, std::int32_t slot,
        std::int32_t material_no) {

    std::optional<HeroEquipSlotRow> slot_row;
    for (const auto& s : db_.hero_equip_slots(hero_idx))
        if (s.slot == slot) { slot_row = s; break; }

    ItemEquipRow item{};
    if (slot_row) {
        auto found = db_.item_equip_by_id(slot_row->item_equip_id);
        if (found) item = *found;
        else       item.id = slot_row->item_equip_id;
    }
    if (item.id) {
        item.item_no += 1;
        db_.upsert_item_equip(item);
    }
    if (material_no) db_.item_etc_add(material_no, -1);

    std::string out;
    pb_message(out, 1, currency_all_pb());
    if (material_no) {
        std::string it;
        pb_int32(it, 1, material_no);
        pb_int32(it, 2, db_.item_etc_count(material_no));
        pb_message(out, 2, it);
    }
    if (item.id)
        pb_message(out, 3, hero_equip_info_raw_pb(hero_idx, slot, item));
    log_line(0, "ADB", "equip_item_transcendence idx=" + hero_idx
                       + " slot=" + std::to_string(slot));
    return out;
}

std::string EndpointMutationService::spirit_tree_slot_equip(
        std::int32_t slot_no, const std::string& hero_idx) {
    const std::int64_t now = unix_ms();
    AccountDatabase::SpiritTreeRow r{};
    r.slot_no   = slot_no;
    r.hero_idx  = hero_idx;
    r.enable_dt = now;
    db_.upsert_spirit_tree(r);

    std::string tree;
    if (slot_no) pb_int32(tree, 1, slot_no);
    pb_string(tree, 2, hero_idx);
    pb_int64(tree, 3, now);
    std::string out;
    pb_message(out, 1, tree);
    log_line(0, "ADB", "spirit_tree_slot_equip slotNo=" + std::to_string(slot_no));
    return out;
}

std::string EndpointMutationService::spirit_tree_slot_unequip(std::int32_t slot_no) {
    AccountDatabase::SpiritTreeRow r{};
    r.slot_no   = slot_no;
    r.hero_idx  = "";
    r.enable_dt = 0;
    db_.upsert_spirit_tree(r);

    std::string tree;
    if (slot_no) pb_int32(tree, 1, slot_no);
    std::string out;
    pb_message(out, 1, tree);
    log_line(0, "ADB", "spirit_tree_slot_unequip slotNo=" + std::to_string(slot_no));
    return out;
}

std::string EndpointMutationService::gacha_hero(std::int32_t count,
                                                  std::int32_t gacha_no,
                                                  std::int32_t auto_release,
                                                  std::int32_t is_use_pay_dia) {
    count = clamp_count(count);
    meta_set_int("gacha_hero_auto_release", auto_release ? 1 : 0);
    spend_gacha_cost(28, 2, count, is_use_pay_dia);

    int serial = meta_int("gacha_hero_serial", 0);
    std::string out;
    for (int i = 0; i < count; ++i) {
        GachaHeroTemplate t = hero_template_for_serial(serial);
        HeroRow h{};
        h.idx      = "0_dyn_gacha_" + std::to_string(serial);
        h.hero_no  = t.no;
        h.level    = 1;
        h.grade_sno = t.grade;
        h.race_sno  = t.race;
        db_.upsert_hero(h);

        auto rep = db_.hero_reputation_by_no(t.no).value_or(HeroReputationRow{});
        rep.hero_no = t.no;
        if (t.grade > rep.max_grade_sno) rep.max_grade_sno = t.grade;
        db_.upsert_hero_reputation(rep);

        pb_message(out, 1, hero_pb_msg(h));
        pb_message(out, 2, rep_pb_msg(rep.hero_no, rep.max_grade_sno));

        std::string view;
        pb_int32(view, 1, t.no);
        pb_int32(view, 2, t.no);
        pb_message(out, 8, view);
        ++serial;
    }
    meta_set_int("gacha_hero_serial", serial);
    meta_set_int("gacha_hero_ceil",
                 meta_int("gacha_hero_ceil", 0) + count);

    pb_message(out, 4, currency_all_pb());
    pb_message(out, 6, gacha_mileage_pb_msg(gacha_no, count));
    pb_message(out, 7, build_gacha_state_pb_msg());
    log_line(0, "ADB", "gacha_hero count=" + std::to_string(count));
    return out;
}

std::string EndpointMutationService::gacha_hero_tutorial() {
    const int roll = meta_int("gacha_tutorial_roll_count", 0);
    meta_set_int("gacha_tutorial_roll_count", roll + 1);
    const auto heroes = tutorial_gacha_roll(roll);

    std::string out;
    for (const GachaHeroTemplate &hero : heroes) {
        std::string h;
        pb_int32(h, 2, hero.no);
        pb_int32(h, 3, 1);
        pb_int32(h, 5, hero.grade);
        pb_int32(h, 6, hero.race);
        pb_message(out, 1, h);
    }
    log_line(0, "ADB", "gacha_hero_tutorial roll=" + std::to_string(roll + 1));
    return out;
}

std::string EndpointMutationService::gacha_hero_tutorial_fix() {
    std::string out;
    for (const GachaHeroTemplate &g : tutorial_fixed_gacha_heroes()) {
        HeroRow h{};
        h.idx      = g.idx;
        h.hero_no  = g.no;
        h.level    = 1;
        h.grade_sno = g.grade;
        h.race_sno  = g.race;
        db_.upsert_hero(h);

        auto rep = db_.hero_reputation_by_no(g.no).value_or(HeroReputationRow{});
        rep.hero_no = g.no;
        if (!rep.max_grade_sno) rep.max_grade_sno = g.grade;
        db_.upsert_hero_reputation(rep);

        pb_message(out, 1, hero_pb_msg(h));
    }
    static const int kReps[][2] = {
        {2070,110014},{310,110012},{410,110012},{110,110012},{210,110012}
    };
    for (const auto& r : kReps)
        pb_message(out, 2, rep_pb_msg(r[0], r[1]));

    std::string gacha;
    pb_int32(gacha, 4, 1);
    pb_message(out, 3, gacha);
    meta_set_int("gacha_tutorial_fixed", 1);
    log_line(0, "ADB", "gacha_hero_tutorial_fix +10 heroes");
    return out;
}

std::string EndpointMutationService::gacha_premium(std::int32_t count,
                                                    std::int32_t gacha_no) {
    count = clamp_count(count);
    spend_gacha_cost(46, 2, count, 0);
    constexpr int kPremiumPieceItem = 12008;
    db_.item_etc_add(kPremiumPieceItem, count * 10);
    meta_set_int("gacha_premium_no", gacha_no);
    meta_set_int("gacha_premium_ceil",
                 meta_int("gacha_premium_ceil", 0) + count);

    std::string out;
    pb_message(out, 1, build_gacha_state_pb_msg());
    std::string pick;
    pb_int32(pick, 1, kPremiumPieceItem);
    pb_int32(pick, 2, count * 10);
    pb_message(out, 4, pick);
    pb_message(out, 5, currency_all_pb());
    pb_message(out, 7, item_etc_pb_msg(kPremiumPieceItem));
    log_line(0, "ADB", "gacha_premium no=" + std::to_string(gacha_no) +
                       " count=" + std::to_string(count));
    return out;
}

std::string EndpointMutationService::gacha_signature(std::int32_t gacha_no,
                                                       std::int32_t count,
                                                       std::int32_t is_auto_release,
                                                       std::int32_t is_use_pay_dia) {
    count = clamp_count(count);
    meta_set_int("gacha_signature_auto_release", is_auto_release ? 1 : 0);
    spend_gacha_cost(45, 2, count, is_use_pay_dia);
    constexpr int kSignaturePieceItem = 10016;
    const int pieces = count * 10;
    db_.item_etc_add(kSignaturePieceItem, pieces);

    std::string out;
    pb_message(out, 1, item_etc_pb_msg(kSignaturePieceItem));
    pb_message(out, 3, currency_all_pb());
    std::string reward;
    pb_int32(reward, 1, kSignaturePieceItem);
    pb_int32(reward, 2, pieces);
    pb_message(out, 5, reward);
    pb_message(out, 7, gacha_mileage_pb_msg(gacha_no, count));
    log_line(0, "ADB", "gacha_signature count=" + std::to_string(count));
    return out;
}

std::string EndpointMutationService::event_pickup_gacha_select(std::int32_t event_group,
                                                                std::int32_t gacha_no) {
    if (event_group <= 0 || gacha_no <= 0) {
        log_line(0, "ADB", "event_pickup_gacha_select invalid");
        return {};
    }

    const bool tbl_match = event_pickup_select_has_tbl_row(event_group, gacha_no);
    const bool har_echo = event_pickup_select_has_har_echo(event_group, gacha_no);
    if (!tbl_match && !har_echo) {
        log_line(0, "ADB", "event_pickup_gacha_select unverified group=" + std::to_string(event_group)
                           + " gachaNo=" + std::to_string(gacha_no));
        return {};
    }

    meta_set_int("event_pickup_gacha_group", event_group);
    meta_set_int("event_pickup_gacha_no", gacha_no);

    std::string out;
    if (har_echo) {
        pb_int32(out, 1, event_group);
        pb_int32(out, 2, gacha_no);
    }
    log_line(0, "ADB", "event_pickup_gacha_select group=" + std::to_string(event_group)
                       + " gachaNo=" + std::to_string(gacha_no)
                       + " protoBytes=" + std::to_string(out.size()));
    return out;
}

std::string EndpointMutationService::shop_item_buy(std::int32_t shop_type,
                                                    std::int32_t shop_no,
                                                    std::int32_t no,
                                                    std::int32_t buy_cnt) {
    if (buy_cnt <= 0) buy_cnt = 1;
    const int shop_item_no = shop_no == 10100 ? 110010 : no;
    db_.currency_add(shop_type == 1 ? 2 : 1, -100LL * buy_cnt);
    db_.item_etc_add(shop_item_no, buy_cnt);

    const std::string key =
        "shop_buy_" + std::to_string(shop_no) + "_" + std::to_string(no);
    const int total_buy = meta_int(key, 0) + buy_cnt;
    meta_set_int(key, total_buy);

    std::string out;
    pb_message(out, 1, currency_all_pb());
    pb_message(out, 3, item_etc_pb_msg(shop_item_no));
    std::string shop_item;
    if (no)           pb_int32(shop_item, 1, no);
    if (shop_no)      pb_int32(shop_item, 2, shop_no);
    if (shop_item_no) pb_int32(shop_item, 3, shop_item_no);
    pb_int32(shop_item, 4, total_buy);
    pb_message(out, 4, shop_item);
    log_line(0, "ADB", "shop_item_buy shopNo=" + std::to_string(shop_no)
                       + " no=" + std::to_string(no));
    return out;
}

std::string EndpointMutationService::item_use(std::int32_t item_no,
                                               std::int32_t use_count,
                                               const std::string& choice_box,
                                               const std::string& choice_count) {
    if (use_count <= 0) use_count = 1;
    db_.item_etc_add(item_no, -use_count);

    std::vector<int> touched;
    touched.push_back(item_no);
    auto choices = split_comma(choice_box);
    auto counts  = split_comma(choice_count);
    bool granted_choice = false;
    for (std::size_t i = 0; i < choices.size(); ++i) {
        const int choice_item =
            static_cast<int>(std::strtol(choices[i].c_str(), nullptr, 10));
        if (choice_item <= 0) continue;
        int cnt = use_count;
        if (i < counts.size())
            cnt = static_cast<int>(std::strtol(counts[i].c_str(), nullptr, 10));
        if (cnt <= 0) cnt = use_count;
        db_.item_etc_add(choice_item, cnt);
        touched.push_back(choice_item);
        granted_choice = true;
    }
    if (!granted_choice) {
        db_.currency_add(1, 100000LL * use_count);
        db_.currency_add(3, 50000LL  * use_count);
        db_.currency_add(5, 10000LL  * use_count);
    }

    std::string out;
    pb_message(out, 1, currency_all_pb());
    for (int t : touched) pb_message(out, 3, item_etc_pb_msg(t));
    log_line(0, "ADB", "item_use itemNo=" + std::to_string(item_no));
    return out;
}

void EndpointMutationService::seed_arbeit_tasks_from_fixtures() {
    if (db_.meta_get("arbeit_tasks_seeded", "") == "1")
        return;

    int loaded = 0;
    auto ingest = [&](const std::string& endpoint) {
        auto raw = offline_data().read("responses/" + endpoint + ".json");
        if (!raw)
            return;
        json::Value root;
        std::string err;
        if (!json::parse(*raw, root, err)) {
            log_line(0, "ADB", "arbeit seed parse failed " + endpoint + ": " + err);
            return;
        }
        const json::Value* list = root.find("arbeitList");
        if (!list || !list->is_array())
            return;
        for (const json::Value& entry : list->arr) {
            if (!entry.is_object())
                continue;
            const auto no = json_int_field(entry, "no");
            const auto choice_no = json_int_field(entry, "arbeitChoiceNo");
            const auto arbeit_no = json_int_field(entry, "arbeitNo");
            if (!no || !choice_no || !arbeit_no)
                continue;
            if (!tbl_store().has_no("ArbeitChoice", *choice_no) ||
                !tbl_store().has_no("ArbeitList", *arbeit_no))
                continue;

            ArbeitTaskRow row{};
            row.no = static_cast<int>(*no);
            row.date = static_cast<int>(json_int_field(entry, "date").value_or(0));
            row.arbeit_choice_no = static_cast<int>(*choice_no);
            row.arbeit_no = static_cast<int>(*arbeit_no);
            row.objet_no = static_cast<int>(json_int_field(entry, "objetNo").value_or(0));
            row.start_timestamp = json_int_field(entry, "arbeitStartTimestamp").value_or(0);
            row.end_timestamp = json_int_field(entry, "arbeitEndTimestamp").value_or(0);
            row.state = static_cast<int>(json_int_field(entry, "state").value_or(0));
            row.kind = json_string_field(entry, "kind");
            row.ingame_day = static_cast<int>(json_int_field(entry, "ingameDay").value_or(0));

            std::vector<std::int32_t> hero_nos;
            if (const json::Value* heroes = entry.find("heroNo"); heroes && heroes->is_array()) {
                for (const json::Value& hero : heroes->arr)
                    hero_nos.push_back(static_cast<std::int32_t>(hero.as_int64()));
            }
            row.hero_no_csv = join_int_csv(hero_nos);
            db_.upsert_arbeit_task(row);
            ++loaded;
        }
    };

    ingest("ArbeitFinish");
    ingest("ArbeitStart");
    db_.meta_set("arbeit_tasks_seeded", "1");
    log_line(0, "ADB", "arbeit tasks seeded rows=" + std::to_string(loaded));
}

std::string EndpointMutationService::arbeit_start(const std::string& req) {
    seed_arbeit_tasks_from_fixtures();

    const std::int64_t now = unix_ms();
    std::string out;
    std::set<int> touched_heroes;
    for (const std::string& requested : pb_get_all_messages(req, 1)) {
        const int task_no = pb_get_int32(requested, 1, 0);
        if (task_no <= 0)
            continue;
        auto task = db_.arbeit_task_by_no(task_no);
        if (!task) {
            log_line(0, "ADB", "arbeit_start unknown taskNo=" + std::to_string(task_no));
            continue;
        }

        const json::Value* choice = tbl_store().row_by_no("ArbeitChoice", task->arbeit_choice_no);
        const json::Value* arbeit = tbl_store().row_by_no("ArbeitList", task->arbeit_no);
        if (!choice || !arbeit) {
            log_line(0, "ADB", "arbeit_start missing tbl taskNo=" + std::to_string(task_no));
            continue;
        }

        std::vector<std::int32_t> heroes = pb_get_all_int32(requested, 2);
        if (heroes.empty())
            heroes = parse_int_csv(task->hero_no_csv);
        task->date = today_yymmdd();
        task->arbeit_no = tbl_int(choice, "arbeit_no", task->arbeit_no);
        task->objet_no = tbl_int(choice, "objet_no", task->objet_no);
        task->kind = tbl_string(choice, "daynight");
        task->start_timestamp = now;
        task->end_timestamp = now + static_cast<std::int64_t>(tbl_int(arbeit, "time", 0)) * 1000LL;
        task->state = 1;
        task->hero_no_csv = join_int_csv(heroes);
        db_.upsert_arbeit_task(*task);
        pb_message(out, 1, arbeit_task_pb_msg(*task));

        for (std::int32_t hero_no : heroes) {
            auto rep = db_.hero_reputation_by_no(hero_no).value_or(HeroReputationRow{});
            rep.hero_no = hero_no;
            rep.state = 1;
            rep.last_update_dt = now;
            db_.upsert_hero_reputation(rep);
            touched_heroes.insert(hero_no);
        }
    }

    for (int hero_no : touched_heroes) {
        if (auto rep = db_.hero_reputation_by_no(hero_no))
            pb_message(out, 2, hero_rep_full_pb_msg(*rep));
    }
    log_line(0, "ADB", "arbeit_start tasks=" + std::to_string(touched_heroes.size()));
    return out;
}

std::string EndpointMutationService::arbeit_finish(const std::string& req) {
    seed_arbeit_tasks_from_fixtures();

    const std::int64_t now = unix_ms();
    std::string out;
    std::set<int> touched_items;
    std::set<int> touched_heroes;
    std::map<int, int> reward_totals;
    const std::vector<std::int32_t> task_nos = pb_get_all_int32(req, 1);

    for (std::int32_t task_no : task_nos) {
        auto task = db_.arbeit_task_by_no(task_no);
        if (!task) {
            log_line(0, "ADB", "arbeit_finish unknown taskNo=" + std::to_string(task_no));
            continue;
        }
        const json::Value* arbeit = tbl_store().row_by_no("ArbeitList", task->arbeit_no);
        if (!arbeit) {
            log_line(0, "ADB", "arbeit_finish missing ArbeitList no=" + std::to_string(task->arbeit_no));
            continue;
        }

        auto grant_reward = [&](int reward_no, int count) {
            if (reward_no <= 0 || count <= 0)
                return;
            reward_totals[reward_no] += count;
            if (reward_no <= 100) {
                db_.currency_add(reward_no, count);
            } else {
                db_.item_etc_add(reward_no, count);
                touched_items.insert(reward_no);
            }
            std::string reward;
            pb_int32(reward, 1, task->arbeit_no);
            pb_int32(reward, 2, reward_no);
            pb_int32(reward, 3, count);
            pb_message(out, 7, reward);
        };

        grant_reward(tbl_int(arbeit, "item1_no", 0), tbl_int(arbeit, "item1_amount", 0));
        grant_reward(tbl_int(arbeit, "item2_no", 0), tbl_int(arbeit, "item2_amount", 0));

        const int stress = tbl_int(arbeit, "stress", 0);
        const int arbeit_exp = tbl_int(arbeit, "arbeit_exp", 0);
        for (std::int32_t hero_no : parse_int_csv(task->hero_no_csv)) {
            auto rep = db_.hero_reputation_by_no(hero_no).value_or(HeroReputationRow{});
            rep.hero_no = hero_no;
            rep.state = 9;
            rep.stress = std::min(100, rep.stress + stress);
            rep.arbeit_exp += arbeit_exp;
            rep.last_update_dt = now;
            db_.upsert_hero_reputation(rep);
            touched_heroes.insert(hero_no);
        }

        task->state = 3;
        if (!task->end_timestamp)
            task->end_timestamp = now;
        db_.upsert_arbeit_task(*task);
        pb_message(out, 5, arbeit_task_pb_msg(*task));
    }

    pb_message(out, 1, currency_all_pb());
    for (int item_no : touched_items)
        pb_message(out, 3, item_etc_pb_msg(item_no));
    for (int hero_no : touched_heroes) {
        if (auto rep = db_.hero_reputation_by_no(hero_no))
            pb_message(out, 4, hero_rep_full_pb_msg(*rep));
    }
    log_line(0, "ADB", "arbeit_finish tasks=" + std::to_string(task_nos.size()) +
                       " rewards=" + std::to_string(reward_totals.size()));
    return out;
}

std::string EndpointMutationService::task_receive(std::int32_t type,
                                                   std::int32_t reward_no) {
    const std::string key =
        "task_receive_" + std::to_string(type) + "_" + std::to_string(reward_no);
    if (db_.meta_get(key, "") != "1") {
        db_.meta_set(key, "1");
        db_.currency_add(2, 100);
        db_.currency_add(4, 50);
    }

    std::string out;
    pb_message(out, 1, currency_all_pb());
    std::string task;
    pb_int32(task, 1, static_cast<int>(day_number()));
    std::string received;
    pb_int32(received, 1, reward_no);
    pb_message(task, 3, received);
    pb_message(out, type == 2 ? 7 : 6, task);
    log_line(0, "ADB", "task_receive type=" + std::to_string(type)
                       + " rewardNo=" + std::to_string(reward_no));
    return out;
}

std::string EndpointMutationService::auto_hunt_open(bool newbie) {
    const AutoHuntRewardPolicy policy = auto_hunt_reward_policy();
    Pending p = apply_pending_floor(compute_pending());

    if (auto fx = fixture_store().payload("/AutoHuntOpen", newbie)) {
        std::string out = *fx;
        out = pb_replace_message(out, 1,
            auto_hunt_currency_raw_pb(p.gold, p.mana_dust, p.exp));
        log_line(0, "ADB", "auto_hunt_open fixture protoBytes="
                           + std::to_string(out.size()));
        return out;
    }

    std::string out;
    pb_message(out, 1, auto_hunt_currency_raw_pb(p.gold, p.mana_dust, p.exp));
    append_auto_hunt_boxes(out, 2);
    pb_int32(out, 3, static_cast<int>(policy.gold_per_minute));
    pb_int32(out, 4, static_cast<int>(policy.mana_dust_per_minute));
    pb_int32(out, 5, static_cast<int>(policy.exp_per_minute));
    log_line(0, "ADB", "auto_hunt_open");
    return out;
}

std::string EndpointMutationService::auto_hunt_receive(bool newbie) {
    Pending p = apply_pending_floor(compute_pending());
    const std::int64_t now = unix_ms();
    db_.currency_add(1, p.gold);
    db_.currency_add(3, p.mana_dust);
    db_.currency_add(5, p.exp);
    db_.meta_set("autohunt_receive_dt", std::to_string(now));

    const int max_stage = db_.max_stage_no();

    AccountDatabase::AutoHuntRow ah{};
    ah.stage_no   = max_stage;
    ah.lab_dt     = now;
    ah.receive_dt = now;
    db_.upsert_auto_hunt(ah);

    if (auto fx = fixture_store().payload("/AutoHuntReceive", newbie)) {
        std::string out = *fx;
        out = pb_replace_message(out, 1, currency_all_pb());
        out = pb_replace_message(out, 4,
            auto_hunt_currency_raw_pb(p.gold, p.mana_dust, p.exp));
        out = pb_replace_message(out, 6,
            auto_hunt_state_raw_pb(max_stage, now, now));
        log_line(0, "ADB", "auto_hunt_receive +gold " + std::to_string(p.gold)
                           + " fixture protoBytes=" + std::to_string(out.size()));
        return out;
    }

    std::string out;
    pb_message(out, 1, currency_all_pb());
    pb_message(out, 4, auto_hunt_currency_raw_pb(p.gold, p.mana_dust, p.exp));
    append_auto_hunt_boxes(out, 5);
    pb_message(out, 6, auto_hunt_state_raw_pb(max_stage, now, now));
    log_line(0, "ADB", "auto_hunt_receive +gold " + std::to_string(p.gold));
    return out;
}

std::string EndpointMutationService::set_nickname(const std::string& name) {
    db_.meta_set("nickname", name);
    std::string out;
    pb_string(out, 1, name);
    log_line(0, "ADB", "set_nickname name=" + name);
    return out;
}

std::string EndpointMutationService::build_guide_quest_list() {
    const int max_stage       = db_.max_stage_no();
    const bool dungeon_10001  = db_.dungeon_by_no(10001).has_value();
    const int item_3201       = db_.item_etc_count(3201);

    std::string out;
    auto add = [&](int quest_no, int value) {
        std::string q;
        pb_int32(q, 1, quest_no);
        pb_int32(q, 2, value);
        pb_message(out, 1, q);
    };

    if (max_stage >= 2)       add(1001, 2);
    else if (max_stage >= 1)  add(1001, 1);

    if (max_stage >= 5 || dungeon_10001) {
        add(1002, 2);
        add(1005, 2);
        add(1003, item_3201 > 0 ? 2 : 1);
    } else if (max_stage >= 3) {
        add(1002, 1);
    }

    if (max_stage >= 10)      add(1004, 2);
    else if (max_stage >= 5)  add(1004, 5);

    if (max_stage >= 12)      add(1005, 2);
    log_line(0, "ADB", "build_guide_quest_list maxStage=" + std::to_string(max_stage));
    return out;
}

int EndpointMutationService::today_yyyymmdd() {
    std::time_t seconds = static_cast<std::time_t>(unix_ms() / 1000);
    std::tm local{};
#if defined(_WIN32)
    localtime_s(&local, &seconds);
#else
    localtime_r(&seconds, &local);
#endif
    return (local.tm_year + 1900) * 10000 + (local.tm_mon + 1) * 100 + local.tm_mday;
}

std::string EndpointMutationService::achievement_all_receive() {
    if (db_.meta_get("achievement_all_received", "") != "1") {
        db_.meta_set("achievement_all_received", "1");
        db_.currency_add(2, 500);
        db_.currency_add(28, 5);
    }
    std::string out;
    std::string achievement;
    pb_int32(achievement, 1, 999);
    pb_int64(achievement, 3, 1);
    pb_int32(achievement, 4, 999001);
    pb_message(out, 1, achievement);
    pb_message(out, 4, currency_all_pb());
    log_line(0, "ADB", "achievement_all_receive");
    return out;
}

std::string EndpointMutationService::mail_item_all_receive(std::int32_t category_flag) {
    const bool grant = mark_once_per_day("mail_all_receive_" + std::to_string(category_flag));
    if (grant) {
        db_.currency_add(2, 700);
        db_.currency_add(13, 4500);
        db_.currency_add(28, 1);
    }
    const std::int64_t now = unix_ms();
    std::string out;
    std::string mail;
    pb_string(mail, 1, "offline_mail_" + std::to_string(day_number()));
    pb_int32(mail, 2, 52);
    pb_string(mail, 3, "offline");
    pb_string(mail, 4, "offline reward");
    pb_string(mail, 6, "[[2,700],[13,4500],[28,1]]");
    pb_int32(mail, 8, 1);
    pb_int64(mail, 10, now);
    pb_int64(mail, 11, now + 7LL * 86400000LL);
    pb_message(out, 1, mail);
    pb_message(out, 2, currency_all_pb());
    log_line(0, "ADB", "mail_item_all_receive categoryFlag=" + std::to_string(category_flag));
    return out;
}

std::string EndpointMutationService::receive_attendance() {
    const bool grant = mark_once_per_day("attendance_receive");
    if (grant) {
        db_.currency_add(2, 100);
        db_.currency_add(46, 1);
    }
    const int day = today_yyyymmdd();
    int consecutive = meta_int("attendance_consecutive", 0);
    if (grant) {
        ++consecutive;
        meta_set_int("attendance_consecutive", consecutive);
    }
    std::string out;
    std::string attendance;
    pb_int32(attendance, 1, 42);
    pb_int32(attendance, 2, day);
    pb_int32(attendance, 3, consecutive);
    pb_message(out, 1, attendance);
    pb_message(out, 2, currency_all_pb());
    log_line(0, "ADB", "receive_attendance day=" + std::to_string(day));
    return out;
}

std::string EndpointMutationService::friend_heart_receive_all() {
    constexpr int kHeartCount = 15;
    const bool grant = mark_once_per_day("friend_heart_receive_all");
    if (grant)
        db_.currency_add(6, kHeartCount);
    std::string out;
    const std::string self = db_.meta_get("user_idx", "offline");
    for (int i = 0; i < kHeartCount; ++i) {
        std::string heart;
        pb_string(heart, 1, "offline_friend_" + std::to_string(i + 1));
        pb_string(heart, 2, self);
        pb_int32(heart, 3, 2);
        pb_message(out, 1, heart);
    }
    pb_int32(out, 2, grant ? kHeartCount : 0);
    pb_message(out, 3, currency_all_pb());
    log_line(0, "ADB", "friend_heart_receive_all grant=" + std::to_string(static_cast<int>(grant)));
    return out;
}

} // namespace eversoul
