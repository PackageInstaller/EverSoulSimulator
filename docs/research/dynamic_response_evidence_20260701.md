# 동적 응답 구현 근거 수집 문서

## 전제

이 서버의 인증, 전송, 프록시 경계는 유지한다. 변경 대상은 게임 API 응답 바디를 만드는 백엔드 도메인이다. APK 런타임은 현재의 요청 순서, 4바이트 시퀀스와 4바이트 길이 헤더가 붙은 게임 응답 봉투, 카카오·진니 인증 흐름을 이미 기대하고 있으므로, 동적화는 `route_request` 이후의 게임 응답 생성 경로에서만 수행한다.

`responses/`는 풀 액세스 계정 응답이고, `responses_newbie/`는 게스트 및 신규 계정 응답이다. 두 디렉터리는 같은 계정의 상태 차이가 아니라 서로 다른 계정 프로필이다.

## 현재 확인된 입력 자산

- `responses/_manifest.json`: 217개 엔드포인트, 비어 있지 않은 응답 188개, 빈 응답 29개.
- `responses_newbie/_manifest.json`: 155개 엔드포인트, 비어 있지 않은 응답 121개, 빈 응답 34개.
- `research/*.har`: 게임 서버 및 채팅 서버 요청 5819건, 고유 경로 218개. 그중 manifest 양쪽에 없는 항목은 `socket.io` 1개다.
- `tbl_json/`: 359개 TBL JSON.
- `schemas/`: 345개 FlatBuffers 스키마.
- `schema/`: 193개 엔드포인트 스키마 JSON.
- `src/game/endpoints/dynamic_endpoint_dispatcher.cpp`: 현재 66개 동적 분기, HAR와 겹치는 분기 60개, manifest와 겹치는 분기 60개.
- `src/server/app/router.cpp`: 현재 상태형 엔드포인트 목록 73개, 그중 동적 처리 연결 36개, 미연결 37개.

## 응답 계약 근거

게임 API 응답은 `game_binary_response`에서 공통으로 조립한다. 응답 바디는 4바이트 시퀀스 영역, 4바이트 payload 길이, Protobuf payload 순서다. 이 경계는 유지해야 한다. 따라서 엔드포인트별 동적화는 HTTP 응답 형식이 아니라 payload 생성 함수만 교체하는 방식이어야 한다.

요청 payload는 `request_payload(req)`가 앞 4바이트를 제거한 뒤 `pb_get_int32`, `pb_get_string`, `pb_get_all_messages` 등 공용 Protobuf 유틸로 읽는다. 새 구현은 이 유틸을 사용해야 하며, 라우터 내부에서 별도 파서를 만들면 요청 필드 해석이 엔드포인트마다 갈라진다.

라우터 순서는 이미 `ServerTime` 동적 처리, `dispatch_dynamic_game_endpoint`, fixture 폴백, harvested payload, empty endpoint, proxy 순서다. 따라서 상태형 API는 fixture 추가만으로 해결되지 않는다. 동적 디스패처에서 먼저 소유권을 가져야 실제 계정 DB 변경과 응답이 일치한다.

## 동적화가 필요한 이유

상태형 요청은 클라이언트가 이후 화면에서 바로 같은 상태를 다시 읽는다. 예를 들어 소환, 출석, 우편, 상점 구매, 아이템 사용, 영웅 성장, 아르바이트, 전투 저장은 재화·아이템·영웅·진행도·쿨타임을 바꾼다. 고정 fixture를 반환하면 클라이언트 UI는 성공 응답을 받지만 다음 `UserInfo`, 목록 조회, 로비 갱신에서 상태가 되돌아간다.

빈 응답도 모두 같은 의미가 아니다. 실제 서버가 빈 payload를 반환하는 저장형 API가 있고, HAR 수집 실패로 비어 있는 fixture가 있다. 이 둘을 구분하지 않으면 런타임 APK는 완료 플래그, 보상 목록, 상태 갱신 필드를 받지 못해 로딩 대기나 반복 요청으로 진입한다.

TBL은 보상과 정적 규칙의 근거이고, AccountDatabase는 계정의 현재 상태 근거다. 동적 응답은 `요청 Protobuf + AccountDatabase 현재 상태 + TBL 행 + 실제 fixture/HAR 필드 구조`를 결합해 만들어야 한다. TBL 행 전체를 그대로 나열하거나 fixture 값을 그대로 복사하는 방식은 런타임 상태와 맞지 않는다.

## 현재 미연결 상태형 엔드포인트

`ArenaWaitRewardReceive`, `ArkEnhanceCore`, `AutoRelease`, `ChangeArenaFormation`, `ChangeThumbnail`, `ContentClearDeckSave`, `ContentLimitSave`, `DestinyStoryEpisodeClear`, `DestinyStoryEpisodeStart`, `DungeonShopItemBuy`, `DungeonShopOpen`, `LabyrinthClear`, `LabyrinthReward`, `LostFoundEnd`, `LostFoundStart`, `LostFoundWaitClear`, `MissionPassRewardAll`, `MissionPassSelectRewardType`, `RankingAchievementAllReward`, `RotationDungeonReward`, `SetArenaFormation`, `SetHeroSlotObjet`, `SignatureEquip`, `SignatureLevelUp`, `SignatureUpgrade`, `SoulLinkBuffOpen`, `SpiritTreeSlotAdd`, `TownDevelopPointRefresh`, `TownEnemyDestroySkip`, `TownLevelUpCheck`, `TownMissionReward`, `TripKeyword`, `TutorialList`, `ZodiacActive`, `ZodiacInit`, `ZodiacMainActive`, `ZodiacPresetActive`.

이 목록은 새 구현 우선순위의 후보이며, 각 항목은 구현 전 HAR 실제 payload, fixture 상태, `schema/` 요청·응답 필드, 관련 `tbl_json/` 테이블, AccountDatabase 저장 위치를 확인해야 한다.

## 구현 파이프라인 원칙

1. 인증·전송·응답 봉투는 유지한다.
2. 라우터는 엔드포인트 소유권 분기만 담당한다.
3. 요청 필드 해석은 `src/game/protocol/protobuf.*`를 사용한다.
4. 상태 변경은 `src/account/state/AccountDatabase`에 저장한다.
5. 게임 도메인 계산은 `src/game/endpoints/EndpointMutationService` 또는 전용 도메인 서비스로 둔다.
6. TBL 조회는 `src/data/tbl/TblStore` 또는 게임 카탈로그 모듈로 중앙화한다.
7. 응답 payload는 최신 AccountDatabase 상태를 반영해 새로 만든다.
8. fixture는 초기 시드, 필드 구조 근거, 후순위 폴백으로만 사용한다.

## 다음 분석 단위

각 엔드포인트별 문서는 다음 형식으로 작성한다.

- 요청 경로와 HAR 발생 파일.
- 요청 payload 필드 번호와 의미.
- 응답 payload 필드 번호와 필수 반복 필드.
- 관련 fixture 파일과 empty 여부.
- 관련 TBL 파일과 키 필드.
- AccountDatabase 저장 테이블 또는 meta 키.
- 동적 응답 생성 함수 위치.
- 검증 방법: HAR payload 크기, fixture 재인코딩 크기, DB 변경 전후 값, Protobuf 필드 존재 여부.

## HAR 전체 분석 산출물

별도 분석 도구는 `tools/analyze_har_runtime_evidence.py`다. 이 도구는 기존 `responses/`, `responses_newbie/`, `schema/`, `expected/`, 서버 런타임 파일을 수정하지 않는다. 입력은 `research/*.har`, `ProtocolBuffers/Global`, `schema/`, `tbl_json/`, manifest이며 출력은 지정한 `research/` 하위 디렉터리로만 제한한다.

실행 명령은 다음과 같다.

```bash
PYTHONUTF8=1 python tools/analyze_har_runtime_evidence.py --out-dir research/har_runtime_evidence_20260701
```

현재 산출물 위치는 `research/har_runtime_evidence_20260701/`다.

- `summary.json`: 전체 집계. 현재 218개 엔드포인트, HAR에서 확인된 상태형 후보 67개, 요청 proto decode 217개, 응답 proto decode 216개, 직접 TBL 키 매칭 13개 엔드포인트, 광역 값 매칭 189개 엔드포인트.
- `all_endpoints_compact.json`: 전체 엔드포인트의 HAR 발생 수, 최신 HAR, 요청/응답 payload 크기, fixture 상태, schema 존재 여부, 직접 TBL 매칭 수, 값 매칭 수.
- `all_endpoint_matrix.md`: 전체 218개 경로의 표.
- `stateful_matrix.md`: 라우터 상태형 후보와 HAR 발생이 겹치는 경로의 표.
- `endpoints/<Endpoint>.json`: 엔드포인트별 원본 근거. `latest.request_hex`, `latest.response_hex`, `request_wire`, `response_wire`, decoded request/response, fixture 상태, schema 필드, `tbl_direct_hits`, `tbl_value_hits`를 포함한다.

`tbl_direct_hits`는 엔드포인트별 의미 키를 명시한 직접 근거다. `tbl_value_hits`는 같은 숫자값을 후보 TBL에서 찾은 보조 근거이며, `no=1`, `no=2`처럼 범용 값에서 잡음이 섞일 수 있으므로 구현 판단에는 직접 근거를 우선한다.

## 요청-바디-응답-TBL 직접 근거

아래 표는 새 산출물의 `endpoints/*.json`을 다시 읽어 정리한 대표 상태형 근거다. 요청과 응답은 HAR의 게임 payload에서 요청 앞 4바이트 시퀀스, 응답 앞 8바이트 봉투를 제거한 뒤 Protobuf로 decode한 값이다.

| 엔드포인트 | HAR 근거 | 요청 바디 | 응답 바디 | 직접 TBL 근거 | 구현 요구 |
| --- | --- | --- | --- | --- | --- |
| `/DungeonShopOpen` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 2회, req 11B, resp 80B | `stageNo=196`, `dungeonType=2`, `uid=10411`, `dungeonNo=2001` | `dungeonShopItem` 4개. 첫 항목 `no=102001008`, `itemNo=3001`, `payItemNo=100`, `payAmount=16`, `saleRate=20` | `Dungeon.no=2001`, `DungeonMerchant.field_2=196`, `DungeonMerchantItem.field_0=102001008`, `Item.no=3001`, `Item.no=100` | 계정 던전 상태와 `DungeonMerchant*` TBL로 상품 목록을 생성해야 한다. |
| `/DungeonShopItemBuy` | 같은 HAR, 2회, req 10B, resp 288B | `no=102001008`, `uid=10411`, `dungeonType=2` | `no=102001008`, `currency.allCurrency` 52개, `itemEtc[0].itemNo=3001`, `itemCnt=1` | `DungeonMerchantItem.field_0=102001008`, 해당 행 `field_3=3001`, `field_5=100`, `field_6=16`, `field_7=20`, `Dungeon.dungeon_type=2`, `Item.no=3001` | 구매 상태 저장, 재화 차감, 아이템 증가, 구매 결과 응답이 한 트랜잭션으로 묶여야 한다. |
| `/SignatureLevelUp` | 같은 HAR, 3회, req 5B, resp 269B | `no=5081`, `toLevel=2` | `itemSignature.itemNo=5081`, `grade=110015`, `level=2`, `currency.allCurrency` 52개 | `Signature.no=5081`, `SignatureLevel.group=5081`, `SignatureLevelCost.level=2` | 시그니처 레벨과 소비 재료를 DB에 반영하고, 응답의 `itemSignature`와 재화 목록을 최신 상태로 생성해야 한다. |
| `/SignatureUpgrade` | 같은 HAR, 2회, req 6B, resp 18B | `no=5081`, `heroIdx="0"` | `itemSignature.itemNo=5081`, `grade=110015`, `level=1`, `itemEtc.itemNo=10083`, `cnt=20` | `Signature.no=5081`, `SignatureGrade.group=5081`, `Item.no=10083` | 승급 대상, 장착 영웅, 재료 반환·소비 상태를 계정 DB 기준으로 저장해야 한다. |
| `/ZodiacMainActive` | `cdp.cloud.unity3d.com_2026_06_09_16_20_16.har`, 2회, req 2B, resp 326B | `zodiacNo=16` | `zodiac.zodiacNo=16`, `currency.allCurrency` 52개 | `Zodiac.no=16` | 활성 노드 저장과 재화 갱신을 분리하지 말고 같은 응답에서 재구성해야 한다. |
| `/SpiritTreeSlotAdd` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 5회, req 2B, resp 255B | `openType=1` | `spiritTree.slotNo=1`, `currency.allCurrency` 52개 | `SpiritTree.no=1` | 슬롯 확장 상태와 비용 반영이 `UserInfo` 후속 조회와 일치해야 한다. |
| `/TownMissionReward` | `cdp.cloud.unity3d.com_2026_06_08_08_38_04.har`, 1회, req 2B, resp 330B | `no=100` | `currency.allCurrency` 52개, `itemChangeAmount[0].itemNo=16`, `cnt=200` | `TownMission.no=100`, `Item.no=16` | 미션 보상 수령 플래그와 보상 아이템 증가를 저장해야 한다. |
| `/ArkEnhanceCore` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 7회, req 6B, resp 10B | `coreType01=1`, `coreType02=110051` | `coreType01=1`, `coreType02=110051`, `coreLevel=1`, `currency={}` | `ArkEnhance.core_type_02=110051` | 아크 코어 레벨과 비용 규칙은 `ArkEnhance` TBL 기준으로 계산해야 한다. |
| `/ChangeThumbnail` | `cdp.cloud.unity3d.com_2026_06_09_16_20_16.har`, 8회, req 45B, resp 47B | `thumbnailFrame=5692`, `thumbnailImage=35010`, `thumbnail=<문자열>` | 요청의 `thumbnail` 구조를 그대로 echo | `Thumbnail.no=5692`, `Thumbnail.no=35010` | 프로필 썸네일 저장 후 `UserInfo` 썸네일과 응답 echo가 일치해야 한다. |
| `/ContentLimitSave` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 38회, req 5B, resp 6B | `no=10060001` | `no[0]=10060001` | `HelpGuide.no=10060001`, 행의 `contents_limit_no=3`, `trigger=UI_SHOP` | 컨텐츠 제한/가이드 확인 상태를 계정 플래그로 저장해야 한다. |

## HAR 런타임 요청·응답 추가 분석

기존 중간 산출물 `research/runtime_stateful_har_wire_20260701.json`은 최상위 wire 확인용이다. 현재 기준 산출물은 `research/har_runtime_evidence_20260701/`이며, 같은 방식으로 요청 앞 4바이트 시퀀스를 제거하고 응답 앞 8바이트 응답 봉투를 제거한 Protobuf payload를 대상으로 wire 필드와 Request/Response decode 결과를 함께 저장한다.

### 미연결 상태형 엔드포인트별 근거

| 엔드포인트 | HAR 마지막 발생 | 요청 근거 | 응답 근거 | fixture | 직접 매칭 근거 | 런타임 요구 | 저장 위치 | 구현 위치 | 검증 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `/ArenaWaitRewardReceive` | `cdp.cloud.unity3d.com_2026_06_09_16_20_16.har`, 1회 | `1:varint=1`, 2B | `1:varint=1780992000000`, `2:len320`, 330B | full `proto 330B`, newbie 없음 | `ArenaWaitRewardReceive` | 보상 수령 뒤 재화·아이템·수령 상태 동기화 | reward claim meta + `item_etc`/currency | `dispatch_dynamic_game_endpoint` -> `EndpointMutationService` | HAR req/resp 크기, 필드 존재, DB 전후값 |
| `/ChangeArenaFormation` | `cdp.cloud.unity3d.com_2026_06_09_16_20_16.har`, 2회 | `1:varint=1`, `2:len72` 반복, 211B | empty, 0B | full empty, newbie 없음 | `Formation` | 아레나 편성 저장 후 후속 조회 일치 | `formation`/`formation_hero` 또는 arena formation meta | 동일 | empty 응답이어도 저장값 확인 |
| `/ContentClearDeckSave` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 230회 | `2:varint=1`, `3:len115`, 119B | empty, 0B | full empty, newbie empty | 직접 매칭 없음 | 콘텐츠 클리어 덱 저장 후 전투/재진입 조회 일치 | `account_meta.content_clear_deck.*` 또는 전용 deck 테이블 | 동일 | 230회 반복 요청의 마지막 상태 저장 확인 |
| `/SetArenaFormation` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 1회 | `2:len109`, 111B | empty, 0B | full empty, newbie empty | `Formation` | 아레나 편성 저장 | `formation`/`formation_hero` 또는 arena formation meta | 동일 | 저장 후 Arena 계열 조회와 비교 |
| `/AutoRelease` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 5회 | `1:varint=1`, 2B | empty, 0B | full empty, newbie empty | 직접 매칭 없음 | 자동 분해 설정 저장 | `account_meta.auto_release.*` | 동일 | 빈 응답 유지, 설정값 지속 확인 |
| `/ChangeThumbnail` | `cdp.cloud.unity3d.com_2026_06_09_16_20_16.har`, 8회 | `1:varint=5692`, `2:varint=35010`, `4:len36`, 45B | `1:len45`, 47B | full `proto 47B`, newbie 없음 | `ChangeThumbnail`, `Thumbnail` | 프로필 썸네일 상태 저장과 응답 echo | `user_thumbnail` | 동일 | `UserInfo` 썸네일 필드와 일치 |
| `/DungeonShopOpen` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 2회 | `1:varint=196`, `2:varint=2`, `3:varint=10411`, `4:varint=2001`, 11B | `1:len18/19/16/19`, 80B | full/newbie `proto 80B` | `Dungeon`, `DungeonShopOpen`, `Shop` | 던전 상점 목록을 계정 던전 상태와 TBL로 구성 | dungeon state + shop view meta | 동일 | 상품 반복 필드 개수와 payload 크기 비교 |
| `/DungeonShopItemBuy` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 2회 | `1:varint=102001008`, `2:varint=10411`, `3:varint=2`, 10B | `1:varint=102001008`, `2:len268`, `4:len5`, `5:varint=3001`, `6:varint=1`, 288B | full/newbie `proto 288B` | `Dungeon`, `DungeonShopItemBuy`, `Item`, `Shop`, `ShopItemBuy` | 구매 수량, 재화 차감, 아이템 증가, 구매 상태 저장 | dungeon state + `item_etc` + currency | 동일 | 구매 전후 DB와 응답 보상 필드 비교 |
| `/LabyrinthClear` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 1회 | `1:varint=1406797`, 4B | `1:len272`, `4:len644`, 922B | full/newbie `proto 922B` | `LabyrinthClear` | 클리어 상태와 보상 후보 유지 | dungeon/labyrinth state + reward meta | 동일 | 클리어 플래그와 응답 필드 비교 |
| `/LabyrinthReward` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 3회 | `1:varint=1406797`, `2:varint=1001105001`, 10B | `1:len271`, `3:len5` 반복, `4:len6` 반복, 877B | full/newbie `proto 877B` | `LabyrinthReward` | 보상 수령 뒤 재화·아이템·수령 상태 동기화 | dungeon/labyrinth reward meta + `item_etc`/currency | 동일 | 반복 보상 필드 수와 DB 증가량 비교 |
| `/RotationDungeonReward` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 28회 | `1:varint=1406796`, `2:varint=3`, `3:varint=20010102`, 11B | `1:len7`, `2:len265`, `5:varint=2001`, 280B | full/newbie `proto 280B` | `Dungeon`, `DungeonReward`, `RotationDungeonReward` | 로테이션 던전 보상 수령 상태와 보상 반영 | dungeon reward meta + `item_etc`/currency | 동일 | 동일 요청 중복 수령 차단 확인 |
| `/MissionPassRewardAll` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 2회 | `1:varint=900`, 3B | `1:len18`, `2:len0`, `4:len5`, 29B | full/newbie `proto 29B` | `MissionPassRewardAll` | 미션패스 전체 보상 수령 처리 | mission pass claim meta + reward state | 동일 | 수령 meta와 보상 반영 확인 |
| `/MissionPassSelectRewardType` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 1회 | `1:varint=902`, 3B | `1:len16`, 18B | full/newbie `proto 18B` | `MissionPassSelectRewardType` | 선택 보상 타입 저장 | mission pass select meta | 동일 | 선택 타입 재조회 확인 |
| `/RankingAchievementAllReward` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 12회 | `1:varint=1000`, 3B | `1:len235`, 238B | full/newbie `proto 238B` | `Achievement`, `RankingAchievementAllReward` | 랭킹 업적 보상 일괄 수령 | achievement claim meta + reward state | 동일 | 중복 수령 차단과 보상 필드 비교 |
| `/TownMissionReward` | `cdp.cloud.unity3d.com_2026_06_08_08_38_04.har`, 1회 | `1:varint=100`, 2B | `1:len320`, `4:len5`, 330B | full `proto 330B`, newbie 없음 | `TownMission`, `TownMissionReward` | 영지 미션 보상 수령 | town mission claim meta + reward state | 동일 | 보상 반영과 수령 플래그 확인 |
| `/TownEnemyDestroySkip` | `cdp.cloud.unity3d.com_2026_06_08_08_38_04.har`, 1회 | 없음, 0B | `1:len320`, `4:len4/5` 반복, `5:varint=20`, 351B | full `proto 351B`, newbie 없음 | `TownEnemy`, `TownEnemyDestroySkip` | 영지 적 제거 스킵 보상 생성 | town enemy state + reward state | 동일 | 요청값 없이 계정 상태 기반 생성 확인 |
| `/TownLevelUpCheck` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 2회 | 없음, 0B | `1:len4`, `2:len248`, `4:len6`, `5:len4/6`, 279B | full/newbie `proto 279B` | `Level`, `TownLevel`, `TownLevelUpCheck` | 영지 레벨업 가능 상태 확인 | town level meta + reward state | 동일 | level meta와 응답 필드 비교 |
| `/TownDevelopPointRefresh` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 1회 | 없음, 0B | `1:len4`, 6B | full/newbie `proto 6B` | `TownDevelopPointRefresh` | 영지 개발 포인트 갱신 | town develop point meta | 동일 | 갱신 전후 point meta 확인 |
| `/SetHeroSlotObjet` | `cdp.cloud.unity3d.com_2026_06_08_08_38_04.har`, 1회 | `1:varint=5010`, `2:varint=10634402`, 8B | `1:len35` 반복, 72687B | full `proto 72687B`, newbie 없음 | `Hero`, `SetHeroSlotObjet` | 영웅 슬롯 오브제 배치 저장과 대형 목록 응답 유지 | `account_meta.hero_slot_objet.*` 또는 objet placement table | 동일 | 반복 필드 개수와 저장 배치 비교 |
| `/SignatureEquip` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 1회 | `1:varint=5081`, `2:len15`, 20B | `1:len24`, `2:len9` 반복, 103B | full/newbie `proto 103B` | `Signature`, `SignatureEquip` | 시그니처 장착 상태 저장 | hero signature table 또는 `account_meta.signature.*` | 동일 | 장착 슬롯과 소비/반환 필드 비교 |
| `/SignatureLevelUp` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 3회 | `1:varint=5081`, `2:varint=2`, 5B | `1:len9`, `2:len255`, 269B | full/newbie `proto 269B` | `Level`, `Signature`, `SignatureLevel`, `SignatureLevelUp` | 시그니처 레벨 상승과 재료 소비 | hero signature table + item/currency | 동일 | 레벨 전후값과 재료 차감 확인 |
| `/SignatureUpgrade` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 2회 | `1:varint=5081`, `2:len1`, 6B | `1:len9`, `2:len5`, 18B | full/newbie `proto 18B` | `Signature`, `SignatureUpgrade` | 시그니처 승급과 재료 소비 | hero signature table + item/currency | 동일 | 등급 전후값과 재료 차감 확인 |
| `/SpiritTreeSlotAdd` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 5회 | `1:varint=1`, 2B | `1:len2`, `2:len248`, 255B | full/newbie `proto 255B` | `SpiritTree`, `SpiritTreeSlotAdd` | 정령의 나무 슬롯 확장 상태 저장 | spirit tree slot table 또는 meta | 동일 | 슬롯 수와 UserInfo/목록 응답 비교 |
| `/ZodiacInit` | `cdp.cloud.unity3d.com_2026_06_09_16_20_16.har`, 1회 | 없음, 0B | `2:len319`, 322B | full `proto 322B`, newbie 없음 | `Zodiac`, `ZodiacInit` | 잠재능력 초기 상태 생성 | `account_meta.zodiac.*` 또는 zodiac table | 동일 | 초기 노드 목록 필드 존재 확인 |
| `/ZodiacActive` | `cdp.cloud.unity3d.com_2026_06_11_01_37_55.har`, 2회 | `1:varint=1`, 2B | `1:len2`, 4B | full/newbie `proto 4B` | `Zodiac`, `ZodiacActive` | 활성 노드 저장 | zodiac active meta/table | 동일 | 활성 노드 재조회 확인 |
| `/ZodiacMainActive` | `cdp.cloud.unity3d.com_2026_06_09_16_20_16.har`, 2회 | `1:varint=16`, 2B | `1:len2`, `2:len319`, 326B | full `proto 326B`, newbie 없음 | `Zodiac`, `ZodiacMainActive` | 메인 잠재능력 활성 상태 저장 | zodiac main active meta/table | 동일 | 응답 필드 1/2와 저장 상태 비교 |
| `/ZodiacPresetActive` | `cdp.cloud.unity3d.com_2026_06_09_16_20_16.har`, 3회 | `1:varint=4191`, 3B | `1:len2` 반복, 750B | full `proto 750B`, newbie 없음 | `Zodiac`, `ZodiacPresetActive` | 프리셋 활성 상태와 노드 목록 유지 | zodiac preset table/meta | 동일 | 반복 필드 개수와 활성 프리셋 확인 |

### 우선 구현 판단

1. 빈 응답이지만 요청 상태 저장이 필요한 항목: `/ContentClearDeckSave`, `/SetArenaFormation`, `/ChangeArenaFormation`, `/AutoRelease`.
2. 보상 지급이 필요한 항목: `/DungeonShopItemBuy`, `/LabyrinthReward`, `/RotationDungeonReward`, `/MissionPassRewardAll`, `/RankingAchievementAllReward`, `/TownMissionReward`, `/ArenaWaitRewardReceive`.
3. 대형 상태 목록을 요구하는 항목: `/SetHeroSlotObjet`는 응답 72687B이며 반복 필드 `1`을 대량 요구한다. 단순 empty 처리나 부분 응답은 런타임 UI 누락으로 이어질 수 있다.
4. 잠재능력 계열: `/ZodiacInit`, `/ZodiacMainActive`, `/ZodiacPresetActive`는 full fixture에는 있지만 newbie에는 없다. 게스트 계정에서 해당 컨텐츠 진입 가능 조건이 열리면 fixture profile 차이를 DB 상태로 보완해야 한다.
