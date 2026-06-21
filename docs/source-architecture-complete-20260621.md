# Eversoul Offline 전체 소스 아키텍처 기록

작성일: 2026-06-21  
대상 경로: `D:\26_project\eversoul-offline`  
검증 방식: 파일 목록, `CMakeLists.txt`, 루트 스크립트, `src`, `src/web`, `tools`, `scripts`, `cmake`, `smali_inject`, `eversoul-redirect-module`, `pine_helper`, 데이터 디렉터리의 정적 소스 확인  
실행 범위: 빌드, 개발 서버, 게임 실행, 서버 실행, 테스트 실행 없음

## 1. 전체 구조 결론

이 저장소는 에버소울 클라이언트의 네트워크 요청을 로컬 오프라인 서버로 돌리고, PC 쪽에서 fixture, SQLite 계정 상태, 수확된 HAR 응답, 프록시를 조합해 게임 응답을 만들어 주는 C++/React/Android 후킹 기반 오프라인 시뮬레이터다.

실제 런타임 갈래는 네 갈래다.

1. Windows PC 서버 갈래
   - `eversoul_gui`: Win32 + WebView2 관리 앱.
   - `eversoul_console`: 콘솔 서버 앱.
   - `eversoul_har_recorder`: 네트워크 수확용 HAR 기록 서버.
   - 포트는 현재 문서와 소스 기준 `9991` 서버 수신 포트가 중심이다.

2. Android 주입 라이브러리 갈래
   - `swappywrapper`: 게임 프로세스에 로드되는 `libswappywrapper.so`.
   - `swappywrapper_har`: HAR 수확 모드용 변형.
   - Java, OkHttp, IL2CPP, libc 네트워크 지점을 후킹해서 게임 요청을 로컬 PC 서버로 유도한다.

3. 데이터/프로토콜 갈래
   - `responses`, `responses_newbie`, `schema`, `wss`, `expected`, `ProtocolBuffers`가 fixture, schema, WebSocket 응답, 검증 기준, protobuf 정의를 제공한다.
   - C++ 서버는 JSON fixture를 protobuf payload로 인코딩하고, 계정 SQLite 상태를 protobuf 응답으로 다시 만든다.

4. 관리 웹 갈래
   - `src/web`의 React/Vite/Tailwind 관리 화면이 C++ 서버의 `/web/api/*`를 호출한다.
   - Windows GUI는 `src/web/dist`를 C++ 바이트 배열로 내장해서 WebView2로 표시한다.

## 2. 실제 요청 흐름

### 2.1 PC 관리 앱 실행 흐름

1. `gui_main.cpp` 또는 `console_main.cpp`가 실행된다.
2. 실행 파일 위치와 데이터 디렉터리를 기준으로 `Config`가 구성된다.
3. `server::start_async` 또는 `run_server`가 `9991`에서 HTTP 서버를 연다.
4. `server.cpp`가 요청을 읽고 `router.cpp`의 `route_request`로 넘긴다.
5. `router.cpp`는 경로에 따라 관리 웹, 관리 API, 게임 API, WebSocket, fixture, SQLite 계정 상태, 프록시 응답 중 하나를 선택한다.
6. 응답은 `http.cpp`가 HTTP/1.1 형식으로 기록한다.

### 2.2 Android 게임 요청 흐름

1. 게임은 원래 외부 Kakao/에버소울 서버와 통신한다.
2. `libswappywrapper.so`가 게임 프로세스에 로드된다.
3. `entry.cpp` 생성자가 보호 우회, 네트워크 리다이렉트, frida-gum 초기화를 설치한다.
4. `JNI_OnLoad`가 LSPlant Java hook과 IL2CPP native hook 설치를 호출한다.
5. Java URL, OkHttp URL, UnityWebRequest URL, libc `connect/getaddrinfo` 후킹이 서버 주소를 `127.0.0.1:9991` 계열로 바꾼다.
6. Android 기기와 PC 사이에는 `adb reverse`가 필요하다.
7. PC 서버가 실제 game endpoint 응답을 생성한다.

### 2.3 게임 응답 선택 흐름

`router.cpp` 기준 응답 선행순위는 다음과 같이 확인된다.

1. 관리 웹 및 `/web/api/*`.
2. 계정 선택용 레거시 HTML.
3. Kakao SDK/Infodesk 경로.
4. `/Live/*` 정적 파일.
5. Login/UserInfo/Tutorial 계열 특수 처리.
6. `prefer_fixtures`가 켜진 경우 fixture 선행 응답.
7. SQLite 계정 DB 기반 mutation handler.
8. 수확된 session payload.
9. 수확된 HAR payload.
10. 손으로 만든 protobuf fallback.
11. desktop 프록시 또는 404.

현재 `prefer_fixtures`가 활성인 full 모드에서는 DB mutation handler보다 fixture가 먼저 선택될 수 있다. 이 동작은 `docs/offline-multi-plan.md`에도 별도 문제로 기록되어 있다.

## 3. 빌드 방식

### 3.1 현재 `CMakeLists.txt` 기준

프로젝트는 루트 `CMakeLists.txt`가 중심이다.

- 최소 CMake: `3.21`
- 프로젝트명: `eversoul_offline`
- 언어: C, C++
- C++ 표준: C++23
- 공통 include: `src`, 루트, `third_party/sqlite`, `third_party/sqlite_orm`
- 공통 desktop 링크: `Threads`, `CURL`, Windows 라이브러리
- Android 링크: `log`, `dl`, `m`, `dobby`, `lsplant_static`, `frida-gum`

### 3.2 공통 C++ 소스 묶음

`EVERSOUL_CORE_SOURCES`:

- `src/util.cpp`
- `src/crypto.cpp`
- `src/protobuf.cpp`
- `src/json.cpp`
- `src/json_encoder.cpp`
- `src/offline_data.cpp`
- `src/fixture_store.cpp`
- `src/websocket.cpp`
- `src/ws_session.cpp`
- `src/log.cpp`
- `src/http.cpp`
- `src/proxy.cpp`
- `src/payloads.cpp`

이 묶음은 프로토콜, fixture, HTTP, WebSocket, 로그, 오프라인 데이터 읽기, 프록시, payload 조립을 담당한다.

### 3.3 desktop 전용 C++ 소스 묶음

`EVERSOUL_DESKTOP_SOURCES`:

- `src/orm/storage.cpp`
- `src/orm/userinfo_builder.cpp`
- `src/account_db.cpp`
- `src/account_registry.cpp`
- `src/account_database.cpp`
- `src/account_db_manager.cpp`
- `src/userinfo_repository.cpp`
- `src/endpoint_mutation_service.cpp`
- `src/game_catalog.cpp`
- `src/sse_log.cpp`
- `src/router.cpp`
- `src/server.cpp`
- `third_party/sqlite/sqlite3.c`

이 묶음은 Windows 서버, 계정 SQLite 저장소, router, 관리 API, 게임 상태 mutation, game catalog, SSE 로그를 담당한다.

### 3.4 Android 대상

현재 Android 분기에서 생성되는 대상은 두 개다.

1. `swappywrapper`
   - 산출물: shared library
   - 목적: 게임 프로세스에 로드되는 기본 후킹 라이브러리
   - 포함 파일: 공통 core, Android hook 파일, `anticheat_patch.cpp`, `entry.cpp`, proto blob, redirect dex object

2. `swappywrapper_har`
   - 산출물: shared library
   - 목적: HAR 수확 모드
   - 차이: `EVERSOUL_HAR_MODE`, `EVERSOUL_ENABLE_URL_REDIRECT=0`, `EVERSOUL_ENABLE_TRANSPORT_REDIRECT=0`

Android 빌드는 protobuf 파일 묶음을 ELF object로 만들고, `smali_inject/RedirectHooks.java`를 dex로 빌드한 뒤 ELF relocatable object로 바꿔 shared library에 포함한다.

### 3.5 Windows desktop 대상

현재 desktop 분기에서 생성되는 주요 대상은 다음과 같다.

1. `eversoul_gui`
   - Win32 GUI + WebView2
   - `src/gui_main.cpp`, `src/app.rc`, embedded web blob 포함
   - 실행 후 서버를 열고 WebView2로 관리 웹을 띄운다.

2. `eversoul_console`
   - 콘솔 서버
   - `src/console_main.cpp`, `src/console_app.rc`, embedded web blob 포함
   - 서버 실행과 브라우저 열기, logcat 처리 흐름이 있다.

3. `eversoul_har_recorder`
   - HAR 수확 서버
   - `src/har_recorder.cpp`, `src/har_server_main.cpp`, `src/har_app.rc`
   - WebSocket, fixture, DB 서버 묶음은 포함하지 않는다.

4. `encoder_validate`
   - JSON fixture를 protobuf로 인코딩해 expected payload와 비교하는 검증 도구.

5. `offline_data_test`
   - `ESOFLND1` 오프라인 데이터 archive 읽기 검증 도구.

6. `orm_seed_check`
   - ORM seed 상태 확인 도구.

### 3.6 루트 스크립트

1. `ba.ps1`
   - Android `swappywrapper` 빌드 전용 PowerShell 스크립트.
   - NDK 경로는 `C:\Users\koiya\AppData\Local\Android\Sdk\ndk\29.0.14206865`.
   - ABI는 `arm64-v8a`, platform은 `android-29`, 빌드 타입은 `Release`.

2. `bs.ps1`
   - Windows 배포 산출물 생성 스크립트.
   - 옵션: `--gui`, `--cmd`, `--har`.
   - `--har`가 아니면 `src/web`에서 `npm run build`를 실행하도록 작성되어 있다.
   - `release\webview`, `release\cmd`, `release\har` 구성을 만든다.

3. `build.sh`
   - HAR merge, schema export, expected dump, offline data pack, desktop build, Android build, hash 기록까지 수행하도록 작성된 통합 Bash 스크립트.
   - 현재 `CMakeLists.txt`에는 `eversoul_offline_server` target이 없는데 `build.sh`는 해당 target을 빌드한다. 따라서 이 스크립트는 현재 CMake target 명칭과 불일치한다.

### 3.7 현재 문서와 실제 CMake의 명칭 차이

`CLAUDE.md`, `README.md`, `build.sh`에는 `eversoul_offline_server` 명칭이 남아 있다. 현재 루트 `CMakeLists.txt` 기준 desktop 서버 산출물은 `eversoul_gui`, `eversoul_console`, `eversoul_har_recorder`다. 이 문서는 현재 CMake 파일을 기준으로 기록한다.

## 4. 외부 의존성

### 4.1 네이티브 의존성

| 경로 | 용도 |
| --- | --- |
| `third_party/dobby` | Android native inline hook. `connect`, `getaddrinfo`, LSPlant hooker, IL2CPP hook 계열에서 사용. |
| `third_party/lsplant` | Android ART Java method hook. Java URL, OkHttp, Process, Kakao SDK hook에 사용. |
| `third_party/frida-gum` | Android native interceptor. `libil2cpp.so`와 UnityWebRequest hook에 사용. |
| `third_party/sqlite` | desktop 계정 DB, registry DB, catalog DB 저장소. |
| `third_party/sqlite_orm` | 구형/보조 ORM 저장소와 UserInfo builder. |
| `third_party/webview2` | Windows GUI WebView2 SDK와 loader. |
| `third_party/adb` | ADB 실행 파일 묶음. |
| `third_party/jadx-1.5.5` | APK/DEX 분석 도구. |
| `third_party/apktool_3.0.2.jar` | APK/Smali 분석 및 패치 도구. |
| `third_party/tailwindcss.exe` | Tailwind 보조 실행 파일. |

### 4.2 배포용 런타임 파일

`copy_only\adb`:

- `adb.exe`
- `AdbWinApi.dll`
- `AdbWinUsbApi.dll`

`copy_only\dll`:

- `libcurl-x64.dll`
- `libgcc_s_seh-1.dll`
- `libstdc++-6.dll`
- `libwinpthread-1.dll`

### 4.3 웹 의존성

`src/web/package.json` 기준:

- React `19.2.6`
- React DOM `19.2.6`
- Vite `8`
- TypeScript `~6.0.2`
- Tailwind CSS
- `@tailwindcss/vite`
- `lucide-react`
- `clsx`
- `tailwind-merge`
- ESLint 10 계열

## 5. 데이터와 프로토콜 자산

### 5.1 주요 데이터 디렉터리

| 경로 | 확인된 파일 수 | 역할 |
| --- | ---: | --- |
| `responses` | 102 | 일반 계정/운영 상태 fixture JSON. |
| `responses_newbie` | 156 | 신규 계정/튜토리얼 상태 fixture JSON. |
| `schema` | 167 | endpoint별 JSON/protobuf schema. |
| `wss` | 4 | WebSocket/Engine.IO 응답 fixture. |
| `expected` | 90 | fixture 인코딩 결과 검증용 protobuf payload. |
| `probability` | 11 | 확률표 데이터. |
| `ProtocolBuffers/*.proto` | 2633 | 게임 protobuf 정의. |

### 5.2 ProtocolBuffers 분기

| 분기 | Request | Response | ESChat |
| --- | ---: | ---: | ---: |
| `CN` | 400 | 488 | 10 |
| `Global` | 401 | 486 | 10 |
| `JP` | 377 | 451 | 10 |

현재 CMake의 Android proto blob 생성은 `ProtocolBuffers/Global/*.proto`를 대상으로 한다.

### 5.3 오프라인 데이터 archive

`offline_data.cpp`와 `tools/pack_offline_data.py`는 `ESOFLND1` 형식의 archive를 사용한다. 이 archive에는 fixture, schema, WebSocket fixture, 웹 dist 산출물이 들어갈 수 있다. Windows GUI/콘솔은 `cmake/gen_web_blob.py`로 `src/web/dist`를 C++ 바이트 배열로 내장한다.

## 6. C++ 공통 core 갈래

### 6.1 네트워크와 HTTP

- `common.hpp`
  - 포트 상수, HTTP request/response 구조체, 서버 설정 구조체가 있다.
  - 기본 게임 로컬 포트는 `9999`, PC 서버 수신 포트는 `9991`.
  - Android 기본 data dir은 `/data/data/com.kakaogames.eversoul/files/offline_data`.

- `http.cpp`, `http.hpp`
  - blocking socket 기반 HTTP/1.1 요청 읽기와 응답 쓰기.
  - chunked streaming 서버가 아니라 단순 request/response 처리다.

- `server.cpp`, `server.hpp`
  - desktop 서버 수명 주기.
  - fixture, websocket fixture, ORM bootstrap 후 socket listen.
  - client마다 thread를 만들고 router로 위임.
  - WebSocket upgrade도 이 층에서 판별한다.

- `proxy.cpp`, `proxy.hpp`
  - desktop에서는 libcurl로 upstream proxy 요청을 수행한다.
  - Android에서는 raw TCP/WebSocket relay로 PC 서버에 넘기는 흐름을 가진다.

- `websocket.cpp`, `websocket.hpp`
  - RFC6455 handshake, frame 읽기/쓰기, mask 처리.
  - Kakao SDK/채팅 성격의 WebSocket 응답을 보낸다.

- `ws_session.cpp`, `ws_session.hpp`
  - `wss/session_replies.json`, `wss/chat_engineio.json`을 읽는다.
  - active account session 상태를 반영한 JSON-RPC push와 Engine.IO 응답을 만든다.

### 6.2 데이터 인코딩과 payload

- `protobuf.cpp`, `protobuf.hpp`
  - protobuf wire format 읽기/쓰기, field replacement, hex decode를 담당한다.

- `json.cpp`, `json.hpp`
  - 작은 JSON parser/dumper.
  - 숫자 lexeme을 보존하는 구조가 있다.

- `json_encoder.cpp`, `json_encoder.hpp`
  - schema 기반 JSON to protobuf encoder.
  - fixture JSON을 실제 protobuf payload로 바꾸는 중심 모듈이다.

- `payloads.cpp`, `payloads.hpp`
  - 게임 응답 envelope, request sequence 추출, payload 조립.
  - harvested include, session payload, empty endpoint, hand-built fallback을 제공한다.

- `fixture_store.cpp`, `fixture_store.hpp`
  - `responses`, `responses_newbie`, `schema` 로딩.
  - endpoint별 fixture를 찾아 JSON을 protobuf로 인코딩한다.

- `offline_data.cpp`, `offline_data.hpp`
  - `ESOFLND1` archive 읽기.
  - embedded web blob과 filesystem fallback을 처리한다.

### 6.3 공통 유틸리티

- `util.cpp`, `util.hpp`
  - 문자열, 시간, JSON body 보조, 파일/경로 보조.

- `crypto.cpp`, `crypto.hpp`
  - SHA-256, SHA-1, HMAC-SHA256, base64, Infodesk signature, WebSocket accept hash.

- `log.cpp`, `log.hpp`
  - 공통 로그 출력.

- `sse_log.cpp`, `sse_log.hpp`
  - desktop 관리 웹으로 전달하는 Server-Sent Events 로그 버퍼.

- `platform.hpp`
  - Windows/POSIX socket close, mkdir wrapper.

## 7. Desktop 서버와 계정 DB 갈래

### 7.1 중앙 router

`router.cpp`는 desktop 서버의 가장 큰 분기점이다.

처리 범위:

- `/web` 정적 관리 웹.
- `/web/api/*` 관리 API.
- `/account-select`, `/account_new.html`, `/account-mode/set` 레거시 계정 선택 UI.
- `/socket.io` polling bootstrap.
- Kakao SDK/Infodesk/service endpoint.
- `/Live/*` 정적 파일.
- 게임 protobuf endpoint.
- fixture 선행 응답.
- DB-backed mutation 응답.
- harvested/session 응답.
- hand-built fallback.
- desktop proxy fallback.

### 7.2 관리 API 범주

`handle_web_api`가 확인한 관리 API 범주:

- 상태: `/web/api/status`, `/web/api/config`, `/web/api/health`
- 로그: `/web/api/logs/server`, `/web/api/logs/adb`, recent, clear, SSE
- DB: `/web/api/db/tables`, `/web/api/db/table/*`, `/web/api/db/schema/*`
- fixture: list/read
- ADB: port, probe
- injector: devices, reverse-list, check, connect, run, stop, status, adb
- game data: summary, userinfo, currencies, heroes, settings
- files: dirs, list, read, write
- cheat: status, currency, hero
- i18n/logo
- accounts: list, create, get, patch, select, copy, export, import, session patch, delete
- setup: complete, status

### 7.3 계정 registry DB

`account_registry.cpp`는 `runtime_state/accounts.sqlite3`를 관리한다.

테이블:

- `account_registry`
- `active_account`
- `account_operation_log`
- `account_session`

기능:

- 계정 목록
- 계정 생성
- 활성 계정 선택
- 계정 rename/update
- 계정 삭제
- session 저장/수정
- 작업 로그 기록
- account id 안전성 검사

### 7.4 계정별 상태 DB

`account_database.cpp`는 계정별 `state.sqlite3`를 관리한다.

확인된 테이블:

- `account_meta`
- `user_profile`
- `user_thumbnail`
- `currency`
- `hero`
- `hero_reputation`
- `item_etc`
- `item_equip`
- `hero_equip_slot`
- `stage`
- `story`
- `tutorial`
- `formation`
- `formation_hero`
- `formation_relic`
- `spirit_tree`
- `hero_option`
- `challenge_mode`
- `challenge_mode_task`
- `auto_hunt`
- `dungeon_list_state`
- `dungeon`
- `dungeon_reward`
- `dungeon_perfect_clear_record`
- `userinfo_preserved_field`

seed 입력:

- 기존 계정은 `responses/UserInfo.json` 흐름을 기준으로 seed된다.
- 신규 계정은 `responses_newbie/UserInfo.json` 흐름을 기준으로 seed된다.

저장 범위:

- 사용자 profile
- thumbnail
- currency
- hero
- hero reputation
- equip item
- hero equip slot
- tutorial
- formation
- spirit tree
- auto hunt
- dungeon
- preserved UserInfo field
- metadata

### 7.5 게임 endpoint mutation

`endpoint_mutation_service.cpp`는 실제 게임 endpoint 호출에 따라 SQLite 계정 상태를 변경하고 protobuf 응답을 만든다.

확인된 처리 범주:

- Tutorial 진행
- Stage clear
- Story clear
- Dungeon 진입/전투/클리어
- Formation 저장
- Hero level up
- Hero upgrade
- Hero gift
- Hero equip / unequip
- Equip item upgrade
- Equip item transcendence
- Spirit tree slot equip / unequip
- Gacha hero / premium / signature
- Shop item buy
- Item use
- Task receive
- Achievement receive
- Mail item all receive
- Attendance receive
- Friend heart receive all
- User nickname change
- Auto hunt open / receive

### 7.6 UserInfo 재구성

`userinfo_repository.cpp`는 `AccountDatabase` 상태를 다시 `/UserInfo` JSON과 protobuf payload로 만든다.

처리 방식:

- 정규화된 DB 테이블에서 profile, currency, hero, equip, formation, tutorial, auto hunt 등을 읽는다.
- DB에 보존된 원본 field를 병합한다.
- schema를 이용해 최종 protobuf payload로 인코딩한다.

### 7.7 구형 ORM 갈래

`src/orm/storage.cpp`, `src/orm/schema.hpp`, `src/orm/userinfo_builder.cpp`는 `sqlite_orm` 기반 저장소다.

역할:

- bootstrap용 `ensure_ready`
- account mode 일부 처리
- game data settings 일부 처리
- 구형 UserInfo builder

현재 중심 계정 상태는 `AccountDatabase`와 `EndpointMutationService`다. ORM 갈래는 보조 호환층으로 남아 있다.

## 8. Android 후킹 갈래

### 8.1 현재 CMake 포함 Android 파일

- `entry.cpp`
  - 생성자에서 `anticheat::install`, `net_redirect::install`, `frida_gum::init` 호출.
  - `JNI_OnLoad`에서 LSPlant Java hook과 native IL2CPP hook 설치.

- `anticheat_patch.cpp`
  - libc `pthread_create`를 inline hook.
  - `cawwyayy` 경로의 thread start routine을 dummy routine으로 바꾼다.

- `net_redirect.cpp`
  - Dobby로 `connect`, `getaddrinfo`, `android_getaddrinfofornet` hook.
  - 대상 host와 80/443/1739 port를 로컬 PC 서버 포트로 돌린다.
  - HAR 모드에서는 transport redirect가 비활성화된다.

- `redirect.cpp`
  - host/domain 기반 URL rewrite 정책.
  - HTTP는 `http://127.0.0.1:9991`, WebSocket은 `ws://127.0.0.1:9991` 계열로 만든다.

- `url_redirect.cpp`
  - Android hook에서 쓰는 순수 URL rewrite.
  - Kakao, game, websocket 도메인과 lockincomp 계열을 처리한다.

- `native_url_hooks.cpp`
  - frida-gum interceptor 기반 IL2CPP hook.
  - `libil2cpp.so` 로딩 이후 UnityWebRequest constructor와 URL setter를 후킹한다.

- `dex_loader.cpp`
  - embedded `RedirectHooks.dex`를 `InMemoryDexClassLoader`로 로드한다.

- `frida_gum_init.cpp`
  - `gum_init_embedded()`를 1회 초기화한다.

- `lsplant_hooks.cpp`
  - LSPlant 초기화.
  - Dobby hooker/unhooker를 LSPlant에 연결.
  - `RedirectHooks` class 로드.
  - native callback 등록.
  - Java URL constructor, `android.os.Process.killProcess`, OkHttp `Request$Builder.url`, `HmacSHA256Util.verifySignature`, Kakao CustomTab 계열 hook 설치.

- `inline_hook.cpp`
  - ARM64 absolute jump/trampoline 기반 inline hook 엔진.
  - PC-relative instruction에는 실패하도록 작성되어 있다.

### 8.2 현재 CMake 미포함 Android/실험 파일

아래 파일은 소스에 존재하지만 현재 루트 `CMakeLists.txt`의 Android source 목록에는 들어가지 않는다.

- `il2cpp_hook.cpp`
  - Dobby 기반 IL2CPP/UnityWebRequest hook 갈래.

- `java_hook.cpp`
  - Java hook 보조 갈래.

- `lsplant_hook.cpp`
  - 단수명 파일명 LSPlant hook 갈래.

- `stealth_dl.cpp`
  - 별도 stealth namespace 구현 파일.

이 파일들은 현재 빌드 대상의 동작이라고 기록하지 않는다. 소스 보존 갈래로 기록한다.

## 9. Web 관리 화면

### 9.1 현재 웹 빌드 구성

- `src/web/package.json`
  - private React/Vite 앱.
  - `dev`, `build`, `lint`, `preview` script가 있다.

- `src/web/vite.config.ts`
  - base: `/web/`
  - plugin: React, Tailwind CSS
  - alias: `@ -> src`
  - dev proxy: `/web/api -> http://127.0.0.1:9991`

- `src/web/tsconfig.app.json`
  - target `ES2023`
  - jsx `react-jsx`
  - bundler module resolution
  - unused import/local 검사를 켠다.

- `src/web/eslint.config.js`
  - TypeScript, React hooks, React refresh 규칙.

### 9.2 앱 구조

- `src/web/src/App.tsx`
  - page router.
  - `dashboard`, `accounts`, `cheat`, `db`, `health`, `logs`, `fixtures`, `gamedata`, `files`, `injector`, `manual` 화면을 전환한다.

- `src/web/src/layout/AppShell.tsx`
  - sidebar, topbar, theme, page state, i18n provider.

- `src/web/src/layout/NavSidebar.tsx`
  - 11개 관리 화면 navigation.

- `src/web/src/layout/TopBar.tsx`
  - 언어, theme, 메뉴 영역.

### 9.3 React page

| 파일 | 역할 |
| --- | --- |
| `DashboardPage.tsx` | 서버 상태, 게임 데이터 요약, ADB/게임 제어 카드. |
| `AccountsPage.tsx` | 계정 목록, 생성, 선택, 이름 변경, 가져오기/삭제 계열 관리. |
| `CheatPage.tsx` | currency/hero cheat API 호출. |
| `DbPage.tsx` | DB table, schema, row 조회. |
| `HealthPage.tsx` | health API 조회. |
| `LogsPage.tsx` | server/adb SSE 로그와 recent/clear 처리. |
| `FixturesPage.tsx` | fixture 목록과 내용 조회. |
| `GameDataPage.tsx` | UserInfo, currencies, heroes, settings 조회/수정. |
| `FilesPage.tsx` | 데이터 파일 목록, 읽기, 쓰기. |
| `InjectorPage.tsx` | ADB devices, reverse, connect, run, stop, status, manual adb. |
| `ManualPage.tsx` | 내장 매뉴얼 표시. |
| `SettingsPage.tsx` | 파일은 있으나 현재 `App.tsx` page switch와 `NavSidebar` 항목에는 연결되지 않는다. |

### 9.4 React hook

- `usePolling`
  - fetch, abort, interval을 공통 처리한다.

- `useAccounts`
  - account API 상태 조회.

- `useCheatStatus`
  - cheat status 조회.

- `useDbTables`
  - DB table 목록 조회.

- `useServerStatus`
  - 서버 status 조회.

### 9.5 legacy web

`src/web/legacy`에는 이전 관리 UI와 게임 내 계정 선택 HTML이 있다.

- `index.html`, `app.js`, `i18n.js`, `input.css`, `style.css`
- `account_select.html`, `account_select.js`
- `account_new.html`, `account_new.js`
- `account_i18n.js`

`router.cpp`는 계정 선택과 신규 계정 생성 흐름에서 이 legacy 파일을 직접 제공한다.

## 10. 도구와 스크립트

| 경로 | 역할 |
| --- | --- |
| `tools/build_userinfo.py` | `/UserInfo` protobuf payload 재작성, starter hero formation 반영, `src/user_info_payload.inc` 생성. |
| `tools/bump_version.py` | 루트 package version과 README badge version 갱신. |
| `tools/decode_tutorial_flow.py` | HAR에서 tutorial network flow를 protobuf로 decode. |
| `tools/download_probability.py` | Kakao Oqupie 확률표를 `probability/`로 내려받는 도구. |
| `tools/dump_expected.py` | fixture를 protobuf로 인코딩해 `expected/*.bin` 생성. |
| `tools/export_schema.py` | endpoint별 flattened schema JSON 생성. |
| `tools/har_to_json.py` | HAR game response payload를 `responses/*.json`, `_manifest.json`, WSS transcript로 변환. |
| `tools/harvest_har.py` | HAR response payload bytes를 `src/harvested_session.inc`로 수확. |
| `tools/integration_test.py` | 이미 실행 중인 서버에 TCP 요청을 보내 endpoint 응답을 비교하는 통합 테스트. |
| `tools/json_to_proto.py` | fixture JSON을 protobuf payload/envelope로 변환. |
| `tools/merge_har.py` | HAR fixture를 병합하고 수동 편집 파일을 보존. |
| `tools/pack_offline_data.py` | responses, schema, wss, web dist를 `ESOFLND1` archive로 pack. |
| `tools/patch_dex.py` | DEX patch 보조. |
| `tools/patch_java_redirect.py` | Java redirect patch 보조. |
| `tools/patch_url_init.py` | URL 초기화 patch 보조. |
| `tools/apply_java_redirect.sh` | Java redirect patch 적용 스크립트. |
| `tools/proto_registry.py` | endpoint별 proto descriptor pool 구성과 wire/json 변환. |
| `tools/verify_pipeline.py` | HAR에서 fixture/protobuf reproduction pipeline 검증. |
| `tools/ws_test.py` | 표준 라이브러리 기반 WebSocket 테스트 클라이언트. |
| `tools/wss_fixtures.py` | decoded transcript에서 WSS fixture 생성. |
| `scripts/build_redirect_dex.sh` | `RedirectHooks.java`를 dex로 빌드하고 Android object로 변환. |
| `cmake/copy_data_dirs.cmake` | target 출력 경로로 responses/schema/wss와 런타임 파일 복사. |
| `cmake/gen_proto_blob.cmake` | `ProtocolBuffers/Global/*.proto`를 하나의 blob object 입력으로 생성. |
| `cmake/gen_web_blob.py` | `src/web/dist`를 C++ embedded web source로 변환. |

`tools/integration_test.py`는 서버 실행이 전제다. 이번 문서화 작업에서는 실행하지 않았다.

## 11. Smali, Xposed, Pine 보조 갈래

### 11.1 `smali_inject`

- `RedirectHooks.java`
  - LSPlant에서 로드하는 Java callback container.
  - URL constructor, OkHttp, `killProcess`, `verifySignature`, Kakao CustomTab 관련 native callback을 가진다.

- `URLHook.java`
  - Java static URL rewrite 구현.
  - 대상 host/path를 `127.0.0.1:9991`로 바꾼다.

- `URLHook.smali`
  - compiled smali 형태 hook.

- `README.md`
  - 수동 Smali injection 절차 설명.

### 11.2 `eversoul-redirect-module`

Gradle Android/Xposed 모듈이다.

- namespace/application: `com.rikka.eversouloffline`
- compileSdk: 34
- minSdk: 26
- targetSdk: 34
- externalNativeBuild: CMake C++17
- 의존: Dobby, Xposed API

구성:

- `XposedInit.java`
  - target package `com.kakaogames.eversoul`에 대해 Java URL, OkHttp URL, `Runtime.loadLibrary0`를 hook.
  - `il2cpp` 로딩 시 `libredirect.so`를 로드한다.

- `app/src/main/cpp/redirect.cpp`
  - standalone native Dobby IL2CPP UnityWebRequest URL hook.
  - redirect 대상은 `127.0.0.1:9999` 계열이다.

이 모듈은 현재 루트 CMake의 `swappywrapper`와 별도 갈래다.

### 11.3 `pine_helper`

Gradle Android app이다.

- application: `com.rikka.pinehelper`
- compileSdk: 34
- minSdk: 26
- 의존: `top.canyie.pine:core:0.2.8`

구성:

- `PineHelper.java`
  - Pine framework 기반 Java URL, OkHttp URL hook.
  - redirect 대상은 `127.0.0.1:9999` 계열이다.

이 갈래도 현재 루트 CMake `swappywrapper`와 분리되어 있다.

## 12. 전체 C++ 파일 인벤토리

| 파일 | 줄 수 | 갈래 | 기능 | 현재 CMake 포함 |
| --- | ---: | --- | --- | --- |
| `src/account_database.cpp` | 1526 | desktop DB | 계정별 `state.sqlite3` schema, seed, CRUD, 상태 저장. | 예 |
| `src/account_database.hpp` | 216 | desktop DB | `AccountDatabase` 공개 타입과 메서드. | 예 |
| `src/account_db_manager.cpp` | 92 | desktop DB | active account DB lifecycle, switch/reload/close. | 예 |
| `src/account_db_manager.hpp` | 31 | desktop DB | manager 공개 API. | 예 |
| `src/account_db.cpp` | 224 | desktop DB | endpoint mutation과 UserInfo repository wrapper. | 예 |
| `src/account_db.hpp` | 58 | desktop DB | DB wrapper 공개 함수. | 예 |
| `src/account_registry.cpp` | 404 | desktop DB | account registry DB와 active account/session/log 관리. | 예 |
| `src/account_registry.hpp` | 72 | desktop DB | registry 공개 타입/API. | 예 |
| `src/adb_runner.cpp` | 149 | desktop Windows | ADB process 실행, stdout/stderr capture. | 예: GUI/console |
| `src/adb_runner.hpp` | 27 | desktop Windows | ADB runner API. | 예: GUI/console |
| `src/anticheat_patch.cpp` | 222 | Android hook | `pthread_create` hook 기반 보호 thread 우회. | 예: Android |
| `src/anticheat_patch.hpp` | 9 | Android hook | anti-cheat patch install 선언. | 예: Android |
| `src/app.rc` | 31 | desktop resource | GUI 실행 파일 resource. | 예: GUI |
| `src/common.hpp` | 51 | 공통 | 포트, HTTP 구조체, Config. | 예 |
| `src/console_app.rc` | 31 | desktop resource | console 실행 파일 resource. | 예: console |
| `src/console_main.cpp` | 56 | desktop app | 콘솔 서버 entry. | 예: console |
| `src/crypto.cpp` | 325 | 공통 | SHA/HMAC/base64/WebSocket accept/Infodesk signature. | 예 |
| `src/crypto.hpp` | 16 | 공통 | crypto API. | 예 |
| `src/dex_loader.cpp` | 57 | Android hook | embedded dex loading. | 예: Android |
| `src/dex_loader.hpp` | 17 | Android hook | dex loader API. | 예: Android |
| `src/encoder_validate.cpp` | 96 | 검증 도구 | fixture encoder 결과를 expected와 비교. | 예: tool |
| `src/endpoint_mutation_service.cpp` | 1049 | desktop DB | 게임 endpoint별 SQLite mutation 및 응답 생성. | 예 |
| `src/endpoint_mutation_service.hpp` | 77 | desktop DB | mutation service API. | 예 |
| `src/entry.cpp` | 39 | Android hook | library constructor와 `JNI_OnLoad`. | 예: Android |
| `src/fixture_store.cpp` | 126 | 공통 | fixture/schema 로딩과 fixture payload 인코딩. | 예 |
| `src/fixture_store.hpp` | 40 | 공통 | fixture store API. | 예 |
| `src/frida_gum_init.cpp` | 19 | Android hook | frida-gum embedded init. | 예: Android |
| `src/frida_gum_init.hpp` | 8 | Android hook | frida-gum init 선언. | 예: Android |
| `src/game_catalog.cpp` | 616 | desktop data | catalog DB 생성, fixture/schema/wss index. | 예 |
| `src/game_catalog.hpp` | 61 | desktop data | catalog API. | 예 |
| `src/gui_main.cpp` | 182 | desktop app | Win32/WebView2 GUI entry와 server start. | 예: GUI |
| `src/har_app.rc` | 32 | desktop resource | HAR recorder resource. | 예: HAR |
| `src/har_recorder.cpp` | 395 | HAR | 요청/응답 분류, HAR-like JSON 저장, proxy relay. | 예: HAR |
| `src/har_recorder.hpp` | 61 | HAR | recorder API. | 예: HAR |
| `src/har_server_main.cpp` | 306 | HAR | HAR server entry와 socket accept loop. | 예: HAR |
| `src/harvested_session.inc` | 112 | payload data | 수확된 session payload include. | 예: payloads에서 include |
| `src/http.cpp` | 136 | 공통 | HTTP 요청 파싱/응답 쓰기. | 예 |
| `src/http.hpp` | 12 | 공통 | HTTP API. | 예 |
| `src/il2cpp_hook.cpp` | 297 | Android 대체 hook | Dobby 기반 IL2CPP hook 갈래. | 아니오 |
| `src/il2cpp_hook.hpp` | 6 | Android 대체 hook | IL2CPP hook 선언. | 아니오 |
| `src/inline_hook.cpp` | 219 | Android hook | ARM64 inline hook/trampoline. | 예: Android |
| `src/inline_hook.hpp` | 30 | Android hook | inline hook API. | 예: Android |
| `src/java_hook.cpp` | 76 | Android 대체 hook | Java hook 보조 갈래. | 아니오 |
| `src/java_hook.hpp` | 11 | Android 대체 hook | Java hook 선언. | 아니오 |
| `src/json_encoder.cpp` | 332 | 공통 | schema 기반 JSON to protobuf encoder. | 예 |
| `src/json_encoder.hpp` | 28 | 공통 | encoder API. | 예 |
| `src/json.cpp` | 474 | 공통 | JSON parser/dumper. | 예 |
| `src/json.hpp` | 59 | 공통 | JSON value/API. | 예 |
| `src/log.cpp` | 101 | 공통 | 로그 출력. | 예 |
| `src/log.hpp` | 13 | 공통 | 로그 API. | 예 |
| `src/logcat_process.cpp` | 218 | desktop Windows | logcat process 실행과 로그 capture. | 예: GUI/console |
| `src/logcat_process.hpp` | 22 | desktop Windows | logcat API. | 예: GUI/console |
| `src/lsplant_hook.cpp` | 153 | Android 대체 hook | 구형/대체 LSPlant hook 갈래. | 아니오 |
| `src/lsplant_hook.hpp` | 12 | Android 대체 hook | LSPlant hook 선언. | 아니오 |
| `src/lsplant_hooks.cpp` | 485 | Android hook | 현재 LSPlant Java hook 설치. | 예: Android |
| `src/lsplant_hooks.hpp` | 9 | Android hook | LSPlant install 선언. | 예: Android |
| `src/main.cpp` | 87 | desktop legacy | legacy/별도 console server entry. | 아니오 |
| `src/native_url_hooks.cpp` | 214 | Android hook | frida-gum 기반 UnityWebRequest URL hook. | 예: Android |
| `src/native_url_hooks.hpp` | 9 | Android hook | native URL hook 선언. | 예: Android |
| `src/net_redirect.cpp` | 172 | Android hook | libc DNS/connect redirect. | 예: Android |
| `src/net_redirect.hpp` | 19 | Android hook | net redirect API. | 예: Android |
| `src/offline_data_test.cpp` | 52 | 검증 도구 | offline data archive 확인. | 예: tool |
| `src/offline_data.cpp` | 218 | 공통 | `ESOFLND1` archive와 embedded blob 읽기. | 예 |
| `src/offline_data.hpp` | 51 | 공통 | offline data API. | 예 |
| `src/orm_seed_check.cpp` | 32 | 검증 도구 | ORM seed 확인. | 예: tool |
| `src/payloads.cpp` | 392 | 공통 | 게임 응답 payload/envelope/fallback. | 예 |
| `src/payloads.hpp` | 28 | 공통 | payload API. | 예 |
| `src/platform.hpp` | 24 | 공통 | platform wrapper. | 예 |
| `src/protobuf.cpp` | 327 | 공통 | protobuf wire 유틸리티. | 예 |
| `src/protobuf.hpp` | 36 | 공통 | protobuf API. | 예 |
| `src/proxy.cpp` | 273 | 공통 | desktop libcurl proxy, Android raw relay. | 예 |
| `src/proxy.hpp` | 18 | 공통 | proxy API. | 예 |
| `src/redirect.cpp` | 129 | Android hook | domain/path URL rewrite 정책. | 예: Android |
| `src/redirect.hpp` | 43 | Android hook | redirect API. | 예: Android |
| `src/router.cpp` | 2158 | desktop server | 관리 API, 게임 API, fixture/DB/proxy routing. | 예: desktop |
| `src/router.hpp` | 9 | desktop server | router API. | 예: desktop |
| `src/server.cpp` | 199 | desktop server | socket server, request handling, WebSocket upgrade. | 예: desktop |
| `src/server.hpp` | 11 | desktop server | server API. | 예: desktop |
| `src/single_raid_payload_fixed.inc` | 211 | payload data | single raid fixed payload include. | 예: payloads에서 include |
| `src/sse_log.cpp` | 65 | desktop web | SSE log buffer. | 예: desktop |
| `src/sse_log.hpp` | 29 | desktop web | SSE API. | 예: desktop |
| `src/stealth_dl.cpp` | 82 | 대체/보존 소스 | stealth namespace 구현 파일. | 아니오 |
| `src/url_redirect.cpp` | 81 | Android hook | Android URL rewrite helper. | 예: Android |
| `src/url_redirect.hpp` | 14 | Android hook | URL redirect API. | 예: Android |
| `src/user_info_payload.inc` | 25 | payload data | generated UserInfo payload include. | 예: payloads에서 include |
| `src/userinfo_repository.cpp` | 543 | desktop DB | DB 상태에서 UserInfo JSON/protobuf 재구성. | 예 |
| `src/userinfo_repository.hpp` | 15 | desktop DB | repository API. | 예 |
| `src/userinfo_static_head.inc` | 1 | payload data | UserInfo static head include. | 예: payloads에서 include |
| `src/userinfo_static_suffix.inc` | 2 | payload data | UserInfo static suffix include. | 예: payloads에서 include |
| `src/util.cpp` | 183 | 공통 | 시간, 문자열, 파일, body 보조. | 예 |
| `src/util.hpp` | 19 | 공통 | util API. | 예 |
| `src/websocket.cpp` | 227 | 공통 | WebSocket handshake/frame/session. | 예 |
| `src/websocket.hpp` | 33 | 공통 | WebSocket API. | 예 |
| `src/ws_session.cpp` | 345 | 공통 | WSS/Engine.IO fixture 기반 session 응답. | 예 |
| `src/ws_session.hpp` | 31 | 공통 | WSS session API. | 예 |
| `src/orm/schema.hpp` | 97 | desktop ORM | sqlite_orm model 정의. | 예 |
| `src/orm/storage.cpp` | 636 | desktop ORM | sqlite_orm storage, seed, settings. | 예 |
| `src/orm/storage.hpp` | 60 | desktop ORM | ORM storage API. | 예 |
| `src/orm/userinfo_builder.cpp` | 411 | desktop ORM | ORM 기반 UserInfo builder. | 예 |
| `src/orm/userinfo_builder.hpp` | 6 | desktop ORM | builder API. | 예 |

## 13. 자체 소스 파일 인벤토리

이 절은 C++ 표에 들어가지 않는 자체 소스 파일을 기록한다. `third_party` 내부 공급 코드, `responses`, `responses_newbie`, `schema`, `expected`, `ProtocolBuffers`의 대량 데이터 파일은 개별 파일 단위 대신 역할과 수량으로 기록한다.

### 13.1 루트와 빌드 제어 파일

| 파일 | 기능 |
| --- | --- |
| `CMakeLists.txt` | 루트 CMake 빌드 정의. Android/desktop target, 공통 source 묶음, embedded web/proto/dex object 생성, test/tool target을 정의한다. |
| `package.json` | 루트 프로젝트 metadata. 현재 script 항목은 없다. |
| `ba.ps1` | Android `swappywrapper` Release 빌드용 PowerShell 스크립트. |
| `bs.ps1` | Windows `eversoul_gui`, `eversoul_console`, `eversoul_har_recorder` 배포 묶음 생성 스크립트. |
| `build.sh` | HAR merge, schema export, expected 생성, offline data pack, desktop/Android build를 묶은 Bash 스크립트. 현재 CMake target 명칭과 불일치가 있다. |
| `hook_liapp.js` | Frida 스크립트. exception handler, libc exit/abort/kill/tgkill hook, `dlopen`/`android_dlopen_ext` 감시로 crash 전후 로그와 backtrace를 출력한다. |

### 13.2 CMake 보조 파일

| 파일 | 기능 |
| --- | --- |
| `cmake/copy_data_dirs.cmake` | target 출력 경로에 fixture/schema/wss와 필요한 런타임 파일을 복사한다. |
| `cmake/gen_proto_blob.cmake` | `ProtocolBuffers/Global` proto 파일을 연결해 Android target에 넣을 blob 입력을 만든다. |
| `cmake/gen_web_blob.py` | `src/web/dist` 결과물을 C++ embedded web source로 변환한다. |

### 13.3 script 파일

| 파일 | 기능 |
| --- | --- |
| `scripts/build_redirect_dex.sh` | `smali_inject/RedirectHooks.java`를 javac/d8로 dex 빌드하고 NDK objcopy로 ARM64 relocatable object를 만든다. |

### 13.4 Python 도구 파일

| 파일 | 기능 |
| --- | --- |
| `tools/build_userinfo.py` | `/UserInfo` payload를 재구성하고 `src/user_info_payload.inc`를 생성한다. |
| `tools/bump_version.py` | 루트 package version과 README badge version을 갱신한다. |
| `tools/decode_tutorial_flow.py` | HAR tutorial flow를 protobuf 정의로 decode한다. |
| `tools/download_probability.py` | Kakao Oqupie 확률표를 내려받아 `probability`에 저장한다. |
| `tools/dump_expected.py` | fixture를 protobuf로 인코딩해 `expected` 기준 파일을 만든다. |
| `tools/export_schema.py` | protobuf schema를 endpoint별 JSON schema로 export한다. |
| `tools/har_to_json.py` | HAR 응답을 fixture JSON, manifest, WSS transcript로 변환한다. |
| `tools/harvest_har.py` | HAR payload bytes를 C++ include 파일로 수확한다. |
| `tools/integration_test.py` | 이미 떠 있는 서버에 TCP 요청을 보내 응답을 비교한다. 이번 문서화 작업에서는 실행하지 않았다. |
| `tools/json_to_proto.py` | fixture JSON을 protobuf payload/envelope로 변환한다. |
| `tools/merge_har.py` | HAR 산출물을 기존 fixture 구조에 병합한다. |
| `tools/pack_offline_data.py` | fixture/schema/wss/web dist를 `ESOFLND1` archive로 pack한다. |
| `tools/patch_dex.py` | DEX patch 작업용 도구. |
| `tools/patch_java_redirect.py` | Java redirect patch 작업용 도구. |
| `tools/patch_url_init.py` | URL 초기화 patch 작업용 도구. |
| `tools/proto_registry.py` | endpoint별 proto descriptor pool과 JSON/wire 변환 registry. |
| `tools/verify_pipeline.py` | HAR에서 fixture와 protobuf 결과가 재현되는지 pipeline을 확인한다. |
| `tools/ws_test.py` | 표준 라이브러리 기반 WebSocket 테스트 클라이언트. |
| `tools/wss_fixtures.py` | decoded transcript에서 WSS fixture를 생성한다. |
| `tools/apply_java_redirect.sh` | Java redirect patch 적용 shell script. |

### 13.5 Web 구성 파일

| 파일 | 기능 |
| --- | --- |
| `src/web/package.json` | React/Vite/Tailwind 앱 의존성과 `dev`, `build`, `lint`, `preview` script. |
| `src/web/package-lock.json` | npm dependency lockfile. |
| `src/web/vite.config.ts` | `/web` base, React/Tailwind plugin, alias, `/web/api` dev proxy. |
| `src/web/tsconfig.json` | TypeScript project reference root. |
| `src/web/tsconfig.app.json` | app TS compiler 설정. |
| `src/web/tsconfig.node.json` | node/vite config TS compiler 설정. |
| `src/web/eslint.config.js` | ESLint flat config. |
| `src/web/components.json` | UI component alias와 Tailwind 설정 metadata. |
| `src/web/index.html` | Vite 앱 HTML entry. |

### 13.6 Web 앱 파일

| 파일 | 기능 |
| --- | --- |
| `src/web/src/main.tsx` | React root mount entry. |
| `src/web/src/App.tsx` | `NavPage`에 따른 page switch와 `AppShell` 조립. |
| `src/web/src/App.css` | App 전용 CSS. |
| `src/web/src/index.css` | Tailwind/global CSS entry. |
| `src/web/src/styles/shell.module.css` | shell layout CSS module. |
| `src/web/src/lib/i18n.ts` | 다국어 dictionary, `I18nProvider`, `useI18n`. |
| `src/web/src/lib/utils.ts` | `clsx`와 `tailwind-merge` 기반 className 병합 함수. |
| `src/web/src/lib/version.ts` | 웹 표시용 앱 버전 상수. |
| `src/web/src/data/manual.ts` | 언어별 manual content. |
| `src/web/src/types/api.ts` | account, cheat, DB, health, server status, game data summary API 타입. |
| `src/web/src/types/cheat.ts` | cheat currency/hero 설정과 카드 props 타입. |
| `src/web/src/types/injector.ts` | injector status/probe result 타입. |
| `src/web/src/types/manual.ts` | manual content 타입. |
| `src/web/src/types/manual-props.ts` | manual component props 타입. |
| `src/web/src/types/nav.ts` | page id와 navigation item 타입. |

### 13.7 Web hook 파일

| 파일 | 기능 |
| --- | --- |
| `src/web/src/hooks/usePolling.ts` | fetch, abort, interval, loading/error state를 처리하는 공통 polling hook. |
| `src/web/src/hooks/useAccounts.ts` | `/web/api/accounts` 조회 hook. |
| `src/web/src/hooks/useCheatStatus.ts` | `/web/api/cheat/status` 조회 hook. |
| `src/web/src/hooks/useDbTables.ts` | `/web/api/db/tables` 조회 hook. |
| `src/web/src/hooks/useServerStatus.ts` | `/web/api/status` 조회 hook. |

### 13.8 Web layout/component 파일

| 파일 | 기능 |
| --- | --- |
| `src/web/src/components/layout/AppShell.tsx` | i18n provider, theme, sidebar/topbar, active page state를 묶는 shell. |
| `src/web/src/components/layout/NavSidebar.tsx` | navigation item 구성과 page 이동. |
| `src/web/src/components/layout/TopBar.tsx` | page title, theme toggle, language dropdown, sidebar toggle. |
| `src/web/src/components/ui/GlassCard.tsx` | card container와 card header 컴포넌트. |
| `src/web/src/components/ui/StatusBadge.tsx` | 상태 variant와 dot 표시 badge. |
| `src/web/src/components/cheat/CurrencyCard.tsx` | currency cheat 입력/적용 카드. |
| `src/web/src/components/cheat/HeroAddCard.tsx` | hero number/level 입력과 적용 카드. |
| `src/web/src/components/manual/CommandRow.tsx` | manual command row 표시. |
| `src/web/src/components/manual/RouterCard.tsx` | manual router entry card 표시. |
| `src/web/src/components/manual/SectionCard.tsx` | manual section card 표시. |
| `src/web/src/components/manual/StepList.tsx` | manual step list 표시. |

### 13.9 Web page 파일

| 파일 | 기능 |
| --- | --- |
| `src/web/src/pages/AccountsPage.tsx` | account 생성, 선택, 삭제, 편집, import UI. |
| `src/web/src/pages/CheatPage.tsx` | currency/hero cheat 적용 UI. |
| `src/web/src/pages/DashboardPage.tsx` | 서버 상태, game data summary, injector start/stop UI. |
| `src/web/src/pages/DbPage.tsx` | DB table row, schema, search, sort, paging UI. |
| `src/web/src/pages/FilesPage.tsx` | data dir 파일 목록, read, write UI. |
| `src/web/src/pages/FixturesPage.tsx` | fixture list 표시 UI. |
| `src/web/src/pages/GameDataPage.tsx` | userinfo/currencies/heroes/settings section 조회와 저장 UI. |
| `src/web/src/pages/HealthPage.tsx` | health check 목록 UI. |
| `src/web/src/pages/InjectorPage.tsx` | ADB device scan, reverse, connect, probe, manual adb 실행 UI. |
| `src/web/src/pages/LogsPage.tsx` | server/adb SSE log 구독, filter, pause, clear UI. |
| `src/web/src/pages/ManualPage.tsx` | `MANUAL_CONTENT` 기반 manual UI. |
| `src/web/src/pages/SettingsPage.tsx` | language 선택 UI. 현재 App/Nav에는 연결되어 있지 않다. |

### 13.10 Legacy web 파일

| 파일 | 기능 |
| --- | --- |
| `src/web/legacy/index.html` | 구형 관리 UI HTML. |
| `src/web/legacy/app.js` | 구형 관리 UI JavaScript. |
| `src/web/legacy/i18n.js` | 구형 관리 UI 다국어 dictionary. |
| `src/web/legacy/input.css` | 구형 Tailwind 입력 CSS. |
| `src/web/legacy/style.css` | 구형 관리 UI CSS. |
| `src/web/legacy/account_select.html` | 게임 계정 선택 HTML. |
| `src/web/legacy/account_select.js` | 게임 계정 선택 동작. |
| `src/web/legacy/account_new.html` | 게임 신규 계정 생성 HTML. |
| `src/web/legacy/account_new.js` | 게임 신규 계정 생성 동작. |
| `src/web/legacy/account_i18n.js` | 계정 선택/생성 UI 다국어 dictionary. |

### 13.11 WSS JSON fixture 파일

| 파일 | 기능 |
| --- | --- |
| `wss/session_replies.json` | WebSocket session reply fixture. |
| `wss/session-zinny3.json` | Zinny3 session fixture. |
| `wss/live-sea-chat.json` | live sea chat fixture. |
| `wss/chat_engineio.json` | Engine.IO chat polling fixture. |

### 13.12 Smali/Java hook 파일

| 파일 | 기능 |
| --- | --- |
| `smali_inject/RedirectHooks.java` | LSPlant가 로드하는 Java hook callback class와 native bridge 선언. |
| `smali_inject/URLHook.java` | Java URL rewrite helper. |
| `smali_inject/URLHook.smali` | Smali 형태 URL hook. |

### 13.13 Gradle 보조 모듈 파일

| 파일 | 기능 |
| --- | --- |
| `eversoul-redirect-module/settings.gradle` | Xposed redirect module Gradle root 설정. |
| `eversoul-redirect-module/build.gradle` | Android Gradle plugin version 설정. |
| `eversoul-redirect-module/app/build.gradle` | Xposed module Android app 설정, CMake external build, Xposed API 의존. |
| `eversoul-redirect-module/app/src/main/cpp/CMakeLists.txt` | standalone `redirect` native library CMake 설정. |
| `eversoul-redirect-module/app/src/main/cpp/redirect.cpp` | standalone Dobby IL2CPP URL redirect 구현. |
| `eversoul-redirect-module/app/src/main/java/com/rikka/eversouloffline/XposedInit.java` | target package hook, Java URL/OkHttp hook, `il2cpp` load 시 native redirect library load. |
| `pine_helper/settings.gradle` | Pine helper Gradle root 설정. |
| `pine_helper/build.gradle` | Android Gradle plugin version 설정. |
| `pine_helper/app/build.gradle` | Pine helper Android app 설정과 Pine dependency. |
| `pine_helper/app/src/main/java/com/rikka/helper/PineHelper.java` | Pine 기반 Java URL/OkHttp hook helper. |

### 13.14 외부 공급 코드 기록 기준

`third_party` 내부의 Dobby, LSPlant, frida-gum, SQLite, sqlite_orm, WebView2, ADB, jadx, apktool, Tailwind 실행 파일은 이 저장소가 직접 작성한 애플리케이션 소스가 아니라 빌드와 런타임에 연결되는 외부 공급 코드다. 이 문서에서는 프로젝트와의 연결 지점, 빌드 대상 포함 여부, 사용 목적을 기록하고, 외부 라이브러리 내부 구현 전체를 프로젝트 구현으로 재분류하지 않는다.

## 14. 현재 확인된 불일치와 주의 지점

1. `build.sh`는 `eversoul_offline_server` target을 빌드하도록 작성되어 있으나 현재 `CMakeLists.txt`에는 해당 target이 없다.
2. `README.md`, `CLAUDE.md`의 일부 산출물 명칭은 현재 CMake target 명칭과 차이가 있다.
3. `SettingsPage.tsx`는 파일이 있지만 현재 `App.tsx` page switch와 `NavSidebar`에는 연결되지 않는다.
4. `il2cpp_hook.cpp`, `java_hook.cpp`, `lsplant_hook.cpp`, `stealth_dl.cpp`는 소스에 있지만 현재 루트 CMake 대상에 포함되지 않는다.
5. `router.cpp`의 fixture 선행 흐름은 full 모드에서 DB mutation 처리보다 먼저 응답을 반환할 수 있다.
6. `pine_helper`, `eversoul-redirect-module`은 현재 루트 CMake의 `swappywrapper`와 분리된 보조/대체 후킹 갈래다.
7. `bs.ps1`는 웹 빌드까지 수행하도록 작성되어 있다. 이번 문서 작성에서는 빌드 명령을 실행하지 않았다.

## 15. 핵심 기술 목록

- C++23
- CMake
- Android NDK
- JNI
- ART Java method hook
- LSPlant
- Dobby inline hook
- frida-gum interceptor
- ARM64 trampoline hook
- Unity IL2CPP hook
- UnityWebRequest URL hook
- libc DNS/connect redirect
- HTTP/1.1 socket server
- WebSocket RFC6455 frame 처리
- Engine.IO/socket.io fixture 응답
- protobuf wire encoding/decoding
- schema 기반 JSON to protobuf encoder
- SQLite account state
- sqlite_orm 보조 저장소
- Win32 GUI
- WebView2 embedded 관리 UI
- React 19
- Vite
- Tailwind CSS
- Server-Sent Events
- HAR 수확/변환 pipeline
- ADB reverse 기반 PC 연결
- Smali/DEX Java redirect 보조
- Xposed/Pine 대체 후킹 실험 갈래

## 16. 증거 파일 위치

아래 파일들은 이 문서의 직접 확인 근거다.

- `CMakeLists.txt`
  - 공통 source 묶음, Android target, desktop target, tool target, embedded web generation.

- `CLAUDE.md`
  - 아키텍처 설명, 포트, Android/PC 역할, 빌드 정책.

- `README.md`
  - 프로젝트 개요와 산출물 설명.

- `src/common.hpp`
  - 포트와 `Config` 기본값.

- `src/server.cpp`
  - desktop 서버 listen, accept, request 처리.

- `src/router.cpp`
  - 관리 API, 게임 API, fixture/DB/proxy routing.

- `src/account_registry.cpp`
  - registry DB schema와 계정/session 관리.

- `src/account_database.cpp`
  - account DB schema와 seed/상태 저장.

- `src/endpoint_mutation_service.cpp`
  - 게임 endpoint mutation 처리.

- `src/userinfo_repository.cpp`
  - DB 기반 UserInfo 재구성.

- `src/entry.cpp`
  - Android 라이브러리 entry와 hook install.

- `src/net_redirect.cpp`
  - libc 네트워크 redirect.

- `src/lsplant_hooks.cpp`
  - LSPlant Java hook 설치.

- `src/native_url_hooks.cpp`
  - frida-gum IL2CPP UnityWebRequest hook.

- `src/web/package.json`
  - React/Vite/Tailwind 의존성과 script.

- `src/web/vite.config.ts`
  - `/web` base와 `/web/api` proxy.

- `src/web/src/App.tsx`
  - 관리 화면 page routing.

- `tools/*.py`, `tools/*.sh`
  - HAR, protobuf, schema, offline data pipeline.

- `smali_inject/*.java`, `smali_inject/*.smali`
  - Java/Smali redirect 보조 구현.

- `eversoul-redirect-module`
  - Xposed + standalone native redirect 갈래.

- `pine_helper`
  - Pine framework 기반 Java hook 갈래.
