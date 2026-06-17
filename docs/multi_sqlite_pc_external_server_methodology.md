# 에버소울 오프라인 PC 외부 서버 다중 SQLite3 방법론

## 목적

이 문서는 `D:\26_project\eversoul-offline`의 확인된 C++ 소스와 게임데이터 디렉터리 구조를 기준으로, 단일 계정 단일 DB 흐름을 PC 외부 서버의 계정별 다중 SQLite3 구조로 전환하기 위한 구현 방법론을 정의한다. 대상 데이터는 다음 네 경로다.

- `schema/`: 엔드포인트별 응답 프로토콜 스키마
- `responses/`: 성장 계정 기준 게임 응답 JSON
- `responses_newbie/`: 신규 계정 기준 게임 응답 JSON
- `wss/`: WebSocket 세션 및 채팅 응답 JSON

문서의 기준은 실제 파일과 실제 스키마다. 계정 생성, 조회, 수정, 복사, 가져오기, 내보내기, 삭제가 모두 PC 서버의 DB와 파일시스템 단위로 검증 가능해야 한다.

## 서버 방식 기준

이 프로젝트의 서버는 Android 앱 내부 서버가 아니다. 기준 구조는 PC에서 실행되는 외부 서버 방식이다.

- 게임 클라이언트는 네트워크 리다이렉션을 통해 PC 서버로 요청한다.
- C++ 서버 프로세스가 PC에서 `schema/`, `responses/`, `responses_newbie/`, `wss/`를 읽는다.
- 계정 상태 DB도 PC 서버의 상태 디렉터리에 저장한다.
- Android 쪽 코드는 리다이렉션과 훅 계층이며, 계정 상태 저장소의 기준 위치가 아니다.
- `config().data_dir`는 게임데이터 루트이고, 계정 DB 상태 루트는 별도의 `state_dir`로 분리해야 한다.

## 확인된 현재 구조

### 게임데이터 로딩 흐름

- `src/offline_data.hpp`와 `src/offline_data.cpp`는 `libofflinedata.so` 아카이브를 우선 읽고, 없으면 `config().data_dir` 아래의 파일 디렉터리를 읽는다. PC 외부 서버 방식의 기본 기준은 파일 디렉터리 로딩이다.
- `OfflineData::read()`는 `responses/<Endpoint>.json`, `responses_newbie/<Endpoint>.json`, `schema/<Endpoint>.json`, `wss/*.json`, `web/*`를 상대 경로로 읽는다.
- `src/fixture_store.cpp`는 `responses/`와 `responses_newbie/`를 각각 순회하고, `schema/<Endpoint>.json`으로 JSON 응답을 프로토콜 페이로드로 인코딩한다.
- `src/ws_session.cpp`는 `wss/session_replies.json`과 `wss/chat_engineio.json`을 읽고 WebSocket 응답을 만든다.
- 현재 `tools/pack_offline_data.py`는 `responses`, `responses_newbie`, `schema`, `web`, `wss/session_replies.json`, `wss/chat_engineio.json`을 아카이브로 묶는다. 이 아카이브는 배포 옵션이며, PC 외부 서버 상태 DB 설계의 기준 저장소가 아니다. `wss/live-sea-chat.json`, `wss/session-zinny3.json`도 게임데이터로 관리하려면 패키징 목록과 로더 정책에 포함해야 한다.

### 데이터 수량

현재 파일 수 확인 결과는 다음과 같다.

- `schema/*.json`: 159개
- `responses/*.json`: 102개, `_manifest.json`의 엔드포인트 항목은 101개
- `responses_newbie/*.json`: 156개, `_manifest.json`의 엔드포인트 항목은 155개
- `wss/*.json`: 4개

`responses/_manifest.json` 기준 형식 분포는 `proto` 90개, `empty` 11개다. `responses_newbie/_manifest.json` 기준 형식 분포는 `proto` 121개, `empty` 34개다.

### 현재 DB 흐름

- `src/orm/storage.cpp`는 `sqlite_orm` 기반 `g_storage` 전역 포인터 하나를 사용한다.
- `ensure_ready_locked()`는 이미 `g_storage`가 열려 있으면 그대로 반환한다.
- 기본 파일 후보는 `eversoul_orm.db` 하나의 논리 DB다.
- `src/account_db.cpp`에는 raw `sqlite3* g_db` 기반 `eversoul_offline.db` 흐름이 남아 있다.
- `src/router.cpp`의 `/web/api/accounts`는 `offline-single` 단일 계정만 반환한다.
- `full/newbie` 선택은 계정 DB 분리가 아니라 `kv.account_mode` 값으로 `responses`와 `responses_newbie`를 고르는 방식이다.

현재 구조는 계정별 다중 SQLite3가 아니다.

## 목표 구조

목표는 읽기 전용 게임데이터와 계정별 가변 상태를 완전히 분리하는 것이다.

읽기 전용 게임데이터 루트:

- `schema/`
- `responses/`
- `responses_newbie/`
- `wss/`
- 선택적 배포 아카이브 `libofflinedata.so`

가변 PC 서버 상태 루트:

- Windows 개발 환경: 명시된 PC 서버 상태 루트 아래
- 권장 기본값: `D:\26_project\eversoul-offline\runtime_state`
- 게임데이터 루트인 `config().data_dir`와 계정 상태 루트인 `config().state_dir`를 혼합하지 않는다.
- Android 앱 내부 저장소, `/sdcard`, `/data/data`는 계정 DB 기본 위치가 아니다.

권장 루트:

```text
<pc_server_state_root>/
  catalog.sqlite3
  accounts.sqlite3
  accounts/
    <account_id>/
      state.sqlite3
      session.sqlite3
      export/
      backup/
```

각 파일의 책임:

- `catalog.sqlite3`: 게임데이터 카탈로그, 스키마 색인, 응답 메타데이터, WebSocket JSON 색인
- `accounts.sqlite3`: 계정 목록, 활성 계정, 계정별 DB 경로, 삭제 상태, 생성 시간, 복사 출처
- `accounts/<account_id>/state.sqlite3`: 해당 계정의 영구 게임 상태
- `accounts/<account_id>/session.sqlite3`: 로그인 세션, WebSocket 세션, 진행 중 던전 상태, 요청 추적

이 구조에서는 계정 전환이 `g_storage` 재사용이 아니라 `AccountDatabaseManager`가 활성 계정의 `state.sqlite3` 핸들을 닫고 새 계정 핸들을 여는 동작이어야 한다.

## PC 서버 파일시스템 규칙

1. 계정 ID는 파일명 안전 문자열이어야 한다.
2. 계정 디렉터리 경로는 `accounts.sqlite3`에 저장된 `account_id`와 `state_db_relpath`로만 해석한다.
3. 사용자가 전달한 경로를 직접 결합하지 않는다.
4. `..`, 절대 경로, 드라이브 문자를 계정 파일 작업에서 허용하지 않는다.
5. 계정 삭제는 DB 핸들 닫기, `accounts.sqlite3` 상태 갱신, 디렉터리 제거 순서로 처리한다.
6. 계정 복사는 `sqlite3_backup` 또는 `VACUUM INTO`로 수행하고, 복사본의 `account_meta.account_id`와 표시 이름을 새 값으로 갱신한다.
7. 파일 쓰기는 같은 디렉터리 안에서 새 파일 기록, 동기화, 원자적 교체 순서로 처리한다.
8. `schema/`, `responses/`, `responses_newbie/`, `wss/`는 계정 CRUD로 수정하지 않는다.
9. PC 서버 상태 루트 밖의 파일은 계정 CRUD 대상이 아니다.
10. 클라이언트 또는 웹 UI에서 받은 상대 경로는 반드시 PC 서버 상태 루트 안으로 정규화되어야 한다.

## 게임데이터 카탈로그 DB

`catalog.sqlite3`는 JSON 파일을 런타임마다 반복 파싱하지 않고, 엔드포인트 검색과 검증을 빠르게 하기 위한 읽기 중심 DB다. 원본 JSON은 계속 신뢰 기준으로 유지한다.

### `catalog_meta`

```sql
CREATE TABLE catalog_meta (
  key TEXT PRIMARY KEY,
  value TEXT NOT NULL
);
```

필수 키:

- `schema_file_count`
- `responses_file_count`
- `responses_newbie_file_count`
- `wss_file_count`
- `catalog_version`
- `source_hash`

### `catalog_file`

```sql
CREATE TABLE catalog_file (
  rel_path TEXT PRIMARY KEY,
  group_name TEXT NOT NULL,
  byte_size INTEGER NOT NULL,
  sha256 TEXT NOT NULL,
  loaded_at_ms INTEGER NOT NULL
);
```

`group_name` 값:

- `schema`
- `responses`
- `responses_newbie`
- `wss`
- `web`

### `catalog_endpoint`

```sql
CREATE TABLE catalog_endpoint (
  endpoint TEXT NOT NULL,
  profile TEXT NOT NULL,
  rel_path TEXT NOT NULL,
  format TEXT NOT NULL,
  hits INTEGER NOT NULL DEFAULT 0,
  resp_bytes INTEGER NOT NULL DEFAULT 0,
  empty INTEGER NOT NULL DEFAULT 0,
  has_request_proto INTEGER NOT NULL DEFAULT 0,
  has_response_proto INTEGER NOT NULL DEFAULT 0,
  roundtrip INTEGER NOT NULL DEFAULT 0,
  request_decoded_json TEXT,
  encoded_payload BLOB,
  PRIMARY KEY(endpoint, profile),
  FOREIGN KEY(rel_path) REFERENCES catalog_file(rel_path)
);
```

`profile` 값:

- `full`: `responses/<Endpoint>.json`
- `newbie`: `responses_newbie/<Endpoint>.json`

### `catalog_schema`

```sql
CREATE TABLE catalog_schema (
  endpoint TEXT PRIMARY KEY,
  root_message TEXT NOT NULL,
  rel_path TEXT NOT NULL,
  sha256 TEXT NOT NULL,
  FOREIGN KEY(rel_path) REFERENCES catalog_file(rel_path)
);
```

### `catalog_schema_message`

```sql
CREATE TABLE catalog_schema_message (
  endpoint TEXT NOT NULL,
  message_name TEXT NOT NULL,
  PRIMARY KEY(endpoint, message_name),
  FOREIGN KEY(endpoint) REFERENCES catalog_schema(endpoint)
);
```

### `catalog_schema_field`

```sql
CREATE TABLE catalog_schema_field (
  endpoint TEXT NOT NULL,
  message_name TEXT NOT NULL,
  field_number INTEGER NOT NULL,
  field_name TEXT NOT NULL,
  field_type TEXT NOT NULL,
  type_name TEXT,
  repeated INTEGER NOT NULL,
  packed INTEGER NOT NULL,
  PRIMARY KEY(endpoint, message_name, field_number),
  UNIQUE(endpoint, message_name, field_name),
  FOREIGN KEY(endpoint, message_name)
    REFERENCES catalog_schema_message(endpoint, message_name)
);
```

이 테이블은 `schema/<Endpoint>.json`의 `root`, `messages`, `fields` 구조를 그대로 저장한다.

### `catalog_schema_enum`

```sql
CREATE TABLE catalog_schema_enum (
  endpoint TEXT NOT NULL,
  enum_name TEXT NOT NULL,
  member_name TEXT NOT NULL,
  member_number INTEGER NOT NULL,
  PRIMARY KEY(endpoint, enum_name, member_name),
  UNIQUE(endpoint, enum_name, member_number),
  FOREIGN KEY(endpoint) REFERENCES catalog_schema(endpoint)
);
```

### `catalog_wss`

```sql
CREATE TABLE catalog_wss (
  rel_path TEXT PRIMARY KEY,
  host TEXT,
  json_body TEXT NOT NULL,
  sha256 TEXT NOT NULL,
  FOREIGN KEY(rel_path) REFERENCES catalog_file(rel_path)
);
```

### `catalog_wss_reply`

```sql
CREATE TABLE catalog_wss_reply (
  rel_path TEXT NOT NULL,
  topic TEXT NOT NULL,
  meta_template_json TEXT NOT NULL,
  body_json TEXT NOT NULL,
  PRIMARY KEY(rel_path, topic),
  FOREIGN KEY(rel_path) REFERENCES catalog_wss(rel_path)
);
```

## 계정 인덱스 DB

`accounts.sqlite3`는 모든 계정의 목록과 활성 상태를 가진다. 게임 상태는 직접 저장하지 않는다.

### `account_registry`

```sql
CREATE TABLE account_registry (
  account_id TEXT PRIMARY KEY,
  display_name TEXT NOT NULL,
  player_id TEXT NOT NULL,
  idp_code TEXT NOT NULL,
  profile_source TEXT NOT NULL,
  state_db_relpath TEXT NOT NULL,
  session_db_relpath TEXT NOT NULL,
  created_at_ms INTEGER NOT NULL,
  updated_at_ms INTEGER NOT NULL,
  last_login_at_ms INTEGER,
  source_account_id TEXT,
  deleted_at_ms INTEGER,
  UNIQUE(player_id, idp_code)
);
```

`profile_source` 값:

- `responses`
- `responses_newbie`
- `imported_userinfo`
- `copied_account`

### `active_account`

```sql
CREATE TABLE active_account (
  singleton_id INTEGER PRIMARY KEY CHECK(singleton_id = 1),
  account_id TEXT NOT NULL,
  switched_at_ms INTEGER NOT NULL,
  FOREIGN KEY(account_id) REFERENCES account_registry(account_id)
);
```

### `account_operation_log`

```sql
CREATE TABLE account_operation_log (
  op_id INTEGER PRIMARY KEY AUTOINCREMENT,
  account_id TEXT,
  operation TEXT NOT NULL,
  status TEXT NOT NULL,
  detail_json TEXT,
  created_at_ms INTEGER NOT NULL
);
```

`operation` 값:

- `create`
- `read`
- `update`
- `copy`
- `import`
- `export`
- `delete`
- `select`

## 계정 상태 DB

`state.sqlite3`는 `schema/UserInfo.json`의 실제 메시지 구조를 기준으로 설계한다. 현재 스키마에서 확인된 `UserInfo` 루트 필드는 다음이다.

```text
1 user:sUser
2 currency:sCurrencyAll
3 hero[]:sHero
4 heroEquip[]:sHeroEquipAll
5 stage[]:sStage
6 zodiac[]:sZodiac
7 formation[]:sFormation
8 heroReputation[]:sHeroReputation
9 autoHunt:sAutoHunt
10 spiritTree[]:sSpiritTree
11 building[]:sBuilding
12 dailyContent:sDailyContent
13 talk[]:sTalk
14 tutorial[]:sTutorial
15 story[]:sStory
17 itemEquip[]:sItemEquip
18 itemEtc[]:sItemEtc
19 guild:sGuild
20 guildMember[]:sGuildMember
21 guildJoinRequest[]:sGuildJoinRequest
22 doubleGate[]:sDoubleGate
23 secureSeed:int64
24 lobbyBackground:sLobbyBackground
25 dungeonList:sDungeonList
26 bgm:sBGM
27 buff[]:sContentBuff
28 chatKey:string
29 collectionNo[]:int32
30 dungeonFirstRewardList[]:sDungeonFirstReward
31 chatServerUrl:string
32 sdHeroNo:int32
33 speed:int32
34 battleAutoActive:int32
36 cashDailyN[]:sCashDailyN
37 battleAutoUltimate:int32
38 scalingLevel:int32
39 lastClearDungeonLevel:int32
40 townVisitHero[]:sTownVisitHero
41 monthlyHeroResetFlag:int32
42 tutorialStory[]:sTutorialStory
43 challengeMode[]:sChallengeMode
44 arkCore[]:sArkCore
45 actionActive:int32
46 actionUltimate:int32
47 contentLimitNo[]:int32
48 arkOverClockLevel:int32
49 arkOperator:int32
50 doubleGateDailyContent[]:DoubleGateDailyContent
51 heroOption[]:sHeroOption
52 arbeitOption:sArbeitOption
```

현재 동적 빌더가 직접 쓰는 필드는 `user`, `currency`, `hero`, `heroEquip`, `stage`, `formation`, `heroReputation`, `autoHunt`, `spiritTree`, `tutorial`, `story`, `itemEquip`, `itemEtc`, `challengeMode`, `heroOption`, `dungeonList`다. 완전 구조에서는 나머지 필드도 원본 보존 테이블 또는 정규화 테이블에 들어가야 한다.

### `account_meta`

```sql
CREATE TABLE account_meta (
  key TEXT PRIMARY KEY,
  value TEXT NOT NULL
);
```

필수 키:

- `account_id`
- `schema_endpoint`
- `schema_sha256`
- `seed_source`
- `created_at_ms`
- `updated_at_ms`
- `account_mode`

### `user_profile`

`schema/UserInfo.json`의 `sUser` 기준이다.

```sql
CREATE TABLE user_profile (
  singleton_id INTEGER PRIMARY KEY CHECK(singleton_id = 1),
  idx TEXT NOT NULL,
  nick_name TEXT,
  last_login_dt INTEGER,
  channel_no INTEGER,
  tree_level INTEGER,
  is_log INTEGER,
  about TEXT,
  return_user_dt INTEGER,
  created_dt INTEGER,
  popularity INTEGER,
  is_first_cash_buy INTEGER,
  review_flag INTEGER,
  review_dt INTEGER,
  equip_flag INTEGER,
  payment_agree_dt INTEGER,
  payment_agree_type INTEGER,
  first_title INTEGER,
  second_title INTEGER
);
```

### `user_thumbnail`

`sThumbnail` 기준이다.

```sql
CREATE TABLE user_thumbnail (
  singleton_id INTEGER PRIMARY KEY CHECK(singleton_id = 1),
  thumbnail_frame INTEGER,
  thumbnail_image INTEGER,
  use_custom INTEGER NOT NULL DEFAULT 0,
  thumbnail BLOB,
  first_title INTEGER,
  second_title INTEGER
);
```

### `currency`

`sCurrencyAll.allCurrency[]`와 `sCurrency` 기준이다.

```sql
CREATE TABLE currency (
  type INTEGER PRIMARY KEY,
  enum_name TEXT,
  value INTEGER NOT NULL DEFAULT 0
);
```

`E_CURRENCY` 확인 값 일부:

```text
Gold=1
FreeDia=2
ManaDust=3
ManaCrystal=4
Exp=5
Heart=6
LifeEssence=8
ArenaTicket=9
Dungeon=10
Guild=11
Release=12
Arena=13
Relics=14
Silver=16
SingleRaidCoin=18
NormalTicket=28
PayDia=42
SignatureGachaTicket=45
PremiumGachaTicket=46
```

### `hero`

`sHero` 기준이다.

```sql
CREATE TABLE hero (
  idx TEXT PRIMARY KEY,
  hero_no INTEGER NOT NULL,
  level INTEGER NOT NULL,
  is_resonance INTEGER NOT NULL DEFAULT 0,
  grade_sno INTEGER NOT NULL DEFAULT 0,
  race_sno INTEGER NOT NULL DEFAULT 0,
  is_lock INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX idx_hero_hero_no ON hero(hero_no);
```

### `hero_reputation`

`sHeroReputation` 기준이다.

```sql
CREATE TABLE hero_reputation (
  hero_no INTEGER PRIMARY KEY,
  reputation INTEGER NOT NULL DEFAULT 0,
  state INTEGER NOT NULL DEFAULT 0,
  stress INTEGER NOT NULL DEFAULT 0,
  last_update_dt INTEGER,
  gift_dt INTEGER,
  costume_item_no INTEGER,
  story_reward INTEGER,
  max_grade_sno INTEGER,
  objet_uid INTEGER,
  max_level_dt INTEGER,
  arbeit_exp INTEGER,
  priority INTEGER,
  rest_finish_dt INTEGER,
  objet_no TEXT
);
```

### `item_etc`

`sItemEtc` 기준이다.

```sql
CREATE TABLE item_etc (
  item_no INTEGER PRIMARY KEY,
  cnt INTEGER NOT NULL DEFAULT 0
);
```

### `item_equip`

`sItemEquip` 기준이다.

```sql
CREATE TABLE item_equip (
  id INTEGER PRIMARY KEY,
  item_no INTEGER NOT NULL,
  exp INTEGER NOT NULL DEFAULT 0
);
```

### `hero_equip_slot`

`sHeroEquipAll`과 `sSlotAndEquipId` 기준이다.

```sql
CREATE TABLE hero_equip_slot (
  hero_idx TEXT NOT NULL,
  slot INTEGER NOT NULL,
  item_equip_id INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY(hero_idx, slot),
  FOREIGN KEY(hero_idx) REFERENCES hero(idx),
  FOREIGN KEY(item_equip_id) REFERENCES item_equip(id)
);
```

### `stage`

`sStage` 기준이다.

```sql
CREATE TABLE stage (
  stage_no INTEGER PRIMARY KEY,
  stage_type INTEGER NOT NULL,
  update_dt INTEGER NOT NULL
);
```

### `story`

`sStory` 기준이다.

```sql
CREATE TABLE story (
  story_no INTEGER PRIMARY KEY,
  update_dt INTEGER NOT NULL
);
```

### `tutorial`

`sTutorial` 기준이다.

```sql
CREATE TABLE tutorial (
  tutorial_no INTEGER PRIMARY KEY
);
```

### `formation`

`sFormation` 기준이다. 현재 구현의 CSV 저장은 정규화해야 한다.

```sql
CREATE TABLE formation (
  no INTEGER NOT NULL,
  kind INTEGER NOT NULL,
  formation_type INTEGER NOT NULL DEFAULT 0,
  formation_name TEXT,
  PRIMARY KEY(no, kind)
);

CREATE TABLE formation_hero (
  no INTEGER NOT NULL,
  kind INTEGER NOT NULL,
  position INTEGER NOT NULL,
  hero_idx TEXT NOT NULL,
  PRIMARY KEY(no, kind, position),
  FOREIGN KEY(no, kind) REFERENCES formation(no, kind),
  FOREIGN KEY(hero_idx) REFERENCES hero(idx)
);
```

### `formation_relic`

`sRelic` 기준이다.

```sql
CREATE TABLE formation_relic (
  no INTEGER NOT NULL,
  kind INTEGER NOT NULL,
  type INTEGER,
  formation INTEGER,
  relic_order INTEGER,
  relic_no INTEGER,
  PRIMARY KEY(no, kind),
  FOREIGN KEY(no, kind) REFERENCES formation(no, kind)
);
```

### `spirit_tree`

`sSpiritTree` 기준이다.

```sql
CREATE TABLE spirit_tree (
  slot_no INTEGER PRIMARY KEY,
  hero_idx TEXT,
  enable_dt INTEGER
);
```

### `hero_option`

`sHeroOption` 기준이다.

```sql
CREATE TABLE hero_option (
  hero_no INTEGER NOT NULL,
  group_no INTEGER NOT NULL,
  option_slot INTEGER NOT NULL,
  option_no INTEGER NOT NULL,
  option_value INTEGER NOT NULL,
  option_type INTEGER NOT NULL,
  option_lock INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY(hero_no, group_no, option_slot)
);
```

### `challenge_mode`

`sChallengeMode` 기준이다.

```sql
CREATE TABLE challenge_mode (
  clear_stage_no INTEGER PRIMARY KEY
);

CREATE TABLE challenge_mode_task (
  clear_stage_no INTEGER NOT NULL,
  task_order INTEGER NOT NULL,
  clear_task_no INTEGER NOT NULL,
  PRIMARY KEY(clear_stage_no, task_order),
  FOREIGN KEY(clear_stage_no) REFERENCES challenge_mode(clear_stage_no)
);
```

### `auto_hunt`

`sAutoHunt` 기준이다.

```sql
CREATE TABLE auto_hunt (
  singleton_id INTEGER PRIMARY KEY CHECK(singleton_id = 1),
  stage_no INTEGER,
  lab_dt INTEGER,
  receive_dt INTEGER
);
```

### `dungeon_list_state`

`sDungeonList`의 단일 상태 필드 기준이다.

```sql
CREATE TABLE dungeon_list_state (
  singleton_id INTEGER PRIMARY KEY CHECK(singleton_id = 1),
  rotation_dungeon_no INTEGER,
  rotation_dungeon_expire_dt INTEGER,
  labyrinth_expire_dt INTEGER,
  labyrinth_clear_cnt INTEGER,
  labyrinth_ticket_cnt INTEGER,
  rotation_dungeon_clear_cnt INTEGER,
  rotation_dungeon_ticket_cnt INTEGER
);
```

### `dungeon`

`sDungeon` 기준이다.

```sql
CREATE TABLE dungeon (
  id INTEGER,
  dungeon_no INTEGER PRIMARY KEY,
  dungeon_level INTEGER,
  x REAL,
  z REAL,
  map_info BLOB,
  condition_info BLOB,
  hero_info BLOB,
  additional_info BLOB,
  relic_info BLOB,
  is_enter INTEGER,
  is_clear INTEGER,
  is_first_clear INTEGER,
  mission_no INTEGER,
  mission_cnt INTEGER,
  seed INTEGER,
  dungeon_item BLOB,
  difficulty INTEGER,
  ultimate_point INTEGER,
  player_object_id INTEGER,
  use_ticket INTEGER,
  max_clear_level INTEGER,
  is_sweep INTEGER,
  is_perfect_clear INTEGER,
  is_hidden_key_not_available INTEGER,
  random_gimmick_seed INTEGER,
  update_dt INTEGER
);
```

### `dungeon_reward`

`sDungeonAndReward.dungeonReward[]`와 `sDungeonReward` 기준이다.

```sql
CREATE TABLE dungeon_reward (
  dungeon_no INTEGER NOT NULL,
  reward_order INTEGER NOT NULL,
  type INTEGER NOT NULL,
  reward_no INTEGER NOT NULL,
  PRIMARY KEY(dungeon_no, reward_order),
  FOREIGN KEY(dungeon_no) REFERENCES dungeon(dungeon_no)
);
```

### `dungeon_perfect_clear_record`

`sDungeonPerfectClearRecord` 기준이다.

```sql
CREATE TABLE dungeon_perfect_clear_record (
  type INTEGER NOT NULL,
  dungeon_no INTEGER NOT NULL,
  dungeon_level INTEGER NOT NULL,
  PRIMARY KEY(type, dungeon_no, dungeon_level)
);
```

### 원본 보존 테이블

아직 정규화하지 않은 `UserInfo` 필드는 원본 JSON 조각을 보존한다. 이렇게 해야 인코딩 시 데이터 손실이 없다.

```sql
CREATE TABLE userinfo_preserved_field (
  field_name TEXT PRIMARY KEY,
  field_number INTEGER NOT NULL,
  type_name TEXT,
  json_body TEXT NOT NULL,
  schema_sha256 TEXT NOT NULL,
  updated_at_ms INTEGER NOT NULL
);
```

보존 대상 예:

- `zodiac`
- `building`
- `dailyContent`
- `talk`
- `guild`
- `guildMember`
- `guildJoinRequest`
- `doubleGate`
- `secureSeed`
- `lobbyBackground`
- `bgm`
- `buff`
- `chatKey`
- `collectionNo`
- `dungeonFirstRewardList`
- `chatServerUrl`
- `sdHeroNo`
- `speed`
- `battleAutoActive`
- `cashDailyN`
- `battleAutoUltimate`
- `scalingLevel`
- `lastClearDungeonLevel`
- `townVisitHero`
- `monthlyHeroResetFlag`
- `tutorialStory`
- `arkCore`
- `actionActive`
- `actionUltimate`
- `contentLimitNo`
- `arkOverClockLevel`
- `arkOperator`
- `doubleGateDailyContent`
- `arbeitOption`

## 세션 DB

`session.sqlite3`는 계정 삭제 시 함께 제거되고, 계정 복사 시 선택적으로 복사한다.

### `session_kv`

```sql
CREATE TABLE session_kv (
  key TEXT PRIMARY KEY,
  value TEXT NOT NULL,
  updated_at_ms INTEGER NOT NULL
);
```

저장 대상:

- 현재 던전 ID
- 현재 던전 번호
- 로그인 시각
- WebSocket 세션 ID
- 마지막 요청 번호

### `request_journal`

```sql
CREATE TABLE request_journal (
  request_id INTEGER PRIMARY KEY AUTOINCREMENT,
  endpoint TEXT NOT NULL,
  request_payload BLOB,
  response_payload BLOB,
  status TEXT NOT NULL,
  created_at_ms INTEGER NOT NULL
);
```

요청 재현과 회귀 검증을 위해 응답 페이로드를 저장한다.

## 계정 CRUD 기준

### 생성

입력:

- 표시 이름
- `idp_code`
- `player_id`
- 시작 프로필: `responses` 또는 `responses_newbie`

처리:

1. `accounts.sqlite3` 트랜잭션 시작
2. 새 `account_id` 생성
3. `accounts/<account_id>/` 생성
4. `state.sqlite3` 생성
5. `schema/UserInfo.json`과 선택한 `responses*/UserInfo.json`을 읽어 `state.sqlite3`에 시드
6. `session.sqlite3` 생성
7. `account_registry` 삽입
8. 필요 시 `active_account` 갱신
9. 트랜잭션 커밋

검증:

- `state.sqlite3.account_meta.schema_sha256`이 `catalog_schema.UserInfo.sha256`과 일치
- `user_profile.idx`가 비어 있지 않음
- `currency`, `hero`, `item_etc`, `stage`, `tutorial` 테이블이 스키마 타입에 맞게 저장됨

### 조회

목록 조회:

- `accounts.sqlite3.account_registry`에서 `deleted_at_ms IS NULL` 조건으로 조회
- 활성 계정은 `active_account`와 조인

상세 조회:

- 계정 핸들 관리자가 해당 계정의 `state.sqlite3`를 읽기 전용 또는 읽기/쓰기 모드로 연다.
- `UserInfo` 응답은 `state.sqlite3`의 정규화 테이블과 `userinfo_preserved_field`를 결합해 만든다.
- `schema/UserInfo.json`의 필드 번호와 타입으로 인코딩한다.

### 수정

모든 수정은 엔드포인트 단위 트랜잭션이다.

예:

- `/UserNicknameChange`: `user_profile.nick_name` 수정
- `/FormationSave`: `formation`, `formation_hero`, `formation_relic` 수정
- `/HeroLevelUp`: `hero.level` 수정, 필요 재화 차감
- `/HeroUpgrade`: `hero.grade_sno`, `hero_reputation.max_grade_sno`, 소비 대상 갱신
- `/HeroGift`: `hero_reputation.reputation`, `hero_reputation.gift_dt`, `item_etc` 갱신
- `/HeroEquip`: `hero_equip_slot` 갱신
- `/HeroUnequip`: `hero_equip_slot.item_equip_id`를 0으로 갱신
- `/EquipItemUpgrade`: `item_equip.exp`, 재료 `item_etc` 갱신
- `/EquipItemTranscendence`: `item_equip.item_no`, 재료 `item_etc` 갱신
- `/SpiritTreeSlotEquip`: `spirit_tree.hero_idx`, `enable_dt` 갱신
- `/SpiritTreeSlotUnEquip`: `spirit_tree.hero_idx`, `enable_dt` 갱신
- `/GachaHero`: `hero`, `hero_reputation`, `currency`, `account_meta`의 뽑기 카운터 갱신
- `/GachaPremium`: `currency`, `item_etc`, 뽑기 카운터 갱신
- `/GachaSignature`: `currency`, `item_etc`, 시그니처 카운터 갱신
- `/ShopItemBuy`: `currency`, `item_etc`, 구매 횟수 갱신
- `/ItemUse`: `item_etc`, `currency`, 선택 보상 갱신
- `/TaskReceive`: 수령 상태와 보상 갱신
- `/AchievementAllReceive`: 업적 수령 상태와 보상 갱신
- `/MailItemAllReceive`: 메일 수령 상태와 보상 갱신
- `/ReceiveAttendance`: 출석 상태와 보상 갱신
- `/FriendHeartReceiveAll`: 우정 포인트 보상 갱신
- `/StageClear`: `stage`, `auto_hunt`, 보상 갱신
- `/StoryClear`: `story`, 보상 갱신
- `/DungeonEnter`: `session.sqlite3`의 현재 던전 상태 갱신
- `/DungeonInfoUpdate`: `session.sqlite3`의 진행 던전 페이로드 갱신
- `/DungeonClear`: `dungeon`, `dungeon_reward`, `tutorial`, 보상 갱신
- `/AutoHuntOpen`: 누적 보상 계산 결과 조회
- `/AutoHuntReceive`: `currency`, `auto_hunt.receive_dt` 갱신

수정 검증:

- 요청 스키마가 존재하면 요청 필드를 디코딩한 값으로만 갱신
- 응답 스키마가 존재하면 갱신된 DB에서 응답 페이로드를 생성
- 응답 스키마가 없는 엔드포인트는 스키마 추가 대상에 등록

### 복사

처리:

1. 원본 계정의 DB 핸들을 읽기 잠금으로 고정
2. 새 계정 ID와 디렉터리 생성
3. `sqlite3_backup` 또는 `VACUUM INTO`로 `state.sqlite3` 복사
4. `session.sqlite3`는 사용자가 세션까지 복사할 때만 복사
5. 새 `state.sqlite3.account_meta.account_id` 갱신
6. 표시 이름, `player_id`, `source_account_id` 갱신
7. `accounts.sqlite3.account_registry`에 새 계정 등록

검증:

- 원본과 복사본의 테이블 row count 일치
- 복사본의 `account_id`, 표시 이름, `player_id`는 새 값
- 원본 DB 파일의 해시가 복사 후에도 변하지 않음

### 가져오기

입력:

- `UserInfo.json`
- 대상 계정 또는 새 계정 생성 여부

처리:

1. `schema/UserInfo.json` 로드
2. 루트 필드와 하위 메시지 타입 검증
3. `state.sqlite3` 새 파일에 시드
4. 검증 성공 시 대상 계정 DB로 원자적 교체
5. 실패 시 기존 계정 DB 유지

검증:

- `json_encode_from_text(schema/UserInfo.json, imported_userinfo)` 성공
- `sCurrency.type`은 `E_CURRENCY` 이름 또는 숫자로 해석 가능
- `sHero.idx`, `sHero.heroNo`, `sHero.level`이 테이블 키 규칙에 맞음
- `sDungeonList.dungeonReward[].dungeon.dungeonNo`가 0이 아님

### 내보내기

처리:

1. 활성 계정의 `state.sqlite3`에서 `UserInfo` JSON 구성
2. `userinfo_preserved_field`의 원본 필드 결합
3. `schema/UserInfo.json`으로 인코딩 검증
4. `export/UserInfo_<account_id>_<timestamp>.json` 기록

내보내기 파일은 계정 DB의 현재 상태를 대표해야 하며, 원본 `responses*/UserInfo.json`을 그대로 복사하지 않는다.

### 삭제

처리:

1. `account_registry.deleted_at_ms` 갱신
2. 대상 계정이 활성 계정이면 다른 계정으로 전환하거나 활성 계정을 비운다.
3. 해당 계정의 모든 DB 핸들을 닫는다.
4. 계정 디렉터리를 제거한다.
5. `account_operation_log`에 결과 기록

검증:

- 삭제된 계정이 목록 조회에 나오지 않음
- 열린 핸들이 없음
- 디렉터리 제거 실패 시 `deleted_at_ms`와 실패 상세가 함께 기록됨

## 라우터 전환 기준

현재 `/web/api/accounts`는 `offline-single`만 반환한다. 전환 후에는 다음 API가 필요하다.

```text
GET    /web/api/accounts
POST   /web/api/accounts
GET    /web/api/accounts/<account_id>
PATCH  /web/api/accounts/<account_id>
POST   /web/api/accounts/<account_id>/select
POST   /web/api/accounts/<account_id>/copy
POST   /web/api/accounts/<account_id>/import
GET    /web/api/accounts/<account_id>/export
DELETE /web/api/accounts/<account_id>
```

반환 필드:

```json
{
  "id": "account_id",
  "nickname": "name",
  "idp_code": "zd3",
  "player_id": "431921183232",
  "active": true,
  "hero_count": 0,
  "created_at": 0,
  "updated_at": 0,
  "last_login": 0
}
```

계정 선택은 `kv.account_mode` 변경이 아니라 `accounts.sqlite3.active_account` 변경과 DB 핸들 전환이어야 한다.

## DB 핸들 관리

필수 클래스:

- `GameCatalog`
- `AccountRegistry`
- `AccountDatabase`
- `AccountDatabaseManager`
- `AccountCrudService`
- `UserInfoRepository`
- `EndpointMutationService`

`AccountDatabaseManager` 책임:

1. 활성 계정 ID 조회
2. 계정별 `state.sqlite3`와 `session.sqlite3` 열기
3. 열린 핸들 교체
4. 쓰기 트랜잭션 직렬화
5. 계정 삭제와 복사 시 핸들 해제

전역 `g_storage` 단일 포인터는 계정별 핸들로 대체해야 한다. raw `sqlite3* g_db` 단일 DB 흐름도 제거 대상이다.

## 트랜잭션과 성능 설정

각 DB 파일 공통 설정:

```sql
PRAGMA journal_mode = WAL;
PRAGMA synchronous = NORMAL;
PRAGMA foreign_keys = ON;
PRAGMA busy_timeout = 5000;
```

계정 수정:

- 엔드포인트 요청 하나는 하나의 쓰기 트랜잭션이다.
- 응답 페이로드 생성은 같은 트랜잭션의 갱신 이후 같은 계정 DB에서 읽는다.
- 응답 생성 실패 시 트랜잭션을 커밋하지 않는다.

조회:

- 계정 목록은 `accounts.sqlite3`만 읽는다.
- `UserInfo` 생성은 활성 계정의 `state.sqlite3`만 읽는다.
- 정적 응답은 `catalog.sqlite3` 또는 `OfflineData`에서 읽는다.

인덱스:

- `hero(hero_no)`
- `currency(type)`
- `stage(stage_no)`
- `story(story_no)`
- `tutorial(tutorial_no)`
- `item_etc(item_no)`
- `formation(no, kind)`
- `hero_equip_slot(hero_idx, slot)`
- `request_journal(endpoint, created_at_ms)`

## JSON 스키마 검증 규칙

`schema/<Endpoint>.json`의 필수 구조:

```json
{
  "root": "MessageName",
  "messages": {
    "MessageName": {
      "fields": [
        {
          "name": "fieldName",
          "number": 1,
          "repeated": false,
          "type": "message",
          "type_name": "NestedMessage",
          "packed": false
        }
      ]
    }
  },
  "enums": {}
}
```

DB 생성 시 규칙:

- `messages.*.fields[].number`는 같은 메시지 안에서 유일해야 한다.
- `messages.*.fields[].name`은 같은 메시지 안에서 유일해야 한다.
- `type=message`는 `type_name`이 `messages`에 존재해야 한다.
- `type=enum`은 `type_name`이 `enums`에 존재해야 한다.
- `repeated=true`와 `packed=true`는 숫자 스칼라 또는 enum에만 허용한다.
- `int64`, `uint64`, `fixed64`, `sfixed64`는 JSON에서 문자열과 숫자를 모두 읽되 DB에는 INTEGER로 저장한다.
- `bytes`는 JSON에서 base64 문자열로 받고 DB에는 BLOB으로 저장한다.
- enum은 JSON 이름과 숫자를 모두 허용하되 DB에는 숫자와 이름을 함께 저장한다.

## 누락 스키마 처리

현재 라우터의 동적 핸들러 중 일부 엔드포인트는 `schema/<Endpoint>.json`이 없다. 완전한 응답 CRUD를 위해 다음 처리가 필요하다.

- `HeroEquip`
- `HeroUnequip`
- `EquipItemUpgrade`
- `EquipItemTranscendence`
- `SpiritTreeSlotEquip`
- `GachaPremium`
- `ShopItemBuy`
- `TaskReceive`

이 항목은 `ProtocolBuffers/<지역>/Response`와 `ProtocolBuffers/<지역>/Request`에서 스키마를 생성해야 한다. 생성 후 `catalog_schema`, `catalog_schema_field`, `catalog_endpoint`에 반영하고, 동적 응답 생성도 해당 스키마로 검증해야 한다.

## 써드파티와 외부 언어

런타임 C++ 계층:

- `third_party/sqlite/sqlite3.c`: 유지
- `third_party/sqlite_orm/sqlite_orm.h`: 유지하거나 계정별 핸들 관리가 어려운 영역은 raw SQLite 래퍼로 정리
- 외부 암호화 라이브러리는 필수 아님. 현재 `src/crypto.cpp`가 SHA, HMAC, base64를 자체 제공한다.

도구 계층:

- Python 3은 스키마 생성과 캡처 변환에 사용한다.
- `google.protobuf`는 `tools/export_schema.py`, `tools/har_to_json.py`, `tools/verify_pipeline.py`에 필요하다.
- Python 의존성은 런타임과 분리하고 `third_party/tools/python_requirements.txt` 또는 동등한 고정 파일로 관리한다.
- `tools/export_schema.py`는 `schema/*.json` 생성의 기준 도구다.
- `tools/har_to_json.py`는 `responses`, `responses_newbie`, `wss` 원본 갱신 도구다.
- `tools/verify_pipeline.py`는 JSON 응답과 프로토콜 페이로드 재현성 검증 도구다.
- `tools/pack_offline_data.py`는 배포용 게임데이터 아카이브 생성 도구다.

추가가 필요한 써드파티 항목:

- SQLite 온라인 백업 API 사용을 명시한 C++ 래퍼 모듈
- Windows PC 서버 파일시스템에서 동작하는 안전 경로 정규화 유틸리티
- 도구용 Python 의존성 고정 파일
- 스키마 생성 결과를 검증하는 도구 전용 테스트 데이터

## 구현 순서

1. `Config`에 PC 서버 상태 루트인 `state_dir` 추가
2. `AccountRegistry`와 `accounts.sqlite3` 생성
3. `GameCatalog`와 `catalog.sqlite3` 생성
4. `state.sqlite3` 스키마 생성
5. `schema/UserInfo.json` 기반 시드 로더 작성
6. `UserInfoRepository` 작성
7. `AccountDatabaseManager`로 활성 계정 핸들 전환
8. `/web/api/accounts` CRUD 전환
9. `db::build_user_info()`를 활성 계정 DB 기반으로 전환
10. 상태 변경 엔드포인트를 `EndpointMutationService`로 이동
11. 누락 응답 스키마 생성
12. 계정 복사, 가져오기, 내보내기, 삭제 검증
13. raw `sqlite3* g_db` 단일 DB 경로 제거
14. 단일 `g_storage` 포인터 제거

## 완료 판정 기준

다음 조건이 모두 만족되어야 한다.

- 계정 두 개 이상을 생성할 수 있다.
- 계정별 `state.sqlite3` 파일이 PC 서버 `state_dir/accounts/<account_id>/` 아래 서로 다른 디렉터리에 존재한다.
- 계정 선택 후 `/UserInfo`가 선택 계정의 DB에서만 생성된다.
- 계정 A 수정 후 계정 B의 `state.sqlite3` 해시가 변하지 않는다.
- 계정 복사 후 원본과 복사본의 상태 row count가 일치한다.
- 복사본 수정 후 원본 DB가 변하지 않는다.
- 계정 삭제 후 목록 조회에서 제거되고, 해당 계정 핸들이 닫힌다.
- `responses`와 `responses_newbie` 원본 파일이 계정 CRUD로 변경되지 않는다.
- 모든 동적 엔드포인트 응답이 스키마 또는 명시된 바이너리 생성 규칙으로 검증된다.
- `schema/UserInfo.json`의 보존 대상 필드가 내보내기 JSON에서 사라지지 않는다.

## 금지 기준

- 파일명만 보고 DB 테이블을 생성하지 않는다.
- `responses/UserInfo.json` 전체를 계정 상태로 계속 복사해서 쓰지 않는다.
- 계정 선택을 `account_mode` 문자열 하나로 처리하지 않는다.
- 계정별 DB를 전역 포인터 하나로 고정하지 않는다.
- Android 외부 저장소나 앱 내부 저장소를 계정 DB 기본 위치로 사용하지 않는다.
- 삭제를 목록에서만 숨기는 방식으로 처리하지 않는다.
- 복사를 JSON 내보내기와 다시 가져오기로 처리하지 않는다.
- 스키마 없는 동적 응답을 성공 처리로 간주하지 않는다.
