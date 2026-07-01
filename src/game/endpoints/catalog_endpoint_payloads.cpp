#include "catalog_endpoint_payloads.hpp"

#include <algorithm>
#include <cstdint>
#include <map>
#include <set>
#include <string>
#include <tuple>
#include <vector>

#include "json.hpp"
#include "protobuf.hpp"
#include "tbl_store.hpp"

namespace eversoul
{
    namespace
    {

        struct EventStoryKey
        {
            int event_type = 0;
            int event_group = 0;
            int event_number = 0;

            [[nodiscard]] friend bool operator<(const EventStoryKey &left, const EventStoryKey &right)
            {
                return std::tie(left.event_type, left.event_group, left.event_number) <
                       std::tie(right.event_type, right.event_group, right.event_number);
            }
        };

        struct EventStoryCandidate
        {
            EventStoryKey key;
            int event_info_no = 0;
            int story_act = 0;
            int last_story_no = 0;
        };

        struct CashShopItemRef
        {
            int no = 0;
            int shop_no = 0;
            int item_sort_no = 0;
        };

        [[nodiscard]] int tbl_int(const json::Value &row, const std::string &field, int fallback = 0)
        {
            const json::Value *value = row.find(field);
            if (!value || value->is_null())
                return fallback;

            try
            {
                return static_cast<int>(value->as_int64());
            }
            catch (...)
            {
                return fallback;
            }
        }

        [[nodiscard]] std::string tbl_text(const json::Value &row, const std::string &field)
        {
            const json::Value *value = row.find(field);
            if (!value)
                return {};
            return value->text();
        }

        [[nodiscard]] bool starts_with(const std::string &value, const std::string &prefix)
        {
            return value.size() >= prefix.size() &&
                   std::equal(prefix.begin(), prefix.end(), value.begin());
        }

        [[nodiscard]] int signature_grade_for_group(int grade_group, int hero_grade)
        {
            const TblTable *grade_table = tbl_store().table("SignatureGrade");
            if (!grade_table)
                return 0;

            int selected_grade = 0;
            for (const json::Value &row : grade_table->rows)
            {
                if (tbl_int(row, "group") != grade_group)
                    continue;

                const int signature_grade = tbl_int(row, "signature_grade");
                if (signature_grade <= hero_grade && signature_grade > selected_grade)
                    selected_grade = signature_grade;
            }
            return selected_grade;
        }

        [[nodiscard]] int minimum_signature_level(int level_group)
        {
            const TblTable *level_table = tbl_store().table("SignatureLevel");
            if (!level_table)
                return 1;

            int selected_level = 0;
            for (const json::Value &row : level_table->rows)
            {
                if (tbl_int(row, "group") != level_group)
                    continue;

                const int signature_level = tbl_int(row, "signature_level");
                if (signature_level > 0 && (selected_level == 0 || signature_level < selected_level))
                    selected_level = signature_level;
            }
            return selected_level > 0 ? selected_level : 1;
        }

        [[nodiscard]] std::vector<int> cash_shop_groups_for_request(std::int32_t request_no)
        {
            if (request_no == 172)
                return {500};
            if (request_no == 173)
                return {300};

            std::vector<int> groups;
            if (request_no > 0)
                groups.push_back(request_no);

            const json::Value *cash_shop = tbl_store().row_by_no("CashShop", request_no);
            if (cash_shop)
            {
                const int shop_no = tbl_int(*cash_shop, "shop_no");
                if (shop_no > 0)
                    groups.push_back(shop_no);
            }

            std::sort(groups.begin(), groups.end());
            groups.erase(std::unique(groups.begin(), groups.end()), groups.end());
            return groups;
        }

        [[nodiscard]] std::vector<int> cash_shop_groups_for_tabs(const std::vector<std::int32_t> &tab_ids)
        {
            const TblTable *cash_shop = tbl_store().table("CashShop");
            if (!cash_shop)
                return {};

            std::set<int> requested_tabs(tab_ids.begin(), tab_ids.end());
            std::vector<int> groups;
            for (const json::Value &row : cash_shop->rows)
            {
                const int tab = tbl_int(row, "tab");
                const int no = tbl_int(row, "no");
                const int shop_no = tbl_int(row, "shop_no");
                if (shop_no <= 0)
                    continue;
                if (!requested_tabs.empty() && requested_tabs.count(tab) == 0 && requested_tabs.count(no) == 0)
                    continue;
                groups.push_back(shop_no);
            }

            std::sort(groups.begin(), groups.end());
            groups.erase(std::unique(groups.begin(), groups.end()), groups.end());
            return groups;
        }

    } // namespace

    std::string build_event_story_info_payload()
    {
        const TblTable *event_info = tbl_store().table("EventInfo");
        const TblTable *event_story = tbl_store().table("EventStory");
        const TblTable *story_info = tbl_store().table("StoryInfo");
        if (!event_info || !event_story || !story_info)
            return {};

        std::map<EventStoryKey, int> story_act_by_key;
        for (const json::Value &row : event_story->rows)
        {
            EventStoryKey key;
            key.event_type = tbl_int(row, "event_type");
            key.event_group = tbl_int(row, "event_group");
            key.event_number = tbl_int(row, "event_number");
            const int story_act = tbl_int(row, "story_act");
            if (key.event_type > 0 && key.event_group > 0 && key.event_number > 0 && story_act > 0)
                story_act_by_key[key] = story_act;
        }

        std::map<int, int> last_episode_by_act;
        for (const json::Value &row : story_info->rows)
        {
            const int act = tbl_int(row, "act");
            const int episode = tbl_int(row, "episode");
            if (act > 0 && episode > last_episode_by_act[act])
                last_episode_by_act[act] = episode;
        }

        std::map<std::pair<int, int>, EventStoryCandidate> latest_by_type_group;
        for (const json::Value &row : event_info->rows)
        {
            if (!starts_with(tbl_text(row, "ui_path"), "PanelPreview"))
                continue;
            if (tbl_int(row, "show_list") != 1 || tbl_int(row, "user_type") != 3 || tbl_int(row, "stage_limit") != 3)
                continue;

            EventStoryKey key;
            key.event_type = tbl_int(row, "event_type");
            key.event_group = tbl_int(row, "group");
            key.event_number = tbl_int(row, "event_number");

            const auto story_act_iter = story_act_by_key.find(key);
            if (story_act_iter == story_act_by_key.end())
                continue;

            const auto last_episode_iter = last_episode_by_act.find(story_act_iter->second);
            if (last_episode_iter == last_episode_by_act.end() || last_episode_iter->second <= 0)
                continue;

            EventStoryCandidate candidate;
            candidate.key = key;
            candidate.event_info_no = tbl_int(row, "no");
            candidate.story_act = story_act_iter->second;
            candidate.last_story_no = last_episode_iter->second;

            const std::pair<int, int> group_key{key.event_type, key.event_group};
            auto existing = latest_by_type_group.find(group_key);
            if (existing == latest_by_type_group.end() ||
                candidate.key.event_number > existing->second.key.event_number ||
                (candidate.key.event_number == existing->second.key.event_number &&
                 candidate.event_info_no < existing->second.event_info_no))
            {
                latest_by_type_group[group_key] = candidate;
            }
        }

        std::map<int, EventStoryCandidate> representative_by_story_act;
        for (const auto &entry : latest_by_type_group)
        {
            const EventStoryCandidate &candidate = entry.second;
            auto existing = representative_by_story_act.find(candidate.story_act);
            if (existing == representative_by_story_act.end() ||
                candidate.key.event_type < existing->second.key.event_type ||
                (candidate.key.event_type == existing->second.key.event_type &&
                 candidate.event_info_no < existing->second.event_info_no))
            {
                representative_by_story_act[candidate.story_act] = candidate;
            }
        }

        std::vector<EventStoryCandidate> stories;
        stories.reserve(representative_by_story_act.size());
        for (const auto &entry : representative_by_story_act)
            stories.push_back(entry.second);

        std::sort(stories.begin(), stories.end(),
                  [](const EventStoryCandidate &left, const EventStoryCandidate &right)
                  {
                      return left.key < right.key;
                  });

        std::string response;
        for (const EventStoryCandidate &candidate : stories)
        {
            std::string story;
            pb_int32(story, 1, candidate.key.event_type);
            pb_int32(story, 2, candidate.key.event_group);
            pb_int32(story, 3, candidate.key.event_number);
            pb_int32(story, 4, candidate.last_story_no);
            pb_message(response, 1, story);
        }
        return response;
    }

    std::string build_signature_list_payload(const std::vector<HeroRow> &heroes)
    {
        const TblTable *signature_table = tbl_store().table("Signature");
        if (!signature_table)
            return {};

        std::map<int, const json::Value *> signature_by_hero_no;
        for (const json::Value &row : signature_table->rows)
        {
            const int hero_no = tbl_int(row, "hero_sno");
            const int item_no = tbl_int(row, "no");
            if (hero_no > 0 && item_no > 0)
                signature_by_hero_no[hero_no] = &row;
        }

        std::vector<std::pair<int, std::string>> items;
        std::set<int> emitted_item_no;
        for (const HeroRow &hero : heroes)
        {
            const auto signature_iter = signature_by_hero_no.find(hero.hero_no);
            if (signature_iter == signature_by_hero_no.end())
                continue;

            const json::Value &signature = *signature_iter->second;
            const int grade_group = tbl_int(signature, "grade_group");
            const int level_group = tbl_int(signature, "level_group");
            const int signature_grade = signature_grade_for_group(grade_group, hero.grade_sno);
            if (signature_grade <= 0)
                continue;

            const int item_no = tbl_int(signature, "no");
            if (!emitted_item_no.insert(item_no).second)
                continue;

            std::string item;
            pb_int32(item, 1, item_no);
            pb_int32(item, 2, signature_grade);
            pb_int32(item, 3, minimum_signature_level(level_group));
            items.emplace_back(item_no, std::move(item));
        }

        std::sort(items.begin(), items.end(),
                  [](const auto &left, const auto &right)
                  {
                      return left.first < right.first;
                  });

        std::string response;
        for (const auto &item : items)
            pb_message(response, 1, item.second);
        return response;
    }

    std::string build_cash_shop_list_payload(std::int32_t request_no)
    {
        const TblTable *item_table = tbl_store().table("CashShopItem");
        if (!item_table)
            return {};

        const std::vector<int> shop_groups = cash_shop_groups_for_request(request_no);
        std::vector<CashShopItemRef> items;
        for (const json::Value &row : item_table->rows)
        {
            const int shop_no = tbl_int(row, "shop_no");
            if (std::find(shop_groups.begin(), shop_groups.end(), shop_no) == shop_groups.end())
                continue;

            CashShopItemRef item;
            item.no = tbl_int(row, "no");
            item.shop_no = shop_no;
            item.item_sort_no = tbl_int(row, "item_sort_no");
            if (item.no > 0)
                items.push_back(item);
        }

        std::sort(items.begin(), items.end(),
                  [](const CashShopItemRef &left, const CashShopItemRef &right)
                  {
                      return std::tie(left.no, left.shop_no, left.item_sort_no) <
                             std::tie(right.no, right.shop_no, right.item_sort_no);
                  });

        std::string response;
        for (const CashShopItemRef &item_ref : items)
        {
            std::string item;
            pb_int32(item, 1, item_ref.no);
            pb_message(response, 1, item);
        }
        return response;
    }

    std::string build_cash_shop_user_able_cash_item_ids_payload(const std::vector<std::int32_t> &tab_ids)
    {
        const TblTable *item_table = tbl_store().table("CashShopItem");
        if (!item_table)
            return {};

        const std::vector<int> shop_groups = cash_shop_groups_for_tabs(tab_ids);
        std::vector<int> item_ids;
        for (const json::Value &row : item_table->rows)
        {
            const int shop_no = tbl_int(row, "shop_no");
            if (std::find(shop_groups.begin(), shop_groups.end(), shop_no) == shop_groups.end())
                continue;

            const int item_no = tbl_int(row, "no");
            if (item_no > 0)
                item_ids.push_back(item_no);
        }

        std::sort(item_ids.begin(), item_ids.end());
        item_ids.erase(std::unique(item_ids.begin(), item_ids.end()), item_ids.end());

        std::string response;
        for (const int item_id : item_ids)
            pb_int32(response, 1, item_id);
        return response;
    }

} // namespace eversoul
