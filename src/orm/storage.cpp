// storage.cpp - sqlite_orm storage definitions and UserInfo seeding.
#include "orm/storage.hpp"

#include <cstdlib>
#include <filesystem>
#include <fstream>
#include <map>
#include <memory>
#include <mutex>
#include <optional>
#include <sstream>
#include <string>
#include <vector>

#include <sys/stat.h>
#ifdef _WIN32
#include <direct.h>
#endif

#include "json.hpp"
#include "log.hpp"
#include "offline_data.hpp"
#include "sqlite_orm.h"
#include "util.hpp"

namespace fs = std::filesystem;

namespace eversoul::orm {
namespace {

std::mutex g_mu;
std::string g_opened_path;

auto make_account_storage(const std::string& path) {
    using namespace sqlite_orm;
    return make_storage(
        path,
        make_table("kv",
                   make_column("k", &Kv::k, primary_key()),
                   make_column("v", &Kv::v)),
        make_table("hero",
                   make_column("idx", &Hero::idx, primary_key()),
                   make_column("heroNo", &Hero::heroNo),
                   make_column("level", &Hero::level),
                   make_column("isResonance", &Hero::isResonance),
                   make_column("gradeSno", &Hero::gradeSno),
                   make_column("raceSno", &Hero::raceSno),
                   make_column("isLock", &Hero::isLock)),
        make_table("hero_rep",
                   make_column("heroNo", &HeroRep::heroNo, primary_key()),
                   make_column("reputation", &HeroRep::reputation),
                   make_column("state", &HeroRep::state),
                   make_column("stress", &HeroRep::stress),
                   make_column("lastUpdateDt", &HeroRep::lastUpdateDt),
                   make_column("giftDt", &HeroRep::giftDt),
                   make_column("costumeItemNo", &HeroRep::costumeItemNo),
                   make_column("storyReward", &HeroRep::storyReward),
                   make_column("maxGradeSno", &HeroRep::maxGradeSno),
                   make_column("objetUid", &HeroRep::objetUid),
                   make_column("maxLevelDt", &HeroRep::maxLevelDt),
                   make_column("arbeitExp", &HeroRep::arbeitExp),
                   make_column("priority", &HeroRep::priority),
                   make_column("restFinishDt", &HeroRep::restFinishDt),
                   make_column("objetNo", &HeroRep::objetNo)),
        make_table("currency",
                   make_column("type", &Currency::type, primary_key()),
                   make_column("value", &Currency::value)),
        make_table("item_etc",
                   make_column("itemNo", &ItemEtc::itemNo, primary_key()),
                   make_column("cnt", &ItemEtc::cnt)),
        make_table("item_equip",
                   make_column("id", &ItemEquip::id, primary_key()),
                   make_column("itemNo", &ItemEquip::itemNo),
                   make_column("exp", &ItemEquip::exp)),
        make_table("hero_equip_slot",
                   make_column("heroIdx", &HeroEquipSlot::heroIdx),
                   make_column("slot", &HeroEquipSlot::slot),
                   make_column("itemEquipId", &HeroEquipSlot::itemEquipId),
                   primary_key(&HeroEquipSlot::heroIdx, &HeroEquipSlot::slot)),
        make_table("formation",
                   make_column("no", &Formation::no),
                   make_column("kind", &Formation::kind),
                   make_column("heroidx", &Formation::heroidx),
                   make_column("formationType", &Formation::formationType),
                   make_column("formationName", &Formation::formationName),
                   primary_key(&Formation::no, &Formation::kind)),
        make_table("spirit_tree",
                   make_column("slotNo", &SpiritTree::slotNo, primary_key()),
                   make_column("heroIdx", &SpiritTree::heroIdx),
                   make_column("enableDt", &SpiritTree::enableDt)),
        make_table("hero_option",
                   make_column("id", &HeroOption::id, primary_key()),
                   make_column("heroNo", &HeroOption::heroNo),
                   make_column("groupNo", &HeroOption::groupNo),
                   make_column("optionSlot", &HeroOption::optionSlot),
                   make_column("optionNo", &HeroOption::optionNo),
                   make_column("optionValue", &HeroOption::optionValue),
                   make_column("optionType", &HeroOption::optionType),
                   make_column("optionLock", &HeroOption::optionLock)),
        make_table("challenge_mode",
                   make_column("clearStageNo", &ChallengeMode::clearStageNo, primary_key()),
                   make_column("clearTaskNo", &ChallengeMode::clearTaskNo)),
        make_table("stage",
                   make_column("stageNo", &Stage::stageNo, primary_key()),
                   make_column("stageType", &Stage::stageType),
                   make_column("updateDt", &Stage::updateDt)),
        make_table("story",
                   make_column("storyNo", &Story::storyNo, primary_key()),
                   make_column("updateDt", &Story::updateDt)),
        make_table("tutorial",
                   make_column("tutorialNo", &Tutorial::tutorialNo, primary_key())),
        make_table("dungeon",
                   make_column("dungeonNo", &Dungeon::dungeonNo, primary_key()),
                   make_column("updateDt", &Dungeon::updateDt),
                   make_column("isFirstClear", &Dungeon::isFirstClear)),
        make_table("accounts",
                   make_column("id", &Account::id, primary_key()),
                   make_column("nickname", &Account::nickname),
                   make_column("player_id", &Account::player_id),
                   make_column("idp_code", &Account::idp_code),
                   make_column("idp_id", &Account::idp_id),
                   make_column("created_at", &Account::created_at),
                   make_column("last_login", &Account::last_login)));
}

using Storage = decltype(make_account_storage(""));
std::unique_ptr<Storage> g_storage;

const json::Value* field(const json::Value& obj, const std::string& key) {
    return obj.find(key);
}

int jint(const json::Value& obj, const std::string& key, int fallback = 0) {
    if (const auto* v = field(obj, key)) return static_cast<int>(v->as_int64());
    return fallback;
}

std::int64_t ji64(const json::Value& obj, const std::string& key, std::int64_t fallback = 0) {
    if (const auto* v = field(obj, key)) return v->as_int64();
    return fallback;
}

std::string jtext(const json::Value& obj, const std::string& key, const std::string& fallback = "") {
    if (const auto* v = field(obj, key)) return v->text();
    return fallback;
}

std::string join_strings(const json::Value& arr) {
    std::string out;
    if (!arr.is_array()) return out;
    for (std::size_t i = 0; i < arr.arr.size(); ++i) {
        if (i) out.push_back(',');
        out += arr.arr[i].text();
    }
    return out;
}

std::string join_ints(const json::Value& arr) {
    std::string out;
    if (!arr.is_array()) return out;
    for (std::size_t i = 0; i < arr.arr.size(); ++i) {
        if (i) out.push_back(',');
        out += std::to_string(arr.arr[i].as_int64());
    }
    return out;
}

std::string read_file(const fs::path& path) {
    std::ifstream f(path, std::ios::binary);
    if (!f) return {};
    std::ostringstream ss;
    ss << f.rdbuf();
    return ss.str();
}

std::optional<std::string> read_data_file(const std::string& data_dir, const std::string& rel) {
    if (auto blob = offline_data().read(rel)) return blob;
    if (!data_dir.empty()) {
        std::string text = read_file(fs::path(data_dir) / rel);
        if (!text.empty()) return text;
    }
    std::string text = read_file(rel);
    if (!text.empty()) return text;
    return std::nullopt;
}

std::map<std::string, int> load_currency_enum(const std::string& data_dir) {
    std::map<std::string, int> out;
    auto schema_text = read_data_file(data_dir, "schema/UserInfo.json");
    if (!schema_text) return out;

    json::Value root;
    std::string err;
    if (!json::parse(*schema_text, root, err)) {
        log_line(0, "ORM", "schema/UserInfo.json parse failed: " + err);
        return out;
    }
    const auto* enums = root.find("enums");
    const auto* cur = enums ? enums->find("E_CURRENCY") : nullptr;
    if (!cur || !cur->is_object()) return out;
    for (const auto& [name, value] : cur->obj) {
        out[name] = static_cast<int>(value.as_int64());
    }
    return out;
}

void clear_seed_tables() {
    g_storage->remove_all<Dungeon>();
    g_storage->remove_all<Tutorial>();
    g_storage->remove_all<Story>();
    g_storage->remove_all<Stage>();
    g_storage->remove_all<ChallengeMode>();
    g_storage->remove_all<HeroOption>();
    g_storage->remove_all<SpiritTree>();
    g_storage->remove_all<Formation>();
    g_storage->remove_all<HeroEquipSlot>();
    g_storage->remove_all<ItemEquip>();
    g_storage->remove_all<ItemEtc>();
    g_storage->remove_all<Currency>();
    g_storage->remove_all<HeroRep>();
    g_storage->remove_all<Hero>();
    g_storage->remove_all<Kv>();
}

bool seed_from_userinfo(const std::string& data_dir, const std::string& responses_dir = "responses") {
    auto userinfo_text = read_data_file(data_dir, responses_dir + "/UserInfo.json");
    if (!userinfo_text) {
        log_line(0, "ORM", responses_dir + "/UserInfo.json not found; seed skipped");
        return false;
    }

    json::Value root;
    std::string err;
    if (!json::parse(*userinfo_text, root, err)) {
        log_line(0, "ORM", responses_dir + "/UserInfo.json parse failed: " + err);
        return false;
    }
    if (!root.is_object()) {
        log_line(0, "ORM", responses_dir + "/UserInfo.json root is not object");
        return false;
    }

    auto currency_enum = load_currency_enum(data_dir);
    bool ok = g_storage->transaction([&]() {
        clear_seed_tables();

        auto put_kv = [&](std::string k, std::string v) {
            g_storage->replace(Kv{std::move(k), std::move(v)});
        };

        if (const auto* user = root.find("user")) {
            put_kv("user_idx", jtext(*user, "idx"));
            put_kv("nickname", jtext(*user, "nickName"));
            put_kv("created_dt", std::to_string(ji64(*user, "createdDt")));
            put_kv("about", jtext(*user, "about"));
            put_kv("channel_no", std::to_string(jint(*user, "channelNo")));
            put_kv("tree_level", std::to_string(jint(*user, "treeLevel")));
            put_kv("first_title", std::to_string(jint(*user, "firstTitle")));
            put_kv("second_title", std::to_string(jint(*user, "secondTitle")));
            if (const auto* thumb = user->find("thumbnail")) {
                put_kv("thumbnail_frame", std::to_string(jint(*thumb, "thumbnailFrame")));
                put_kv("thumbnail_image", std::to_string(jint(*thumb, "thumbnailImage")));
                put_kv("thumbnail_use_custom", std::to_string(jint(*thumb, "useCustom")));
                put_kv("thumbnail_blob", jtext(*thumb, "thumbnail"));
                put_kv("thumbnail_first_title", std::to_string(jint(*thumb, "firstTitle")));
                put_kv("thumbnail_second_title", std::to_string(jint(*thumb, "secondTitle")));
            }
        }

        if (const auto* auto_hunt = root.find("autoHunt")) {
            put_kv("autohunt_stage_no", std::to_string(jint(*auto_hunt, "stageNo")));
            put_kv("autohunt_lab_dt", std::to_string(ji64(*auto_hunt, "labDt")));
            put_kv("autohunt_receive_dt", std::to_string(ji64(*auto_hunt, "receiveDt")));
        }
        put_kv("seed_source", responses_dir + "/UserInfo.json");

        if (const auto* currency = root.find("currency")) {
            if (const auto* all = currency->find("allCurrency"); all && all->is_array()) {
                for (const auto& c : all->arr) {
                    std::string type_name = jtext(c, "type");
                    int type = currency_enum.count(type_name) ? currency_enum[type_name] : std::atoi(type_name.c_str());
                    g_storage->replace(Currency{type, ji64(c, "value")});
                }
            }
        }

        if (const auto* heroes = root.find("hero"); heroes && heroes->is_array()) {
            for (const auto& h : heroes->arr) {
                g_storage->replace(Hero{jtext(h, "idx"), jint(h, "heroNo"), jint(h, "level"),
                                        jint(h, "isResonance"), jint(h, "gradeSno"),
                                        jint(h, "raceSno"), jint(h, "isLock")});
            }
        }

        if (const auto* reps = root.find("heroReputation"); reps && reps->is_array()) {
            for (const auto& r : reps->arr) {
                g_storage->replace(HeroRep{jint(r, "heroNo"), jint(r, "reputation"), jint(r, "state"),
                                           jint(r, "stress"), ji64(r, "lastUpdateDt"), ji64(r, "giftDt"),
                                           jint(r, "costumeItemNo"), jint(r, "storyReward"),
                                           jint(r, "maxGradeSno"), jint(r, "objetUid"),
                                           ji64(r, "maxLevelDt"), jint(r, "arbeitExp"),
                                           jint(r, "priority"), ji64(r, "restFinishDt"),
                                           jtext(r, "objetNo")});
            }
        }

        if (const auto* items = root.find("itemEtc"); items && items->is_array()) {
            for (const auto& it : items->arr) {
                g_storage->replace(ItemEtc{jint(it, "itemNo"), jint(it, "cnt")});
            }
        }

        if (const auto* equips = root.find("itemEquip"); equips && equips->is_array()) {
            for (const auto& it : equips->arr) {
                g_storage->replace(ItemEquip{ji64(it, "id"), jint(it, "itemNo"), jint(it, "exp")});
            }
        }

        if (const auto* hero_equips = root.find("heroEquip"); hero_equips && hero_equips->is_array()) {
            for (const auto& he : hero_equips->arr) {
                std::string hero_idx = jtext(he, "heroIdx");
                if (const auto* slots = he.find("equip"); slots && slots->is_array()) {
                    for (const auto& slot : slots->arr) {
                        g_storage->replace(HeroEquipSlot{hero_idx, jint(slot, "slot"), ji64(slot, "itemEquipId")});
                    }
                }
            }
        }

        if (const auto* formations = root.find("formation"); formations && formations->is_array()) {
            for (const auto& f : formations->arr) {
                std::string hx;
                if (const auto* arr = f.find("heroidx")) hx = join_strings(*arr);
                g_storage->replace(Formation{jint(f, "no"), jint(f, "kind"), hx,
                                             jint(f, "formationType"), jtext(f, "formationName")});
            }
        }

        if (const auto* trees = root.find("spiritTree"); trees && trees->is_array()) {
            for (const auto& t : trees->arr) {
                g_storage->replace(SpiritTree{jint(t, "slotNo"), jtext(t, "heroIdx"), ji64(t, "enableDt")});
            }
        }

        int option_id = 1;
        if (const auto* options = root.find("heroOption"); options && options->is_array()) {
            for (const auto& o : options->arr) {
                g_storage->replace(HeroOption{option_id++, jint(o, "heroNo"), jint(o, "groupNo"),
                                              jint(o, "optionSlot"), jint(o, "optionNo"),
                                              jint(o, "optionValue"), jint(o, "optionType"),
                                              jint(o, "optionLock")});
            }
        }

        if (const auto* modes = root.find("challengeMode"); modes && modes->is_array()) {
            for (const auto& m : modes->arr) {
                std::string tasks;
                if (const auto* arr = m.find("clearTaskNo")) tasks = join_ints(*arr);
                g_storage->replace(ChallengeMode{jint(m, "clearStageNo"), tasks});
            }
        }

        if (const auto* stages = root.find("stage"); stages && stages->is_array()) {
            for (const auto& s : stages->arr) {
                g_storage->replace(Stage{jint(s, "stageNo"), jint(s, "stageType"), ji64(s, "updateDt")});
            }
        }

        if (const auto* stories = root.find("story"); stories && stories->is_array()) {
            for (const auto& s : stories->arr) {
                g_storage->replace(Story{jint(s, "storyNo"), ji64(s, "updateDt")});
            }
        }

        if (const auto* tutorials = root.find("tutorial"); tutorials && tutorials->is_array()) {
            for (const auto& t : tutorials->arr) {
                g_storage->replace(Tutorial{jint(t, "tutorialNo")});
            }
        }

        if (const auto* dungeon_list = root.find("dungeonList")) {
            if (const auto* rewards = dungeon_list->find("dungeonReward"); rewards && rewards->is_array()) {
                for (const auto& reward : rewards->arr) {
                    const json::Value* d = reward.find("dungeon");
                    if (!d) d = &reward;
                    int dungeon_no = jint(*d, "dungeonNo");
                    if (dungeon_no != 0) {
                        g_storage->replace(Dungeon{dungeon_no, ji64(*d, "updateDt"), jint(*d, "isFirstClear")});
                    }
                }
            }
        }

        put_kv("seeded", "1");
        return true;
    });

    if (ok) {
        log_line(0, "ORM", "seeded from " + responses_dir + "/UserInfo hero=" + std::to_string(g_storage->count<Hero>()) +
                               " itemEtc=" + std::to_string(g_storage->count<ItemEtc>()) +
                               " currency=" + std::to_string(g_storage->count<Currency>()));
    }
    return ok;
}

std::vector<std::string> candidate_paths(const std::string& override_path) {
    if (!override_path.empty()) return {override_path};
#ifdef _WIN32
    _mkdir("/sdcard/Android/data/com.kakaogames.eversoul");
    _mkdir("/sdcard/Android/data/com.kakaogames.eversoul/files");
#else
    ::mkdir("/sdcard/Android/data/com.kakaogames.eversoul", 0770);
    ::mkdir("/sdcard/Android/data/com.kakaogames.eversoul/files", 0770);
#endif
    return {
        "/sdcard/Android/data/com.kakaogames.eversoul/files/eversoul_orm.db",
        "/storage/emulated/0/Android/data/com.kakaogames.eversoul/files/eversoul_orm.db",
        "/data/data/com.kakaogames.eversoul/files/eversoul_orm.db",
        "eversoul_orm.db",
    };
}

std::string join_csv(const std::vector<std::string>& values) {
    std::string out;
    for (std::size_t i = 0; i < values.size(); ++i) {
        if (i) out.push_back(',');
        out += values[i];
    }
    return out;
}

bool ensure_ready_locked(const std::string& data_dir, const std::string& db_path_override) {
    if (g_storage) return true;

    for (const auto& path : candidate_paths(db_path_override)) {
        try {
            auto storage = std::make_unique<Storage>(make_account_storage(path));
            storage->pragma.journal_mode(sqlite_orm::journal_mode::WAL);
            storage->pragma.synchronous(1);
            storage->sync_schema();
            g_storage = std::move(storage);
            g_opened_path = path;
            log_line(0, "ORM", "opened " + path);
            break;
        } catch (const std::exception& ex) {
            log_line(0, "ORM", "open failed " + path + ": " + ex.what());
        }
    }

    if (!g_storage) return false;

    auto seeded = g_storage->get_optional<Kv>("seeded");
    if (!seeded || seeded->v != "1") {
        return seed_from_userinfo(data_dir);
    }
    return true;
}

template <class T>
std::vector<T> all_rows() {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return {};
    return g_storage->get_all<T>();
}

}  // namespace

bool smoke_test() {
    auto storage = make_account_storage(":memory:");
    storage.sync_schema();
    storage.replace(Kv{"probe", "ok"});
    auto row = storage.get_optional<Kv>("probe");
    return row.has_value() && row->v == "ok";
}

bool ensure_ready(const std::string& data_dir, const std::string& db_path_override) {
    std::lock_guard<std::mutex> lock(g_mu);
    return ensure_ready_locked(data_dir, db_path_override);
}

bool reseed_from_profile(const std::string& data_dir, const std::string& responses_dir) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(data_dir, "")) return false;
    return seed_from_userinfo(data_dir, responses_dir);
}

std::string opened_path() {
    std::lock_guard<std::mutex> lock(g_mu);
    return g_opened_path;
}

int row_count(const std::string& table) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return 0;
    if (table == "hero") return g_storage->count<Hero>();
    if (table == "hero_rep") return g_storage->count<HeroRep>();
    if (table == "currency") return g_storage->count<Currency>();
    if (table == "item_etc") return g_storage->count<ItemEtc>();
    if (table == "item_equip") return g_storage->count<ItemEquip>();
    if (table == "hero_equip_slot") return g_storage->count<HeroEquipSlot>();
    if (table == "formation") return g_storage->count<Formation>();
    if (table == "spirit_tree") return g_storage->count<SpiritTree>();
    if (table == "hero_option") return g_storage->count<HeroOption>();
    if (table == "challenge_mode") return g_storage->count<ChallengeMode>();
    if (table == "stage") return g_storage->count<Stage>();
    if (table == "story") return g_storage->count<Story>();
    if (table == "tutorial") return g_storage->count<Tutorial>();
    if (table == "dungeon") return g_storage->count<Dungeon>();
    if (table == "kv") return g_storage->count<Kv>();
    return 0;
}

std::string kv_get(const std::string& key, const std::string& fallback) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return fallback;
    auto row = g_storage->get_optional<Kv>(key);
    return row ? row->v : fallback;
}

void kv_set(const std::string& key, const std::string& value) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;
    g_storage->replace(Kv{key, value});
}

std::vector<Currency> currencies() { return all_rows<Currency>(); }
std::vector<Hero> heroes() { return all_rows<Hero>(); }
std::vector<HeroRep> hero_reps() { return all_rows<HeroRep>(); }
std::vector<ItemEtc> item_etcs() { return all_rows<ItemEtc>(); }
std::vector<ItemEquip> item_equips() { return all_rows<ItemEquip>(); }
std::vector<HeroEquipSlot> hero_equip_slots() { return all_rows<HeroEquipSlot>(); }
std::vector<Formation> formations() { return all_rows<Formation>(); }
std::vector<SpiritTree> spirit_trees() { return all_rows<SpiritTree>(); }
std::vector<HeroOption> hero_options() { return all_rows<HeroOption>(); }
std::vector<ChallengeMode> challenge_modes() { return all_rows<ChallengeMode>(); }
std::vector<Stage> stages() { return all_rows<Stage>(); }
std::vector<Story> stories() { return all_rows<Story>(); }
std::vector<Tutorial> tutorials() { return all_rows<Tutorial>(); }
std::vector<Dungeon> dungeons() { return all_rows<Dungeon>(); }

std::optional<Hero> hero_by_idx(const std::string& idx) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return std::nullopt;
    return g_storage->get_optional<Hero>(idx);
}

std::optional<HeroRep> hero_rep_by_no(int hero_no) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return std::nullopt;
    return g_storage->get_optional<HeroRep>(hero_no);
}

std::optional<ItemEquip> item_equip_by_id(std::int64_t id) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return std::nullopt;
    return g_storage->get_optional<ItemEquip>(id);
}

std::optional<HeroEquipSlot> hero_equip_slot(const std::string& hero_idx, int slot) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return std::nullopt;
    using namespace sqlite_orm;
    auto rows = g_storage->get_all<HeroEquipSlot>(
        where(c(&HeroEquipSlot::heroIdx) == hero_idx and c(&HeroEquipSlot::slot) == slot));
    if (rows.empty()) return std::nullopt;
    return rows[0];
}

int max_stage_no() {
    int max_no = 0;
    for (const auto& row : stages()) {
        if (row.stageNo > max_no) max_no = row.stageNo;
    }
    return max_no;
}

int max_tutorial_no() {
    int max_no = 0;
    for (const auto& row : tutorials()) {
        if (row.tutorialNo > max_no) max_no = row.tutorialNo;
    }
    return max_no;
}

void heal_progress() {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;

    int max_stage = 0;
    for (const auto& row : g_storage->get_all<Stage>()) {
        if (row.stageNo > max_stage) max_stage = row.stageNo;
    }
    int max_tutorial = 0;
    for (const auto& row : g_storage->get_all<Tutorial>()) {
        if (row.tutorialNo > max_tutorial) max_tutorial = row.tutorialNo;
    }

    const std::int64_t now = unix_ms();

    if (max_stage >= 5 || max_tutorial >= 4800) {
        if (!g_storage->get_optional<Story>(10001)) {
            g_storage->replace(Story{10001, now});
            log_line(0, "ORM", "heal: story 10001");
        }
        if (!g_storage->get_optional<Dungeon>(10001)) {
            g_storage->replace(Dungeon{10001, now, 1});
            log_line(0, "ORM", "heal: dungeon 10001 cleared");
        }
    }
    if (max_tutorial >= 4700 && g_storage->get_optional<Dungeon>(10001) && max_tutorial < 4800) {
        g_storage->replace(Tutorial{4800});
        log_line(0, "ORM", "heal: tutorial 4800 after dungeon 10001");
    }
    if (max_tutorial >= 4900) {
        if (!g_storage->get_optional<Story>(11)) {
            g_storage->replace(Story{11, now});
            log_line(0, "ORM", "heal: story 11");
        }
    }
    if (max_stage >= 5) {
        auto item = g_storage->get_optional<ItemEtc>(3201);
        if (!item || item->cnt <= 0) {
            g_storage->replace(ItemEtc{3201, 60});
            log_line(0, "ORM", "heal: item_etc 3201 x60 for hero upgrade");
        }
    }
}

int item_etc_count(int item_no) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return 0;
    auto row = g_storage->get_optional<ItemEtc>(item_no);
    return row ? row->cnt : 0;
}

bool has_dungeon(int dungeon_no) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return false;
    return g_storage->get_optional<Dungeon>(dungeon_no).has_value();
}

void save_tutorial(int tutorial_no) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;
    g_storage->replace(Tutorial{tutorial_no});
}

void save_stage(int stage_no, int stage_type, std::int64_t update_dt) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;
    g_storage->replace(Stage{stage_no, stage_type, update_dt});
}

void save_story(int story_no, std::int64_t update_dt) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;
    g_storage->replace(Story{story_no, update_dt});
}

void save_dungeon(int dungeon_no, std::int64_t update_dt, int is_first_clear) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;
    g_storage->replace(Dungeon{dungeon_no, update_dt, is_first_clear});
}

void save_formation(int no, int kind, const std::vector<std::string>& heroidx,
                    int formation_type, const std::string& name) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;
    g_storage->replace(Formation{no, kind, join_csv(heroidx), formation_type, name});
}

void save_hero(const Hero& hero) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;
    g_storage->replace(hero);
}

void save_hero_rep(const HeroRep& rep) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;
    g_storage->replace(rep);
}

void save_item_equip(const ItemEquip& item) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;
    g_storage->replace(item);
}

void save_hero_equip_slot(const std::string& hero_idx, int slot, std::int64_t item_equip_id) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;
    g_storage->replace(HeroEquipSlot{hero_idx, slot, item_equip_id});
}

void clear_hero_equip_slot(const std::string& hero_idx, int slot) {
    save_hero_equip_slot(hero_idx, slot, 0);
}

void save_spirit_tree(int slot_no, const std::string& hero_idx, std::int64_t enable_dt) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;
    g_storage->replace(SpiritTree{slot_no, hero_idx, enable_dt});
}

void set_hero_level(const std::string& idx, int level) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;
    auto row = g_storage->get_optional<Hero>(idx);
    if (!row) return;
    row->level = level;
    g_storage->replace(*row);
}

void add_item_etc(int item_no, int delta) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;
    auto row = g_storage->get_optional<ItemEtc>(item_no).value_or(ItemEtc{item_no, 0});
    row.cnt += delta;
    if (row.cnt < 0) row.cnt = 0;
    g_storage->replace(row);
}

void set_item_etc(int item_no, int count) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;
    g_storage->replace(ItemEtc{item_no, count});
}

void add_currency(int type, std::int64_t delta) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return;
    auto row = g_storage->get_optional<Currency>(type).value_or(Currency{type, 0});
    row.value += delta;
    if (row.value < 0) row.value = 0;
    g_storage->replace(row);
}

std::vector<Account> accounts() {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return {};
    return g_storage->get_all<Account>();
}

std::optional<Account> account_by_id(const std::string& id) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return std::nullopt;
    return g_storage->get_optional<Account>(id);
}

std::optional<Account> active_account() {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return std::nullopt;
    auto kv = g_storage->get_optional<Kv>("active_account_id");
    if (!kv || kv->v.empty()) return std::nullopt;
    return g_storage->get_optional<Account>(kv->v);
}

std::string create_account(const std::string& nickname,
                           const std::string& idp_code,
                           const std::string& idp_id,
                           const std::string& data_dir) {
    const std::int64_t now = unix_ms();
    const std::string id = "acct_" + std::to_string(now);
    const std::string player_id = std::to_string(9000000000LL + (now % 1000000000LL));
    {
        std::lock_guard<std::mutex> lock(g_mu);
        if (!ensure_ready_locked(data_dir, "")) return {};
        Account acct{id, nickname, player_id,
                     idp_code.empty() ? "zd3" : idp_code,
                     idp_id.empty() ? id : idp_id,
                     now, now};
        g_storage->replace(acct);
        g_storage->replace(Kv{"active_account_id", id});
        log_line(0, "ORM", "account created id=" + id + " nickname=" + nickname + " playerId=" + player_id);
    }
    if (!reseed_from_profile(data_dir, "responses_newbie"))
        log_line(0, "ORM", "account " + id + ": newbie reseed failed — responses_newbie/UserInfo.json not found");
    return id;
}

bool select_account(const std::string& id, const std::string& data_dir) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(data_dir, "")) return false;
    auto acct = g_storage->get_optional<Account>(id);
    if (!acct) return false;
    acct->last_login = unix_ms();
    g_storage->replace(*acct);
    g_storage->replace(Kv{"active_account_id", id});
    log_line(0, "ORM", "account selected id=" + id + " nickname=" + acct->nickname);
    return true;
}

bool delete_account(const std::string& id) {
    std::lock_guard<std::mutex> lock(g_mu);
    if (!ensure_ready_locked(".", "")) return false;
    auto acct = g_storage->get_optional<Account>(id);
    if (!acct) return false;
    g_storage->remove<Account>(id);
    auto active = g_storage->get_optional<Kv>("active_account_id");
    if (active && active->v == id)
        g_storage->remove<Kv>("active_account_id");
    log_line(0, "ORM", "account deleted id=" + id);
    return true;
}

}  // namespace eversoul::orm
