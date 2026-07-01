// endpoint_mutation_service.hpp — AccountDatabase 기반 엔드포인트 뮤테이션 처리.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

namespace eversoul {

class AccountDatabase;

class EndpointMutationService {
public:
    explicit EndpointMutationService(AccountDatabase& db);

    std::string tutorial_active(std::int32_t tutorial_no);
    std::string stage_clear(std::int32_t stage_no);
    std::string story_clear(std::int32_t story_no);
    std::string dungeon_clear(std::int32_t dungeon_id);
    std::string dungeon_enter(std::int32_t dungeon_no);
    std::string dungeon_info_update(const std::string& req);
    std::string formation_save(std::int32_t no, std::int32_t kind,
                               const std::vector<std::string>& heroidx,
                               std::int32_t formation_type,
                               const std::string& name);
    std::string hero_level_up(const std::string& hero_idx, std::int32_t to_level);
    std::string hero_upgrade(const std::string& hero_idx_list,
                             const std::string& upgrade_no_list);
    std::string hero_gift(std::int32_t gift_no, std::int32_t hero_no,
                          std::int32_t gift_count);
    std::string hero_equip(const std::string& hero_idx, std::int64_t item_equip_id,
                           std::int32_t slot);
    std::string hero_unequip(const std::string& hero_idx, std::int32_t slot);
    std::string hero_equip_preset_info_list();
    std::string hero_equip_preset_list(std::int32_t preset_slot);
    std::string hero_equip_preset_save(const std::string& request);
    std::string hero_equip_preset_apply(const std::string& request);
    std::string equip_item_upgrade(const std::string& hero_idx, std::int32_t slot,
                                   const std::vector<std::string>& materials);
    std::string equip_item_transcendence(const std::string& hero_idx, std::int32_t slot,
                                         std::int32_t material_no);
    std::string spirit_tree_slot_equip(std::int32_t slot_no,
                                       const std::string& hero_idx);
    std::string spirit_tree_slot_unequip(std::int32_t slot_no);
    std::string gacha_hero(std::int32_t count, std::int32_t gacha_no,
                           std::int32_t auto_release, std::int32_t is_use_pay_dia);
    std::string gacha_hero_tutorial();
    std::string gacha_hero_tutorial_fix();
    std::string gacha_premium(std::int32_t count, std::int32_t gacha_no);
    std::string gacha_signature(std::int32_t gacha_no, std::int32_t count,
                                std::int32_t is_auto_release,
                                std::int32_t is_use_pay_dia);
    std::string event_pickup_gacha_select(std::int32_t event_group, std::int32_t gacha_no);
    std::string shop_item_buy(std::int32_t shop_type, std::int32_t shop_no,
                              std::int32_t no, std::int32_t buy_cnt);
    std::string item_use(std::int32_t item_no, std::int32_t use_count,
                         const std::string& choice_box,
                         const std::string& choice_count);
    std::string arbeit_start(const std::string& req);
    std::string arbeit_finish(const std::string& req);
    std::string task_receive(std::int32_t type, std::int32_t reward_no);
    std::string auto_hunt_open(bool newbie);
    std::string auto_hunt_receive(bool newbie);
    std::string set_nickname(const std::string& name);
    std::string build_guide_quest_list();
    std::string achievement_all_receive();
    std::string mail_item_all_receive(std::int32_t category_flag);
    std::string receive_attendance();
    std::string friend_heart_receive_all();

private:
    AccountDatabase& db_;

    struct Pending { std::int64_t gold = 0; std::int64_t mana_dust = 0; std::int64_t exp = 0; };

    int         meta_int(const std::string& key, int fallback = 0) const;
    void        meta_set_int(const std::string& key, int value);
    bool        mark_once_per_day(const std::string& key);
    std::int64_t day_number() const;
    static int  today_yyyymmdd();
    Pending     compute_pending() const;
    Pending     apply_pending_floor(Pending p) const;
    void        spend_gacha_cost(int ticket_currency, int dia_currency,
                                 int count, int is_use_pay_dia);

    std::string currency_all_pb() const;
    std::string item_etc_pb_msg(int item_no) const;
    std::string gacha_mileage_pb_msg(int mileage_no, int changed_point);
    std::string build_gacha_state_pb_msg() const;
    void        seed_arbeit_tasks_from_fixtures();

    static int                       clamp_count(int count);
    static std::vector<std::string>  split_comma(const std::string& s);
};

} // namespace eversoul
