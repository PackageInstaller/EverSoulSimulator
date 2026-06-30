// account_db.hpp — SQLite-backed persistent account state for the offline server.
//
// Stores the mutable parts of the player account (heroes, formations, cleared
// stages/stories, tutorial progress, currency, items) in a SQLite DB on external
// storage, so progress persists across runs and tutorial grants (gacha / tutorial
// hero rewards) actually accumulate. /UserInfo is rebuilt from this state; the
// mutating endpoints update it and return the matching protobuf response payload.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

namespace eversoul::db
{

    // Full /UserInfo protobuf payload (envelope NOT included), built from DB state.
    [[nodiscard]] std::string build_user_info();
    [[nodiscard]] std::string build_guide_quest_list();
    [[nodiscard]] std::string build_event_story_info();
    [[nodiscard]] std::string build_signature_list();
    [[nodiscard]] std::string build_cash_shop_list(std::int32_t request_no);
    [[nodiscard]] std::string build_cash_shop_user_able_cash_item_id_all_list(const std::vector<std::int32_t> &tab_ids);
    [[nodiscard]] std::string build_illust_list();

    // Mutating endpoints — each persists state and returns the response payload.
    [[nodiscard]] std::string tutorial_active(std::int32_t tutorial_no);
    [[nodiscard]] std::string stage_clear(std::int32_t stage_no);
    [[nodiscard]] std::string story_clear(std::int32_t story_no);
    [[nodiscard]] std::string dungeon_clear(std::int32_t dungeon_id);
    [[nodiscard]] std::string dungeon_enter(std::int32_t dungeon_no);
    [[nodiscard]] std::string dungeon_save(std::int32_t dungeon_id);
    [[nodiscard]] std::string dungeon_chest_reward_check(std::int32_t dungeon_id, std::int32_t reward_no);
    [[nodiscard]] std::string dungeon_monster_reward_check(std::int32_t dungeon_id, std::int32_t monster_uid);
    [[nodiscard]] std::string dungeon_info_update(const std::string &request);
    [[nodiscard]] std::string battle_save(const std::string &request);
    [[nodiscard]] std::string profile_update_visible(const std::string &profile_visible_base64);
    [[nodiscard]] std::string change_lobby_background(const std::string &request);
    [[nodiscard]] std::string save_illust(const std::string &illusts);
    [[nodiscard]] std::string guild_info(const std::string &guild_idx);
    [[nodiscard]] std::string guild_join_request_list(const std::string &guild_idx);
    [[nodiscard]] std::string arena_weekly_rank_reward(std::int32_t arena_type);
    [[nodiscard]] std::string formation_save(std::int32_t no, std::int32_t kind,
                                             const std::vector<std::string> &heroidx,
                                             std::int32_t formation_type, const std::string &name);
    [[nodiscard]] std::string gacha_hero_tutorial_fix();
    [[nodiscard]] std::string gacha_hero_tutorial();
    [[nodiscard]] std::string hero_level_up(const std::string &hero_idx, std::int32_t to_level);
    [[nodiscard]] std::string set_nickname(const std::string &name);
    [[nodiscard]] std::string hero_upgrade(const std::string &hero_idx_list, const std::string &upgrade_no_list);
    [[nodiscard]] std::string hero_gift(std::int32_t gift_no, std::int32_t hero_no, std::int32_t gift_count);
    [[nodiscard]] std::string hero_equip(const std::string &hero_idx, std::int64_t item_equip_id, std::int32_t slot);
    [[nodiscard]] std::string hero_unequip(const std::string &hero_idx, std::int32_t slot);
    [[nodiscard]] std::string hero_equip_preset_info_list();
    [[nodiscard]] std::string hero_equip_preset_list(std::int32_t preset_slot);
    [[nodiscard]] std::string hero_equip_preset_save(const std::string &request);
    [[nodiscard]] std::string hero_equip_preset_apply(const std::string &request);
    [[nodiscard]] std::string equip_item_upgrade(const std::string &hero_idx, std::int32_t slot,
                                                 const std::vector<std::string> &materials);
    [[nodiscard]] std::string equip_item_transcendence(const std::string &hero_idx, std::int32_t slot,
                                                       std::int32_t material_no);
    [[nodiscard]] std::string spirit_tree_slot_equip(std::int32_t slot_no, const std::string &hero_idx);
    [[nodiscard]] std::string spirit_tree_slot_unequip(std::int32_t slot_no);
    [[nodiscard]] std::string gacha_hero(std::int32_t count, std::int32_t gacha_no, std::int32_t auto_release,
                                         std::int32_t is_use_pay_dia);
    [[nodiscard]] std::string gacha_premium(std::int32_t count, std::int32_t gacha_no);
    [[nodiscard]] std::string gacha_signature(std::int32_t gacha_no, std::int32_t count,
                                              std::int32_t is_auto_release, std::int32_t is_use_pay_dia);
    [[nodiscard]] std::string event_pickup_gacha_select(std::int32_t event_group, std::int32_t gacha_no);
    [[nodiscard]] std::string shop_item_buy(std::int32_t shop_type, std::int32_t shop_no,
                                            std::int32_t no, std::int32_t buy_cnt);
    [[nodiscard]] std::string item_use(std::int32_t item_no, std::int32_t use_count,
                                       const std::string &choice_box, const std::string &choice_count);
    [[nodiscard]] std::string arbeit_start(const std::string &request);
    [[nodiscard]] std::string arbeit_finish(const std::string &request);
    [[nodiscard]] std::string task_receive(std::int32_t type, std::int32_t reward_no);
    [[nodiscard]] std::string achievement_all_receive();
    [[nodiscard]] std::string mail_item_all_receive(std::int32_t category_flag);
    [[nodiscard]] std::string receive_attendance();
    [[nodiscard]] std::string friend_heart_receive_all();

    // Idle (auto-hunt) rewards: open shows time-accumulated pending; receive grants + resets.
    [[nodiscard]] std::string auto_hunt_open(bool newbie);
    [[nodiscard]] std::string auto_hunt_receive(bool newbie);

    // 현재 SQLite DB의 전체 currency 상태 반환 (type → value).
    [[nodiscard]] std::vector<std::pair<int, std::int64_t>> get_all_currencies();

} // namespace eversoul::db
