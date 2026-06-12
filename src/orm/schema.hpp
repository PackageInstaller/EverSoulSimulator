// schema.hpp - ORM row types for the persistent account database.
#pragma once

#include <cstdint>
#include <string>

namespace eversoul::orm {

struct Kv {
    std::string k;
    std::string v;
};

struct Hero {
    std::string idx;
    int heroNo = 0;
    int level = 0;
    int isResonance = 0;
    int gradeSno = 0;
    int raceSno = 0;
    int isLock = 0;
};

struct HeroRep {
    int heroNo = 0;
    int reputation = 0;
    int state = 0;
    int stress = 0;
    std::int64_t lastUpdateDt = 0;
    std::int64_t giftDt = 0;
    int costumeItemNo = 0;
    int storyReward = 0;
    int maxGradeSno = 0;
    int objetUid = 0;
    std::int64_t maxLevelDt = 0;
    int arbeitExp = 0;
    int priority = 0;
    std::int64_t restFinishDt = 0;
    std::string objetNo;
};

struct Currency {
    int type = 0;
    std::int64_t value = 0;
};

struct ItemEtc {
    int itemNo = 0;
    int cnt = 0;
};

struct ItemEquip {
    std::int64_t id = 0;
    int itemNo = 0;
    int exp = 0;
};

struct HeroEquipSlot {
    std::string heroIdx;
    int slot = 0;
    std::int64_t itemEquipId = 0;
};

struct Formation {
    int no = 0;
    int kind = 0;
    std::string heroidx;
    int formationType = 0;
    std::string formationName;
};

struct SpiritTree {
    int slotNo = 0;
    std::string heroIdx;
    std::int64_t enableDt = 0;
};

struct HeroOption {
    int id = 0;
    int heroNo = 0;
    int groupNo = 0;
    int optionSlot = 0;
    int optionNo = 0;
    int optionValue = 0;
    int optionType = 0;
    int optionLock = 0;
};

struct ChallengeMode {
    int clearStageNo = 0;
    std::string clearTaskNo;
};

struct Stage {
    int stageNo = 0;
    int stageType = 0;
    std::int64_t updateDt = 0;
};

struct Story {
    int storyNo = 0;
    std::int64_t updateDt = 0;
};

struct Tutorial {
    int tutorialNo = 0;
};

struct Dungeon {
    int dungeonNo = 0;
    std::int64_t updateDt = 0;
    int isFirstClear = 0;
};

struct Account {
    std::string id;
    std::string nickname;
    std::string player_id;
    std::string idp_code;
    std::string idp_id;
    std::int64_t created_at = 0;
    std::int64_t last_login = 0;
};

}  // namespace eversoul::orm
