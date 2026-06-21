# SSS HAR / KR Kakao 인증 연동 사실 검증 및 수정본

작성일: 2026-06-21  
대상 문서: `docs/ssr.md`  
대조 대상: `docs/sss_har_kr_auth_gap_analysis_20260620.md`, `src/router.cpp`, `src/account_registry.cpp`, `src/account_database.cpp`, `src/ws_session.cpp`, `src/redirect.hpp`, `src/url_redirect.cpp`, `CMakeLists.txt`, `ba.ps1`, `bs.ps1`  
검증 방식: 정적 소스 대조. 빌드, 서버 실행, 게임 실행, 테스트 실행 없음.

## 1. 검증 결론

기존 문서는 KR Kakao 인증 흐름의 큰 방향은 맞지만, 현재 소스 상태와 맞지 않는 지점이 있다. 특히 인증 테이블 신설 위치, WebSocket fixture 사용 상태, 빌드 target명, 누락 라우트의 실제 처리 방식이 부정확했다.

현재 소스 기준으로 확정되는 사실은 다음이다.

1. KR HAR 분석 문서는 정상 인증 순서를 `idp/login -> /service/v3/login -> session-zinny3 WS -> /v2/user`로 기록한다.
2. 현재 `src/router.cpp`에는 `/service/v3/idp/login`, `/service/v3/login`, `/v2/user` 전용 라우트가 없다.
3. `/service/v3/idp/login`과 `/service/v3/login`은 현재 전용 구현 없이 generic `/service/` 빈 JSON 응답으로 흡수된다.
4. `/v2/user`는 generic `/service/` 조건에 들어가지 않으며 전용 구현도 없다.
5. 세션 저장소는 이미 `runtime_state/accounts.sqlite3`의 `account_session` 테이블로 존재한다.
6. `ws_session.cpp`는 `account_session` 값을 `session_replies.json` 응답에 주입한다.
7. `wss/session-zinny3.json` 파일은 존재하지만 현재 `ws_session.cpp`가 직접 로드하지 않는다.
8. 현재 CMake desktop target은 `eversoul_gui`, `eversoul_console`, `eversoul_har_recorder`이며 `eversoul_offline_server` target은 없다.

## 2. 기존 주장별 사실 판정

| 항목 | 기존 문서 주장 | 현재 소스 근거 | 판정 |
| --- | --- | --- | --- |
| `country/get` | 로그 `hk`, 응답 `kr` 불일치 | `src/router.cpp:1601-1604`에서 `country=hk` 로그 후 `{"country":"kr"}` 반환 | 사실 |
| `/v2/appGroup` | `appId=743491` 고정 | `src/router.cpp:1619-1624`에서 `"appId":"743491"` 반환 | 사실 |
| `getForLogin` | `appId=743491`, `country=hk`, `lang=zh-hans` 기본 | `src/router.cpp:1668-1693`에서 동일 기본값 사용 | 사실 |
| `/service/v3/idp/login` | 전용 라우트 없음 | `src/router.cpp` 검색 결과 전용 분기 없음, `src/router.cpp:1762-1766` generic `/service/` 응답 존재 | 사실 |
| `/service/v3/login` | 전용 라우트 없음 | `src/router.cpp` 검색 결과 전용 분기 없음, `src/router.cpp:1762-1766` generic `/service/` 응답 존재 | 사실 |
| `/v2/user` | 전용 라우트 없음 | `src/router.cpp` 검색 결과 전용 분기 없음 | 사실 |
| `auth_identity/auth_session` | `AccountDatabase`에 테이블 필요 | `src/account_database.cpp:108-348`에는 해당 테이블 없음. 다만 `src/account_registry.cpp:106-127`에 `account_session` 존재 | 부분 수정 필요 |
| session WS | `wss/session-zinny3.json` 연동 필요 | `src/ws_session.cpp:59-60`은 `session_replies.json`, `chat_engineio.json`만 로드. `src/ws_session.cpp:97-114`, `:155-180`은 `account_session` 주입 | 부분 구현됨 |
| WS 대상 redirect | `session-zinny3.game.kakao.com` 포함 필요 | `src/redirect.hpp:28-29`, `src/url_redirect.cpp:20-21`, `:37-38`에 포함 | 현재 소스에는 반영됨 |
| 빌드 target | `eversoul_offline_server` | 현재 `CMakeLists.txt:201-241`, `:275` 기준 `eversoul_gui`, `eversoul_console`, `eversoul_har_recorder` | 기존 문서 오류 |

## 3. 문제 지적

### P1. 인증 완료 라우트가 전용 상태 저장 없이 빈 응답으로 끝난다

근거:

- `src/router.cpp:1736-1756`은 `loginZinnyDevice`, `zat/refresh`, `zat/login`, `zat/issueToken` 계열만 처리한다.
- `src/router.cpp:1759-1766`은 남은 `/service/` 호출을 `{}`로 반환한다.
- `/service/v3/idp/login`, `/service/v3/login` 전용 라우트는 없다.

영향:

- HAR 정상 인증 흐름의 IDP 토큰 교환, 세션 토큰 발급, 유저 조회가 서버 상태로 닫히지 않는다.
- `account_session`이 존재해도 해당 라우트에서 갱신되지 않는다.

수정 방향:

- `src/router.cpp:1759` generic `/service/` 분기보다 앞에 `/service/v3/idp/login`, `/service/v3/login` 전용 분기를 둔다.
- `/v2/user`는 `/service/`가 아니므로 별도 위치에 전용 분기를 둔다.
- 응답은 빈 JSON이 아니라 HAR schema와 현재 `AccountEntry`, `AccountSessionRow`, `AccountDatabase` 상태에서 재구성한다.

### P2. 인증 저장소 계획이 기존 `account_session`을 무시했다

근거:

- `src/account_registry.cpp:106-127`은 `account_session` 테이블을 이미 만든다.
- `src/account_registry.cpp:314-357`은 세션 upsert를 제공한다.
- `src/account_registry.cpp:359-371`은 세션 조회를 제공한다.
- `src/ws_session.cpp:97-114`, `:155-180`은 active account의 session 값을 WS 응답에 주입한다.

수정 방향:

- `auth_session`을 `AccountDatabase`에 중복 생성하는 계획은 현재 구조와 충돌한다.
- 토큰, 만료시각, idpCode, idpId, appId, market, lang, zinnyUuid, zat, zrt는 기존 `account_session`을 사용한다.
- `auth_identity`가 필요하면 계정별 `state.sqlite3`에 최소 식별 이력 테이블로 추가하거나, 단일 최신값이면 `account_meta`로 충분한지 먼저 소스 설계 기준을 세운다.

### P3. WebSocket fixture 연결 상태가 문서보다 좁다

근거:

- `src/ws_session.cpp:59-60`은 `wss/session_replies.json`, `wss/chat_engineio.json`만 읽는다.
- `wss/session-zinny3.json`은 파일로 존재하지만 현재 loader 입력이 아니다.
- `src/redirect.hpp:28-29`, `src/url_redirect.cpp:20-21`에는 `session-zinny3.game.kakao.com`이 포함되어 있다.

수정 방향:

- redirect 누락 문제는 현재 소스에서는 해소되어 있다.
- 남은 문제는 `session-zinny3.json`을 실제 세션 fixture로 사용할지, 기존 `session_replies.json`에 병합할지 결정하고 loader와 응답 builder를 일치시키는 것이다.
- `account_session` 주입은 유지한다.

### P4. KR 파라미터와 현재 고정 응답이 불일치한다

근거:

- HAR 분석 문서 `docs/sss_har_kr_auth_gap_analysis_20260620.md:132-134`는 KR `appId=743487` 불일치를 기록한다.
- 현재 `src/router.cpp:1621-1624`는 `appId=743491`을 반환한다.
- 현재 `src/router.cpp:1670-1673`은 `app_id=743491`, `country=hk`, `lang=zh-hans` 기본값을 사용한다.

수정 방향:

- KR/글로벌 분기를 추가하려면 request query/body/header에서 appId, country, lang, market, sdkVer를 읽어 응답을 구성한다.
- 단순 고정값 교체는 글로벌/기존 fixture 흐름을 깨뜨릴 수 있으므로 분기 조건을 명시한다.

### P5. 빌드 명령이 현재 CMake target과 맞지 않는다

근거:

- 현재 target은 `CMakeLists.txt:119-152`의 `swappywrapper`, `swappywrapper_har`, `CMakeLists.txt:201-241`의 `eversoul_gui`, `eversoul_console`, `CMakeLists.txt:275`의 `eversoul_har_recorder`다.
- `bs.ps1:19-61`도 `eversoul_console`, `eversoul_gui`, `eversoul_har_recorder`를 빌드하도록 되어 있다.
- `ba.ps1:6-12`는 Android `swappywrapper`를 빌드한다.
- `build.sh:59-64`는 현재 CMake에 없는 `eversoul_offline_server`를 참조한다.

수정 방향:

- 문서의 PC 서버 target명은 현재 CMake 기준 `eversoul_gui` 또는 `eversoul_console`로 고친다.
- `build.sh`의 `eversoul_offline_server` 참조는 현재 소스와 맞지 않는 불일치로 기록한다.

## 4. 수정된 구현 순서

### 1단계. KR 인증 요청 분기 정합화

작업 파일:

- `src/router.cpp`

작업 내용:

- `country/get` 로그와 응답 country를 일치시킨다.
- `/v2/appGroup`, `/v2/app`, `getForLogin`은 request에서 KR/글로벌 식별자를 읽어 appId, country, lang, market을 분기한다.
- 기존 글로벌 캡처 흐름은 분기 밖에서 보존한다.

검증 근거:

- `src/router.cpp:1601-1604`
- `src/router.cpp:1619-1628`
- `src/router.cpp:1668-1693`
- `docs/sss_har_kr_auth_gap_analysis_20260620.md:132-134`

### 2단계. `/service/v3/idp/login` 전용 라우트

작업 파일:

- `src/router.cpp`
- 필요 시 `src/account_registry.{hpp,cpp}`
- 필요 시 `src/account_database.{hpp,cpp}`

작업 내용:

- generic `/service/` 분기 앞에 전용 라우트를 추가한다.
- IDP request에서 idpCode, idpId, appId, country, lang, deviceId, serverType을 추출한다.
- 세션 토큰이 아직 없으면 `account_session`에는 넣지 않고 identity 이력 또는 `account_meta`에 식별 정보를 보존한다.

검증 근거:

- 현재 generic 분기: `src/router.cpp:1759-1766`
- 기존 session 테이블: `src/account_registry.cpp:106-127`

### 3단계. `/service/v3/login` 전용 라우트

작업 파일:

- `src/router.cpp`
- `src/account_registry.{hpp,cpp}`

작업 내용:

- playerId, zat/access token, zrt/refresh token, 만료시각을 생성하거나 HAR 기준으로 재구성한다.
- 결과를 `AccountSessionRow`로 만들어 `account_registry().upsert_session()`에 저장한다.
- 응답은 KakaoGames SDK가 요구하는 player/session 필드를 포함한다.

검증 근거:

- session upsert: `src/account_registry.cpp:314-357`
- WS session 주입: `src/ws_session.cpp:97-114`, `:155-180`

### 4단계. `/v2/user` 전용 라우트

작업 파일:

- `src/router.cpp`
- `src/account_database.{hpp,cpp}`
- `src/userinfo_repository.cpp`

작업 내용:

- active account의 `user_profile`, `user_thumbnail`, `account_session`을 기준으로 user 응답을 만든다.
- `/v2/user`는 `/service/`가 아니므로 별도 분기가 필요하다.

검증 근거:

- 전용 라우트 부재: `src/router.cpp` 검색 결과 없음.
- 계정 profile schema: `src/account_database.cpp:115-145`

### 5단계. session-zinny3 fixture 연결

작업 파일:

- `src/ws_session.cpp`
- 필요 시 `wss/session-zinny3.json`

작업 내용:

- 현재 loader가 읽는 `session_replies.json`과 실제 KR `session-zinny3.json`의 frame 구조를 비교한다.
- `session-zinny3.json`을 별도 입력으로 쓰면 loader, reply builder, account_session 주입 지점을 함께 갱신한다.
- 기존 `account_session` 주입은 제거하지 않는다.

검증 근거:

- loader: `src/ws_session.cpp:53-83`
- session 주입: `src/ws_session.cpp:97-114`, `:155-180`
- redirect host: `src/redirect.hpp:28-29`, `src/url_redirect.cpp:20-21`

## 5. 현재 빌드 대상 기록

이번 검증에서는 빌드를 실행하지 않았다. 문서상 현재 target명은 아래처럼 기록해야 한다.

| 용도 | 현재 target 또는 스크립트 | 근거 |
| --- | --- | --- |
| Android 기본 SO | `swappywrapper` | `CMakeLists.txt:119-149`, `ba.ps1:6-12` |
| Android HAR SO | `swappywrapper_har` | `CMakeLists.txt:152-176` |
| Windows GUI 서버 | `eversoul_gui` | `CMakeLists.txt:201-238`, `bs.ps1:34-47` |
| Windows 콘솔 서버 | `eversoul_console` | `CMakeLists.txt:241-268`, `bs.ps1:19-32` |
| Windows HAR 기록 서버 | `eversoul_har_recorder` | `CMakeLists.txt:275-300`, `bs.ps1:49-61` |
| 낡은 참조 | `eversoul_offline_server` | 현재 `CMakeLists.txt`에는 없음. `build.sh:59-64`에는 남아 있음 |

## 6. 수정된 마일스톤

| M | 범위 | 완료 기준 |
| --- | --- | --- |
| M1 | KR OpenApi/Infodesk 분기 | `country/get`, `/v2/appGroup`, `/v2/app`, `getForLogin`이 KR/글로벌 입력에 맞는 값을 반환 |
| M2 | IDP/login/user 라우트 | `/service/v3/idp/login`, `/service/v3/login`, `/v2/user`가 빈 응답이 아니라 계정/session 상태를 갱신하고 응답 |
| M3 | session-zinny3 연결 | KR session fixture 또는 병합 fixture가 `account_session` 값을 반영해 응답 |
| M4 | 문서/스크립트 정합 | 문서의 target명이 현재 CMake와 일치하고, 낡은 `eversoul_offline_server` 참조는 불일치로 분리 기록 |

