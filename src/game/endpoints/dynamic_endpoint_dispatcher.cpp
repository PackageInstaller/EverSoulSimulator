#include "game/endpoints/dynamic_endpoint_dispatcher.hpp"

#include <algorithm>
#include <cstdint>
#include <string>
#include <vector>

#include "account_db.hpp"
#include "log.hpp"
#include "payloads.hpp"
#include "protobuf.hpp"
#include "tbl_store.hpp"
#include "util.hpp"

namespace eversoul
{
    namespace
    {

        HttpResponse binary_endpoint_response(std::uint64_t id,
                                              const HttpRequest &req,
                                              const std::string &log_text,
                                              const std::string &payload)
        {
            log_line(id, "MOCK_GAME", log_text + " protoBytes=" + std::to_string(payload.size()));
            return game_binary_response(req, payload);
        }

        HttpResponse synced_binary_endpoint_response(std::uint64_t id,
                                                     const HttpRequest &req,
                                                     CurrencyFixtureSync sync_currencies,
                                                     const std::string &log_text,
                                                     const std::string &payload)
        {
            sync_currencies();
            return binary_endpoint_response(id, req, log_text, payload);
        }

    } // namespace

    std::optional<HttpResponse> dispatch_dynamic_game_endpoint(std::uint64_t id,
                                                               const HttpRequest &req,
                                                               bool newbie_mode,
                                                               CurrencyFixtureSync sync_currencies)
    {
        if (req.path == "/UserInfo")
        {
            std::string response = db::build_user_info();
            return binary_endpoint_response(id, req, "/UserInfo", response);
        }

        if (req.path == "/GuideQuestList")
        {
            std::string response = db::build_guide_quest_list();
            return binary_endpoint_response(id, req, "/GuideQuestList", response);
        }

        if (req.path == "/EventStoryInfo")
        {
            std::string response = db::build_event_story_info();
            return binary_endpoint_response(id, req, "/EventStoryInfo", response);
        }

        if (req.path == "/SignatureList")
        {
            std::string response = db::build_signature_list();
            return binary_endpoint_response(id, req, "/SignatureList", response);
        }

        if (req.path == "/IllustList")
        {
            std::string response = db::build_illust_list();
            return binary_endpoint_response(id, req, "/IllustList", response);
        }

        if (req.path == "/TutorialActive")
        {
            const std::int32_t tutorial_no = pb_get_int32(request_payload(req), 1, 0);
            std::string response = db::tutorial_active(tutorial_no);
            return binary_endpoint_response(id, req,
                                            "/TutorialActive tutorialNo=" + std::to_string(tutorial_no),
                                            response);
        }

        if (req.path == "/GachaHeroTutorial")
        {
            std::string response = db::gacha_hero_tutorial();
            return binary_endpoint_response(id, req, "/GachaHeroTutorial", response);
        }

        if (req.path == "/GachaHeroTutorialFix")
        {
            std::string response = db::gacha_hero_tutorial_fix();
            return binary_endpoint_response(id, req, "/GachaHeroTutorialFix", response);
        }

        if (req.path == "/GachaPremiumHeroList")
        {
            const auto nos = tbl_store().collectable_premium_nos();
            std::string response;
            for (const int no : nos)
                pb_int32(response, 1, no);
            log_line(id, "MOCK_GAME", "/GachaPremiumHeroList tbl count=" + std::to_string(nos.size()));
            return game_binary_response(req, response);
        }

        if (req.path == "/ArbeitStart")
        {
            std::string response = db::arbeit_start(request_payload(req));
            return binary_endpoint_response(id, req, "/ArbeitStart", response);
        }

        if (req.path == "/ArbeitFinish")
        {
            std::string response = db::arbeit_finish(request_payload(req));
            return synced_binary_endpoint_response(id, req, sync_currencies, "/ArbeitFinish", response);
        }

        if (req.path == "/GachaPremium")
        {
            std::string payload = request_payload(req);
            const std::int32_t count = pb_get_int32(payload, 1, 10);
            const std::int32_t gacha_no = pb_get_int32(payload, 2, 46);
            std::string response = db::gacha_premium(count, gacha_no);
            return synced_binary_endpoint_response(id, req, sync_currencies,
                                                   "/GachaPremium count=" + std::to_string(count),
                                                   response);
        }

        if (req.path == "/GachaHero")
        {
            std::string payload = request_payload(req);
            const std::int32_t count = pb_get_int32(payload, 1, 10);
            const std::int32_t gacha_no = pb_get_int32(payload, 2, 1);
            const std::int32_t auto_release = pb_get_int32(payload, 3, 1);
            const std::int32_t is_use_pay_dia = pb_get_int32(payload, 5, 0);
            std::string response = db::gacha_hero(count, gacha_no, auto_release, is_use_pay_dia);
            return synced_binary_endpoint_response(id, req, sync_currencies,
                                                   "/GachaHero count=" + std::to_string(count),
                                                   response);
        }

        if (req.path == "/GachaSignature")
        {
            std::string payload = request_payload(req);
            const std::int32_t gacha_no = pb_get_int32(payload, 1, 45);
            const std::int32_t count = pb_get_int32(payload, 2, 10);
            const std::int32_t is_auto_release = pb_get_int32(payload, 3, 1);
            const std::int32_t is_use_pay_dia = pb_get_int32(payload, 4, 0);
            std::string response = db::gacha_signature(gacha_no, count, is_auto_release, is_use_pay_dia);
            return synced_binary_endpoint_response(id, req, sync_currencies,
                                                   "/GachaSignature count=" + std::to_string(count),
                                                   response);
        }

        if (req.path == "/EventPickupGachaSelect")
        {
            std::string payload = request_payload(req);
            const std::int32_t event_group = pb_get_int32(payload, 1, 0);
            const std::int32_t gacha_no = pb_get_int32(payload, 2, 0);
            std::string response = db::event_pickup_gacha_select(event_group, gacha_no);
            return binary_endpoint_response(id, req,
                                            "/EventPickupGachaSelect group=" + std::to_string(event_group),
                                            response);
        }

        if (req.path == "/AutoHuntReceive")
        {
            std::string response = db::auto_hunt_receive(newbie_mode);
            return synced_binary_endpoint_response(id, req, sync_currencies, "/AutoHuntReceive", response);
        }

        if (req.path == "/ReceiveAttendance")
        {
            std::string response = db::receive_attendance();
            return synced_binary_endpoint_response(id, req, sync_currencies, "/ReceiveAttendance", response);
        }

        if (req.path == "/MailItemAllReceive")
        {
            const std::int32_t category_flag = pb_get_int32(request_payload(req), 1, 0);
            std::string response = db::mail_item_all_receive(category_flag);
            return synced_binary_endpoint_response(id, req, sync_currencies,
                                                   "/MailItemAllReceive categoryFlag=" + std::to_string(category_flag),
                                                   response);
        }

        if (req.path == "/AchievementAllReceive")
        {
            std::string response = db::achievement_all_receive();
            return synced_binary_endpoint_response(id, req, sync_currencies, "/AchievementAllReceive", response);
        }

        if (req.path == "/TaskReceive")
        {
            std::string payload = request_payload(req);
            const std::int32_t type = pb_get_int32(payload, 1, 0);
            const std::int32_t reward_no = pb_get_int32(payload, 2, 0);
            std::string response = db::task_receive(type, reward_no);
            return synced_binary_endpoint_response(id, req, sync_currencies,
                                                   "/TaskReceive type=" + std::to_string(type),
                                                   response);
        }

        if (req.path == "/FriendHeartReceiveAll")
        {
            std::string response = db::friend_heart_receive_all();
            return synced_binary_endpoint_response(id, req, sync_currencies, "/FriendHeartReceiveAll", response);
        }

        if (req.path == "/ShopItemBuy")
        {
            std::string payload = request_payload(req);
            const std::int32_t shop_type = pb_get_int32(payload, 1, 0);
            const std::int32_t shop_no = pb_get_int32(payload, 2, 0);
            const std::int32_t no = pb_get_int32(payload, 3, 0);
            const std::int32_t buy_cnt = pb_get_int32(payload, 4, 1);
            std::string response = db::shop_item_buy(shop_type, shop_no, no, buy_cnt);
            return synced_binary_endpoint_response(id, req, sync_currencies,
                                                   "/ShopItemBuy shopType=" + std::to_string(shop_type),
                                                   response);
        }

        if (req.path == "/ItemUse")
        {
            std::string payload = request_payload(req);
            const std::int32_t item_no = pb_get_int32(payload, 1, 0);
            const std::int32_t use_count = pb_get_int32(payload, 2, 1);
            std::string choice_box = pb_get_string(payload, 3, "");
            std::string choice_count = pb_get_string(payload, 4, "");
            std::string response = db::item_use(item_no, use_count, choice_box, choice_count);
            return synced_binary_endpoint_response(id, req, sync_currencies,
                                                   "/ItemUse itemNo=" + std::to_string(item_no),
                                                   response);
        }

        if (req.path == "/UserNicknameChange")
        {
            std::string name = pb_get_string(request_payload(req), 1, "offline");
            std::string response = db::set_nickname(name);
            return binary_endpoint_response(id, req, "/UserNicknameChange name=" + name, response);
        }

        if (req.path == "/LobbyRefresh")
        {
            std::string response = lobby_refresh_payload();
            log_line(id, "MOCK_GAME", "/LobbyRefresh");
            return game_binary_response(req, response);
        }

        if (req.path == "/BattleStart")
        {
            std::string response;
            pb_bool(response, 1, true);
            log_line(id, "MOCK_GAME", "/BattleStart result=true");
            return game_binary_response(req, response);
        }

        if (req.path == "/StageClear")
        {
            const std::int32_t stage_no = pb_get_int32(request_payload(req), 1, 1);
            std::string response = db::stage_clear(stage_no);
            return synced_binary_endpoint_response(id, req, sync_currencies,
                                                   "/StageClear stageNo=" + std::to_string(stage_no),
                                                   response);
        }

        if (req.path == "/StoryClear")
        {
            const std::int32_t story_no = pb_get_int32(request_payload(req), 1, 1);
            std::string response = db::story_clear(story_no);
            return binary_endpoint_response(id, req,
                                            "/StoryClear storyNo=" + std::to_string(story_no),
                                            response);
        }

        if (req.path == "/HeroLevelUp")
        {
            std::string payload = request_payload(req);
            std::string hero_idx = pb_get_string(payload, 1, "hero-1");
            const std::int32_t to_level = pb_get_int32(payload, 2, 2);
            std::string response = db::hero_level_up(hero_idx, to_level);
            return synced_binary_endpoint_response(id, req, sync_currencies,
                                                   "/HeroLevelUp toLevel=" + std::to_string(to_level),
                                                   response);
        }

        if (req.path == "/DungeonEnter")
        {
            const std::int32_t dungeon_no = pb_get_int32(request_payload(req), 1, 1);
            std::string response = db::dungeon_enter(dungeon_no);
            return binary_endpoint_response(id, req,
                                            "/DungeonEnter dungeonNo=" + std::to_string(dungeon_no),
                                            response);
        }

        if (req.path == "/DungeonInfoUpdate")
        {
            std::string response = db::dungeon_info_update(request_payload(req));
            return binary_endpoint_response(id, req, "/DungeonInfoUpdate", response);
        }

        if (req.path == "/DungeonBattle")
        {
            log_line(id, "MOCK_GAME", newbie_mode ? "/DungeonBattle empty" : "/DungeonBattle empty rentUsedHero");
            return game_binary_response(req, {});
        }

        if (req.path == "/DungeonClear")
        {
            const std::int32_t dungeon_id = pb_get_int32(request_payload(req), 1, 0);
            std::string response = db::dungeon_clear(dungeon_id);
            return synced_binary_endpoint_response(id, req, sync_currencies,
                                                   "/DungeonClear dungeonId=" + std::to_string(dungeon_id),
                                                   response);
        }

        if (req.path == "/DungeonSave")
        {
            const std::int32_t dungeon_id = pb_get_int32(request_payload(req), 1, 0);
            std::string response = db::dungeon_save(dungeon_id);
            return binary_endpoint_response(id, req,
                                            "/DungeonSave dungeonId=" + std::to_string(dungeon_id),
                                            response);
        }

        if (req.path == "/DungeonChestRewardCheck")
        {
            std::string payload = request_payload(req);
            const std::int32_t dungeon_id = pb_get_int32(payload, 1, 0);
            const std::int32_t reward_no = pb_get_int32(payload, 2, 0);
            std::string response = db::dungeon_chest_reward_check(dungeon_id, reward_no);
            return binary_endpoint_response(id, req,
                                            "/DungeonChestRewardCheck dungeonId=" + std::to_string(dungeon_id),
                                            response);
        }

        if (req.path == "/DungeonMonsterRewardCheck")
        {
            std::string payload = request_payload(req);
            const std::int32_t dungeon_id = pb_get_int32(payload, 1, 0);
            const std::int32_t monster_uid = pb_get_int32(payload, 2, 0);
            std::string response = db::dungeon_monster_reward_check(dungeon_id, monster_uid);
            return binary_endpoint_response(id, req,
                                            "/DungeonMonsterRewardCheck dungeonId=" + std::to_string(dungeon_id),
                                            response);
        }

        if (req.path == "/FormationSave")
        {
            std::string payload = request_payload(req);
            const std::int32_t no = pb_get_int32(payload, 1, 1);
            const std::int32_t kind = pb_get_int32(payload, 2, 1);
            const std::int32_t formation_type = pb_get_int32(payload, 4, 1);
            std::string formation_name = pb_get_string(payload, 5, "default");
            std::vector<std::string> hero_idxs = pb_get_all_strings(payload, 3);
            if (hero_idxs.empty())
                hero_idxs.push_back("hero-1");
            std::string response = db::formation_save(no, kind, hero_idxs, formation_type, formation_name);
            return binary_endpoint_response(id, req,
                                            "/FormationSave no=" + std::to_string(no),
                                            response);
        }

        if (req.path == "/BattleSave")
        {
            std::string response = db::battle_save(request_payload(req));
            return binary_endpoint_response(id, req, "/BattleSave", response);
        }

        if (req.path == "/ProfileUpdateVisible")
        {
            std::string payload = request_payload(req);
            std::string response = db::profile_update_visible(pb_get_string(payload, 1, ""));
            return binary_endpoint_response(id, req, "/ProfileUpdateVisible", response);
        }

        if (req.path == "/ChangeLobbyBackground")
        {
            std::string response = db::change_lobby_background(request_payload(req));
            return binary_endpoint_response(id, req, "/ChangeLobbyBackground", response);
        }

        if (req.path == "/SaveIllust")
        {
            std::string payload = request_payload(req);
            std::string response = db::save_illust(pb_get_string(payload, 1, ""));
            return binary_endpoint_response(id, req, "/SaveIllust", response);
        }

        if (req.path == "/HeroUpgrade")
        {
            std::string payload = request_payload(req);
            std::string hero_idx_list = pb_get_string(payload, 1, "");
            std::string upgrade_no_list = pb_get_string(payload, 2, "");
            std::string response = db::hero_upgrade(hero_idx_list, upgrade_no_list);
            return synced_binary_endpoint_response(id, req, sync_currencies, "/HeroUpgrade", response);
        }

        if (req.path == "/HeroGift")
        {
            std::string payload = request_payload(req);
            const std::int32_t gift_no = pb_get_int32(payload, 1, 0);
            const std::int32_t hero_no = pb_get_int32(payload, 2, 0);
            const std::int32_t gift_count = pb_get_int32(payload, 3, 1);
            std::string response = db::hero_gift(gift_no, hero_no, gift_count);
            return synced_binary_endpoint_response(id, req, sync_currencies,
                                                   "/HeroGift heroNo=" + std::to_string(hero_no),
                                                   response);
        }

        if (req.path == "/HeroEquip")
        {
            std::string payload = request_payload(req);
            std::string hero_idx = pb_get_string(payload, 1, "hero-1");
            const std::int64_t item_equip_id = pb_get_int64(payload, 2, 0);
            const std::int32_t slot = pb_get_int32(payload, 3, 0);
            std::string response = db::hero_equip(hero_idx, item_equip_id, slot);
            return binary_endpoint_response(id, req, "/HeroEquip heroIdx=" + hero_idx, response);
        }

        if (req.path == "/HeroUnequip")
        {
            std::string payload = request_payload(req);
            const std::int32_t slot = pb_get_int32(payload, 1, 0);
            std::string hero_idx = pb_get_string(payload, 2, "hero-1");
            std::string response = db::hero_unequip(hero_idx, slot);
            return binary_endpoint_response(id, req, "/HeroUnequip heroIdx=" + hero_idx, response);
        }

        if (req.path == "/HeroEquipPresetInfoList")
        {
            std::string response = db::hero_equip_preset_info_list();
            return binary_endpoint_response(id, req, "/HeroEquipPresetInfoList", response);
        }

        if (req.path == "/HeroEquipPresetList")
        {
            const std::int32_t preset_slot = pb_get_int32(request_payload(req), 1, 0);
            std::string response = db::hero_equip_preset_list(preset_slot);
            return binary_endpoint_response(id, req,
                                            "/HeroEquipPresetList presetSlot=" + std::to_string(preset_slot),
                                            response);
        }

        if (req.path == "/HeroEquipPresetSave")
        {
            std::string response = db::hero_equip_preset_save(request_payload(req));
            return binary_endpoint_response(id, req, "/HeroEquipPresetSave", response);
        }

        if (req.path == "/HeroEquipPresetApply")
        {
            std::string response = db::hero_equip_preset_apply(request_payload(req));
            return binary_endpoint_response(id, req, "/HeroEquipPresetApply", response);
        }

        if (req.path == "/EquipItemUpgrade")
        {
            std::string payload = request_payload(req);
            std::string hero_idx = pb_get_string(payload, 1, "hero-1");
            const std::int32_t slot = pb_get_int32(payload, 2, 0);
            std::vector<std::string> materials;
            for (const std::string &item : pb_get_all_messages(payload, 3))
            {
                const std::int32_t item_no = pb_get_int32(item, 3, 0);
                if (item_no > 0)
                    materials.push_back(std::to_string(item_no));
            }
            std::string response = db::equip_item_upgrade(hero_idx, slot, materials);
            return synced_binary_endpoint_response(id, req, sync_currencies,
                                                   "/EquipItemUpgrade heroIdx=" + hero_idx,
                                                   response);
        }

        if (req.path == "/EquipItemTranscendence")
        {
            std::string payload = request_payload(req);
            std::string hero_idx = pb_get_string(payload, 1, "hero-1");
            const std::int32_t slot = pb_get_int32(payload, 2, 0);
            const std::int32_t material_no = pb_get_int32(payload, 3, 0);
            std::string response = db::equip_item_transcendence(hero_idx, slot, material_no);
            return synced_binary_endpoint_response(id, req, sync_currencies,
                                                   "/EquipItemTranscendence heroIdx=" + hero_idx,
                                                   response);
        }

        if (req.path == "/SpiritTreeSlotEquip")
        {
            std::string payload = request_payload(req);
            const std::int32_t slot_no = pb_get_int32(payload, 1, 0);
            std::string hero_idx = pb_get_string(payload, 2, "hero-1");
            std::string response = db::spirit_tree_slot_equip(slot_no, hero_idx);
            return binary_endpoint_response(id, req,
                                            "/SpiritTreeSlotEquip slotNo=" + std::to_string(slot_no),
                                            response);
        }

        if (req.path == "/SpiritTreeSlotUnEquip")
        {
            const std::int32_t slot_no = pb_get_int32(request_payload(req), 1, 0);
            std::string response = db::spirit_tree_slot_unequip(slot_no);
            return binary_endpoint_response(id, req,
                                            "/SpiritTreeSlotUnEquip slotNo=" + std::to_string(slot_no),
                                            response);
        }

        if (req.path == "/GetContentClearDeck")
        {
            std::string payload = request_payload(req);
            const std::int32_t content_type = pb_get_int32(payload, 1, 0);
            const std::int32_t content_no = pb_get_int32(payload, 2, 1);

            std::string hero;
            pb_int32(hero, 1, 101);
            pb_int32(hero, 2, 1);
            pb_int32(hero, 3, 1);

            std::string deck_info;
            pb_int32(deck_info, 1, 1);
            pb_int32(deck_info, 2, 1000);
            pb_int32(deck_info, 3, 1);
            pb_message(deck_info, 4, hero);

            std::string deck_list;
            pb_message(deck_list, 1, deck_info);

            std::string response;
            pb_int32(response, 1, content_type);
            pb_int32(response, 2, content_no);
            pb_message(response, 3, deck_list);
            return binary_endpoint_response(id, req,
                                            "/GetContentClearDeck contentNo=" + std::to_string(content_no),
                                            response);
        }

        if (req.path == "/HeroEquipMulti")
        {
            std::string hero_idx = pb_get_string(request_payload(req), 1, "hero-1");
            std::string slot;
            pb_int32(slot, 1, 0);
            pb_int32(slot, 2, 1);

            std::string equip_all;
            pb_string(equip_all, 1, hero_idx);
            pb_message(equip_all, 2, slot);

            std::string response;
            pb_message(response, 1, equip_all);
            return binary_endpoint_response(id, req, "/HeroEquipMulti heroIdx=" + hero_idx, response);
        }

        if (req.path == "/GachaMileageDelete")
        {
            std::string mileage;
            pb_int32(mileage, 1, 1);
            pb_int32(mileage, 2, 0);
            pb_int32(mileage, 3, 0);
            pb_int32(mileage, 4, 0);
            std::string response;
            pb_message(response, 1, mileage);
            return binary_endpoint_response(id, req, "/GachaMileageDelete", response);
        }

        if (req.path == "/CashShopList")
        {
            const std::int32_t no = pb_get_int32(request_payload(req), 1, 0);
            std::string response = db::build_cash_shop_list(no);
            return binary_endpoint_response(id, req, "/CashShopList no=" + std::to_string(no), response);
        }

        if (req.path == "/CashShopUserAbleCashItemIdAllList")
        {
            std::vector<std::int32_t> tab_ids = pb_get_all_int32(request_payload(req), 1);
            std::string response = db::build_cash_shop_user_able_cash_item_id_all_list(tab_ids);
            return binary_endpoint_response(id, req,
                                            "/CashShopUserAbleCashItemIdAllList tabs=" + std::to_string(tab_ids.size()),
                                            response);
        }

        if (req.path == "/GuildInfo")
        {
            std::string response = db::guild_info(pb_get_string(request_payload(req), 1, ""));
            return binary_endpoint_response(id, req, "/GuildInfo", response);
        }

        if (req.path == "/GuildJoinRequestList")
        {
            std::string response = db::guild_join_request_list(pb_get_string(request_payload(req), 1, ""));
            return binary_endpoint_response(id, req, "/GuildJoinRequestList", response);
        }

        if (req.path == "/ArenaWeeklyRankReward")
        {
            const std::int32_t arena_type = pb_get_int32(request_payload(req), 1, 0);
            std::string response = db::arena_weekly_rank_reward(arena_type);
            return binary_endpoint_response(id, req,
                                            "/ArenaWeeklyRankReward arenaType=" + std::to_string(arena_type),
                                            response);
        }

        if (req.path == "/AchievementList")
        {
            std::string achievement;
            pb_int32(achievement, 1, 1);
            pb_int32(achievement, 2, 1);
            pb_int64(achievement, 3, 0);
            pb_int32(achievement, 4, 0);
            std::string response;
            pb_message(response, 1, achievement);
            return binary_endpoint_response(id, req, "/AchievementList", response);
        }

        if (req.path == "/TaskList")
        {
            std::string daily_value;
            pb_int32(daily_value, 1, 0);
            std::string daily;
            pb_int32(daily, 1, 1);
            pb_message(daily, 2, daily_value);

            std::string weekly_value;
            pb_int32(weekly_value, 1, 0);
            std::string weekly;
            pb_int32(weekly, 1, 1);
            pb_message(weekly, 2, weekly_value);

            std::string response;
            pb_message(response, 1, daily);
            pb_message(response, 2, weekly);
            return binary_endpoint_response(id, req, "/TaskList", response);
        }

        if (req.path == "/AutoHuntOpen")
        {
            std::string response = db::auto_hunt_open(newbie_mode);
            return binary_endpoint_response(id, req, "/AutoHuntOpen", response);
        }

        if (req.path == "/NewMailCnt")
        {
            std::string response;
            pb_string(response, 1, "0");
            return binary_endpoint_response(id, req, "/NewMailCnt", response);
        }

        if (req.path == "/GachaInfo")
        {
            std::string gacha;
            const int fixed = newbie_mode ? 0 : 1;
            pb_int32(gacha, 4, fixed);
            std::string response;
            pb_message(response, 3, gacha);
            return binary_endpoint_response(id, req,
                                            "/GachaInfo heroGachaTutorialFixed=" + std::to_string(fixed),
                                            response);
        }

        return std::nullopt;
    }

} // namespace eversoul
