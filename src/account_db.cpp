// account_db.cpp — SQLite-backed persistent account state.
#include "account_db.hpp"

#include <cstdarg>
#include <ctime>
#include <cstdlib>
#include <mutex>
#include <string>
#include <vector>

#include <sys/stat.h>

#include "sqlite3.h"

#include "common.hpp"
#include "fixture_store.hpp"
#include "log.hpp"
#include "orm/storage.hpp"
#include "orm/userinfo_builder.hpp"
#include "payloads.hpp"
#include "protobuf.hpp"
#include "util.hpp"

namespace eversoul::db
{
    namespace
    {

        std::mutex g_mu;
        sqlite3 *g_db = nullptr;
        bool g_ready = false;

        // Static (immutable-during-play) UserInfo fields captured from a real fresh account:
        // spiritTree(10), dailyContent(12), doubleGate(22), secureSeed(23), lobbyBackground(24),
        // bgm(26), chatKey(28), chatServerUrl(31), sdHeroNo(32), townVisitHero(40),
        // battleAutoUltimate(37), monthlyHeroResetFlag(41), arkOperator(49),
        // doubleGateDailyContent(50), arbeitOption(52). dungeonList(25) is built from DB.
        const char kStaticHead[] =
#include "userinfo_static_head.inc"
            ;

        const char kStaticTailRest[] =
#include "userinfo_static_suffix.inc"
            ;

        // ---- low-level helpers (assume g_mu held) ----

        void execf(const char *fmt, ...)
        {
            if (!g_db)
                return;
            va_list ap;
            va_start(ap, fmt);
            char *sql = sqlite3_vmprintf(fmt, ap);
            va_end(ap);
            if (!sql)
                return;
            char *err = nullptr;
            if (sqlite3_exec(g_db, sql, nullptr, nullptr, &err) != SQLITE_OK && err)
            {
                log_line(0, "DB_ERR", std::string(err) + " :: " + sql);
            }
            if (err)
                sqlite3_free(err);
            sqlite3_free(sql);
        }

        std::string kv_get(const char *key, const std::string &def)
        {
            std::string out = def;
            sqlite3_stmt *st = nullptr;
            if (sqlite3_prepare_v2(g_db, "SELECT v FROM kv WHERE k=?1", -1, &st, nullptr) == SQLITE_OK)
            {
                sqlite3_bind_text(st, 1, key, -1, SQLITE_STATIC);
                if (sqlite3_step(st) == SQLITE_ROW)
                {
                    const unsigned char *t = sqlite3_column_text(st, 0);
                    if (t)
                        out = reinterpret_cast<const char *>(t);
                }
            }
            sqlite3_finalize(st);
            return out;
        }

        void kv_set(const char *key, const std::string &value)
        {
            execf("INSERT INTO kv(k,v) VALUES(%Q,%Q) ON CONFLICT(k) DO UPDATE SET v=excluded.v", key, value.c_str());
        }

        int query_int(const char *sql, int def)
        {
            int out = def;
            sqlite3_stmt *st = nullptr;
            if (sqlite3_prepare_v2(g_db, sql, -1, &st, nullptr) == SQLITE_OK)
            {
                if (sqlite3_step(st) == SQLITE_ROW)
                    out = sqlite3_column_int(st, 0);
            }
            sqlite3_finalize(st);
            return out;
        }

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

        std::string join_comma(const std::vector<std::string> &v)
        {
            std::string s;
            for (std::size_t i = 0; i < v.size(); ++i)
            {
                if (i)
                    s += ',';
                s += v[i];
            }
            return s;
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

        std::string currency_all_pb()
        {
            std::string all;
            sqlite3_stmt *st = nullptr;
            if (sqlite3_prepare_v2(g_db, "SELECT type,value FROM currency ORDER BY rowid", -1, &st, nullptr) == SQLITE_OK)
            {
                while (sqlite3_step(st) == SQLITE_ROW)
                {
                    std::string c;
                    pb_int32(c, 1, sqlite3_column_int(st, 0));
                    std::int64_t v = sqlite3_column_int64(st, 1);
                    if (v)
                        pb_int64(c, 2, v);
                    pb_message(all, 1, c);
                }
            }
            sqlite3_finalize(st);
            return all;
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

        // ---- schema + seed ----

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

        Pending compute_pending()
        { // assumes g_mu held + g_db ready
            const long long now = unix_ms();
            const long long created = std::atoll(kv_get("created_dt", std::to_string(now)).c_str());
            const long long rdt = std::atoll(kv_get("autohunt_receive_dt", std::to_string(created)).c_str());
            long long mins = (now - rdt) / 60000;
            if (mins < 0)
                mins = 0;
            if (mins > kAutoHuntCapMin)
                mins = kAutoHuntCapMin;
            return {kGoldPerMin * mins, kManaDustPerMin * mins, kExpPerMin * mins};
        }

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

        void create_schema()
        {
            execf("CREATE TABLE IF NOT EXISTS kv(k TEXT PRIMARY KEY, v TEXT)");
            execf("CREATE TABLE IF NOT EXISTS hero(idx TEXT PRIMARY KEY, heroNo INT, level INT, gradeSno INT, raceSno INT, isLock INT DEFAULT 0)");
            execf("CREATE TABLE IF NOT EXISTS hero_rep(heroNo INT PRIMARY KEY, maxGradeSno INT)");
            execf("CREATE TABLE IF NOT EXISTS currency(type INT PRIMARY KEY, value INT)");
            execf("CREATE TABLE IF NOT EXISTS item_etc(itemNo INT PRIMARY KEY, cnt INT)");
            execf("CREATE TABLE IF NOT EXISTS formation(no INT, kind INT, heroidx TEXT, formationType INT, formationName TEXT, PRIMARY KEY(no,kind))");
            execf("CREATE TABLE IF NOT EXISTS stage(stageNo INT PRIMARY KEY, stageType INT, updateDt INT)");
            execf("CREATE TABLE IF NOT EXISTS story(storyNo INT PRIMARY KEY, updateDt INT)");
            execf("CREATE TABLE IF NOT EXISTS tutorial(tutorialNo INT PRIMARY KEY)");
            execf("CREATE TABLE IF NOT EXISTS dungeon(dungeonNo INT PRIMARY KEY, updateDt INT, isFirstClear INT DEFAULT 1)");
        }

        void seed()
        {
            const std::int64_t now = unix_ms();
            kv_set("user_idx", "0_031V76fo_jDM");
            kv_set("created_dt", std::to_string(now));
            // Start the idle timer 2h in the past so the "collect idle reward" tutorial step has
            // something to collect the moment the player reaches it.
            kv_set("autohunt_receive_dt", std::to_string(now - 7200000));
            kv_set("nickname", "");

            // Currency: all types the client expects; generous on the resources the tutorial spends.
            static const int kCurrencyTypes[] = {1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 16, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 42, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 57, 58, 59, 60, 62, 64, 65, 66, 100};
            for (int t : kCurrencyTypes)
            {
                std::int64_t v = 0;
                switch (t)
                {
                case 1:
                    v = 100000000;
                    break; // Gold
                case 2:
                    v = 300000;
                    break; // FreeDia
                case 3:
                    v = 100000000;
                    break; // ManaDust
                case 4:
                    v = 1000000;
                    break; // ManaCrystal
                case 5:
                    v = 100000000;
                    break; // Exp
                case 16:
                    v = 100000000;
                    break; // Silver
                default:
                    v = 0;
                    break;
                }
                execf("INSERT OR IGNORE INTO currency(type,value) VALUES(%d,%lld)", t, static_cast<long long>(v));
            }

            // 4 starter heroes (heroNo 10/20/30/40), idx matching the proven working blob.
            struct Starter
            {
                const char *idx;
                int no;
                int grade;
                int race;
            };
            static const Starter kStarters[] = {
                {"0_631V76aY_jO5", 10, 110011, 110052},
                {"0_631V76aY_jO6", 20, 110011, 110053},
                {"0_631V76aY_jO7", 30, 110011, 110054},
                {"0_631V76aY_jO8", 40, 110011, 110055},
            };
            for (const auto &s : kStarters)
            {
                execf("INSERT OR IGNORE INTO hero(idx,heroNo,level,gradeSno,raceSno,isLock) VALUES(%Q,%d,1,%d,%d,0)", s.idx, s.no, s.grade, s.race);
                execf("INSERT OR IGNORE INTO hero_rep(heroNo,maxGradeSno) VALUES(%d,%d)", s.no, s.grade);
            }

            // Formations 0 & 1 pre-fill the 4 starters (kind 150, like the working blob); 2 & 3 empty.
            const char *filled = "0_631V76aY_jO5,0_631V76aY_jO6,0_631V76aY_jO7,0_631V76aY_jO8,0";
            const char *empty = "0,0,0,0,0";
            execf("INSERT OR IGNORE INTO formation(no,kind,heroidx,formationType,formationName) VALUES(0,150,%Q,1,'')", filled);
            execf("INSERT OR IGNORE INTO formation(no,kind,heroidx,formationType,formationName) VALUES(1,150,%Q,1,'')", filled);
            execf("INSERT OR IGNORE INTO formation(no,kind,heroidx,formationType,formationName) VALUES(2,150,%Q,1,'')", empty);
            execf("INSERT OR IGNORE INTO formation(no,kind,heroidx,formationType,formationName) VALUES(3,150,%Q,1,'')", empty);

            // Starter items (matches working blob: tutorial selectors + profile frame/portrait).
            static const int kItems[][2] = {{5000, 1}, {5501, 1}, {5502, 1}, {5503, 1}, {5504, 1}, {5505, 1}, {5506, 1}, {5507, 1}, {30001, 1}};
            for (const auto &it : kItems)
                execf("INSERT OR IGNORE INTO item_etc(itemNo,cnt) VALUES(%d,%d)", it[0], it[1]);

            kv_set("seeded", "1");
            log_line(0, "DB", "seeded fresh account");
        }

        void heal_progress_locked()
        { // assumes g_mu held + g_db ready
            const int max_stage = query_int("SELECT IFNULL(MAX(stageNo),0) FROM stage", 0);
            const int max_tutorial = query_int("SELECT IFNULL(MAX(tutorialNo),0) FROM tutorial", 0);
            const std::int64_t now = unix_ms();

            if (max_stage >= 5 || max_tutorial >= 4800)
            {
                execf("INSERT OR IGNORE INTO story(storyNo,updateDt) VALUES(10001,%lld)", static_cast<long long>(now));
                if (sqlite3_changes(g_db) > 0)
                    log_line(0, "DB", "heal: story 10001");
                execf("INSERT OR IGNORE INTO dungeon(dungeonNo,updateDt,isFirstClear) VALUES(10001,%lld,1)",
                      static_cast<long long>(now));
                if (sqlite3_changes(g_db) > 0)
                    log_line(0, "DB", "heal: dungeon 10001 cleared");
            }
            if (max_tutorial >= 4900)
            {
                execf("INSERT OR IGNORE INTO story(storyNo,updateDt) VALUES(11,%lld)", static_cast<long long>(now));
                if (sqlite3_changes(g_db) > 0)
                    log_line(0, "DB", "heal: story 11");
            }
        }

        std::string build_dungeon_list_pb()
        { // assumes g_mu held + g_db ready
            std::string list;
            sqlite3_stmt *st = nullptr;
            if (sqlite3_prepare_v2(g_db, "SELECT dungeonNo,isFirstClear FROM dungeon ORDER BY dungeonNo", -1, &st, nullptr) ==
                SQLITE_OK)
            {
                while (sqlite3_step(st) == SQLITE_ROW)
                {
                    std::string dungeon;
                    pb_int32(dungeon, 2, sqlite3_column_int(st, 0)); // dungeonNo
                    pb_int32(dungeon, 12, 1);                        // isClear
                    if (sqlite3_column_int(st, 1))
                        pb_int32(dungeon, 13, 1); // isFirstClear
                    std::string entry;
                    pb_message(entry, 1, dungeon);
                    pb_message(list, 1, entry); // dungeonReward
                }
            }
            sqlite3_finalize(st);
            // Rotation / labyrinth metadata from a real fresh account snapshot.
            pb_int32(list, 3, 2003);            // rotationDungeonNo
            pb_int64(list, 4, 1760918400000LL); // rotationDungeonExpireDt
            pb_int64(list, 5, 1760832000000LL); // labyrinthExpireDt
            return list;
        }

        std::string build_guide_quest_list_locked()
        { // assumes g_mu held + g_db ready
            const int max_stage = query_int("SELECT IFNULL(MAX(stageNo),0) FROM stage", 0);
            const bool dungeon_10001 =
                query_int("SELECT COUNT(*) FROM dungeon WHERE dungeonNo=10001", 0) > 0;
            const int item_3201 = query_int("SELECT IFNULL(cnt,0) FROM item_etc WHERE itemNo=3201", 0);

            std::string out;
            auto add = [&](int quest_no, int value)
            {
                std::string q;
                pb_int32(q, 1, quest_no);
                pb_int32(q, 2, value);
                pb_message(out, 1, q);
            };

            if (max_stage >= 2)
                add(1001, 2);
            else if (max_stage >= 1)
                add(1001, 1);

            if (max_stage >= 5 || dungeon_10001)
            {
                add(1002, 2);
                add(1005, 2);
                if (item_3201 > 0)
                    add(1003, 2);
                else
                    add(1003, 1);
            }
            else if (max_stage >= 3)
            {
                add(1002, 1);
            }

            if (max_stage >= 10)
                add(1004, 2);
            else if (max_stage >= 5)
                add(1004, 5);

            if (max_stage >= 12)
                add(1005, 2);
            return out;
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

        void ensure_init_locked()
        {
            if (g_ready)
                return;
            static const char *kPaths[] = {
                "/sdcard/Android/data/com.kakaogames.eversoul/files/eversoul_offline.db",
                "/storage/emulated/0/Android/data/com.kakaogames.eversoul/files/eversoul_offline.db",
                "/data/data/com.kakaogames.eversoul/files/eversoul_offline.db",
                "eversoul_offline.db",
            };
#ifdef __ANDROID__
            ::mkdir("/sdcard/Android/data/com.kakaogames.eversoul", 0770);
            ::mkdir("/sdcard/Android/data/com.kakaogames.eversoul/files", 0770);
#endif
            for (const char *p : kPaths)
            {
                if (sqlite3_open(p, &g_db) == SQLITE_OK && g_db &&
                    sqlite3_exec(g_db, "CREATE TABLE IF NOT EXISTS _probe(x)", nullptr, nullptr, nullptr) == SQLITE_OK)
                {
                    log_line(0, "DB", std::string("opened ") + p);
                    break;
                }
                if (g_db)
                {
                    sqlite3_close(g_db);
                    g_db = nullptr;
                }
            }
            if (!g_db)
            {
                log_line(0, "DB", "FAILED to open any db path");
                return;
            }
            execf("PRAGMA journal_mode=WAL");
            execf("PRAGMA synchronous=NORMAL");
            create_schema();
            if (kv_get("seeded", "") != "1")
                seed();
            heal_progress_locked();
            g_ready = true;
        }

    } // namespace

    // ---- public API ----

    std::string build_user_info()
    {
        if (std::string orm_payload = orm::build_user_info_payload(config().data_dir); !orm_payload.empty())
            return orm_payload;

        std::lock_guard<std::mutex> lock(g_mu);
        ensure_init_locked();
        if (!g_db)
            return {};
        const std::int64_t now = unix_ms();
        const long long created = std::atoll(kv_get("created_dt", std::to_string(now)).c_str());
        std::string out;

        // user (1)
        {
            std::string user;
            pb_string(user, 1, kv_get("user_idx", "0_031V76fo_jDM"));
            std::string nick = kv_get("nickname", "");
            if (!nick.empty())
                pb_string(user, 2, nick);
            pb_int64(user, 3, now);     // lastLoginDt
            pb_int64(user, 9, created); // createdDt
            std::string thumb;
            pb_int32(thumb, 1, 5501);
            pb_int32(thumb, 2, 30001);
            pb_message(user, 10, thumb);
            pb_message(out, 1, user);
        }
        // currency (2)
        pb_message(out, 2, currency_all_pb());
        // hero (3)
        {
            sqlite3_stmt *st = nullptr;
            sqlite3_prepare_v2(g_db, "SELECT idx,heroNo,level,gradeSno,raceSno,isLock FROM hero ORDER BY rowid", -1, &st, nullptr);
            while (st && sqlite3_step(st) == SQLITE_ROW)
            {
                pb_message(out, 3, hero_pb(reinterpret_cast<const char *>(sqlite3_column_text(st, 0)), sqlite3_column_int(st, 1), sqlite3_column_int(st, 2), sqlite3_column_int(st, 3), sqlite3_column_int(st, 4), sqlite3_column_int(st, 5)));
            }
            sqlite3_finalize(st);
        }
        // stage (5)
        {
            sqlite3_stmt *st = nullptr;
            sqlite3_prepare_v2(g_db, "SELECT stageNo,stageType,updateDt FROM stage ORDER BY stageNo", -1, &st, nullptr);
            while (st && sqlite3_step(st) == SQLITE_ROW)
            {
                std::string s;
                pb_int32(s, 1, sqlite3_column_int(st, 0));
                if (sqlite3_column_int(st, 1))
                    pb_int32(s, 2, sqlite3_column_int(st, 1));
                pb_int64(s, 3, sqlite3_column_int64(st, 2));
                pb_message(out, 5, s);
            }
            sqlite3_finalize(st);
        }
        // formation (7)
        {
            sqlite3_stmt *st = nullptr;
            sqlite3_prepare_v2(g_db, "SELECT no,kind,heroidx,formationType,formationName FROM formation ORDER BY kind,no", -1, &st, nullptr);
            while (st && sqlite3_step(st) == SQLITE_ROW)
            {
                std::string f;
                int no = sqlite3_column_int(st, 0);
                if (no)
                    pb_int32(f, 1, no);
                pb_int32(f, 2, sqlite3_column_int(st, 1));
                const unsigned char *hx = sqlite3_column_text(st, 2);
                for (const auto &h : split_comma(hx ? reinterpret_cast<const char *>(hx) : "0"))
                    pb_string(f, 3, h);
                int ft = sqlite3_column_int(st, 3);
                if (ft)
                    pb_int32(f, 4, ft);
                const unsigned char *nm = sqlite3_column_text(st, 4);
                if (nm && nm[0])
                    pb_string(f, 5, reinterpret_cast<const char *>(nm));
                pb_message(out, 7, f);
            }
            sqlite3_finalize(st);
        }
        // heroReputation (8)
        {
            sqlite3_stmt *st = nullptr;
            sqlite3_prepare_v2(g_db, "SELECT heroNo,maxGradeSno FROM hero_rep ORDER BY heroNo", -1, &st, nullptr);
            while (st && sqlite3_step(st) == SQLITE_ROW)
            {
                pb_message(out, 8, rep_pb(sqlite3_column_int(st, 0), sqlite3_column_int(st, 1)));
            }
            sqlite3_finalize(st);
        }
        // autoHunt (9)
        {
            int max_stage = query_int("SELECT IFNULL(MAX(stageNo),0) FROM stage", 0);
            long long rdt = std::atoll(kv_get("autohunt_receive_dt", std::to_string(created)).c_str());
            std::string ah;
            if (max_stage)
                pb_int32(ah, 1, max_stage);
            pb_int64(ah, 2, rdt);
            pb_int64(ah, 3, rdt);
            pb_message(out, 9, ah);
        }
        // tutorial (14)
        {
            sqlite3_stmt *st = nullptr;
            sqlite3_prepare_v2(g_db, "SELECT tutorialNo FROM tutorial ORDER BY tutorialNo", -1, &st, nullptr);
            while (st && sqlite3_step(st) == SQLITE_ROW)
            {
                std::string t;
                pb_int32(t, 1, sqlite3_column_int(st, 0));
                pb_message(out, 14, t);
            }
            sqlite3_finalize(st);
        }
        // story (15)
        {
            sqlite3_stmt *st = nullptr;
            sqlite3_prepare_v2(g_db, "SELECT storyNo,updateDt FROM story ORDER BY storyNo", -1, &st, nullptr);
            while (st && sqlite3_step(st) == SQLITE_ROW)
            {
                std::string s;
                pb_int32(s, 1, sqlite3_column_int(st, 0));
                pb_int64(s, 2, sqlite3_column_int64(st, 1));
                pb_message(out, 15, s);
            }
            sqlite3_finalize(st);
        }
        // itemEtc (18)
        {
            sqlite3_stmt *st = nullptr;
            sqlite3_prepare_v2(g_db, "SELECT itemNo,cnt FROM item_etc ORDER BY itemNo", -1, &st, nullptr);
            while (st && sqlite3_step(st) == SQLITE_ROW)
            {
                std::string it;
                pb_int32(it, 1, sqlite3_column_int(st, 0));
                pb_int32(it, 2, sqlite3_column_int(st, 1));
                pb_message(out, 18, it);
            }
            sqlite3_finalize(st);
        }
        // static head + dynamic dungeonList + static suffix (bgm/chat/etc.)
        out += hex_to_bytes(kStaticHead);
        pb_message(out, 25, build_dungeon_list_pb());
        out += hex_to_bytes(kStaticTailRest);
        return out;
    }

    std::string tutorial_active(std::int32_t tutorial_no)
    {
        {
            (void)eversoul::orm::ensure_ready(config().data_dir);
            eversoul::orm::save_tutorial(tutorial_no);

            std::string orm_out;
            auto orm_grant = [&](const char *idx, int no, int grade, int race)
            {
                auto existing = eversoul::orm::hero_by_idx(idx);
                int level = existing ? existing->level : 1;
                eversoul::orm::save_hero(eversoul::orm::Hero{idx, no, level, 0, grade, race, 0});
                auto rep = eversoul::orm::hero_rep_by_no(no).value_or(eversoul::orm::HeroRep{});
                rep.heroNo = no;
                if (!rep.maxGradeSno)
                    rep.maxGradeSno = grade;
                eversoul::orm::save_hero_rep(rep);
                pb_message(orm_out, 1, hero_pb(idx, no, level, grade, race, 0));
                pb_message(orm_out, 2, rep_pb(no, rep.maxGradeSno));
            };
            switch (tutorial_no)
            {
            case 1400:
                orm_grant("0_off_h1400", 120, 110012, 110052);
                break;
            case 2200:
                orm_grant("0_off_h2200", 1060, 110014, 110052);
                break;
            case 4805:
                orm_grant("0_off_h4805", 1010, 110014, 110052);
                break;
            case 5300:
                orm_grant("0_off_h5300a", 120, 110012, 110052);
                orm_grant("0_off_h5300b", 120, 110012, 110052);
                break;
            default:
                break;
            }
            if (tutorial_no == 4805)
            {
                eversoul::orm::add_item_etc(31010, 1);
                std::string item;
                pb_int32(item, 1, 31010);
                pb_int32(item, 2, eversoul::orm::item_etc_count(31010));
                pb_message(orm_out, 4, item);
            }
            std::string tut;
            pb_int32(tut, 1, tutorial_no);
            pb_message(orm_out, 3, tut);
            log_line(0, "ORM", "tutorial_active " + std::to_string(tutorial_no));
            return orm_out;
        }

        std::lock_guard<std::mutex> lock(g_mu);
        ensure_init_locked();
        if (!g_db)
            return {};
        execf("INSERT OR IGNORE INTO tutorial(tutorialNo) VALUES(%d)", tutorial_no);

        std::string out;
        auto grant = [&](const char *idx, int no, int grade, int race)
        {
            execf("INSERT OR IGNORE INTO hero(idx,heroNo,level,gradeSno,raceSno,isLock) VALUES(%Q,%d,1,%d,%d,0)", idx, no, grade, race);
            execf("INSERT OR IGNORE INTO hero_rep(heroNo,maxGradeSno) VALUES(%d,%d)", no, grade);
            int level = 1;
            sqlite3_stmt *st = nullptr;
            if (sqlite3_prepare_v2(g_db, "SELECT level FROM hero WHERE idx=?1", -1, &st, nullptr) == SQLITE_OK)
            {
                sqlite3_bind_text(st, 1, idx, -1, SQLITE_STATIC);
                if (sqlite3_step(st) == SQLITE_ROW)
                    level = sqlite3_column_int(st, 0);
            }
            sqlite3_finalize(st);
            pb_message(out, 1, hero_pb(idx, no, level, grade, race, 0)); // hero
            pb_message(out, 2, rep_pb(no, grade));                       // heroReputation
        };
        // Tutorial hero grants (decoded from the real tutorial capture).
        switch (tutorial_no)
        {
        case 1400:
            grant("0_off_h1400", 120, 110012, 110052);
            break; // 1-2 new hero
        case 2200:
            grant("0_off_h2200", 1060, 110014, 110052);
            break; // SSR
        case 4805:
            grant("0_off_h4805", 1010, 110014, 110052);
            break; // permanent Mephisto
        case 5300:
            grant("0_off_h5300a", 120, 110012, 110052);
            grant("0_off_h5300b", 120, 110012, 110052);
            break;
        default:
            break;
        }
        if (tutorial_no == 4805)
        {
            execf("INSERT INTO item_etc(itemNo,cnt) VALUES(31010,1) ON CONFLICT(itemNo) DO UPDATE SET cnt=cnt+1");
            std::string item;
            pb_int32(item, 1, 31010);
            pb_int32(item, 2, 1);
            pb_message(out, 4, item); // itemEtc
        }
        std::string tut;
        pb_int32(tut, 1, tutorial_no);
        pb_message(out, 3, tut); // tutorial
        log_line(0, "DB", "tutorial_active " + std::to_string(tutorial_no));
        return out;
    }

    std::string stage_clear(std::int32_t stage_no)
    {
        {
            (void)eversoul::orm::ensure_ready(config().data_dir);
            const std::int64_t now = unix_ms();
            eversoul::orm::save_stage(stage_no, 1, now);
            if (stage_no == 5)
                eversoul::orm::set_item_etc(3201, 60);
            eversoul::orm::kv_set("autohunt_stage_no", std::to_string(stage_no));
            eversoul::orm::kv_set("autohunt_lab_dt", std::to_string(now));
            const long long receive_dt = std::atoll(
                eversoul::orm::kv_get("autohunt_receive_dt", std::to_string(now - 7200000)).c_str());

            if (auto fx = fixture_store().payload("/StageClear", true))
            {
                std::string out = *fx;
                out = pb_replace_int32(out, 8, stage_no);
                out = pb_replace_message(out, 6, auto_hunt_state_pb(stage_no, now, receive_dt));
                if (stage_no == 5)
                {
                    std::string item;
                    pb_int32(item, 1, 3201);
                    pb_int32(item, 2, 60);
                    pb_message(out, 2, item);
                }
                log_line(0, "ORM", "stage_clear " + std::to_string(stage_no) + " fixture protoBytes=" + std::to_string(out.size()));
                return out;
            }

            std::string out;
            pb_message(out, 1, currency_all_pb_orm());
            if (stage_no == 5)
            {
                std::string item;
                pb_int32(item, 1, 3201);
                pb_int32(item, 2, 60);
                pb_message(out, 2, item);
            }
            pb_message(out, 6, auto_hunt_state_pb(stage_no, now, receive_dt));
            pb_int32(out, 8, stage_no);
            log_line(0, "ORM", "stage_clear " + std::to_string(stage_no));
            return out;
        }

        std::lock_guard<std::mutex> lock(g_mu);
        ensure_init_locked();
        if (!g_db)
            return {};
        const std::int64_t now = unix_ms();
        execf("INSERT OR IGNORE INTO stage(stageNo,stageType,updateDt) VALUES(%d,1,%lld)", stage_no, static_cast<long long>(now));
        if (stage_no == 5)
        {
            execf("INSERT INTO item_etc(itemNo,cnt) VALUES(3201,60) ON CONFLICT(itemNo) DO UPDATE SET cnt=60");
        }

        std::string out;
        pb_message(out, 1, currency_all_pb()); // currency
        std::string ah;
        pb_int32(ah, 1, stage_no);
        pb_int64(ah, 2, now);
        pb_int64(ah, 3, now);
        pb_message(out, 6, ah);     // autoHunt
        pb_int32(out, 8, stage_no); // stageNo
        log_line(0, "DB", "stage_clear " + std::to_string(stage_no));
        return out;
    }

    std::string story_clear(std::int32_t story_no)
    {
        {
            (void)eversoul::orm::ensure_ready(config().data_dir);
            const std::int64_t now = unix_ms();
            eversoul::orm::save_story(story_no, now);

            std::string out;
            std::string s;
            pb_int32(s, 1, story_no);
            pb_int64(s, 2, now);
            pb_message(out, 1, s);
            pb_message(out, 2, currency_all_pb_orm());
            return out;
        }

        std::lock_guard<std::mutex> lock(g_mu);
        ensure_init_locked();
        if (!g_db)
            return {};
        const std::int64_t now = unix_ms();
        execf("INSERT OR IGNORE INTO story(storyNo,updateDt) VALUES(%d,%lld)", story_no, static_cast<long long>(now));

        std::string out;
        std::string s;
        pb_int32(s, 1, story_no);
        pb_int64(s, 2, now);
        pb_message(out, 1, s);                 // story
        pb_message(out, 2, currency_all_pb()); // currency
        return out;
    }

    std::string dungeon_clear(std::int32_t dungeon_id)
    {
        {
            (void)eversoul::orm::ensure_ready(config().data_dir);
            constexpr int kDungeonNo = 10001;
            if (dungeon_id <= 0)
            {
                dungeon_id = kv_int_orm("session_dungeon_id", 1406786);
            }
            const bool had = eversoul::orm::has_dungeon(kDungeonNo);
            const std::int64_t now = unix_ms();
            eversoul::orm::save_dungeon(kDungeonNo, now, had ? 0 : 1);
            eversoul::orm::kv_set("session_dungeon_id", std::to_string(dungeon_id));
            eversoul::orm::kv_set("session_dungeon_no", std::to_string(kDungeonNo));
            if (!had)
                eversoul::orm::save_tutorial(4800);

            if (auto fx = fixture_store().payload("/DungeonClear", true))
            {
                std::string out = *fx;
                std::string dungeon = pb_get_message(out, 1);
                if (!dungeon.empty())
                {
                    dungeon = pb_replace_int32(dungeon, 1, dungeon_id);
                    dungeon = pb_replace_int32(dungeon, 2, kDungeonNo);
                    dungeon = pb_replace_int32(dungeon, 11, 0);
                    dungeon = pb_replace_int32(dungeon, 12, 1);
                    if (!had)
                        dungeon = pb_replace_int32(dungeon, 13, 1);
                    out = pb_replace_message(out, 1, dungeon);
                }
                log_line(0, "ORM", "dungeon_clear dungeonId=" + std::to_string(dungeon_id) + " dungeonNo=" + std::to_string(kDungeonNo) + " fixture protoBytes=" + std::to_string(out.size()));
                return out;
            }

            std::string out;
            pb_message(out, 1, cleared_dungeon_pb(dungeon_id, kDungeonNo, had ? 0 : 1));
            pb_message(out, 3, currency_all_pb_orm());
            log_line(0, "ORM", "dungeon_clear dungeonId=" + std::to_string(dungeon_id) + " dungeonNo=" + std::to_string(kDungeonNo));
            return out;
        }

        (void)dungeon_id;
        std::lock_guard<std::mutex> lock(g_mu);
        ensure_init_locked();
        if (!g_db)
            return {};
        constexpr int kDungeonNo = 10001; // ch1 tutorial dungeon (StoryInfo episode_limit)
        if (dungeon_id <= 0)
            dungeon_id = 1406786;
        const std::int64_t now = unix_ms();
        const int had = query_int("SELECT COUNT(*) FROM dungeon WHERE dungeonNo=10001", 0);
        execf("INSERT INTO dungeon(dungeonNo,updateDt,isFirstClear) VALUES(%d,%lld,1) "
              "ON CONFLICT(dungeonNo) DO UPDATE SET updateDt=excluded.updateDt",
              kDungeonNo, static_cast<long long>(now));

        std::string out;
        pb_message(out, 1, cleared_dungeon_pb(dungeon_id, kDungeonNo, had == 0 ? 1 : 0));
        pb_message(out, 3, currency_all_pb());
        log_line(0, "DB", "dungeon_clear dungeonNo=" + std::to_string(kDungeonNo));
        return out;
    }

    std::string dungeon_enter(std::int32_t dungeon_no)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        if (dungeon_no <= 0)
            dungeon_no = 10001;
        constexpr std::int32_t kSessionDungeonId = 1406786;
        eversoul::orm::kv_set("session_dungeon_id", std::to_string(kSessionDungeonId));
        eversoul::orm::kv_set("session_dungeon_no", std::to_string(dungeon_no));

        if (auto fx = fixture_store().payload("/DungeonEnter", true))
        {
            log_line(0, "ORM", "dungeon_enter dungeonNo=" + std::to_string(dungeon_no) + " dungeonId=" + std::to_string(kSessionDungeonId));
            return *fx;
        }
        log_line(0, "ORM", "dungeon_enter fallback minimal dungeonNo=" + std::to_string(dungeon_no));
        return minimal_dungeon_payload(kSessionDungeonId, dungeon_no, false);
    }

    std::string dungeon_info_update(const std::string &req)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        const int dungeon_no = std::atoi(eversoul::orm::kv_get("session_dungeon_no", "10001").c_str());
        const int dungeon_id = pb_get_int32(req, 3, kv_int_orm("session_dungeon_id", 1406786));

        std::string dungeon;
        if (auto fx = fixture_store().payload("/DungeonInfoUpdate", true))
            dungeon = pb_get_message(*fx, 1);
        if (dungeon.empty())
        {
            if (auto fx = fixture_store().payload("/DungeonEnter", true))
                dungeon = pb_get_message(*fx, 1);
        }
        if (dungeon.empty())
            dungeon = pb_get_message(minimal_dungeon_payload(dungeon_id, dungeon_no, false), 1);

        auto merge_bytes = [&](int req_field, int resp_field)
        {
            if (!pb_has_field(req, req_field))
                return;
            const std::string value = pb_get_string(req, req_field, "");
            dungeon = pb_replace_bytes(dungeon, resp_field, value);
        };

        dungeon = pb_replace_int32(dungeon, 1, dungeon_id);
        dungeon = pb_replace_int32(dungeon, 2, dungeon_no);
        if (pb_has_field(req, 1))
            dungeon = pb_replace_float(dungeon, 4, pb_get_float(req, 1, 0.f));
        if (pb_has_field(req, 2))
            dungeon = pb_replace_float(dungeon, 5, pb_get_float(req, 2, 0.f));
        merge_bytes(4, 6);   // mapInfo
        merge_bytes(5, 7);   // conditionInfo
        merge_bytes(10, 8);  // heroInfo
        merge_bytes(6, 9);   // additionalInfo
        merge_bytes(7, 10);  // relicInfo
        merge_bytes(11, 17); // dungeonItem
        if (pb_has_field(req, 8))
            dungeon = pb_replace_int32(dungeon, 14, pb_get_int32(req, 8, -1));
        if (pb_has_field(req, 9))
            dungeon = pb_replace_int32(dungeon, 15, pb_get_int32(req, 9, -1));
        if (pb_has_field(req, 12))
            dungeon = pb_replace_int32(dungeon, 19, pb_get_int32(req, 12, 0));
        if (pb_has_field(req, 13))
            dungeon = pb_replace_int32(dungeon, 20, pb_get_int32(req, 13, 1701));
        if (!pb_has_field(dungeon, 11))
            dungeon = pb_replace_int32(dungeon, 11, 1); // isEnter

        std::string out;
        pb_message(out, 1, dungeon);
        log_line(0, "ORM", "dungeon_info_update dungeonId=" + std::to_string(dungeon_id) + " protoBytes=" + std::to_string(out.size()));
        return out;
    }

    std::string build_guide_quest_list()
    {
        {
            (void)eversoul::orm::ensure_ready(config().data_dir);
            const int max_stage = eversoul::orm::max_stage_no();
            const bool dungeon_10001 = eversoul::orm::has_dungeon(10001);
            const int item_3201 = eversoul::orm::item_etc_count(3201);

            std::string out;
            auto add = [&](int quest_no, int value)
            {
                std::string q;
                pb_int32(q, 1, quest_no);
                pb_int32(q, 2, value);
                pb_message(out, 1, q);
            };
            if (max_stage >= 2)
                add(1001, 2);
            else if (max_stage >= 1)
                add(1001, 1);
            if (max_stage >= 5 || dungeon_10001)
            {
                add(1002, 2);
                add(1005, 2);
                add(1003, item_3201 > 0 ? 2 : 1);
            }
            else if (max_stage >= 3)
            {
                add(1002, 1);
            }
            if (max_stage >= 10)
                add(1004, 2);
            else if (max_stage >= 5)
                add(1004, 5);
            if (max_stage >= 12)
                add(1005, 2);
            return out;
        }

        std::lock_guard<std::mutex> lock(g_mu);
        ensure_init_locked();
        if (!g_db)
            return {};
        return build_guide_quest_list_locked();
    }

    std::string formation_save(std::int32_t no, std::int32_t kind, const std::vector<std::string> &heroidx,
                               std::int32_t formation_type, const std::string &name)
    {
        {
            (void)eversoul::orm::ensure_ready(config().data_dir);
            std::vector<std::string> hx = heroidx;
            if (hx.empty())
                hx = {"0", "0", "0", "0", "0"};
            eversoul::orm::save_formation(no, kind, hx, formation_type, name);

            std::string f;
            if (no)
                pb_int32(f, 1, no);
            pb_int32(f, 2, kind);
            for (const auto &h : hx)
                pb_string(f, 3, h);
            if (formation_type)
                pb_int32(f, 4, formation_type);
            if (!name.empty())
                pb_string(f, 5, name);
            std::string out;
            pb_message(out, 1, f);
            log_line(0, "ORM", "formation_save no=" + std::to_string(no) + " kind=" + std::to_string(kind));
            return out;
        }

        std::lock_guard<std::mutex> lock(g_mu);
        ensure_init_locked();
        if (!g_db)
            return {};
        std::vector<std::string> hx = heroidx;
        if (hx.empty())
            hx = {"0", "0", "0", "0", "0"};
        std::string joined = join_comma(hx);
        execf("INSERT INTO formation(no,kind,heroidx,formationType,formationName) VALUES(%d,%d,%Q,%d,%Q) "
              "ON CONFLICT(no,kind) DO UPDATE SET heroidx=excluded.heroidx, formationType=excluded.formationType, formationName=excluded.formationName",
              no, kind, joined.c_str(), formation_type, name.c_str());

        std::string f;
        if (no)
            pb_int32(f, 1, no);
        pb_int32(f, 2, kind);
        for (const auto &h : hx)
            pb_string(f, 3, h);
        if (formation_type)
            pb_int32(f, 4, formation_type);
        if (!name.empty())
            pb_string(f, 5, name);
        std::string out;
        pb_message(out, 1, f); // results
        log_line(0, "DB", "formation_save no=" + std::to_string(no) + " kind=" + std::to_string(kind));
        return out;
    }

    std::string gacha_hero_tutorial_fix()
    {
        {
            (void)eversoul::orm::ensure_ready(config().data_dir);
            struct G
            {
                const char *idx;
                int no;
                int grade;
                int race;
            };
            static const G kOrmHeroes[] = {
                {"0_off_g0", 2070, 110014, 110053},
                {"0_off_g1", 310, 110012, 110054},
                {"0_off_g2", 410, 110012, 110055},
                {"0_off_g3", 110, 110012, 110052},
                {"0_off_g4", 210, 110012, 110053},
                {"0_off_g5", 20, 110011, 110053},
                {"0_off_g6", 40, 110011, 110055},
                {"0_off_g7", 20, 110011, 110053},
                {"0_off_g8", 20, 110011, 110053},
                {"0_off_g9", 40, 110011, 110055},
            };
            std::string orm_out;
            for (const auto &g : kOrmHeroes)
            {
                eversoul::orm::save_hero(eversoul::orm::Hero{g.idx, g.no, 1, 0, g.grade, g.race, 0});
                auto rep = eversoul::orm::hero_rep_by_no(g.no).value_or(eversoul::orm::HeroRep{});
                rep.heroNo = g.no;
                if (!rep.maxGradeSno)
                    rep.maxGradeSno = g.grade;
                eversoul::orm::save_hero_rep(rep);
                pb_message(orm_out, 1, hero_pb(g.idx, g.no, 1, g.grade, g.race, 0));
            }
            static const int kOrmReps[][2] = {{2070, 110014}, {310, 110012}, {410, 110012}, {110, 110012}, {210, 110012}};
            for (const auto &r : kOrmReps)
                pb_message(orm_out, 2, rep_pb(r[0], r[1]));
            std::string gacha;
            pb_int32(gacha, 4, 1);
            pb_message(orm_out, 3, gacha);
            eversoul::orm::kv_set("gacha_tutorial_fixed", "1");
            log_line(0, "ORM", "gacha_hero_tutorial_fix +10 heroes");
            return orm_out;
        }

        std::lock_guard<std::mutex> lock(g_mu);
        ensure_init_locked();
        if (!g_db)
            return {};
        struct G
        {
            const char *idx;
            int no;
            int grade;
            int race;
        };
        static const G kHeroes[] = {
            {"0_off_g0", 2070, 110014, 110053},
            {"0_off_g1", 310, 110012, 110054},
            {"0_off_g2", 410, 110012, 110055},
            {"0_off_g3", 110, 110012, 110052},
            {"0_off_g4", 210, 110012, 110053},
            {"0_off_g5", 20, 110011, 110053},
            {"0_off_g6", 40, 110011, 110055},
            {"0_off_g7", 20, 110011, 110053},
            {"0_off_g8", 20, 110011, 110053},
            {"0_off_g9", 40, 110011, 110055},
        };
        std::string out;
        for (const auto &g : kHeroes)
        {
            execf("INSERT OR IGNORE INTO hero(idx,heroNo,level,gradeSno,raceSno,isLock) VALUES(%Q,%d,1,%d,%d,0)", g.idx, g.no, g.grade, g.race);
            execf("INSERT OR IGNORE INTO hero_rep(heroNo,maxGradeSno) VALUES(%d,%d)", g.no, g.grade);
            pb_message(out, 1, hero_pb(g.idx, g.no, 1, g.grade, g.race, 0)); // heros
        }
        static const int kReps[][2] = {{2070, 110014}, {310, 110012}, {410, 110012}, {110, 110012}, {210, 110012}};
        for (const auto &r : kReps)
            pb_message(out, 2, rep_pb(r[0], r[1])); // reputations
        std::string gacha;
        pb_int32(gacha, 4, 1); // heroGachaTutorialFixed
        pb_message(out, 3, gacha);
        log_line(0, "DB", "gacha_hero_tutorial_fix +10 heroes");
        return out;
    }

    std::string gacha_hero_tutorial()
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        struct H
        {
            int no;
            int grade;
            int race;
        };
        static const H kRoll1[] = {
            {2150, 110014, 110053},
            {210, 110012, 110053},
            {110, 110012, 110052},
            {420, 110012, 110055},
            {110, 110012, 110052},
            {30, 110011, 110054},
            {10, 110011, 110052},
            {20, 110011, 110053},
            {40, 110011, 110055},
            {10, 110011, 110052},
        };
        static const H kRoll2[] = {
            {2070, 110014, 110053},
            {310, 110012, 110054},
            {410, 110012, 110055},
            {110, 110012, 110052},
            {210, 110012, 110053},
            {20, 110011, 110053},
            {40, 110011, 110055},
            {20, 110011, 110053},
            {20, 110011, 110053},
            {40, 110011, 110055},
        };

        const int roll = kv_int_orm("gacha_tutorial_roll_count", 0);
        kv_set_int_orm("gacha_tutorial_roll_count", roll + 1);
        const H *heroes = roll == 0 ? kRoll1 : kRoll2;
        const std::size_t count = roll == 0 ? (sizeof(kRoll1) / sizeof(kRoll1[0])) : (sizeof(kRoll2) / sizeof(kRoll2[0]));

        std::string out;
        for (std::size_t i = 0; i < count; ++i)
        {
            std::string h;
            pb_int32(h, 2, heroes[i].no);
            pb_int32(h, 3, 1);
            pb_int32(h, 5, heroes[i].grade);
            pb_int32(h, 6, heroes[i].race);
            pb_message(out, 1, h);
        }
        log_line(0, "ORM", "gacha_hero_tutorial roll=" + std::to_string(roll + 1));
        return out;
    }

    std::string hero_level_up(const std::string &hero_idx, std::int32_t to_level)
    {
        {
            (void)eversoul::orm::ensure_ready(config().data_dir);
            int prev = 1;
            if (auto hero = eversoul::orm::hero_by_idx(hero_idx))
                prev = hero->level;
            eversoul::orm::set_hero_level(hero_idx, to_level);

            std::string out;
            pb_message(out, 1, currency_all_pb_orm());
            pb_int32(out, 2, prev);
            pb_int32(out, 3, 1);
            return out;
        }

        std::lock_guard<std::mutex> lock(g_mu);
        ensure_init_locked();
        if (!g_db)
            return {};
        int prev = 1;
        {
            sqlite3_stmt *st = nullptr;
            if (sqlite3_prepare_v2(g_db, "SELECT level FROM hero WHERE idx=?1", -1, &st, nullptr) == SQLITE_OK)
            {
                sqlite3_bind_text(st, 1, hero_idx.c_str(), -1, SQLITE_TRANSIENT);
                if (sqlite3_step(st) == SQLITE_ROW)
                    prev = sqlite3_column_int(st, 0);
            }
            sqlite3_finalize(st);
        }
        execf("UPDATE hero SET level=%d WHERE idx=%Q", to_level, hero_idx.c_str());

        std::string out;
        pb_message(out, 1, currency_all_pb()); // currency
        pb_int32(out, 2, prev);                // prevHeroLevel
        pb_int32(out, 3, 1);                   // levelUpFlag
        return out;
    }

    std::string set_nickname(const std::string &name)
    {
        {
            (void)eversoul::orm::ensure_ready(config().data_dir);
            eversoul::orm::kv_set("nickname", name);
            std::string out;
            pb_string(out, 1, name);
            return out;
        }

        std::lock_guard<std::mutex> lock(g_mu);
        ensure_init_locked();
        if (!g_db)
            return {};
        kv_set("nickname", name);
        std::string out;
        pb_string(out, 1, name);
        return out;
    }

    std::string hero_upgrade(const std::string &hero_idx_list, const std::string &upgrade_no_list)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        auto hero_idxs = split_comma(hero_idx_list);
        auto upgrade_nos = split_comma(upgrade_no_list);
        std::string out;
        for (std::size_t i = 0; i < hero_idxs.size(); ++i)
        {
            const std::string &idx = hero_idxs[i];
            if (idx.empty())
                continue;
            auto hero = eversoul::orm::hero_by_idx(idx);
            if (!hero)
                continue;
            int next_grade = hero->gradeSno;
            if (i < upgrade_nos.size() && !upgrade_nos[i].empty())
                next_grade = static_cast<int>(std::strtol(upgrade_nos[i].c_str(), nullptr, 10));
            if (next_grade > 0)
                hero->gradeSno = next_grade;
            eversoul::orm::save_hero(*hero);
            pb_message(out, 1, hero_pb(hero->idx.c_str(), hero->heroNo, hero->level, hero->gradeSno, hero->raceSno, hero->isLock));

            auto rep = eversoul::orm::hero_rep_by_no(hero->heroNo).value_or(eversoul::orm::HeroRep{});
            rep.heroNo = hero->heroNo;
            if (hero->gradeSno > rep.maxGradeSno)
                rep.maxGradeSno = hero->gradeSno;
            eversoul::orm::save_hero_rep(rep);
            pb_message(out, 5, rep_pb(rep.heroNo, rep.maxGradeSno));
        }
        pb_message(out, 4, currency_all_pb_orm());
        return out;
    }

    std::string hero_gift(std::int32_t gift_no, std::int32_t hero_no, std::int32_t gift_count)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        if (gift_count <= 0)
            gift_count = 1;
        auto rep = eversoul::orm::hero_rep_by_no(hero_no).value_or(eversoul::orm::HeroRep{});
        rep.heroNo = hero_no;
        rep.reputation += gift_count * 10;
        rep.giftDt = unix_ms();
        eversoul::orm::save_hero_rep(rep);
        if (gift_no)
            eversoul::orm::add_item_etc(gift_no, -gift_count);

        std::string out;
        pb_int32(out, 1, hero_no);
        pb_int32(out, 2, rep.reputation);
        pb_int32(out, 3, rep.reputation);
        pb_int64(out, 4, rep.giftDt);
        if (gift_no)
        {
            std::string item;
            pb_int32(item, 1, gift_no);
            pb_int32(item, 2, eversoul::orm::item_etc_count(gift_no));
            pb_message(out, 6, item);
        }
        pb_message(out, 7, currency_all_pb_orm());
        return out;
    }

    std::string hero_equip(const std::string &hero_idx, std::int64_t item_equip_id, std::int32_t slot)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        eversoul::orm::save_hero_equip_slot(hero_idx, slot, item_equip_id);
        std::string out;
        pb_string(out, 1, "");
        return out;
    }

    std::string hero_unequip(const std::string &hero_idx, std::int32_t slot)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        eversoul::orm::clear_hero_equip_slot(hero_idx, slot);
        std::string out;
        pb_string(out, 1, "");
        return out;
    }

    std::string equip_item_upgrade(const std::string &hero_idx, std::int32_t slot,
                                   const std::vector<std::string> &materials)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        auto slot_row = eversoul::orm::hero_equip_slot(hero_idx, slot);
        eversoul::orm::ItemEquip item{};
        if (slot_row)
            item = eversoul::orm::item_equip_by_id(slot_row->itemEquipId).value_or(eversoul::orm::ItemEquip{slot_row->itemEquipId, 0, 0});
        item.exp += static_cast<int>(materials.size()) * 100;
        if (item.id)
            eversoul::orm::save_item_equip(item);
        for (const auto &m : materials)
        {
            int type = pb_get_int32(m, 1, 0);
            if (type == 1)
            {
                int item_no = pb_get_int32(m, 3, 0);
                if (item_no)
                    eversoul::orm::add_item_etc(item_no, -1);
            }
        }

        std::string out;
        pb_message(out, 1, currency_all_pb_orm());
        if (item.id)
            pb_message(out, 2, hero_equip_info_pb(hero_idx, slot, item));
        return out;
    }

    std::string equip_item_transcendence(const std::string &hero_idx, std::int32_t slot, std::int32_t material_no)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        auto slot_row = eversoul::orm::hero_equip_slot(hero_idx, slot);
        eversoul::orm::ItemEquip item{};
        if (slot_row)
            item = eversoul::orm::item_equip_by_id(slot_row->itemEquipId).value_or(eversoul::orm::ItemEquip{slot_row->itemEquipId, 0, 0});
        if (item.id)
        {
            item.itemNo += 1;
            eversoul::orm::save_item_equip(item);
        }
        if (material_no)
            eversoul::orm::add_item_etc(material_no, -1);

        std::string out;
        pb_message(out, 1, currency_all_pb_orm());
        if (material_no)
        {
            std::string it;
            pb_int32(it, 1, material_no);
            pb_int32(it, 2, eversoul::orm::item_etc_count(material_no));
            pb_message(out, 2, it);
        }
        if (item.id)
            pb_message(out, 3, hero_equip_info_pb(hero_idx, slot, item));
        return out;
    }

    std::string spirit_tree_slot_equip(std::int32_t slot_no, const std::string &hero_idx)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        const std::int64_t now = unix_ms();
        eversoul::orm::save_spirit_tree(slot_no, hero_idx, now);
        std::string tree;
        if (slot_no)
            pb_int32(tree, 1, slot_no);
        pb_string(tree, 2, hero_idx);
        pb_int64(tree, 3, now);
        std::string out;
        pb_message(out, 1, tree);
        return out;
    }

    std::string spirit_tree_slot_unequip(std::int32_t slot_no)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        eversoul::orm::save_spirit_tree(slot_no, "", 0);
        std::string tree;
        if (slot_no)
            pb_int32(tree, 1, slot_no);
        std::string out;
        pb_message(out, 1, tree);
        return out;
    }

    std::string gacha_hero(std::int32_t count, std::int32_t gacha_no, std::int32_t auto_release,
                           std::int32_t is_use_pay_dia)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        count = clamp_count(count);
        kv_set_int_orm("gacha_hero_auto_release", auto_release ? 1 : 0);
        spend_gacha_cost(28, 2, count, is_use_pay_dia);

        int serial = kv_int_orm("gacha_hero_serial", 0);
        std::string out;
        for (int i = 0; i < count; ++i)
        {
            eversoul::orm::Hero hero = grant_gacha_hero(serial++);
            pb_message(out, 1, hero_pb(hero.idx.c_str(), hero.heroNo, hero.level, hero.gradeSno, hero.raceSno, hero.isLock));
            pb_message(out, 2, rep_pb(hero.heroNo, eversoul::orm::hero_rep_by_no(hero.heroNo).value_or(eversoul::orm::HeroRep{}).maxGradeSno));

            std::string view;
            pb_int32(view, 1, hero.heroNo);
            pb_int32(view, 2, hero.heroNo);
            pb_message(out, 8, view);
        }
        kv_set_int_orm("gacha_hero_serial", serial);
        kv_set_int_orm("gacha_hero_ceil", kv_int_orm("gacha_hero_ceil", 0) + count);

        pb_message(out, 4, currency_all_pb_orm());
        pb_message(out, 6, gacha_mileage_pb(gacha_no, count));
        pb_message(out, 7, build_gacha_state_pb());
        return out;
    }

    std::string gacha_premium(std::int32_t count, std::int32_t gacha_no)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        count = clamp_count(count);
        spend_gacha_cost(46, 2, count, 0);
        constexpr int kPremiumPieceItem = 12008;
        eversoul::orm::add_item_etc(kPremiumPieceItem, count * 10);
        kv_set_int_orm("gacha_premium_ceil", kv_int_orm("gacha_premium_ceil", 0) + count);

        std::string out;
        pb_message(out, 1, build_gacha_state_pb());
        std::string pick;
        pb_int32(pick, 1, kPremiumPieceItem);
        pb_int32(pick, 2, count * 10);
        pb_message(out, 4, pick);
        pb_message(out, 5, currency_all_pb_orm());
        pb_message(out, 7, item_etc_pb(kPremiumPieceItem));
        (void)gacha_no;
        return out;
    }

    std::string gacha_signature(std::int32_t gacha_no, std::int32_t count,
                                std::int32_t is_auto_release, std::int32_t is_use_pay_dia)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        count = clamp_count(count);
        kv_set_int_orm("gacha_signature_auto_release", is_auto_release ? 1 : 0);
        spend_gacha_cost(45, 2, count, is_use_pay_dia);
        constexpr int kSignaturePieceItem = 10016;
        const int pieces = count * 10;
        eversoul::orm::add_item_etc(kSignaturePieceItem, pieces);

        std::string out;
        pb_message(out, 1, item_etc_pb(kSignaturePieceItem));
        pb_message(out, 3, currency_all_pb_orm());
        std::string reward;
        pb_int32(reward, 1, kSignaturePieceItem);
        pb_int32(reward, 2, pieces);
        pb_message(out, 5, reward);
        pb_message(out, 7, gacha_mileage_pb(gacha_no, count));
        return out;
    }

    std::string shop_item_buy(std::int32_t shop_type, std::int32_t shop_no,
                              std::int32_t no, std::int32_t buy_cnt)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        if (buy_cnt <= 0)
            buy_cnt = 1;
        const int shop_item_no = shop_no == 10100 ? 110010 : no;
        eversoul::orm::add_currency(shop_type == 1 ? 2 : 1, -100LL * buy_cnt);
        eversoul::orm::add_item_etc(shop_item_no, buy_cnt);

        const std::string key = "shop_buy_" + std::to_string(shop_no) + "_" + std::to_string(no);
        const int total_buy = kv_int_orm(key, 0) + buy_cnt;
        kv_set_int_orm(key, total_buy);

        std::string out;
        pb_message(out, 1, currency_all_pb_orm());
        pb_message(out, 3, item_etc_pb(shop_item_no));
        std::string shop_item;
        if (no)
            pb_int32(shop_item, 1, no);
        if (shop_no)
            pb_int32(shop_item, 2, shop_no);
        if (shop_item_no)
            pb_int32(shop_item, 3, shop_item_no);
        pb_int32(shop_item, 4, total_buy);
        pb_message(out, 4, shop_item);
        return out;
    }

    std::string item_use(std::int32_t item_no, std::int32_t use_count,
                         const std::string &choice_box, const std::string &choice_count)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        if (use_count <= 0)
            use_count = 1;
        eversoul::orm::add_item_etc(item_no, -use_count);

        std::vector<int> touched_items;
        touched_items.push_back(item_no);
        auto choices = split_comma(choice_box);
        auto counts = split_comma(choice_count);
        bool granted_choice = false;
        for (std::size_t i = 0; i < choices.size(); ++i)
        {
            const int choice_item = static_cast<int>(std::strtol(choices[i].c_str(), nullptr, 10));
            if (choice_item <= 0)
                continue;
            int cnt = use_count;
            if (i < counts.size())
                cnt = static_cast<int>(std::strtol(counts[i].c_str(), nullptr, 10));
            if (cnt <= 0)
                cnt = use_count;
            eversoul::orm::add_item_etc(choice_item, cnt);
            touched_items.push_back(choice_item);
            granted_choice = true;
        }
        if (!granted_choice)
        {
            eversoul::orm::add_currency(1, 100000LL * use_count);
            eversoul::orm::add_currency(3, 50000LL * use_count);
            eversoul::orm::add_currency(5, 10000LL * use_count);
        }

        std::string out;
        pb_message(out, 1, currency_all_pb_orm());
        for (int touched : touched_items)
            pb_message(out, 3, item_etc_pb(touched));
        return out;
    }

    std::string task_receive(std::int32_t type, std::int32_t reward_no)
    {
        (void)eversoul::orm::ensure_ready(config().data_dir);
        const std::string key = "task_receive_" + std::to_string(type) + "_" + std::to_string(reward_no);
        if (eversoul::orm::kv_get(key, "") != "1")
        {
            eversoul::orm::kv_set(key, "1");
            eversoul::orm::add_currency(2, 100);
            eversoul::orm::add_currency(4, 50);
        }

        std::string out;
        pb_message(out, 1, currency_all_pb_orm());
        std::string task;
        pb_int32(task, 1, static_cast<int>(day_number()));
        std::string received;
        pb_int32(received, 1, reward_no);
        pb_message(task, 3, received);
        pb_message(out, type == 2 ? 7 : 6, task);
        return out;
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

        std::lock_guard<std::mutex> lock(g_mu);
        ensure_init_locked();
        if (!g_db)
            return {};
        Pending p = compute_pending();
        std::string out;
        pb_message(out, 1, auto_hunt_currency_pb(p));        // autoHuntCurrency (pending)
        pb_int32(out, 3, static_cast<int>(kGoldPerMin));     // goldPerMinute
        pb_int32(out, 4, static_cast<int>(kManaDustPerMin)); // manaDustPerMinute
        pb_int32(out, 5, static_cast<int>(kExpPerMin));      // expPerMinute
        return out;
    }

    std::string auto_hunt_receive()
    {
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

        std::lock_guard<std::mutex> lock(g_mu);
        ensure_init_locked();
        if (!g_db)
            return {};
        Pending p = compute_pending();
        const long long now = unix_ms();
        execf("UPDATE currency SET value=value+%lld WHERE type=1", p.gold);
        execf("UPDATE currency SET value=value+%lld WHERE type=3", p.mana_dust);
        execf("UPDATE currency SET value=value+%lld WHERE type=5", p.exp);
        kv_set("autohunt_receive_dt", std::to_string(now));
        int max_stage = query_int("SELECT IFNULL(MAX(stageNo),0) FROM stage", 0);

        std::string out;
        pb_message(out, 1, currency_all_pb());        // currency (new totals)
        pb_message(out, 4, auto_hunt_currency_pb(p)); // autoHuntCurrency (collected)
        std::string ah;
        if (max_stage)
            pb_int32(ah, 1, max_stage);
        pb_int64(ah, 2, now);
        pb_int64(ah, 3, now);
        pb_message(out, 6, ah); // autoHunt
        log_line(0, "DB", "auto_hunt_receive +gold " + std::to_string(p.gold));
        return out;
    }

} // namespace eversoul::db
