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
#include "orm/storage.hpp"
#include "orm/userinfo_builder.hpp"
#include "payloads.hpp"
#include "protobuf.hpp"
#include "userinfo_repository.hpp"
#include "util.hpp"

namespace eversoul::db
{
    namespace
    {

        std::vector<std::string> split_comma(const std::string &s)
        {
            std::vector<std::string> v;
            std::size_t i = 0;
            while (true)
            {
                std::size_t j = s.find(',', i);
                if (j == std::string::npos)
                {
                    v.push_back(s.substr(i));
                    break;
                }
                v.push_back(s.substr(i, j - i));
                i = j + 1;
            }
            return v;
        }

        // ---- protobuf sub-message builders ----

        std::string hero_pb(const char *idx, int hero_no, int level, int grade, int race, int is_lock)
        {
            std::string h;
            pb_string(h, 1, idx ? idx : "");
            pb_int32(h, 2, hero_no);
            pb_int32(h, 3, level);
            pb_int32(h, 5, grade);
            pb_int32(h, 6, race);
            if (is_lock)
                pb_int32(h, 7, is_lock);
            return h;
        }

        std::string rep_pb(int hero_no, int max_grade)
        {
            std::string r;
            pb_int32(r, 1, hero_no);
            pb_int32(r, 9, max_grade);
            pb_string(r, 15, "0");
            return r;
        }

        std::string item_equip_pb(const eversoul::orm::ItemEquip &item)
        {
            std::string out;
            pb_int64(out, 1, item.id);
            if (item.itemNo)
                pb_int32(out, 2, item.itemNo);
            if (item.exp)
                pb_int32(out, 3, item.exp);
            return out;
        }

        std::string hero_equip_info_pb(const std::string &hero_idx, int slot, const eversoul::orm::ItemEquip &item)
        {
            std::string slot_item;
            if (slot)
                pb_int32(slot_item, 1, slot);
            pb_message(slot_item, 2, item_equip_pb(item));

            std::string out;
            pb_string(out, 1, hero_idx);
            pb_message(out, 2, slot_item);
            return out;
        }

        std::string currency_all_pb_orm()
        {
            std::string all;
            for (const auto &row : eversoul::orm::currencies())
            {
                std::string c;
                pb_int32(c, 1, row.type);
                if (row.value)
                    pb_int64(c, 2, row.value);
                pb_message(all, 1, c);
            }
            return all;
        }

        std::string item_etc_pb(int item_no)
        {
            std::string item;
            pb_int32(item, 1, item_no);
            pb_int32(item, 2, eversoul::orm::item_etc_count(item_no));
            return item;
        }

        int kv_int_orm(const std::string &key, int fallback = 0)
        {
            return static_cast<int>(std::strtol(eversoul::orm::kv_get(key, std::to_string(fallback)).c_str(), nullptr, 10));
        }

        void kv_set_int_orm(const std::string &key, int value)
        {
            eversoul::orm::kv_set(key, std::to_string(value));
        }

        std::string build_gacha_state_pb()
        {
            std::string gacha;
            pb_int32(gacha, 1, kv_int_orm("gacha_hero_ceil", 0));
            pb_int32(gacha, 2, kv_int_orm("gacha_premium_ceil", 0));
            pb_int32(gacha, 3, kv_int_orm("gacha_wish_ceil", 0));
            pb_int32(gacha, 4, kv_int_orm("gacha_tutorial_fixed", 1));
            pb_int32(gacha, 5, kv_int_orm("gacha_hero_auto_release", 1));
            pb_int32(gacha, 6, kv_int_orm("gacha_signature_auto_release", 1));
            return gacha;
        }

        std::string gacha_mileage_pb(int mileage_no, int changed_point)
        {
            const std::string key = "gacha_mileage_" + std::to_string(mileage_no);
            int after = kv_int_orm(key, 0) + changed_point;
            kv_set_int_orm(key, after);

            std::string mileage;
            if (mileage_no)
                pb_int32(mileage, 1, mileage_no);
            if (changed_point)
                pb_int32(mileage, 2, changed_point);
            if (after)
                pb_int32(mileage, 3, after);
            return mileage;
        }

        std::int64_t day_number()
        {
            return unix_ms() / 86400000LL;
        }

        int today_yyyymmdd()
        {
            std::time_t seconds = static_cast<std::time_t>(unix_ms() / 1000);
            std::tm local{};
#if defined(_WIN32)
            localtime_s(&local, &seconds);
#else
            localtime_r(&seconds, &local);
#endif
            return (local.tm_year + 1900) * 10000 + (local.tm_mon + 1) * 100 + local.tm_mday;
        }

        bool mark_once_per_day(const std::string &key)
        {
            const std::string today = std::to_string(day_number());
            if (eversoul::orm::kv_get(key, "") == today)
                return false;
            eversoul::orm::kv_set(key, today);
            return true;
        }

        int clamp_count(int count)
        {
            if (count <= 0)
                return 1;
            if (count > 10)
                return 10;
            return count;
        }

        struct HeroTemplate
        {
            int no;
            int grade;
            int race;
        };

        HeroTemplate hero_template_for_serial(int serial)
        {
            static const HeroTemplate kPool[] = {
                {10, 110011, 110052},
                {20, 110011, 110053},
                {30, 110011, 110054},
                {40, 110011, 110055},
                {110, 110012, 110052},
                {120, 110012, 110052},
                {210, 110012, 110053},
                {310, 110012, 110054},
                {410, 110012, 110055},
                {1010, 110014, 110052},
                {1060, 110014, 110052},
                {2070, 110014, 110053},
            };
            return kPool[static_cast<std::size_t>(serial) % (sizeof(kPool) / sizeof(kPool[0]))];
        }

        eversoul::orm::Hero grant_gacha_hero(int serial)
        {
            HeroTemplate t = hero_template_for_serial(serial);
            std::string idx = "0_dyn_gacha_" + std::to_string(serial);
            eversoul::orm::Hero hero{idx, t.no, 1, 0, t.grade, t.race, 0};
            eversoul::orm::save_hero(hero);

            auto rep = eversoul::orm::hero_rep_by_no(t.no).value_or(eversoul::orm::HeroRep{});
            rep.heroNo = t.no;
            if (t.grade > rep.maxGradeSno)
                rep.maxGradeSno = t.grade;
            eversoul::orm::save_hero_rep(rep);
            return hero;
        }

        void spend_gacha_cost(int ticket_currency, int dia_currency, int count, int is_use_pay_dia)
        {
            const int ticket_count = kv_int_orm("prefer_ticket_cost", 1) ? count : 0;
            if (ticket_count > 0)
                eversoul::orm::add_currency(ticket_currency, -ticket_count);
            else
                eversoul::orm::add_currency(is_use_pay_dia ? 42 : dia_currency, -300LL * count);
        }

        // Idle/auto-hunt accrual rates (per minute) and cap. Small + tutorial-friendly.
        constexpr long long kGoldPerMin = 10;
        constexpr long long kManaDustPerMin = 10;
        constexpr long long kExpPerMin = 2;
        constexpr long long kAutoHuntCapMin = 720; // 12h
        // Tutorial loot UI expects visible idle rewards right after stage clear.
        constexpr long long kTutorialMinGold = 600;
        constexpr long long kTutorialMinManaDust = 60;
        constexpr long long kTutorialMinExp = 213;

        struct Pending
        {
            long long gold;
            long long mana_dust;
            long long exp;
        };

        Pending compute_pending_orm()
        {
            const long long now = unix_ms();
            const long long created = std::atoll(eversoul::orm::kv_get("created_dt", std::to_string(now)).c_str());
            const long long rdt =
                std::atoll(eversoul::orm::kv_get("autohunt_receive_dt", std::to_string(created)).c_str());
            long long mins = (now - rdt) / 60000;
            if (mins < 0)
                mins = 0;
            if (mins > kAutoHuntCapMin)
                mins = kAutoHuntCapMin;
            return {kGoldPerMin * mins, kManaDustPerMin * mins, kExpPerMin * mins};
        }

        void apply_pending_floor(Pending &p)
        {
            if (p.gold || p.mana_dust || p.exp)
                return;
            const int max_tutorial = eversoul::orm::max_tutorial_no();
            const int max_stage = eversoul::orm::max_stage_no();
            // Loot + fairy level-up tutorials sit around stage 3–5 / tutorial 3100.
            if (max_tutorial >= 3100 && max_stage > 5)
                return;
            p.gold = kTutorialMinGold;
            p.mana_dust = kTutorialMinManaDust;
            p.exp = kTutorialMinExp;
        }

        void append_auto_hunt_item_boxes(std::string &out, int field)
        {
            static const int kBoxes[] = {101, 102, 103, 104};
            for (int no : kBoxes)
            {
                std::string box;
                pb_int32(box, 1, no);
                pb_int32(box, 2, 1);
                pb_message(out, field, box);
            }
        }

        std::string auto_hunt_state_pb(int max_stage, long long lab_dt, long long receive_dt)
        {
            std::string ah;
            if (max_stage)
                pb_int32(ah, 1, max_stage);
            pb_int64(ah, 2, lab_dt);
            pb_int64(ah, 3, receive_dt);
            return ah;
        }

        std::string auto_hunt_currency_pb(const Pending &p)
        { // sAutoHuntCurrencyAll
            std::string ahc;
            auto add = [&](int type, long long val)
            {
                std::string c;
                pb_int32(c, 1, type);
                if (val)
                    pb_int64(c, 2, val);
                pb_message(ahc, 1, c);
            };
            add(1, p.gold);      // Gold
            add(3, p.mana_dust); // ManaDust
            add(5, p.exp);       // Exp
            return ahc;
        }

        std::string cleared_dungeon_pb(std::int32_t dungeon_id, int dungeon_no, int is_first_clear)
        {
            std::string dungeon;
            if (dungeon_id > 0)
                pb_int32(dungeon, 1, dungeon_id);
            pb_int32(dungeon, 2, dungeon_no);
            pb_int32(dungeon, 3, 1);  // dungeonLevel
            pb_int32(dungeon, 11, 0); // isEnter
            pb_int32(dungeon, 12, 1); // isClear
            if (is_first_clear)
                pb_int32(dungeon, 13, 1);
            return dungeon;
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
        (void)eversoul::orm::ensure_ready(config().data_dir);
        if (eversoul::orm::kv_get("achievement_all_received", "") != "1")
        {
            eversoul::orm::kv_set("achievement_all_received", "1");
            eversoul::orm::add_currency(2, 500);
            eversoul::orm::add_currency(28, 5);
        }

        std::string out;
        std::string achievement;
        pb_int32(achievement, 1, 999);
        pb_int64(achievement, 3, 1);
        pb_int32(achievement, 4, 999001);
        pb_message(out, 1, achievement);
        pb_message(out, 4, currency_all_pb_orm());
        return out;
    }

    std::string mail_item_all_receive(std::int32_t category_flag)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        const bool grant = mark_once_per_day("mail_all_receive_" + std::to_string(category_flag));
        if (grant)
        {
            eversoul::orm::add_currency(2, 700);
            eversoul::orm::add_currency(13, 4500);
            eversoul::orm::add_currency(28, 1);
        }

        std::string out;
        std::string mail;
        pb_string(mail, 1, "offline_mail_" + std::to_string(day_number()));
        pb_int32(mail, 2, 52);
        pb_string(mail, 3, "offline");
        pb_string(mail, 4, "offline reward");
        pb_string(mail, 6, "[[2,700],[13,4500],[28,1]]");
        pb_int32(mail, 8, 1);
        pb_int64(mail, 10, unix_ms());
        pb_int64(mail, 11, unix_ms() + 7LL * 86400000LL);
        pb_message(out, 1, mail);
        pb_message(out, 2, currency_all_pb_orm());
        return out;
    }

    std::string receive_attendance()
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        const bool grant = mark_once_per_day("attendance_receive");
        if (grant)
        {
            eversoul::orm::add_currency(2, 100);
            eversoul::orm::add_currency(46, 1);
        }

        const int day = today_yyyymmdd();
        int consecutive = kv_int_orm("attendance_consecutive", 0);
        if (grant)
        {
            ++consecutive;
            kv_set_int_orm("attendance_consecutive", consecutive);
        }

        std::string out;
        std::string attendance;
        pb_int32(attendance, 1, 42);
        pb_int32(attendance, 2, day);
        pb_int32(attendance, 3, consecutive);
        pb_message(out, 1, attendance);
        pb_message(out, 2, currency_all_pb_orm());
        return out;
    }

    std::string friend_heart_receive_all()
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        constexpr int kHeartCount = 15;
        const bool grant = mark_once_per_day("friend_heart_receive_all");
        if (grant)
            eversoul::orm::add_currency(6, kHeartCount);

        std::string out;
        const std::string self = eversoul::orm::kv_get("user_idx", "offline");
        for (int i = 0; i < kHeartCount; ++i)
        {
            std::string heart;
            pb_string(heart, 1, "offline_friend_" + std::to_string(i + 1));
            pb_string(heart, 2, self);
            pb_int32(heart, 3, 2);
            pb_message(out, 1, heart);
        }
        pb_int32(out, 2, grant ? kHeartCount : 0);
        pb_message(out, 3, currency_all_pb_orm());
        return out;
    }

    std::string auto_hunt_open()
    {
        if (AccountDatabase* adb = account_db_manager().active_db()) {
            EndpointMutationService svc(*adb);
            return svc.auto_hunt_open();
        }
        {
            (void)eversoul::orm::ensure_ready(config().data_dir);
            Pending p = compute_pending_orm();
            apply_pending_floor(p);

            if (auto fx = fixture_store().payload("/AutoHuntOpen", true))
            {
                std::string out = *fx;
                out = pb_replace_message(out, 1, auto_hunt_currency_pb(p));
                append_auto_hunt_item_boxes(out, 2);
                log_line(0, "ORM", "auto_hunt_open fixture protoBytes=" + std::to_string(out.size()));
                return out;
            }

            std::string out;
            pb_message(out, 1, auto_hunt_currency_pb(p));
            append_auto_hunt_item_boxes(out, 2);
            pb_int32(out, 3, static_cast<int>(kGoldPerMin));
            pb_int32(out, 4, static_cast<int>(kManaDustPerMin));
            pb_int32(out, 5, static_cast<int>(kExpPerMin));
            return out;
        }

    }

    std::string auto_hunt_receive()
    {
        if (AccountDatabase* adb = account_db_manager().active_db()) {
            EndpointMutationService svc(*adb);
            return svc.auto_hunt_receive();
        }
        {
            (void)eversoul::orm::ensure_ready(config().data_dir);
            Pending p = compute_pending_orm();
            apply_pending_floor(p);
            const long long now = unix_ms();
            eversoul::orm::add_currency(1, p.gold);
            eversoul::orm::add_currency(3, p.mana_dust);
            eversoul::orm::add_currency(5, p.exp);
            eversoul::orm::kv_set("autohunt_receive_dt", std::to_string(now));
            int max_stage = eversoul::orm::max_stage_no();

            if (auto fx = fixture_store().payload("/AutoHuntReceive", true))
            {
                std::string out = *fx;
                out = pb_replace_message(out, 1, currency_all_pb_orm());
                out = pb_replace_message(out, 4, auto_hunt_currency_pb(p));
                out = pb_replace_message(out, 6, auto_hunt_state_pb(max_stage, now, now));
                log_line(0, "ORM", "auto_hunt_receive +gold " + std::to_string(p.gold) + " fixture protoBytes=" + std::to_string(out.size()));
                return out;
            }

            std::string out;
            pb_message(out, 1, currency_all_pb_orm());
            pb_message(out, 4, auto_hunt_currency_pb(p));
            append_auto_hunt_item_boxes(out, 5);
            pb_message(out, 6, auto_hunt_state_pb(max_stage, now, now));
            log_line(0, "ORM", "auto_hunt_receive +gold " + std::to_string(p.gold));
            return out;
        }

    }

} // namespace eversoul::db
