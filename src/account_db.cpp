// account_db.cpp — SQLite-backed persistent account state.
#include "account_db.hpp"

#include <ctime>
#include <cstdlib>
#include <string>
#include <vector>

#include "account_db_manager.hpp"
#include "account_database.hpp"
#include "common.hpp"
#include "endpoint_mutation_service.hpp"
#include "fixture_store.hpp"
#include "log.hpp"
#include "payloads.hpp"
#include "protobuf.hpp"
#include "userinfo_repository.hpp"
#include "util.hpp"

namespace eversoul::db
{
    // ---- public API ----

    std::string build_user_info()
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        UserInfoRepository repo(adb, config().data_dir);
        return repo.build_payload();
    }

    std::string tutorial_active(std::int32_t tutorial_no)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.tutorial_active(tutorial_no);
    }

    std::string stage_clear(std::int32_t stage_no)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.stage_clear(stage_no);
    }

    std::string story_clear(std::int32_t story_no)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.story_clear(story_no);
    }

    std::string dungeon_clear(std::int32_t dungeon_id)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.dungeon_clear(dungeon_id);
    }

    std::string dungeon_enter(std::int32_t dungeon_no)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.dungeon_enter(dungeon_no);
    }

    std::string dungeon_info_update(const std::string &req)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.dungeon_info_update(req);
    }

    std::string build_guide_quest_list()
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.build_guide_quest_list();
    }

    std::string formation_save(std::int32_t no, std::int32_t kind, const std::vector<std::string> &heroidx,
                               std::int32_t formation_type, const std::string &name)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.formation_save(no, kind, heroidx, formation_type, name);
    }

    std::string gacha_hero_tutorial_fix()
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.gacha_hero_tutorial_fix();
    }

    std::string gacha_hero_tutorial()
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.gacha_hero_tutorial();
    }

    std::string hero_level_up(const std::string &hero_idx, std::int32_t to_level)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.hero_level_up(hero_idx, to_level);
    }

    std::string set_nickname(const std::string &name)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.set_nickname(name);
    }

    std::string hero_upgrade(const std::string &hero_idx_list, const std::string &upgrade_no_list)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.hero_upgrade(hero_idx_list, upgrade_no_list);
    }

    std::string hero_gift(std::int32_t gift_no, std::int32_t hero_no, std::int32_t gift_count)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.hero_gift(gift_no, hero_no, gift_count);
    }

    std::string hero_equip(const std::string &hero_idx, std::int64_t item_equip_id, std::int32_t slot)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.hero_equip(hero_idx, item_equip_id, slot);
    }

    std::string hero_unequip(const std::string &hero_idx, std::int32_t slot)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.hero_unequip(hero_idx, slot);
    }

    std::string equip_item_upgrade(const std::string &hero_idx, std::int32_t slot,
                                   const std::vector<std::string> &materials)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.equip_item_upgrade(hero_idx, slot, materials);
    }

    std::string equip_item_transcendence(const std::string &hero_idx, std::int32_t slot, std::int32_t material_no)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.equip_item_transcendence(hero_idx, slot, material_no);
    }

    std::string spirit_tree_slot_equip(std::int32_t slot_no, const std::string &hero_idx)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.spirit_tree_slot_equip(slot_no, hero_idx);
    }

    std::string spirit_tree_slot_unequip(std::int32_t slot_no)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.spirit_tree_slot_unequip(slot_no);
    }

    std::string gacha_hero(std::int32_t count, std::int32_t gacha_no, std::int32_t auto_release,
                           std::int32_t is_use_pay_dia)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.gacha_hero(count, gacha_no, auto_release, is_use_pay_dia);
    }

    std::string gacha_premium(std::int32_t count, std::int32_t gacha_no)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.gacha_premium(count, gacha_no);
    }

    std::string gacha_signature(std::int32_t gacha_no, std::int32_t count,
                                std::int32_t is_auto_release, std::int32_t is_use_pay_dia)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.gacha_signature(gacha_no, count, is_auto_release, is_use_pay_dia);
    }

    std::string shop_item_buy(std::int32_t shop_type, std::int32_t shop_no,
                              std::int32_t no, std::int32_t buy_cnt)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.shop_item_buy(shop_type, shop_no, no, buy_cnt);
    }

    std::string item_use(std::int32_t item_no, std::int32_t use_count,
                         const std::string &choice_box, const std::string &choice_count)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.item_use(item_no, use_count, choice_box, choice_count);
    }

    std::string task_receive(std::int32_t type, std::int32_t reward_no)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.task_receive(type, reward_no);
    }

    std::string achievement_all_receive()
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.achievement_all_receive();
    }

    std::string mail_item_all_receive(std::int32_t category_flag)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.mail_item_all_receive(category_flag);
    }

    std::string receive_attendance()
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.receive_attendance();
    }

    std::string friend_heart_receive_all()
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.friend_heart_receive_all();
    }

    std::string auto_hunt_open()
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.auto_hunt_open();
    }

    std::string auto_hunt_receive()
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.auto_hunt_receive();
    }

} // namespace eversoul::db
