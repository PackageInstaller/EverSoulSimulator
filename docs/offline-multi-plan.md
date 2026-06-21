# 완전 오프라인 백엔드 및 멀티계정 구현 사실 검증 수정본

작성일: 2026-06-21  
대상 문서: `docs/offline-multi-plan.md`  
대조 대상: `src/router.cpp`, `src/account_registry.cpp`, `src/account_database.cpp`, `src/account_db.cpp`, `src/account_db_manager.cpp`, `src/endpoint_mutation_service.hpp`, `src/endpoint_mutation_service.cpp`, `src/userinfo_repository.cpp`, `src/ws_session.cpp`, `src/web/src`, `CMakeLists.txt`, `ba.ps1`, `bs.ps1`, 데이터 디렉터리  
검증 방식: 정적 소스 대조. 빌드, 개발 서버, 게임 실행, 테스트 실행 없음.

## 1. 문서 수정 결론

기존 문서의 방향 중 다음은 사실로 유지한다.

- Windows 서버가 `9991`에서 Web/API/game endpoint를 처리한다.
- Android hook은 Java URL, OkHttp, IL2CPP, libc 계층을 로컬 서버로 유도한다.
- 멀티계정 registry, 계정별 `state.sqlite3`, endpoint mutation, UserInfo 재구성 계층은 이미 존재한다.
- full 모드에서는 `prefer_fixtures=true`와 fixture 존재 여부 때문에 DB-backed handler가 가려질 수 있다.
- 게임용 계정 선택 화면은 React가 아니라 legacy HTML로 제공된다.

다음은 기존 문서에서 수정했다.

- 라우팅 선행순위가 잘못 기록되어 있었다. 실제 순서는 fixture 다음에 DB handler가 오고, 그 뒤에 session harvested와 harvested fallback이 온다.
- `preserved_field` 개수는 32개가 아니라 37개다.
- `responses/`의 schema 누락은 manifest 제외 기준 11개이며, `responses_newbie/`는 24개다.
- `eversoul_offline_server`는 현재 CMake target이 아니다.
- 인증/session 계획은 기존 `account_session` 테이블을 반영해야 한다.
- `AutoHuntOpen`과 `GachaHeroTutorial`의 DB 기록 상태를 함수 단위로 교정했다.

## 2. 현재 런타임 아키텍처

```text
Android 게임
  -> Android hook 계층
     Java URL / OkHttp / UnityWebRequest / connect-getaddrinfo redirect
  -> 127.0.0.1:9991
  -> Windows 서버 route_request()
     -> /web, /web/api/*
     -> account select legacy HTML
     -> Kakao OpenApi/Infodesk 고정 또는 동적 응답
     -> game protobuf endpoint
     -> WebSocket session/chat 응답
```

근거:

- 포트 상수: `src/common.hpp:12-13`
- 서버 시작 시 fixture/WS/DB bootstrap: `src/server.cpp:139-147`
- routing entry: `src/router.cpp:1519-1532`
- Android target: `CMakeLists.txt:119-152`
- desktop target: `CMakeLists.txt:201-300`

## 3. 사실 검증표

| 영역 | 현재 사실 | 근거 |
| --- | --- | --- |
| 포트 | `kDefaultPort=9999`, `kServerListenPort=9991` | `src/common.hpp:12-13` |
| fixture 기본값 | desktop/Android 모두 `prefer_fixtures=true` | `src/common.hpp:39-50` |
| 서버 bootstrap | fixture, WS fixture, ORM/account DB 준비 후 listen | `src/server.cpp:139-147`, `:184-198` |
| registry DB | `account_registry`, `active_account`, `account_operation_log`, `account_session` 4테이블 | `src/account_registry.cpp:66-127` |
| 계정 state DB | `state.sqlite3`에 25개 테이블 생성 | `src/account_database.cpp:108-348` |
| endpoint mutation | public mutation/build method 32개 | `src/endpoint_mutation_service.hpp:16-62` |
| UserInfo 재구성 | active account DB에서 payload 생성 | `src/account_db.cpp:24-28`, `src/userinfo_repository.cpp:480-580` |
| account API backend | list/create/get/patch/select/copy/export/import/session/delete 존재 | `src/router.cpp:1121-1480` |
| AccountsPage 사용 API | list/create/select/delete/patch/import 사용 | `src/web/src/pages/AccountsPage.tsx:40-103` |
| AccountsPage 미사용 API | 개별 GET, copy, export, session PATCH 미사용 | `src/router.cpp:1208-1458`, `src/web/src/pages/AccountsPage.tsx:40-103` |
| 게임 계정 선택 | `/account-select`는 legacy HTML 반환 | `src/router.cpp:89-100`, `:1547-1552` |
| React nav | `account-select` page 없음 | `src/web/src/types/nav.ts:3-14`, `src/web/src/App.tsx:16-29` |
| WS fixture loader | `session_replies.json`, `chat_engineio.json`만 로드 | `src/ws_session.cpp:53-83` |
| WS session 주입 | active account의 `account_session` 값을 응답 meta/body에 주입 | `src/ws_session.cpp:97-114`, `:155-180` |
| current desktop target | `eversoul_gui`, `eversoul_console`, `eversoul_har_recorder` | `CMakeLists.txt:201-300` |
| current Android target | `swappywrapper`, `swappywrapper_har` | `CMakeLists.txt:119-176` |

## 4. 실제 게임 응답 선행순위

기존 문서의 `fixture -> session_harvested -> harvested -> db -> hardcoded` 순서는 틀렸다. 현재 `src/router.cpp` 기준 순서는 다음이다.

1. `/Login` 특수 처리. `prefer_fixtures`가 켜져 있고 fixture가 있으면 Login fixture를 반환한다.
   - 근거: `src/router.cpp:1787-1806`
2. `/ServerTime`은 항상 동적 응답이다.
   - 근거: `src/router.cpp:1809-1816`
3. newbie 모드의 일부 stateful endpoint는 fixture gate 전에 DB/동적 처리된다.
   - 근거: `src/router.cpp:1818-1876`
4. full 모드에서 tutorial endpoint는 비활성 응답을 반환한다.
   - 근거: `src/router.cpp:1878-1882`
5. `prefer_fixtures && !(newbie_mode && is_stateful_endpoint(path))` 조건이면 fixture가 먼저 반환된다.
   - 근거: `src/router.cpp:1883-1890`
6. `/UserInfo`와 DB-backed handler 묶음이 실행된다.
   - 근거: `src/router.cpp:1892-2026`
7. session harvested payload fallback.
   - 근거: `src/router.cpp:2032-2038`
8. harvested payload fallback.
   - 근거: `src/router.cpp:2040-2046`
9. hand-built fallback 및 proxy/404.
   - 근거: `src/router.cpp:2048` 이후

영향:

- full 모드에서 fixture가 존재하는 DB-backed endpoint는 `src/router.cpp:1883-1890`에서 반환되어 `src/router.cpp:1902-2026`의 DB mutation에 도달하지 않는다.
- newbie 모드의 `is_stateful_endpoint()` 목록에 있는 endpoint는 이 fixture gate를 통과해 DB/동적 처리에 도달한다.

## 5. 현재 문제점

### G1. full 모드 DB 상태가 fixture에 가려진다

근거:

- `prefer_fixtures` 기본값은 `true`: `src/common.hpp:39-50`
- fixture gate: `src/router.cpp:1883-1890`
- DB-backed handler: `src/router.cpp:1892-2026`

문제:

- full 모드에서는 `newbie_mode=false`이므로 `!(false && is_stateful_endpoint(...))`가 참이 된다.
- 해당 endpoint에 fixture가 있으면 DB mutation보다 fixture가 먼저 반환된다.
- 계정별 성장 상태가 fixture 존재 endpoint 응답에 반영되지 않는다.

올바른 수정 방향:

- DB-backed endpoint 목록을 명시적으로 만들고, full/newbie 공통으로 해당 endpoint는 DB handler를 fixture보다 앞에 둔다.
- fixture는 DB 미구현 endpoint의 fallback으로만 사용한다.
- 기존 fixture 재생이 필요한 endpoint는 별도 allowlist로 분리한다.

### G2. 게임용 계정 선택 UI가 React 관리 UI와 분리되어 있다

근거:

- `account_select_html()`은 `web/account_select.html`을 읽거나 fallback HTML을 반환한다: `src/router.cpp:89-100`
- `/account-select`는 `account_select_html()`을 반환한다: `src/router.cpp:1547-1552`
- `/account-mode/set`은 mode 저장 후 `zinny://AgreementOk`로 돌려보낸다: `src/router.cpp:1567-1582`
- React `NavPage`에는 `account-select`가 없다: `src/web/src/types/nav.ts:3-14`

문제:

- 관리 패널의 계정 UI와 게임 클라이언트가 보는 계정 선택 UI가 분리되어 유지된다.
- React `AccountsPage`가 제공하지 않는 backend 기능도 남아 있다.

올바른 수정 방향:

- React에 게임용 계정 선택 page를 추가하되 `/account-mode/set`과 `zinny://AgreementOk` 계약은 유지한다.
- legacy HTML은 offline web bundle이 없을 때의 fallback으로만 둔다.

### G3. AccountsPage가 backend account API 전체를 노출하지 않는다

근거:

- backend는 개별 GET, copy, export, session PATCH를 제공한다: `src/router.cpp:1208-1458`
- `AccountsPage`는 list/create/select/delete/patch/import만 호출한다: `src/web/src/pages/AccountsPage.tsx:40-103`

문제:

- 계정 복제, UserInfo export, session credential 편집, 개별 상세 조회가 React 관리 UI에 없다.

올바른 수정 방향:

- `AccountsPage`에 copy/export/session edit/detail load를 추가한다.
- 이미 존재하는 backend route를 재사용한다.

### G4. 인증 라우트가 계정/session 상태에 연결되어 있지 않다

근거:

- `/service/v3/idp/login`, `/service/v3/login`, `/v2/user` 전용 라우트가 없다.
- generic `/service/` 응답은 `{}`다: `src/router.cpp:1759-1766`
- `account_session`은 이미 있다: `src/account_registry.cpp:106-127`

문제:

- KR HAR 정상 인증 흐름이 account/session DB로 닫히지 않는다.
- 세션 저장소는 존재하지만 해당 라우트에서 갱신되지 않는다.

올바른 수정 방향:

- `/service/v3/idp/login`, `/service/v3/login`, `/v2/user` 전용 라우트를 추가한다.
- 토큰과 세션 값은 `account_session`을 사용한다.
- identity 이력은 새 테이블 또는 `account_meta` 중 하나로 설계한다.

### G5. WebSocket KR session fixture가 직접 로드되지 않는다

근거:

- 현재 loader는 `wss/session_replies.json`, `wss/chat_engineio.json`만 읽는다: `src/ws_session.cpp:59-60`
- `wss/session-zinny3.json`은 파일로 존재한다.
- `session-zinny3.game.kakao.com` redirect 대상은 현재 포함되어 있다: `src/redirect.hpp:28-29`, `src/url_redirect.cpp:20-21`

문제:

- KR session HAR fixture를 별도 파일로 보관하더라도 현재 WS builder 입력에는 들어가지 않는다.

올바른 수정 방향:

- `session-zinny3.json`을 `session_replies.json`에 병합할지, 별도 loader 입력으로 둘지 결정하고 builder를 맞춘다.
- `account_session` 주입은 유지한다.

### G6. 정규화되지 않은 UserInfo 영역이 많다

근거:

- `userinfo_preserved_field` 테이블은 raw JSON을 저장한다: `src/account_database.cpp:337-344`
- seed에서 보존하는 field는 37개다: `src/account_database.cpp:1614-1650`
- dungeon은 `map_info`, `condition_info`, `hero_info`, `additional_info`, `relic_info`, `dungeon_item` 등을 BLOB로 저장한다: `src/account_database.cpp:291-318`

문제:

- guild, town, zodiac, arkCore, arbeitOption 등은 DB 테이블/endpoint mutation으로 구동되지 않고 raw field 보존에 머문다.
- dungeon 내부 구조도 일부 BLOB로 유지된다.

올바른 수정 방향:

- 시스템별로 schema, 테이블, mutation service, UserInfo builder를 함께 추가한다.
- raw preserved field는 완전 제거가 아니라 미구현 field 보존 fallback으로 유지한다.

### G7. 일부 mutation의 저장 범위가 문서와 달랐다

근거:

- `AutoHuntOpen`은 pending 보상 계산과 응답 생성만 수행한다: `src/endpoint_mutation_service.cpp:981-1001`
- `AutoHuntReceive`는 currency, `autohunt_receive_dt`, `auto_hunt` 테이블을 갱신한다: `src/endpoint_mutation_service.cpp:1004-1018`
- `GachaHeroTutorial`은 `gacha_tutorial_roll_count`만 기록하고 영웅 DB에는 쓰지 않는다: `src/endpoint_mutation_service.cpp:769-800`
- `GachaHeroTutorialFix`는 10개 hero와 reputation을 DB에 기록하고 `gacha_tutorial_fixed`를 기록한다: `src/endpoint_mutation_service.cpp:803-845`

수정된 판단:

- `AutoHuntOpen DB 미기록`은 사실이다.
- `GachaHeroTutorial 전체가 DB 미기록`이라는 표현은 부정확하다. 일반 tutorial roll은 meta만 기록하고, tutorial fix는 hero/reputation을 저장한다.

### G8. 빌드 명령 기록이 현재 target과 맞지 않았다

근거:

- 현재 desktop target: `eversoul_gui`, `eversoul_console`, `eversoul_har_recorder` (`CMakeLists.txt:201-300`)
- 현재 Android target: `swappywrapper`, `swappywrapper_har` (`CMakeLists.txt:119-176`)
- `bs.ps1`는 `eversoul_gui`, `eversoul_console`, `eversoul_har_recorder`를 사용한다: `bs.ps1:19-61`
- `ba.ps1`는 `swappywrapper`를 사용한다: `ba.ps1:6-12`
- `build.sh`에는 현재 CMake에 없는 `eversoul_offline_server`가 남아 있다: `build.sh:59-64`

올바른 수정 방향:

- 문서의 PC 서버 target은 `eversoul_gui` 또는 `eversoul_console`로 기록한다.
- `eversoul_offline_server`는 현재 target이 아니라 낡은 참조로 기록한다.

## 6. 데이터 자산 검증 결과

| 디렉터리 | 현재 파일 수 | 비고 |
| --- | ---: | --- |
| `responses` | 102 | `_manifest.json` 포함 |
| `responses_newbie` | 156 | `_manifest.json` 포함 |
| `schema` | 167 | endpoint schema |
| `wss` | 4 | WS fixture |
| `expected` | 90 | encoder 검증 기준 |
| `ProtocolBuffers/*.proto` | 2633 | 전체 proto 파일 |

`responses/`에서 manifest를 제외한 101개 JSON 중 schema가 없는 endpoint는 11개다.

- `ArenaWeeklyRankReward`
- `CashShopList`
- `CashShopUserAbleCashItemIdAllList`
- `ChangeLobbyBackground`
- `DestinyPickUpList`
- `GachaMileageDelete`
- `HeroPowerUpdate`
- `Log`
- `NewMailCnt`
- `OriginTowerStoryClear`
- `SpiritTreeList`

`responses_newbie/`에서 manifest를 제외한 155개 JSON 중 schema가 없는 endpoint는 24개다.

- `ArenaWeeklyRankReward`
- `AutoRelease`
- `BattleSave`
- `CashShopList`
- `CashShopUserAbleCashItemIdAllList`
- `ChangeLobbyBackground`
- `ContentClearDeckSave`
- `DestinyPickUpList`
- `DungeonBattle`
- `DungeonChestRewardCheck`
- `DungeonMonsterRewardCheck`
- `DungeonSave`
- `GachaMileageDelete`
- `GuildInfo`
- `GuildJoinRequestList`
- `GuildTimeCheck`
- `HeroEquipPresetInfoList`
- `HeroPowerUpdate`
- `Log`
- `NewMailCnt`
- `ProfileUpdateVisible`
- `SetArenaFormation`
- `SpiritTreeList`
- `StageEnter`

## 7. 수정된 구현 플랜

### 단계 A. routing 선행순위 교정

작업 파일:

- `src/router.cpp`

작업 내용:

- DB-backed endpoint 판별 함수를 full/newbie 공통으로 둔다.
- DB-backed endpoint는 fixture gate보다 먼저 처리한다.
- fixture 재생이 더 정확한 read-only endpoint는 별도 목록으로 분리한다.

검증 기준:

- `/FormationSave`, `/HeroLevelUp`, `/GachaHero`, `/ShopItemBuy`, `/AutoHuntReceive`가 full 모드에서도 DB handler에 도달해야 한다.
- DB 미구현 endpoint는 기존 fixture/session/harvested fallback을 유지해야 한다.

### 단계 B. React 계정 UI 완성

작업 파일:

- `src/web/src/pages/AccountsPage.tsx`
- `src/web/src/types/nav.ts`
- `src/web/src/App.tsx`
- `src/web/src/components/layout/NavSidebar.tsx`
- 필요 시 신규 page/component/type 파일

작업 내용:

- copy, export, session PATCH, 개별 GET을 관리 UI에 연결한다.
- 게임 클라이언트용 account-select React 화면을 추가한다.
- `/account-mode/set`과 `zinny://AgreementOk` 흐름은 유지한다.

검증 기준:

- 관리 UI에서 backend account route 전체가 접근 가능해야 한다.
- 게임용 계정 선택 후 기존 redirect 계약이 유지되어야 한다.

### 단계 C. KR 인증/session 전용 라우트 추가

작업 파일:

- `src/router.cpp`
- `src/account_registry.{hpp,cpp}`
- 필요 시 `src/account_database.{hpp,cpp}`

작업 내용:

- `/service/v3/idp/login`, `/service/v3/login`, `/v2/user`를 generic fallback보다 앞에 구현한다.
- session token은 기존 `account_session`에 저장한다.
- identity 이력은 현재 계정 state와 registry 역할을 분리해서 설계한다.

검증 기준:

- `/service/v3/idp/login`과 `/service/v3/login`이 `{}`로 끝나지 않아야 한다.
- `/v2/user`가 active account의 profile/session 정보를 반영해야 한다.

### 단계 D. WebSocket fixture 입력 정리

작업 파일:

- `src/ws_session.cpp`
- `wss/session_replies.json`
- `wss/session-zinny3.json`

작업 내용:

- KR session fixture를 현재 loader 입력에 포함하거나 기존 session fixture로 병합한다.
- `account_session` 주입 지점은 유지한다.

검증 기준:

- `session-zinny3.game.kakao.com` 흐름이 redirect 대상과 WS 응답 builder 양쪽에서 일치해야 한다.

### 단계 E. preserved field 정규화 확장

작업 파일:

- `src/account_database.{hpp,cpp}`
- `src/endpoint_mutation_service.{hpp,cpp}`
- `src/userinfo_repository.cpp`
- 필요 시 `schema/*.json`

작업 내용:

- guild, town, zodiac, arkCore, arbeitOption, heroOption 등 preserved field를 시스템별 테이블로 승격한다.
- dungeon BLOB 영역은 schema 확인 후 구조화한다.
- raw preserved field는 fallback으로 유지한다.

검증 기준:

- UserInfo builder가 새 테이블에서 해당 section을 재구성해야 한다.
- endpoint mutation이 동일 계정 state를 누적 갱신해야 한다.

### 단계 F. 데이터 누락 정리

작업 파일:

- `responses/`
- `responses_newbie/`
- `schema/`
- `tools/proto_registry.py`
- `tools/har_to_json.py`
- `tools/merge_har.py`

작업 내용:

- schema 없는 11개 일반 endpoint와 24개 newbie endpoint를 raw 재생, schema 생성, DB 승격 대상으로 분류한다.
- `BattleSave`, `StageEnter`, `ContentClearDeckSave`, `DungeonBattle`처럼 상태를 바꾸는 endpoint는 fixture-only로 두지 않는다.

검증 기준:

- 상태 변경 endpoint는 DB 갱신 경로가 있어야 한다.
- read-only endpoint는 fixture fallback을 유지할 수 있다.

## 8. 현재 빌드 대상 기록

이번 검증에서는 빌드를 실행하지 않았다. 문서에는 현재 CMake와 script 기준의 대상만 기록한다.

| 산출 범위 | 현재 대상 | 근거 |
| --- | --- | --- |
| Android 기본 SO | `swappywrapper` | `CMakeLists.txt:119-149`, `ba.ps1:6-12` |
| Android HAR SO | `swappywrapper_har` | `CMakeLists.txt:152-176` |
| Windows GUI | `eversoul_gui` | `CMakeLists.txt:201-238`, `bs.ps1:34-47` |
| Windows 콘솔 | `eversoul_console` | `CMakeLists.txt:241-268`, `bs.ps1:19-32` |
| Windows HAR recorder | `eversoul_har_recorder` | `CMakeLists.txt:275-300`, `bs.ps1:49-61` |
| 낡은 참조 | `eversoul_offline_server` | 현재 `CMakeLists.txt`에는 없고 `build.sh:59-64`에 남아 있음 |

## 9. 근거 인덱스

- 포트와 config: `src/common.hpp:12-50`
- 서버 bootstrap: `src/server.cpp:139-147`, `:184-198`
- routing entry: `src/router.cpp:1519-1532`
- account select: `src/router.cpp:89-100`, `:1547-1582`
- Kakao/Infodesk: `src/router.cpp:1601-1766`
- fixture gate와 DB handler: `src/router.cpp:1883-2026`
- session/harvested fallback: `src/router.cpp:2032-2046`
- registry schema/session: `src/account_registry.cpp:66-127`, `:314-371`
- state DB schema: `src/account_database.cpp:108-348`
- preserved field: `src/account_database.cpp:1614-1650`
- endpoint mutation API: `src/endpoint_mutation_service.hpp:16-62`
- AutoHunt/Gacha tutorial: `src/endpoint_mutation_service.cpp:769-845`, `:981-1018`
- UserInfo repository: `src/userinfo_repository.cpp:480-580`
- AccountsPage calls: `src/web/src/pages/AccountsPage.tsx:40-103`
- React nav/page switch: `src/web/src/types/nav.ts:3-14`, `src/web/src/App.tsx:16-29`
- WS loader/session injection: `src/ws_session.cpp:53-83`, `:97-114`, `:155-180`
- redirect 대상: `src/redirect.hpp:28-29`, `src/url_redirect.cpp:20-21`
- CMake target: `CMakeLists.txt:119-176`, `:201-300`
- build scripts: `ba.ps1:6-12`, `bs.ps1:19-61`, `build.sh:59-64`

## 10. 검증 상태

- 문서 수정은 정적 파일 대조만으로 수행했다.
- 빌드, 개발 서버, 게임 실행, 통합 테스트 실행은 수행하지 않았다.
- `docs/source-architecture-complete-20260621.md`는 수정하지 않았다.
