// account_db.cpp — SQLite-backed persistent account state.
#include "account_db.hpp"

#include <ctime>
#include <cstdlib>
#include <string>
#include <vector>

#include "account_db_manager.hpp"
#include "account_database.hpp"
#include "catalog_endpoint_payloads.hpp"
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
    namespace
    {
        constexpr const char *kDefaultIllustBitset =
            "///+//////////8///fz7+f7P8/n4fP853k+z//5PD+P//8/z/P/Px4+z/M+//8/Hz/8f/7P//H8n///9/+fH//P8//3/p///v////////////8B";

        [[nodiscard]] std::string join_strings(const std::vector<std::string> &values)
        {
            std::string out;
            for (const std::string &value : values)
            {
                if (!out.empty())
                    out.push_back(',');
                out += value;
            }
            return out;
        }

        [[nodiscard]] std::string join_ints(const std::vector<std::int32_t> &values)
        {
            std::string out;
            for (const std::int32_t value : values)
            {
                if (!out.empty())
                    out.push_back(',');
                out += std::to_string(value);
            }
            return out;
        }

        void remember_empty_response_endpoint(AccountDatabase &adb, const std::string &endpoint)
        {
            const std::string now = std::to_string(unix_ms());
            adb.meta_set(endpoint + ".last_request_ms", now);
            adb.meta_set("updated_at_ms", now);
        }
    } // namespace

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

    std::string dungeon_save(std::int32_t dungeon_id)
    {
        AccountDatabase &adb = *account_db_manager().active_db();
        const std::int64_t now = unix_ms();
        for (DungeonRow dungeon : adb.dungeons())
        {
            if (dungeon.dungeon_no_id != dungeon_id)
                continue;
            dungeon.is_enter = 1;
            dungeon.update_dt = now;
            adb.upsert_dungeon(dungeon);
            break;
        }
        adb.meta_set("dungeon.last_save_id", std::to_string(dungeon_id));
        remember_empty_response_endpoint(adb, "DungeonSave");
        return {};
    }

    std::string dungeon_chest_reward_check(std::int32_t dungeon_id, std::int32_t reward_no)
    {
        AccountDatabase &adb = *account_db_manager().active_db();
        adb.meta_set("dungeon.last_chest_reward_check", std::to_string(dungeon_id) + ":" + std::to_string(reward_no));
        remember_empty_response_endpoint(adb, "DungeonChestRewardCheck");
        return {};
    }

    std::string dungeon_monster_reward_check(std::int32_t dungeon_id, std::int32_t monster_uid)
    {
        AccountDatabase &adb = *account_db_manager().active_db();
        adb.meta_set("dungeon.last_monster_reward_check", std::to_string(dungeon_id) + ":" + std::to_string(monster_uid));
        remember_empty_response_endpoint(adb, "DungeonMonsterRewardCheck");
        return {};
    }

    std::string dungeon_info_update(const std::string &req)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.dungeon_info_update(req);
    }

    std::string battle_save(const std::string &request)
    {
        AccountDatabase &adb = *account_db_manager().active_db();
        adb.meta_set("battle.user_idx", pb_get_string(request, 1, ""));
        adb.meta_set("battle.stage_no", std::to_string(pb_get_int32(request, 2, 0)));
        adb.meta_set("battle.formation_kind", std::to_string(pb_get_int32(request, 3, 0)));
        adb.meta_set("battle.hero_idxs", join_strings(pb_get_all_strings(request, 4)));
        adb.meta_set("battle.friend_hero_idx", pb_get_string(request, 5, ""));
        adb.meta_set("battle.skip", std::to_string(pb_get_int32(request, 6, 0)));
        adb.meta_set("battle.client_version", std::to_string(pb_get_int32(request, 8, 0)));
        adb.meta_set("battle.table_version", std::to_string(pb_get_int32(request, 9, 0)));
        adb.meta_set("battle.options", join_ints(pb_get_all_int32(request, 10)));
        adb.meta_set("battle.random", std::to_string(pb_get_int32(request, 11, 0)));
        adb.meta_set("battle.log", pb_get_string(request, 12, ""));
        remember_empty_response_endpoint(adb, "BattleSave");
        return {};
    }

    std::string profile_update_visible(const std::string &profile_visible_base64)
    {
        AccountDatabase &adb = *account_db_manager().active_db();
        adb.meta_set("profile_visible_base64", profile_visible_base64);
        remember_empty_response_endpoint(adb, "ProfileUpdateVisible");
        return {};
    }

    std::string change_lobby_background(const std::string &request)
    {
        AccountDatabase &adb = *account_db_manager().active_db();
        adb.meta_set("lobby.background.type", std::to_string(pb_get_int32(request, 1, 0)));
        adb.meta_set("lobby.hero_no_1", std::to_string(pb_get_int32(request, 2, 0)));
        adb.meta_set("lobby.hero_no_2", std::to_string(pb_get_int32(request, 3, 0)));
        adb.meta_set("lobby.hero_no_3", std::to_string(pb_get_int32(request, 4, 0)));
        adb.meta_set("lobby.hero_no_4", std::to_string(pb_get_int32(request, 5, 0)));
        adb.meta_set("lobby.hero_no_5", std::to_string(pb_get_int32(request, 6, 0)));
        adb.meta_set("lobby.background_img_item_no", std::to_string(pb_get_int32(request, 7, 0)));
        adb.meta_set("lobby.illust_id", std::to_string(pb_get_int32(request, 8, 0)));
        adb.meta_set("lobby.angle_1", std::to_string(pb_get_float(request, 9, 0.0F)));
        adb.meta_set("lobby.angle_2", std::to_string(pb_get_float(request, 10, 0.0F)));
        adb.meta_set("lobby.angle_3", std::to_string(pb_get_float(request, 11, 0.0F)));
        adb.meta_set("lobby.angle_4", std::to_string(pb_get_float(request, 12, 0.0F)));
        adb.meta_set("lobby.angle_5", std::to_string(pb_get_float(request, 13, 0.0F)));
        remember_empty_response_endpoint(adb, "ChangeLobbyBackground");
        return {};
    }

    std::string save_illust(const std::string &illusts)
    {
        AccountDatabase &adb = *account_db_manager().active_db();
        adb.meta_set("illusts", illusts.empty() ? kDefaultIllustBitset : illusts);
        remember_empty_response_endpoint(adb, "SaveIllust");
        return {};
    }

    std::string guild_info(const std::string &guild_idx)
    {
        AccountDatabase &adb = *account_db_manager().active_db();
        adb.meta_set("guild.last_info_idx", guild_idx);
        remember_empty_response_endpoint(adb, "GuildInfo");
        return {};
    }

    std::string guild_join_request_list(const std::string &guild_idx)
    {
        AccountDatabase &adb = *account_db_manager().active_db();
        adb.meta_set("guild.last_join_request_idx", guild_idx);
        remember_empty_response_endpoint(adb, "GuildJoinRequestList");
        return {};
    }

    std::string arena_weekly_rank_reward(std::int32_t arena_type)
    {
        AccountDatabase &adb = *account_db_manager().active_db();
        adb.meta_set("arena.weekly_rank_reward_type", std::to_string(arena_type));
        remember_empty_response_endpoint(adb, "ArenaWeeklyRankReward");
        return {};
    }

    std::string build_guide_quest_list()
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.build_guide_quest_list();
    }

    std::string build_event_story_info()
    {
        return build_event_story_info_payload();
    }

    std::string build_signature_list()
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        return build_signature_list_payload(adb.heroes());
    }

    std::string build_cash_shop_list(std::int32_t request_no)
    {
        return build_cash_shop_list_payload(request_no);
    }

    std::string build_cash_shop_user_able_cash_item_id_all_list(const std::vector<std::int32_t> &tab_ids)
    {
        return build_cash_shop_user_able_cash_item_ids_payload(tab_ids);
    }

    std::string build_illust_list()
    {
        AccountDatabase *adb = account_db_manager().active_db();
        std::string response;
        const std::string illusts = adb ? adb->meta_get("illusts", kDefaultIllustBitset) : kDefaultIllustBitset;
        pb_string(response, 1, illusts);
        return response;
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

    std::string hero_equip_preset_info_list()
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.hero_equip_preset_info_list();
    }

    std::string hero_equip_preset_list(std::int32_t preset_slot)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.hero_equip_preset_list(preset_slot);
    }

    std::string hero_equip_preset_save(const std::string &request)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.hero_equip_preset_save(request);
    }

    std::string hero_equip_preset_apply(const std::string &request)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.hero_equip_preset_apply(request);
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

    std::string event_pickup_gacha_select(std::int32_t event_group, std::int32_t gacha_no)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.event_pickup_gacha_select(event_group, gacha_no);
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

    std::string arbeit_start(const std::string &request)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.arbeit_start(request);
    }

    std::string arbeit_finish(const std::string &request)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.arbeit_finish(request);
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

    std::string auto_hunt_open(bool newbie)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.auto_hunt_open(newbie);
    }

    std::string auto_hunt_receive(bool newbie)
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        EndpointMutationService svc(adb);
        return svc.auto_hunt_receive(newbie);
    }

    std::vector<std::pair<int, std::int64_t>> get_all_currencies()
    {
        AccountDatabase& adb = *account_db_manager().active_db();
        std::vector<std::pair<int, std::int64_t>> result;
        for (const auto& row : adb.currencies())
            result.emplace_back(row.type, row.value);
        return result;
    }

} // namespace eversoul::db
