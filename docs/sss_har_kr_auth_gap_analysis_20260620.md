# SSS HAR 및 KR Kakao 인증 연동 분석

작성일: 2026-06-20

## 확인 대상

- `sss/*.har` 6개 파일 전체
- `kr_apk/base_decoded/AndroidManifest.xml`
- `kr_apk/jadx_out/sources/com/kakao/sdk/auth/*`
- `kr_apk/jadx_out/sources/com/kakao/sdk/common/Constants.java`
- `src/router.cpp`
- `src/lsplant_hooks.cpp`
- `src/url_redirect.cpp`
- `src/redirect.hpp`
- `CMakeLists.txt`
- `src/entry.cpp`

## HAR 전체 집계

| 항목 | 값 |
|---|---:|
| HAR 파일 | 6개 |
| 전체 호스트 | 30개 |
| 전체 요청 메서드 | POST 6485, GET 567, CONNECT 33 |
| 주요 상태 | 200 6999, 101 25, 204 8, 202 3, 403 2 |
| 게임 엔드포인트 | 218개 |
| 게임 요청 히트 | 5795회 |
| `responses/` 누락 게임 엔드포인트 | 117개 |
| `schema/` 누락 게임 엔드포인트 | 56개 |
| WebSocket 메시지 | 31438개 |

## 호스트별 의미

| 호스트 | HAR 근거 | 서버/리다이렉션 의미 |
|---|---:|---|
| `live-sea.esoul.kakaogames.com:1739` | 5761회 | 기존 글로벌 게임 API 중심 |
| `live-kr.esoul.kakaogames.com:1739` | 34회 | KR 게임 API 대상 |
| `gc-openapi-zinny3.kakaogames.com` | 41회 | 글로벌 Kakao OpenApi |
| `openapi-zinny3.game.kakao.com` | 4회 | KR/구형 Kakao OpenApi |
| `gc-infodesk-zinny3.kakaogames.com` | 136회 | 글로벌 Infodesk |
| `infodesk-zinny3.game.kakao.com` | 2회 | KR/구형 Infodesk |
| `gc-session-zinny3.kakaogames.com` | 15회 | 글로벌 세션 WebSocket |
| `session-zinny3.game.kakao.com` | 1회 | KR/구형 세션 WebSocket |
| `live-sea-chat.esoul.kakaogames.com:1739` | 34회 | 채팅 socket.io |
| `live-kr-chat.esoul.kakaogames.com:1739` | 6회 | KR 채팅 socket.io |

## HAR 분석 기준 상세

HAR 분석은 6개 파일의 `log.entries`와 각 entry의 `_webSocketMessages`를 전수 대상으로 삼는다. 한 파일의 마지막 세션만 보지 않고, 전체 파일의 요청 순서와 반복 호출 횟수를 함께 사용한다.

| 기준 | 확인 항목 | 판정 방식 |
|---|---|---|
| 요청 식별 | method, scheme, host, port, path, query, status, startedDateTime | 같은 path라도 host와 scheme이 다르면 별도 흐름으로 분리 |
| 호스트 분류 | `live-*`, `gc-*`, `*.game.kakao.com`, patch/CDN, 외부 SDK | 게임 API, Kakao OpenApi, Infodesk, Session WS, Chat WS, 패치/외부 SDK로 분리 |
| 게임 API 추출 | `live-kr.esoul...:1739`, `live-sea.esoul...:1739` | path의 endpoint 이름을 기준으로 집계 |
| 게임 payload | request `[seq4]+protobuf`, response `[seq4][size4]+protobuf` | envelope 제거 후 proto decode 가능 여부와 raw 보존 여부를 기록 |
| fixture 산출 | `responses/<Endpoint>.json`, `responses/_manifest.json` | 같은 endpoint가 여러 번 나오면 hit count는 전체 집계, fixture는 최종 상태 재생 기준으로 마지막 응답 사용 |
| schema 판정 | `schema/<Endpoint>.json` 존재 여부 | proto fixture는 schema 필수, schema가 없으면 DB 승격 전 raw 재생/재캡처/schema 생성 대상으로 분리 |
| OpenApi 분석 | `/service/v3/*`, `/service/v4/*`, `/v2/app*` | JSON body, query, header의 appId, sdkVer, country, lang, serverType, deviceId를 기준으로 KR/글로벌 흐름 분리 |
| OAuth 분석 | `kauth.kakao.com`, `AuthCodeHandlerActivity`, Kakao SDK token call, KakaoGames IDP call | Kakao OAuth code 발급과 KakaoGames `/service/v3/idp/login`을 별도 단계로 분리 |
| 인증 완료 판정 | `/service/v3/idp/login`, `/service/v3/login`, `/v2/user`, session WS | OAuth code 이후 이 순서가 나오지 않으면 로그인 완료 전 차단으로 판정 |
| WebSocket 분석 | status 101, `_webSocketMessages`, host, frame direction, payload | session WS와 chat WS를 분리하고 frame 순서와 방향을 유지 |
| 상태 변경 판정 | endpoint 이름, request payload, response payload, DB 영향 | 쓰기 endpoint는 fixture-only 대상에서 제외하고 `EndpointMutationService` 승격 대상으로 분류 |
| 읽기 응답 판정 | 목록/정보/랭킹/프로필 조회 endpoint | DB 상태에서 재구성 가능한지, fixture 골격이 필요한지 분리 |
| 누락 판정 | HAR에는 있으나 `responses/` 또는 `schema/`에 없는 endpoint | `responses/` 누락, `schema/` 누락, 서버 라우트 누락, DB 테이블 누락을 별도 표시 |
| 검증 판정 | 캡처 payload와 재생 payload 비교 | `tools/verify_pipeline.py` 기준으로 payload 정합성 확인 |

인증 흐름은 다음 순서가 HAR 기준 정상 완료 조건이다.

```text
/service/v3/util/country/get
  -> /v2/appGroup
  -> /service/v3/log/writeSdkBasicLog
  -> /v2/app
  -> /v2/app/server/maintenance
  -> kauth.kakao.com OAuth code
  -> Kakao SDK token exchange
  -> /service/v3/idp/login
  -> /service/v3/login
  -> wss://session-zinny3.game.kakao.com/session
  -> /v2/user
```

DB 승격 대상은 다음 기준으로 정한다.

- request가 유저 상태를 변경하면 쓰기 endpoint로 분류한다.
- response가 currency, hero, item, stage, dungeon, formation, guild, arena, town, zodiac, event 상태를 갱신하면 해당 시스템 테이블 후보로 분류한다.
- 같은 endpoint가 반복 호출될 때 결과가 누적되면 DB 테이블과 트랜잭션 처리가 필요하다.
- 단순 로그/트레이서/국가 조회는 계정 상태를 바꾸지 않는 OpenApi 보조 endpoint로 분류한다.
- 인증과 세션은 게임 endpoint보다 먼저 DB화한다. 이 흐름이 닫히지 않으면 이후 게임 API DB화가 연결되지 않는다.

## KR Kakao OAuth 흐름 확정 사항

- Manifest에서 `KGAuthActivity`와 `AuthCodeHandlerActivity`가 존재한다.
- `AuthCodeHandlerActivity`는 `singleTask`이며 `kakao...://oauth` 딥링크 intent-filter를 가진다.
- `AuthCodeHandlerActivity`는 자체 구현 없이 `CustomTabLauncherActivity`를 상속한다.
- `IntentFactory.account()`는 최초 브라우저 실행 Activity에 `KEY_BUNDLE`, `KEY_RESULT_RECEIVER`, `KEY_FULL_URI`를 넣는다.
- `CustomTabLauncherActivity.loadData()`는 최초 실행 번들만 읽고 `intent.getData()`는 처리하지 않는다.
- `CustomTabLauncherActivity.onNewIntent()`만 `intent.getData()`를 읽어 `sendOK(data)`를 호출한다.
- `sendOK()`는 `Bundle`에 `com.kakao.sdk.common.Constants.KEY_URL`을 넣고 `ResultReceiver.send(-1, bundle)`을 호출한다.
- `KEY_URL` 값은 `key.url`이다.

## 캡처 실패 원인

캡처 메모의 실패 지점은 OAuth code 발급 뒤 `/service/v3/idp/login`이 호출되지 않은 구간이다. 파일 근거로 확인한 실제 차단 지점은 두 가지다.

1. Java 훅이 실행되지 않는 빌드 연결 문제
   - 현재 변경 전 `CMakeLists.txt`에서 `src/lsplant_hooks.cpp`와 `lsplant_static`이 Android 대상에서 빠져 있었다.
   - 변경 전 `src/entry.cpp`는 `eversoul::lsplant::install_java_hooks(vm)`를 호출하지 않았다.
   - 변경 전 `src/lsplant_hooks.cpp`의 `install_java_hooks()`는 내부 `do_install(vm)`를 호출하지 않았다.
   - 따라서 `RedirectHooks.java`와 C++ Kakao 콜백 훅 코드가 있어도 실제 SO 실행 경로에 연결되지 않았다.

2. OAuth callback 새 인스턴스 경로 미처리
   - 기존 훅은 `loadData()`에서 `resultReceiver`를 저장하고 `onNewIntent()`에서 `resultReceiver`가 비었을 때만 저장된 수신자로 보정했다.
   - 콜백 Activity가 새 `onCreate -> loadData(intent)` 경로로 들어오면 `loadData()`에 `intent.getData()`가 있어도 기존 훅은 저장된 `ResultReceiver`로 code URI를 보내지 않았다.
   - 이 경우 Kakao SDK의 `SingleResultReceiver`가 code를 받지 못하고, 뒤이어 Kakao 토큰 요청과 KakaoGames IDP 로그인 요청이 이어지지 않는다.

## Android SO 리다이렉션 누락

- `session-zinny3.game.kakao.com`은 HTTP 대상 목록에는 있었지만 WebSocket 대상 목록에는 없었다.
- `wss://session-zinny3.game.kakao.com/session` 형태는 HTTP 목록만으로 `ws://127.0.0.1:9991/session`으로 내려오지 않는다.
- `src/url_redirect.cpp`와 `src/redirect.hpp`의 WebSocket 대상에 해당 호스트를 추가했다.
- `EVERSOUL_HAR_MODE`에서는 URL/전송 리다이렉션이 비활성화되어 실제 서버 직결 수집 흐름을 유지한다.

## 서버 EXE 누락 시스템

`src/router.cpp` 기준으로 Kakao OpenApi 일부는 존재하지만 KR 로그인 완료 흐름은 닫혀 있지 않다.

| 경로 | 현재 상태 | 누락 의미 |
|---|---|---|
| `/service/v3/util/country/get` | 고정 응답 | 응답은 `kr`, 로그는 `hk`로 불일치 |
| `/v2/appGroup` | `appId=743491` 고정 | KR 캡처의 `appId=743487`와 불일치 |
| `/v2/app` | 글로벌 계열 하드코딩 | KR `sdkVer=3.20.0`, 구형 `game.kakao.com` 계열과 불일치 |
| `/service/v3/agreement/getForLogin` | `appId=743491`, `country=hk`, `lang=zh-hans` 기본 | KR 로그인 파라미터와 불일치 |
| `/service/v3/idp/login` | 전용 라우트 없음 | OAuth/IDP 토큰 교환이 서버 상태로 저장되지 않음 |
| `/service/v3/login` | 전용 라우트 없음 | IDP 이후 세션 토큰 발급 흐름이 없음 |
| `/v2/user` | 전용 라우트 없음 | 로그인 후 유저 정보 조회 흐름이 없음 |
| `wss://session-zinny3.game.kakao.com` | 라우터/fixture 연동 검증 필요 | KR 세션 핸드셰이크와 세션 이벤트 저장 대상 |

## 게임 내부 DB화 현황

`EndpointMutationService`에 존재하는 실제 DB 기반 뮤테이션은 다음 범위다.

- 튜토리얼 진행
- 스테이지 클리어
- 스토리 클리어
- 던전 입장/클리어/정보 갱신 일부
- 편성 저장
- 영웅 레벨업/승급/선물/장착/해제
- 장비 강화/초월
- 정령나무 슬롯 장착/해제
- 가챠 영웅/튜토리얼/프리미엄/시그니처
- 상점 구매
- 아이템 사용
- 태스크 보상
- 자동전투 오픈/수령
- 닉네임 변경
- 가이드 퀘스트 목록
- 업적 일괄 수령
- 메일 일괄 수령
- 출석 수령
- 친구 하트 일괄 수령

HAR에는 위 범위를 넘는 시스템 호출이 다수 존재한다. 현재 누락 우선순위는 다음이다.

| 우선순위 | 시스템 | HAR/서버 근거 |
|---:|---|---|
| 1 | Kakao IDP 로그인, 로그인, 유저 조회, 세션 WebSocket | KR 인증 완료를 막는 직접 경로 |
| 2 | 전투 저장/스테이지 입장/클리어덱 저장 | `BattleSave`, `StageEnter`, `ContentClearDeckSave`가 fixture/schema 누락 |
| 3 | 던전 전투/상점/오브젝트 보상 | `DungeonBattle`, `DungeonShop*`, `DungeonObjectReward` 계열 누락 |
| 4 | 길드/아레나/랭킹 | `Guild*`, `Arena*`, `Ranking*` 계열 다수 누락 |
| 5 | 타운/오브제/방문 영웅 | `Town*`, `Objet*`, `SetHeroSlotObjet` 계열 누락 |
| 6 | 조디악/시그니처/영웅 프리셋 | 성장 시스템 장기 상태 저장 누락 |
| 7 | 이벤트/미션패스/출석 확장 | `Event*`, `MissionPass*` 계열 누락 |

## 반영한 코드 변경

- `CMakeLists.txt`
  - Android 일반 SO와 HAR 수집 SO에 `lsplant_hooks.cpp`, LSPlant include, `lsplant_static` 링크를 복구했다.
  - HAR 수집 SO는 `EVERSOUL_HAR_MODE`를 유지해 리다이렉트 비활성 수집 구조를 보존했다.
- `src/entry.cpp`
  - `JNI_OnLoad`에서 `eversoul::lsplant::install_java_hooks(vm)`를 호출하도록 복구했다.
- `src/lsplant_hooks.cpp`
  - `install_java_hooks()`가 실제 `do_install(vm)`을 호출하도록 연결했다.
  - `loadData()` 콜백 경로에서도 `intent.getData()`를 읽어 저장된 `ResultReceiver`에 `key.url` URI를 보낸다.
  - 직접 전송 성공 시 SDK 원본 `sendOK()`와 동일하게 Activity를 종료한다.
  - 정상 `onNewIntent()` 경로 후 보관된 전역 `ResultReceiver`를 정리한다.
- `src/url_redirect.cpp`, `src/redirect.hpp`
  - WebSocket 대상에 `session-zinny3.game.kakao.com`을 추가했다.

## 남은 구현 범위

- KR/글로벌 Infodesk 응답을 요청의 `appId`, `sdkVer`, `serverType`, `market`, `lang`, `country` 기준으로 분기해야 한다.
- `/service/v3/idp/login`, `/service/v3/login`, `/v2/user`를 빈 성공 응답이 아니라 계정 DB와 세션 DB에 연결해야 한다.
- KR session WebSocket 핸드셰이크와 세션 이벤트를 `wss/` fixture 및 계정 상태에 연결해야 한다.
- HAR의 117개 `responses/` 누락 엔드포인트와 56개 `schema/` 누락 엔드포인트를 시스템 단위로 흡수해야 한다.
- fixture-only 응답은 DB 뮤테이션이 필요한 엔드포인트부터 `EndpointMutationService`와 `AccountDatabase` 테이블로 승격해야 한다.

## 구현 기반을 다지는 파일 기준

HAR 기반 구현은 캡처 파일을 바로 서버 코드에 섞지 않고, 분석 산출물과 런타임 상태 저장 계층을 분리해서 쌓아야 한다.

| 단계 | 기준 파일/디렉터리 | 역할 |
|---:|---|---|
| 1 | `sss/*.har` | 원본 캡처 보관. 요청 순서, 호스트, 상태 코드, WebSocket frame의 기준 데이터 |
| 2 | `tools/har_to_json.py` | HAR 전체를 `responses/`, `responses/_manifest.json`, `wss/`로 변환하는 기준 파서 |
| 3 | `tools/merge_har.py` | 새 HAR를 기존 fixture에 증분 병합하는 기준 도구 |
| 4 | `tools/proto_registry.py` | Request/Response proto 존재 여부와 decode 가능 여부 판정 |
| 5 | `tools/json_to_proto.py` | JSON fixture를 실제 protobuf payload로 되돌리는 인코더 |
| 6 | `tools/verify_pipeline.py` | 캡처 payload와 fixture 재생 payload의 정합성 검증 |
| 7 | `responses/<Endpoint>.json` | 서버가 재생할 엔드포인트별 응답 fixture |
| 8 | `schema/<Endpoint>.json` | `__format__=proto` fixture를 인코딩하기 위한 필드 스키마 |
| 9 | `wss/*.json` | 세션/채팅 WebSocket frame fixture |
| 10 | `src/fixture_store.cpp`, `src/fixture_store.hpp` | `responses/`, `responses_newbie/`, `schema/` 로딩과 payload 캐시 |
| 11 | `src/router.cpp` | HTTP/OpenApi/game endpoint 라우팅과 fixture/DB 응답 선택 지점 |
| 12 | `src/ws_session.cpp`, `src/ws_session.hpp`, `src/websocket.cpp`, `src/websocket.hpp` | WebSocket 핸드셰이크와 frame 재생/상태 연동 지점 |
| 13 | `src/account_database.cpp`, `src/account_database.hpp` | 계정별 SQLite 상태 저장 계층 |
| 14 | `src/account_db_manager.cpp`, `src/account_db_manager.hpp` | 현재 활성 계정 DB 선택과 라우터 연결 |
| 15 | `src/endpoint_mutation_service.cpp`, `src/endpoint_mutation_service.hpp` | 요청에 따라 DB를 변경하고 응답 payload를 생성하는 계층 |
| 16 | `src/userinfo_repository.cpp`, `src/userinfo_repository.hpp` | DB 상태를 `UserInfo` 계열 응답 구조로 재구성하는 계층 |

## HAR 분석 기준 구현 순서

1. 원본 보존
   - `sss/*.har`는 직접 수정하지 않는다.
   - 새 캡처가 생기면 `tools/merge_har.py`로 `responses/`와 `wss/`에 증분 반영한다.
   - 전체 재생 기준을 다시 세울 때만 `tools/har_to_json.py`를 사용한다.

2. 엔드포인트 인벤토리 작성
   - `responses/_manifest.json`을 기준으로 endpoint, hit count, request payload, response payload, proto decode 상태를 정리한다.
   - `schema/<Endpoint>.json`이 없는 endpoint는 raw 재생 대상과 DB 승격 대상을 분리한다.
   - `BattleSave`, `StageEnter`, `ContentClearDeckSave`, `DungeonBattle`처럼 상태를 바꾸는 endpoint는 fixture-only로 두지 않는다.

3. 인증/세션부터 DB화
   - `src/router.cpp`에 `/service/v3/idp/login`, `/service/v3/login`, `/v2/user` 전용 라우트를 추가한다.
   - 해당 라우트는 `src/account_db_manager.cpp`로 활성 계정 DB를 얻고, `src/account_database.cpp`에 저장된 인증/세션 상태를 갱신해야 한다.
   - `src/ws_session.cpp`는 `session-zinny3.game.kakao.com` handshake를 계정 세션 상태와 연결해야 한다.

4. `AccountDatabase` 확장
   - `src/account_database.hpp`에 row 구조를 먼저 추가하고 `src/account_database.cpp::create_schema()`에 SQLite 테이블을 추가한다.
   - 인증 계층에는 최소 `auth_identity`, `auth_session`, `auth_device` 성격의 테이블이 필요하다.
   - endpoint 승격 계층에는 시스템별 테이블을 둔다. 예: `battle_session`, `content_clear_deck`, `arena_state`, `guild_state`, `town_state`, `zodiac_state`, `event_pass_state`.
   - 각 테이블은 HAR request에서 온 식별자와 response에서 갱신되는 결과 필드를 함께 보존해야 한다.

5. `EndpointMutationService` 승격
   - `src/endpoint_mutation_service.hpp`에 endpoint별 공개 메서드를 추가한다.
   - `src/endpoint_mutation_service.cpp`에서 request payload를 파싱하고 `AccountDatabase`를 갱신한 뒤, `schema/<Endpoint>.json` 기준으로 payload를 생성한다.
   - 기존 fixture가 있는 endpoint는 응답 골격만 참고하고, 상태값은 DB에서 읽어 채운다.
   - 기존 fixture가 없고 schema도 없는 endpoint는 먼저 HAR 재캡처 또는 schema 생성 대상이다. 서버 코드에 빈 성공 응답으로 흡수하지 않는다.

6. 라우터 연결
   - `src/router.cpp`의 game endpoint 분기에서 fixture 우선순위보다 DB 뮤테이션이 필요한 endpoint를 먼저 처리한다.
   - 읽기 endpoint는 `AccountDatabase`와 `userinfo_repository`에서 상태를 읽어 응답한다.
   - 쓰기 endpoint는 `EndpointMutationService`를 통해 DB 갱신과 응답 payload 생성을 한 번에 처리한다.
   - Kakao OpenApi endpoint는 `/service/` 일반 응답으로 흘리지 말고 인증/계정/세션 라우트로 분리한다.

7. 검증 기준
   - `tools/verify_pipeline.py`로 fixture 재생 payload가 HAR payload와 맞는지 확인한다.
   - DB 승격 endpoint는 같은 요청을 두 번 처리했을 때 DB 상태가 어떻게 변하는지 `AccountDatabase` 조회 기준으로 확인한다.
   - WebSocket은 `wss/*.json` frame 순서와 `src/ws_session.cpp`에서 생성한 frame 순서를 비교한다.

## DB 연계 구조

런타임 흐름은 다음 구조로 고정해야 한다.

```text
Android SO redirect
  -> PC server EXE `src/router.cpp`
  -> active account `src/account_db_manager.cpp`
  -> SQLite state `src/account_database.cpp`
  -> mutation/read service `src/endpoint_mutation_service.cpp`, `src/userinfo_repository.cpp`
  -> protobuf payload via `schema/<Endpoint>.json`
  -> HTTP/WebSocket response
```

인증 계층은 다음 순서로 저장되어야 한다.

| 흐름 | 저장 위치 | 저장해야 하는 값 |
|---|---|---|
| `/service/v3/idp/login` | `auth_identity` | idpCode, idpId, appId, country, lang, deviceId, serverType |
| `/service/v3/login` | `auth_session` | playerId, zat/access token, refresh token, 만료 시간, appGroupId |
| `/v2/user` | `user_profile`, `user_thumbnail`, `auth_identity` | 유저 기본 정보, 썸네일, 계정 연결 정보 |
| `wss://session-zinny3.game.kakao.com/session` | `auth_session` 또는 `session_state` | session id, 연결 시각, 마지막 heartbeat, close reason |

게임 계층은 다음 순서로 승격한다.

| 시스템 | 우선 파일 | DB 연결 |
|---|---|---|
| 전투/스테이지 | `BattleSave`, `StageEnter`, `StageClear` | `stage`, `battle_session`, `content_clear_deck` |
| 던전 | `DungeonEnter`, `DungeonBattle`, `DungeonClear`, `DungeonInfoUpdate` | `dungeon`, `dungeon_reward`, `dungeon_list_state` |
| 영웅/장비 | `HeroLevelUp`, `HeroUpgrade`, `HeroEquipMulti`, `HeroEquipPresetSave` | `hero`, `hero_reputation`, `item_equip`, `hero_equip_slot` |
| 가챠/상점/아이템 | `GachaPremium`, `GachaSignature`, `ShopItemBuy`, `ItemUse` | `currency`, `item_etc`, `hero`, mileage 계열 테이블 |
| 길드/아레나/랭킹 | `Guild*`, `Arena*`, `Ranking*` | 신규 `guild_state`, `arena_state`, `ranking_reward` |
| 타운/오브제 | `Town*`, `Objet*`, `SetHeroSlotObjet` | 신규 `town_state`, `town_object`, `town_hero_location` |
| 조디악/시그니처 | `Zodiac*`, `Signature*` | 신규 `zodiac_state`, `signature_state` |
| 이벤트/패스 | `Event*`, `MissionPass*` | 신규 `event_state`, `mission_pass_state` |

## 검증 상태

- 빌드/개발 서버 실행은 수행하지 않았다.
- 검증은 HAR 파일 목록, JADX/Manifest 정적 확인, 라우터/훅/CMake 정적 대조로 수행했다.
