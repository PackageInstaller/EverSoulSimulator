// account_database.hpp — 계정별 state.sqlite3 스키마 및 시드 로더.
#pragma once

#include <cstdint>
#include <optional>
#include <string>
#include <vector>

struct sqlite3;
struct sqlite3_stmt;

namespace eversoul {

struct HeroRow {
    std::string  idx;
    int          hero_no       = 0;
    int          level         = 1;
    int          is_resonance  = 0;
    int          grade_sno     = 0;
    int          race_sno      = 0;
    int          is_lock       = 0;
};

struct HeroReputationRow {
    int          hero_no           = 0;
    int          reputation        = 0;
    int          state             = 0;
    int          stress            = 0;
    std::int64_t last_update_dt    = 0;
    std::int64_t gift_dt           = 0;
    int          costume_item_no   = 0;
    int          story_reward      = 0;
    int          max_grade_sno     = 0;
    std::int64_t objet_uid         = 0;
    std::int64_t max_level_dt      = 0;
    int          arbeit_exp        = 0;
    int          priority          = 0;
    std::int64_t rest_finish_dt    = 0;
    std::string  objet_no;
};

struct ItemEquipRow {
    std::int64_t id      = 0;
    int          item_no = 0;
    int          exp     = 0;
};

struct HeroEquipSlotRow {
    std::string  hero_idx     ;
    int          slot         = 0;
    std::int64_t item_equip_id = 0;
};

struct FormationRow {
    int         no             = 0;
    int         kind           = 0;
    int         formation_type = 0;
    std::string formation_name;
};

struct FormationHeroRow {
    int         no       = 0;
    int         kind     = 0;
    int         position = 0;
    std::string hero_idx;
};

struct DungeonRow {
    int          dungeon_no            = 0;
    int          dungeon_no_id         = 0;
    int          dungeon_level         = 0;
    std::string  map_info;
    std::string  condition_info;
    std::string  hero_info;
    std::string  additional_info;
    std::string  relic_info;
    int          is_enter              = 0;
    int          is_clear              = 0;
    int          is_first_clear        = 1;
    int          mission_no            = 0;
    int          mission_cnt           = 0;
    int          seed                  = 0;
    std::string  dungeon_item;
    int          difficulty            = 0;
    int          ultimate_point        = 0;
    int          player_object_id      = 0;
    int          use_ticket            = 0;
    int          max_clear_level       = 0;
    int          is_sweep              = 0;
    int          is_perfect_clear      = 0;
    int          is_hidden_key_not_available = 0;
    int          random_gimmick_seed   = 0;
    std::int64_t update_dt             = 0;
    double       x                     = 0.0;
    double       z                     = 0.0;
};

class AccountDatabase {
public:
    explicit AccountDatabase(const std::string& account_dir);
    ~AccountDatabase();

    AccountDatabase(const AccountDatabase&)            = delete;
    AccountDatabase& operator=(const AccountDatabase&) = delete;

    bool open();
    void close();
    bool is_open() const { return db_ != nullptr; }

    bool backup_to(const std::string& dest_path) const;

    const std::string& account_dir() const { return account_dir_; }

    // ---- 스키마 ----
    void create_schema();

    // ---- 시드 ----
    bool seed_from_fixture(const std::string& profile, const std::string& data_dir);
    bool seed_from_json(const std::string& userinfo_json, const std::string& schema_text);
    bool is_seeded() const;

    // ---- account_meta ----
    std::string meta_get(const std::string& key, const std::string& fallback = "") const;
    void        meta_set(const std::string& key, const std::string& value);

    struct UserProfileRow {
        std::string  idx;
        std::string  nick_name;
        std::int64_t last_login_dt      = 0;
        int          channel_no         = 0;
        int          tree_level         = 0;
        int          is_log             = 0;
        std::string  about;
        std::int64_t return_user_dt     = 0;
        std::int64_t created_dt         = 0;
        int          popularity         = 0;
        int          is_first_cash_buy  = 0;
        int          review_flag        = 0;
        std::int64_t review_dt          = 0;
        int          equip_flag         = 0;
        std::int64_t payment_agree_dt   = 0;
        int          payment_agree_type = 0;
        int          first_title        = 0;
        int          second_title       = 0;
    };

    struct UserThumbnailRow {
        int         thumbnail_frame = 0;
        int         thumbnail_image = 0;
        int         use_custom      = 0;
        std::string thumbnail;
        int         first_title     = 0;
        int         second_title    = 0;
    };

    struct CurrencyRow {
        int          type      = 0;
        std::string  enum_name;
        std::int64_t value     = 0;
    };

    std::optional<UserProfileRow>   user_profile()   const;
    std::optional<UserThumbnailRow> user_thumbnail() const;

    // ---- currency ----
    std::vector<CurrencyRow> currencies()                              const;
    std::int64_t             currency_get(int type)                    const;
    void                     currency_set(int type, std::int64_t value);
    void                     currency_add(int type, std::int64_t delta);

    // ---- hero ----
    std::vector<HeroRow>           heroes() const;
    std::optional<HeroRow>         hero_by_idx(const std::string& idx) const;
    void                           upsert_hero(const HeroRow& row);

    // ---- hero_reputation ----
    std::vector<HeroReputationRow>           hero_reputations() const;
    std::optional<HeroReputationRow>         hero_reputation_by_no(int hero_no) const;
    void                                     upsert_hero_reputation(const HeroReputationRow& row);

    // ---- item_etc ----
    int  item_etc_count(int item_no) const;
    void item_etc_set(int item_no, int cnt);
    void item_etc_add(int item_no, int delta);

    // ---- item_equip ----
    std::vector<ItemEquipRow>    item_equips() const;
    std::optional<ItemEquipRow>  item_equip_by_id(std::int64_t id) const;
    void                         upsert_item_equip(const ItemEquipRow& row);

    // ---- hero_equip_slot ----
    std::vector<HeroEquipSlotRow> hero_equip_slots(const std::string& hero_idx) const;
    void                          upsert_hero_equip_slot(const HeroEquipSlotRow& row);
    void                          delete_hero_equip_slot(const std::string& hero_idx, int slot);

    // ---- formation ----
    std::vector<FormationRow>      formations() const;
    std::vector<FormationHeroRow>  formation_heroes(int no, int kind) const;
    void                           upsert_formation(const FormationRow& row);
    void                           upsert_formation_hero(const FormationHeroRow& row);
    void                           delete_formation_heroes(int no, int kind);

    // ---- stage ----
    std::vector<std::pair<int,int>> stages() const;
    void                            upsert_stage(int stage_no, int stage_type, std::int64_t update_dt);
    int                             max_stage_no() const;

    // ---- story ----
    std::vector<int>  stories() const;
    void              upsert_story(int story_no, std::int64_t update_dt);

    // ---- tutorial ----
    std::vector<int>  tutorials() const;
    void              upsert_tutorial(int tutorial_no);
    int               max_tutorial_no() const;

    // ---- dungeon ----
    std::vector<DungeonRow>    dungeons() const;
    std::optional<DungeonRow>  dungeon_by_no(int dungeon_no) const;
    void                       upsert_dungeon(const DungeonRow& row);

    // ---- spirit_tree ----
    struct SpiritTreeRow { int slot_no = 0; std::string hero_idx; std::int64_t enable_dt = 0; };
    std::vector<SpiritTreeRow>    spirit_trees() const;
    void                          upsert_spirit_tree(const SpiritTreeRow& row);

    // ---- auto_hunt ----
    struct AutoHuntRow { int stage_no = 0; std::int64_t lab_dt = 0; std::int64_t receive_dt = 0; };
    std::optional<AutoHuntRow> auto_hunt() const;
    void                       upsert_auto_hunt(const AutoHuntRow& row);

    // ---- userinfo_preserved_field ----
    std::string preserved_field(const std::string& field_name) const;
    void        set_preserved_field(const std::string& field_name, int field_number,
                                    const std::string& type_name,
                                    const std::string& json_body,
                                    const std::string& schema_sha256,
                                    std::int64_t updated_at_ms);

    // ---- 트랜잭션 ----
    void begin();
    void commit();
    void rollback();

    sqlite3* raw_db() const { return db_; }

private:
    std::string account_dir_;
    sqlite3*    db_ = nullptr;

    HeroRow           row_to_hero(sqlite3_stmt* st) const;
    HeroReputationRow row_to_hero_rep(sqlite3_stmt* st) const;
    ItemEquipRow      row_to_item_equip(sqlite3_stmt* st) const;
    DungeonRow        row_to_dungeon(sqlite3_stmt* st) const;
};

} // namespace eversoul
