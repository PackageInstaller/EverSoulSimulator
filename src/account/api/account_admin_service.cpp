#include "account_admin_service.hpp"

#include "account_database.hpp"
#include "account_db_manager.hpp"
#include "account_registry.hpp"
#include "common.hpp"
#include "fixture_store.hpp"
#include "ini_store.hpp"
#include "json.hpp"
#include "util.hpp"

#include <cstdlib>
#include <filesystem>
#include <fstream>
#include <iterator>
#include <memory>
#include <optional>
#include <utility>
#include <vector>

namespace eversoul::account_admin
{
    namespace
    {
        ServiceResult json_result(std::string body, long status = 200, bool broadcast_session = false)
        {
            ServiceResult result;
            result.status = status;
            result.body = std::move(body);
            result.broadcast_session = broadcast_session;
            return result;
        }

        ServiceResult ok_result(bool broadcast_session = false)
        {
            return json_result("{\"ok\":true}", 200, broadcast_session);
        }

        ServiceResult reason_result(const std::string &reason, long status = 200)
        {
            return json_result("{\"ok\":false,\"reason\":\"" + json_escape(reason) + "\"}", status);
        }

        std::string fixture_userinfo_rel(const std::string &profile)
        {
            return profile + "/UserInfo.json";
        }

        bool read_userinfo_fixture(const std::string &profile, json::Value &out, std::string &reason)
        {
            const std::string text = [&]() -> std::string
            {
                namespace fs = std::filesystem;
                const fs::path full_path = fs::path(config().data_dir) / fixture_userinfo_rel(profile);
                std::ifstream file(full_path, std::ios::binary);
                if (!file)
                    return {};
                return std::string(std::istreambuf_iterator<char>(file), {});
            }();

            if (text.empty())
            {
                reason = "UserInfo fixture not found: " + profile;
                return false;
            }
            std::string error;
            if (!json::parse(text, out, error))
            {
                reason = "UserInfo parse failed: " + error;
                return false;
            }
            if (!out.is_object())
            {
                reason = "UserInfo root is not object: " + profile;
                return false;
            }
            return true;
        }

        std::string seed_display_name(const std::string &profile, const json::Value &root)
        {
            const json::Value *user = root.find("user");
            if (user && user->is_object())
            {
                const json::Value *nick = user->find("nickName");
                if (nick && nick->is_string() && !nick->str.empty())
                    return nick->str;
            }
            return profile == "responses_newbie" ? "newbie" : "offline";
        }

        std::string seed_player_id(const json::Value &root)
        {
            const json::Value *user = root.find("user");
            if (user && user->is_object())
            {
                const json::Value *idx = user->find("idx");
                if (idx && idx->is_string() && !idx->str.empty())
                    return idx->str;
            }
            return kDefaultPlayerId;
        }

        std::int64_t seed_created_at(const json::Value &root)
        {
            const json::Value *user = root.find("user");
            if (user && user->is_object())
            {
                const json::Value *created = user->find("createdDt");
                if (created)
                    return created->as_int64();
            }
            return unix_ms();
        }

        bool build_fixture_entry(const std::string &profile, AccountEntry &entry, std::string &reason)
        {
            json::Value root;
            if (!read_userinfo_fixture(profile, root, reason))
                return false;

            const std::int64_t created_at = seed_created_at(root);
            entry.account_id = profile;
            entry.display_name = seed_display_name(profile, root);
            entry.player_id = seed_player_id(root);
            entry.idp_code = "zd3";
            entry.profile_source = profile;
            entry.state_db_relpath = "accounts/" + profile + "/state.sqlite3";
            entry.session_db_relpath = "accounts/" + profile + "/session.sqlite3";
            entry.created_at_ms = created_at;
            entry.updated_at_ms = created_at;
            entry.last_login_at_ms = 0;
            entry.source_account_id.clear();
            entry.deleted_at_ms = 0;
            return true;
        }

        std::string configured_client_region()
        {
            const std::string region = ini::get("client_region", "LiveKR");
            return region == "LiveSEA" ? "LiveSEA" : "LiveKR";
        }

        std::unique_ptr<AccountDatabase> open_account_db(const AccountEntry &entry)
        {
            const std::filesystem::path state_path(entry.state_db_relpath);
            std::filesystem::path db_dir = state_path.parent_path();
            if (!db_dir.is_absolute())
                db_dir = std::filesystem::path(config().state_dir) / db_dir;

            auto db = std::make_unique<AccountDatabase>(db_dir.string());
            if (!db->open())
                return nullptr;
            if (!db->is_seeded())
                db->seed_from_fixture(entry.profile_source == "responses_newbie" ? "newbie" : "full", config().data_dir);
            return db;
        }

        std::optional<AccountEntry> find_live_account(const std::string &account_id)
        {
            std::optional<AccountEntry> entry = account_registry().find(account_id);
            if (!entry || entry->deleted_at_ms != 0)
                return std::nullopt;
            return entry;
        }

        ServiceResult account_not_found()
        {
            return json_result("{\"error\":\"not found\"}", 404);
        }

        std::string account_json(const AccountEntry &entry, bool active)
        {
            std::unique_ptr<AccountDatabase> db = open_account_db(entry);
            std::string nickname = entry.display_name;
            std::string player_id = entry.player_id;
            std::int64_t created_at = entry.created_at_ms;
            int hero_count = 0;

            if (db)
            {
                if (std::optional<AccountDatabase::UserProfileRow> profile = db->user_profile())
                {
                    if (!profile->nick_name.empty())
                        nickname = profile->nick_name;
                    if (!profile->idx.empty())
                        player_id = profile->idx;
                    if (profile->created_dt)
                        created_at = profile->created_dt;
                }
                hero_count = static_cast<int>(db->heroes().size());
            }

            return "{\"id\":\"" + json_escape(entry.account_id) +
                   "\",\"nickname\":\"" + json_escape(nickname) +
                   "\",\"idp_code\":\"" + json_escape(entry.idp_code) +
                   "\",\"player_id\":\"" + json_escape(player_id) +
                   "\",\"region\":\"" + json_escape(configured_client_region()) +
                   "\",\"profile_source\":\"" + json_escape(entry.profile_source) +
                   "\",\"active\":" + (active ? "true" : "false") +
                   ",\"hero_count\":" + std::to_string(hero_count) +
                   ",\"created_at\":" + std::to_string(created_at) +
                   ",\"updated_at\":" + std::to_string(entry.updated_at_ms) +
                   ",\"last_login\":" + (entry.last_login_at_ms ? std::to_string(entry.last_login_at_ms) : "null") + "}";
        }

        std::string currencies_json(const AccountDatabase &db)
        {
            std::string body = "[";
            bool first = true;
            for (const AccountDatabase::CurrencyRow &currency : db.currencies())
            {
                if (!first)
                    body += ",";
                body += "{\"type\":" + std::to_string(currency.type) +
                        ",\"value\":" + std::to_string(currency.value) + "}";
                first = false;
            }
            return body + "]";
        }

        std::string heroes_json(const AccountDatabase &db)
        {
            std::string body = "[";
            bool first = true;
            for (const HeroRow &hero : db.heroes())
            {
                if (!first)
                    body += ",";
                body += "{\"idx\":\"" + json_escape(hero.idx) + "\"" +
                        ",\"heroNo\":" + std::to_string(hero.hero_no) +
                        ",\"level\":" + std::to_string(hero.level) +
                        ",\"gradeSno\":" + std::to_string(hero.grade_sno) +
                        ",\"raceSno\":" + std::to_string(hero.race_sno) + "}";
                first = false;
            }
            return body + "]";
        }

        std::string items_json(const AccountDatabase &db)
        {
            std::string body = "[";
            bool first = true;
            for (const ItemEtcRow &item : db.item_etcs())
            {
                if (!first)
                    body += ",";
                body += "{\"itemNo\":" + std::to_string(item.item_no) +
                        ",\"cnt\":" + std::to_string(item.cnt) + "}";
                first = false;
            }
            return body + "]";
        }

        bool refresh_active_if_needed(bool active)
        {
            if (!active)
                return false;
            account_db_manager().close_active();
            account_db_manager().reload_active();
            return true;
        }
    }

    bool ensure_fixture_accounts(std::string &reason)
    {
        AccountRegistry &registry = account_registry();
        for (const char *profile_name : {"responses", "responses_newbie"})
        {
            const std::string profile(profile_name);
            if (registry.find(profile))
                continue;
            AccountEntry entry;
            if (!build_fixture_entry(profile, entry, reason))
                return false;
            if (!registry.insert(entry))
            {
                reason = "account registry insert failed: " + profile;
                return false;
            }
        }

        if (registry.active_account_id().empty())
        {
            const std::string selected = selected_fixture_profile();
            if (!registry.set_active(selected, unix_ms()))
            {
                reason = "active account set failed: " + selected;
                return false;
            }
        }

        account_db_manager().reload_active();
        return true;
    }

    std::string selected_fixture_profile()
    {
        const std::string profile = ini::get("account_profile", "responses");
        return profile == "responses_newbie" ? "responses_newbie" : "responses";
    }

    std::string active_account_id()
    {
        std::string reason;
        if (ensure_fixture_accounts(reason))
        {
            const std::string active = account_registry().active_account_id();
            if (!active.empty())
                return active;
        }
        return selected_fixture_profile();
    }

    ServiceResult list_accounts()
    {
        std::string reason;
        if (!ensure_fixture_accounts(reason))
            return reason_result(reason);

        AccountRegistry &registry = account_registry();
        const std::string active = registry.active_account_id();
        const std::vector<AccountEntry> accounts = registry.list_active();
        std::string body = "[";
        bool first = true;
        for (const AccountEntry &entry : accounts)
        {
            if (!first)
                body += ",";
            body += account_json(entry, entry.account_id == active);
            first = false;
        }
        return json_result(body + "]");
    }

    ServiceResult get_account(const std::string &account_id)
    {
        std::string reason;
        if (!ensure_fixture_accounts(reason))
            return reason_result(reason);
        std::optional<AccountEntry> entry = find_live_account(account_id);
        if (!entry)
            return account_not_found();
        return json_result(account_json(*entry, account_registry().active_account_id() == account_id));
    }

    ServiceResult select_account(const std::string &account_id)
    {
        std::string reason;
        if (!ensure_fixture_accounts(reason))
            return reason_result(reason);

        std::optional<AccountEntry> entry = find_live_account(account_id);
        if (!entry)
            return account_not_found();

        ini::set("account_profile", entry->profile_source == "responses_newbie" ? "responses_newbie" : "responses");
        if (!account_registry().set_active(account_id, unix_ms()))
            return reason_result("active account update failed");
        if (!account_db_manager().switch_to(account_id))
            return reason_result("active account database open failed");
        fixture_store().load(config().data_dir);
        return ok_result(true);
    }

    ServiceResult update_identity(const std::string &account_id,
                                  const std::string &nickname,
                                  const std::string &player_id)
    {
        std::string reason;
        if (!ensure_fixture_accounts(reason))
            return reason_result(reason);

        std::optional<AccountEntry> entry = find_live_account(account_id);
        if (!entry)
            return account_not_found();
        std::unique_ptr<AccountDatabase> db = open_account_db(*entry);
        if (!db)
            return reason_result("account database open failed");

        db->set_user_identity(nickname, player_id);
        if (!nickname.empty())
            entry->display_name = nickname;
        if (!player_id.empty())
            entry->player_id = player_id;
        entry->updated_at_ms = unix_ms();
        if (!account_registry().update(*entry))
            return reason_result("account registry update failed");

        const bool broadcast = refresh_active_if_needed(account_registry().active_account_id() == account_id);
        return ok_result(broadcast);
    }

    ServiceResult list_currencies(const std::string &account_id)
    {
        std::string reason;
        if (!ensure_fixture_accounts(reason))
            return reason_result(reason);
        std::optional<AccountEntry> entry = find_live_account(account_id);
        if (!entry)
            return account_not_found();
        std::unique_ptr<AccountDatabase> db = open_account_db(*entry);
        if (!db)
            return reason_result("account database open failed");
        return json_result("{\"currencies\":" + currencies_json(*db) + "}");
    }

    ServiceResult get_currency(const std::string &account_id, int type)
    {
        std::string reason;
        if (!ensure_fixture_accounts(reason))
            return reason_result(reason);
        std::optional<AccountEntry> entry = find_live_account(account_id);
        if (!entry)
            return account_not_found();
        std::unique_ptr<AccountDatabase> db = open_account_db(*entry);
        if (!db)
            return reason_result("account database open failed");
        return json_result("{\"type\":" + std::to_string(type) + ",\"value\":" + std::to_string(db->currency_get(type)) + "}");
    }

    ServiceResult set_currency(const std::string &account_id, int type, std::int64_t value)
    {
        if (type <= 0)
            return reason_result("invalid type");
        std::string reason;
        if (!ensure_fixture_accounts(reason))
            return reason_result(reason);
        std::optional<AccountEntry> entry = find_live_account(account_id);
        if (!entry)
            return account_not_found();
        std::unique_ptr<AccountDatabase> db = open_account_db(*entry);
        if (!db)
            return reason_result("account database open failed");
        db->currency_set(type, value);
        const bool broadcast = refresh_active_if_needed(account_registry().active_account_id() == account_id);
        return ok_result(broadcast);
    }

    ServiceResult clear_currency(const std::string &account_id, int type)
    {
        return set_currency(account_id, type, 0);
    }

    ServiceResult list_heroes(const std::string &account_id)
    {
        std::string reason;
        if (!ensure_fixture_accounts(reason))
            return reason_result(reason);
        std::optional<AccountEntry> entry = find_live_account(account_id);
        if (!entry)
            return account_not_found();
        std::unique_ptr<AccountDatabase> db = open_account_db(*entry);
        if (!db)
            return reason_result("account database open failed");
        return json_result("{\"heroes\":" + heroes_json(*db) + "}");
    }

    ServiceResult upsert_hero(const std::string &account_id,
                              const std::string &idx,
                              int hero_no,
                              int level,
                              int grade_sno,
                              int race_sno)
    {
        if (hero_no <= 0)
            return reason_result("invalid heroNo");
        std::string reason;
        if (!ensure_fixture_accounts(reason))
            return reason_result(reason);
        std::optional<AccountEntry> entry = find_live_account(account_id);
        if (!entry)
            return account_not_found();
        std::unique_ptr<AccountDatabase> db = open_account_db(*entry);
        if (!db)
            return reason_result("account database open failed");

        const std::string out_idx = idx.empty() ? ("web_" + std::to_string(hero_no)) : idx;
        HeroRow hero;
        hero.idx = out_idx;
        hero.hero_no = hero_no;
        hero.level = level > 0 ? level : 1;
        hero.grade_sno = grade_sno;
        hero.race_sno = race_sno;
        db->upsert_hero(hero);

        const bool broadcast = refresh_active_if_needed(account_registry().active_account_id() == account_id);
        return json_result("{\"ok\":true,\"idx\":\"" + json_escape(out_idx) + "\"}", 200, broadcast);
    }

    ServiceResult delete_hero(const std::string &account_id, const std::string &idx)
    {
        if (idx.empty())
            return reason_result("invalid idx");
        std::string reason;
        if (!ensure_fixture_accounts(reason))
            return reason_result(reason);
        std::optional<AccountEntry> entry = find_live_account(account_id);
        if (!entry)
            return account_not_found();
        std::unique_ptr<AccountDatabase> db = open_account_db(*entry);
        if (!db)
            return reason_result("account database open failed");
        db->delete_hero(idx);
        const bool broadcast = refresh_active_if_needed(account_registry().active_account_id() == account_id);
        return ok_result(broadcast);
    }

    ServiceResult list_items(const std::string &account_id)
    {
        std::string reason;
        if (!ensure_fixture_accounts(reason))
            return reason_result(reason);
        std::optional<AccountEntry> entry = find_live_account(account_id);
        if (!entry)
            return account_not_found();
        std::unique_ptr<AccountDatabase> db = open_account_db(*entry);
        if (!db)
            return reason_result("account database open failed");
        return json_result("{\"items\":" + items_json(*db) + "}");
    }

    ServiceResult set_item(const std::string &account_id, int item_no, int cnt)
    {
        if (item_no <= 0)
            return reason_result("invalid itemNo");
        std::string reason;
        if (!ensure_fixture_accounts(reason))
            return reason_result(reason);
        std::optional<AccountEntry> entry = find_live_account(account_id);
        if (!entry)
            return account_not_found();
        std::unique_ptr<AccountDatabase> db = open_account_db(*entry);
        if (!db)
            return reason_result("account database open failed");
        db->item_etc_set(item_no, cnt);
        const bool broadcast = refresh_active_if_needed(account_registry().active_account_id() == account_id);
        return ok_result(broadcast);
    }

    ServiceResult delete_item(const std::string &account_id, int item_no)
    {
        if (item_no <= 0)
            return reason_result("invalid itemNo");
        std::string reason;
        if (!ensure_fixture_accounts(reason))
            return reason_result(reason);
        std::optional<AccountEntry> entry = find_live_account(account_id);
        if (!entry)
            return account_not_found();
        std::unique_ptr<AccountDatabase> db = open_account_db(*entry);
        if (!db)
            return reason_result("account database open failed");
        db->item_etc_delete(item_no);
        const bool broadcast = refresh_active_if_needed(account_registry().active_account_id() == account_id);
        return ok_result(broadcast);
    }
}
