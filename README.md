<p align="center">
  <img src="src/assets/logo.png" width="160" alt="EverSoul Offline" />
</p>

<h1 align="center">Eversoul Offline</h1>
<h3 align="center">에버소울 오프라인 프로젝트</h3>

<p align="center">
  에붕쿤들의 즐거운 에덴 생활 보장을 위한 구조선
</p>

<p align="center">
  <a href="https://discord.gg/ZptEmqfuv"><img src="https://img.shields.io/badge/Discord-Join%20Server-5865F2?style=for-the-badge&logo=discord&logoColor=white" alt="Discord" /></a>
  &nbsp;
  <img src="https://img.shields.io/badge/Host-Windows-0078D4?style=for-the-badge&logo=windows&logoColor=white" alt="Windows" />
  &nbsp;
  <img src="https://img.shields.io/badge/Target-Android%20ARM64-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android ARM64" />
  &nbsp;
  <img src="https://img.shields.io/badge/C%2B%2B-23-00599C?style=for-the-badge&logo=cplusplus&logoColor=white" alt="C++23" />
  &nbsp;
  <img src="https://img.shields.io/badge/version-0.0.15-blue?style=for-the-badge" alt="v0.0.5" />
</p>

<p align="center">
  <a href="README_en.md"><img src="https://img.shields.io/badge/English-EN-0078D4?style=flat-square" alt="English" /></a>
  &nbsp;
  <a href="README_cn.md"><img src="https://img.shields.io/badge/%E4%B8%AD%E6%96%87-CN-DE2910?style=flat-square" alt="中文" /></a>
  &nbsp;
  <img src="https://img.shields.io/badge/%ED%95%9C%EA%B5%AD%EC%96%B4-KR-003478?style=flat-square" alt="한국어" />
</p>

> **플랫폼 안내** — arm64 전용 Linux · macOS (Wayland) 환경과 Android 내부 서버 기반은 **[`arm64` 브랜치](https://github.com/PackageInstaller/EverSoulSimulator/tree/arm64)** 를 클론하여 사용해야 한다. 현재 Windows 버전만 우선 통합되었으며, 나머지 OS는 연동 확장해나갈 계획이다.

---

## 다이어그램 D-01: 아키텍처 개요

본 시스템은 Windows 서버 EXE, Android ARM64 SO, APK 연구 및 패치 계층, 오프라인 데이터 계층, 다중 계정 SQLite 계층을 포함한다. 상기 구성은 에버소울 클라이언트가 외부 서버 대신 로컬 Windows 서버와 통신하도록 연결 경로를 재구성한다.

상기 Windows 서버 EXE는 `127.0.0.1:9991`에서 HTTP, Protobuf, WebSocket, Web UI, ADB 제어 API를 제공한다. 상기 Android SO는 게임 프로세스 내부에서 Java URL, OkHttp URL, IL2CPP UnityWebRequest URL, libc 전송 계층 연결을 `127.0.0.1:9991`로 유도한다. 상기 ADB 계층은 서버 EXE에 포함된 ADB 실행기를 내부 제어기로 사용하고, MuMuPlayer의 ADB 포트를 Web UI 설정값으로 연결한다.

본 문서는 다음 다이어그램, 순서도, 흐름표 식별자를 사용한다.

| 식별자 | 유형 | 제목 | 설명 대상 |
| --- | --- | --- | --- |
| D-01 | 다이어그램 | 전체 구성 다이어그램 | Windows 서버 EXE, Android SO, APK 연구, 오프라인 데이터, 다중 계정 상태 |
| D-02 | 다이어그램 | 루트 계층 다이어그램 | 저장소 루트 디렉터리별 역할 |
| D-03 | 다이어그램 | `src` 계층 다이어그램 | C++ 서버, 계정, ADB, Android hook, Web 자산 계층 |
| F-01 | 순서도 | 전체 파이프라인 순서도 | 빌드, APK 패치 입력, 서버 실행, MuMuPlayer 제어, 게임 요청 처리 |
| F-02 | 순서도 | 런타임 요청 순서도 | 클라이언트 요청, URL 재작성, 서버 라우팅, 응답 생성 |
| F-03 | 순서도 | 계정 상태 순서도 | Web UI 계정 조작, 게임 endpoint 상태 변경, WebSocket 세션 |
| F-04 | 순서도 | 바이패스 설치 순서도 | APK 조기 로드, native constructor, JNI hook 설치 |
| T-01 | 흐름표 | 루트 계층 흐름표 | 루트 디렉터리별 구성과 역할 |
| T-02 | 흐름표 | `src` 계층 흐름표 | 입력, 처리, 출력 |
| T-03 | 흐름표 | 요청 처리 흐름표 | hook 계층, route 계층, account 계층 |
| T-04 | 흐름표 | 계정 상태 흐름표 | 계정 API 및 게임 endpoint별 상태 산출 |
| T-05 | 흐름표 | 빌드 산출 흐름표 | EXE, SO, embedded dex, offline data 산출 |

다이어그램 D-01은 전체 구성의 상위 계층 관계를 나타낸다.

```text
Eversoul Offline
  ├─ Windows server executable
  │    ├─ eversoul_gui.exe
  │    ├─ eversoul_console.exe
  │    ├─ Web UI /web/
  │    ├─ Account API /web/api/accounts
  │    ├─ ADB API /web/api/adb, /web/api/injector
  │    ├─ Kakao / Infodesk HTTP route
  │    ├─ game Protobuf route
  │    └─ WebSocket session route
  ├─ Android ARM64 shared object
  │    └─ libswappywrapper.so
  ├─ APK research baseline
  │    └─ apk/research
  ├─ offline data archive
  │    └─ libofflinedata.so
  └─ multi-account state
       └─ runtime_state/accounts
```

---

## 다이어그램 D-02: 루트 계층 아키텍처

본 루트 계층은 빌드 진입점, 서버 및 SO 구현 계층, APK 연구 계층, 오프라인 데이터 계층, protocol 자료 계층, 외부 의존성 계층, 배포 보조 계층을 포함한다. 상기 계층은 서버 EXE 산출, Android SO 산출, APK 패치 입력, 계정 DB 상태, Web UI 자산, 게임 응답 fixture를 하나의 오프라인 실행 구조로 결합한다.

```text
root
  ├─ build entry
  │    ├─ CMakeLists.txt
  │    ├─ build-server.ps1
  │    ├─ build-android.ps1
  │    ├─ build.sh
  │    ├─ bs.ps1
  │    └─ ba.ps1
  ├─ runtime implementation
  │    ├─ src/
  │    ├─ src/web/
  │    └─ src/orm/
  ├─ APK research and patch input
  │    ├─ apk/research/
  │    ├─ smali_inject/
  │    ├─ scripts/
  │    ├─ classes3.dex
  │    └─ classes3_patched.dex
  ├─ offline response data
  │    ├─ responses/
  │    ├─ responses_newbie/
  │    ├─ schema/
  │    ├─ wss/
  │    └─ expected/
  ├─ protocol and reference material
  │    ├─ ProtocolBuffers/
  │    ├─ probability/
  │    ├─ captured_requests.md
  │    ├─ captured_new_user_registration.md
  │    └─ GarnetRapture.txt
  ├─ third-party and runtime copy set
  │    ├─ third_party/
  │    └─ copy_only/
  ├─ Android helper projects
  │    ├─ eversoul-redirect-module/
  │    └─ pine_helper/
  └─ local project support
       ├─ docs/
       ├─ tools/
       ├─ cmake/
       ├─ .githooks/
       └─ .vscode/
```

흐름표 T-01은 루트 계층의 구성 요소와 역할을 나타낸다.

| 계층 | 구성 | 역할 |
| --- | --- | --- |
| 빌드 진입점 | `CMakeLists.txt`, `build-server.ps1`, `build-android.ps1` | Windows EXE, Android SO, Web UI CSS, 런타임 복사 산출을 생성한다. |
| 런타임 구현 | `src/`, `src/web/`, `src/orm/` | 서버 수신, 라우팅, 계정 DB, Web UI, ADB, WebSocket, Android hook을 수행한다. |
| APK 연구 입력 | `apk/research/`, `smali_inject/`, `scripts/` | APK 분석 기준 파일, embedded dex, Smali 자료, Android hook 로드 지점을 관리한다. |
| 오프라인 데이터 | `responses/`, `responses_newbie/`, `schema/`, `wss/`, `expected/` | 계정 seed, 고정 응답, Protobuf schema, WebSocket fixture, 응답 대조 자료를 제공한다. |
| protocol 자료 | `ProtocolBuffers/`, `probability/` | Protobuf 원본 자료와 게임 확률표 문서를 보관한다. |
| 외부 의존성 | `third_party/`, `copy_only/` | Dobby, LSPlant, frida-gum, SQLite, WebView2, Tailwind, ADB, DLL 복사 세트를 제공한다. |
| 보조 프로젝트 | `eversoul-redirect-module/`, `pine_helper/` | Android 보조 모듈과 hook 연구 보조 구성을 보관한다. |

---

## 다이어그램 D-03: src 계층 아키텍처

본 `src` 계층은 단일 C++ 코드베이스에서 Windows 서버 EXE와 Android ARM64 SO를 함께 산출하도록 구성된다. Windows 경로는 서버, Web UI, ADB, SQLite 계층을 사용하며, Android 경로는 JNI 진입점, Java hook, native hook, 전송 계층 hook을 사용한다.

```text
src
  ├─ executable entry layer
  │    ├─ gui_main.cpp
  │    ├─ console_main.cpp
  │    ├─ main.cpp
  │    └─ app.rc
  ├─ server and route layer
  │    ├─ server.*
  │    ├─ router.*
  │    ├─ http.*
  │    ├─ websocket.*
  │    └─ ws_session.*
  ├─ account and state layer
  │    ├─ account_registry.*
  │    ├─ account_database.*
  │    ├─ account_db_manager.*
  │    ├─ account_db.*
  │    ├─ endpoint_mutation_service.*
  │    ├─ userinfo_repository.*
  │    └─ orm/
  ├─ data and protocol layer
  │    ├─ offline_data.*
  │    ├─ fixture_store.*
  │    ├─ payloads.*
  │    ├─ protobuf.*
  │    ├─ json.*
  │    ├─ json_encoder.*
  │    └─ crypto.*
  ├─ ADB and log layer
  │    ├─ adb_runner.*
  │    ├─ logcat_process.*
  │    ├─ sse_log.*
  │    └─ log.*
  ├─ Android hook layer
  │    ├─ entry.cpp
  │    ├─ anticheat_patch.*
  │    ├─ frida_gum_init.*
  │    ├─ lsplant_hooks.*
  │    ├─ dex_loader.*
  │    ├─ native_url_hooks.*
  │    ├─ il2cpp_hook.*
  │    ├─ inline_hook.*
  │    ├─ net_redirect.*
  │    ├─ url_redirect.*
  │    ├─ redirect.*
  │    └─ proxy.*
  ├─ web asset layer
  │    └─ web/
  └─ tool and check layer
       ├─ encoder_validate.cpp
       ├─ offline_data_test.cpp
       ├─ orm_seed_check.cpp
       ├─ stealth_dl.cpp
       └─ game_catalog.*
```

흐름표 T-02는 `src` 계층별 입력, 처리, 출력을 나타낸다.

| 계층 | 입력 | 처리 | 출력 |
| --- | --- | --- | --- |
| EXE 진입 계층 | 실행 파일 시작 | ADB path 설정, 서버 비동기 시작, Web UI 표시 | `127.0.0.1:9991/web/` |
| 서버 라우트 계층 | HTTP, WebSocket, Protobuf 요청 | route match, body decode, 응답 생성, upgrade 처리 | HTTP payload, Protobuf payload, WSS reply |
| 계정 상태 계층 | account id, endpoint body, session 값 | 활성 계정 DB 선택, 상태 변경, UserInfo 재구성 | 계정별 `state.sqlite3` 및 응답 body |
| 데이터 protocol 계층 | fixture, schema, packed archive | JSON 로드, schema lookup, 암호화 보조, payload encode | 게임 클라이언트 응답 |
| ADB log 계층 | Web UI command, MuMu ADB port | 내부 ADB 실행기 호출, stdout/stderr 수집, SSE 전송 | 기기 상태, 실행 상태, log stream |
| Android hook 계층 | APK 프로세스 로드, URL 및 socket 호출 | Java hook, IL2CPP hook, libc hook, LIAPP2 경로 처리 | 로컬 서버 대상 요청 |
| Web 자산 계층 | `src/web/*.html`, `*.js`, `*.css` | 계정 UI, injector UI, ADB UI, log UI 제공 | 브라우저 기반 조작 화면 |

---

## 순서도 F-01: 전체 파이프라인

본 파이프라인은 빌드 산출, APK 로드, 서버 실행, MuMuPlayer 제어, 게임 요청 처리, 계정 상태 갱신의 순서로 동작한다.

```text
1. build-server.ps1
   ├─ Tailwind CSS generation
   ├─ CMake target eversoul_gui
   ├─ CMake target eversoul_console
   └─ copy_only runtime set

2. build-android.ps1
   ├─ Android NDK 29.0.14206865
   ├─ ABI arm64-v8a
   └─ CMake target swappywrapper

3. APK patch material
   ├─ apk/research/classes3.dex
   ├─ smali_inject/RedirectHooks.java
   ├─ embedded RedirectHooks.dex object
   └─ libswappywrapper.so load path

4. Windows server execution
   ├─ eversoul_gui.exe or eversoul_console.exe
   ├─ server listen 127.0.0.1:9991
   ├─ Web UI /web/
   ├─ Account DB open
   └─ ADB runner path set

5. MuMuPlayer control
   ├─ Web UI stores ADB port
   ├─ server sets serial 127.0.0.1:<ADB_PORT>
   ├─ server runs internal adb.exe
   ├─ game Activity start
   └─ logcat stream collection

6. Game request handling
   ├─ Java URL hook
   ├─ OkHttp builder hook
   ├─ IL2CPP UnityWebRequest hook
   ├─ libc host and port hook
   ├─ router.cpp route dispatch
   ├─ AccountDatabase state operation
   └─ HTTP / Protobuf / WebSocket response
```

---

## 순서도 F-02: 런타임 요청 흐름

본 런타임 요청 흐름은 게임 클라이언트의 네트워크 호출을 Android hook 계층에서 로컬 서버 대상으로 재작성하고, Windows 서버가 계정 상태와 fixture를 결합하여 응답을 생성하는 구조를 가진다.

```text
Eversoul client request
  ├─ Java URL constructor
  │    └─ LSPlant RedirectHooks
  ├─ OkHttp Request.Builder.url(String)
  │    └─ LSPlant RedirectHooks
  ├─ UnityWebRequest URL operation
  │    └─ frida-gum IL2CPP hook
  └─ libc socket operation
       └─ Dobby connect/getaddrinfo hook

redirect_url_cpp()
  ├─ host policy
  ├─ scheme rewrite
  ├─ port rewrite
  └─ local URL output

Windows server 127.0.0.1:9991
  ├─ router.cpp
  ├─ Kakao / Infodesk route
  ├─ lockincomp route
  ├─ Live patch route
  ├─ game endpoint route
  ├─ WebSocket upgrade route
  └─ Web UI API route

response builder
  ├─ fixture_store
  ├─ AccountDatabase
  ├─ EndpointMutationService
  ├─ UserInfoRepository
  ├─ json_encoder
  └─ protobuf encoder
```

흐름표 T-03은 요청 처리 계층별 수행 동작과 다음 단계를 나타낸다.

| 요청 계층 | hook 또는 처리 모듈 | 수행 동작 | 다음 단계 |
| --- | --- | --- | --- |
| Java URL | `lsplant_hooks.cpp`, `RedirectHooks.java` | URL 생성 인자를 로컬 URL로 변환한다. | OkHttp 또는 Java network stack |
| OkHttp | `lsplant_hooks.cpp` | `Request$Builder.url(String)` 인자를 로컬 URL로 변환한다. | Android network stack |
| UnityWebRequest | `native_url_hooks.cpp` | IL2CPP string 인자를 로컬 URL로 변환한다. | Unity request dispatch |
| libc transport | `net_redirect.cpp` | host 해석과 socket port를 로컬 서버 대상으로 조정한다. | Windows server route |
| HTTP route | `router.cpp` | path, method, body에 따라 응답 생성기를 선택한다. | fixture 또는 account DB |
| account mutation | `endpoint_mutation_service.cpp` | tutorial, stage, hero, item, gacha, shop 등 상태를 변경한다. | account DB commit |
| response encode | `json_encoder.cpp`, `protobuf.cpp` | JSON 응답을 Protobuf payload로 변환한다. | game client |

---

## 순서도 F-03 및 흐름표 T-04: 계정 상태

본 계정 상태 계층은 Web UI의 계정 조작과 게임 endpoint의 상태 변경을 동일한 활성 계정 DB로 수렴시킨다. `AccountDatabaseManager`는 활성 계정 DB 핸들을 관리하고, `AccountRegistry`는 계정 목록 및 세션 메타데이터를 관리한다.

```text
Web UI account operation
  └─ /web/api/accounts
       ├─ AccountRegistry
       ├─ AccountDatabaseManager
       ├─ AccountDatabase
       └─ runtime_state/accounts/<account_id>/state.sqlite3

Game endpoint operation
  └─ router.cpp
       ├─ account_db.cpp
       ├─ EndpointMutationService
       ├─ UserInfoRepository
       └─ active account database

WebSocket session operation
  └─ ws_session.cpp
       ├─ active_account
       ├─ account_session
       └─ session reply payload
```

흐름표 T-04는 계정 API 및 게임 endpoint별 상태 산출을 나타낸다.

| 흐름 | API 또는 endpoint | 담당 모듈 | 상태 산출 |
| --- | --- | --- | --- |
| 계정 생성 | `POST /web/api/accounts` | `account_registry.cpp`, `account_database.cpp` | 신규 계정 DB와 registry row |
| 계정 전환 | `POST /web/api/accounts/<id>/select` | `account_db_manager.cpp` | 활성 DB 핸들 교체 |
| 계정 복제 | `POST /web/api/accounts/<id>/copy` | `account_registry.cpp` | 복제된 `state.sqlite3` |
| UserInfo 내보내기 | `GET /web/api/accounts/<id>/export` | `userinfo_repository.cpp` | UserInfo JSON |
| UserInfo 가져오기 | `POST /web/api/accounts/<id>/import` | `account_database.cpp` | 계정 DB 재적재 |
| 세션 값 갱신 | `PATCH /web/api/accounts/<id>/session` | `account_registry.cpp` | `account_session` row |
| 게임 상태 변경 | `/Live/...` game endpoint | `endpoint_mutation_service.cpp` | hero, item, dungeon, shop, task 상태 |
| 로그인 및 WSS 응답 | WebSocket route | `ws_session.cpp` | player id, idp, token, market, lang payload |

---

## 흐름표 T-05: 빌드 산출

본 빌드 산출 계층은 Windows 서버 산출물, Android SO 산출물, embedded dex 산출물, 오프라인 데이터 산출물을 분리하여 생성한다.

```text
Windows server output
  ├─ build-server.ps1
  ├─ src/web/input.css -> src/web/style.css
  ├─ eversoul_gui.exe
  ├─ eversoul_console.exe
  ├─ copy_only/dll
  └─ copy_only/adb

Android hook output
  ├─ build-android.ps1
  ├─ CMake target swappywrapper
  └─ libswappywrapper.so

Embedded Java hook output
  ├─ smali_inject/RedirectHooks.java
  ├─ scripts/build_redirect_dex.sh
  └─ redirect_hooks object

Offline data output
  ├─ tools/pack_offline_data.py
  ├─ responses/
  ├─ responses_newbie/
  ├─ schema/
  ├─ src/web/
  ├─ wss/
  └─ libofflinedata.so
```

흐름표 T-05는 각 산출물의 생성 경로, 입력, 사용 계층을 나타낸다.

| 산출물 | 생성 경로 | 입력 | 사용 계층 |
| --- | --- | --- | --- |
| `eversoul_gui.exe` | `build-server.ps1 --gui` | `src/gui_main.cpp`, server source, WebView2 | GUI 서버 실행 |
| `eversoul_console.exe` | `build-server.ps1 --cmd` | `src/console_main.cpp`, server source | 콘솔 서버 실행 |
| `style.css` | `third_party/tailwindcss.exe` | `src/web/input.css` | Web UI |
| `libswappywrapper.so` | `build-android.ps1` | Android hook source, Dobby, LSPlant, frida-gum | APK 프로세스 hook |
| `RedirectHooks.dex` embedded object | `scripts/build_redirect_dex.sh` | `smali_inject/RedirectHooks.java` | LSPlant Java hook |
| `libofflinedata.so` | `tools/pack_offline_data.py` | fixture, schema, web, wss | 오프라인 데이터 로딩 |

---

## 순서도 F-04: 바이패스 및 훅 아키텍처

본 바이패스 계층은 APK 로드 지점, LIAPP 보호 계층, Java URL 계층, IL2CPP URL 계층, libc 전송 계층, 로컬 서버 응답 계층을 포함한다. 상기 계층은 각각 독립된 hook 지점을 가지며, 공통 URL 정책은 `src/url_redirect.cpp`의 `redirect_url_cpp()`를 통해 공유된다.

순서도 F-04는 `libswappywrapper.so` 조기 로드 이후 native constructor와 `JNI_OnLoad`에서 hook 계층이 설치되는 순서를 나타낸다.

```text
com.liapp.x.attachBaseContext()
  └─ System.loadLibrary("swappywrapper")
       ├─ constructor
       │    ├─ anticheat::install()
       │    ├─ net_redirect::install()
       │    └─ frida_gum::init()
       └─ JNI_OnLoad
            ├─ lsplant::install_java_hooks(vm)
            └─ native_hooks::install_il2cpp_hooks()
```

상기 LIAPP2 hook 구성은 `com.liapp.x`, `libcawwyayy.so`, `lockincomp.com` 장치 인증, 프로세스 종료 호출, HMAC 서명 판정 호출을 대상으로 한다. `src/anticheat_patch.cpp`는 libc `pthread_create`의 시작부를 ARM64 inline jump로 교체하고 trampoline을 구성한다. thread start routine의 `Dl_info.dli_fname`에 `cawwyayy`가 포함되는 경우, 상기 routine은 no-op routine으로 대체된다. 이로써 보호 스레드는 생성 흐름을 통과하되 검사 routine을 실행하지 않는다.

상기 lockincomp 장치 인증 흐름은 URL 계층과 서버 라우터에서 함께 처리된다. URL 계층은 `.lockincomp.com` 대상 URL을 로컬 HTTP base로 재작성한다. 서버 라우터는 `/sbaa479o` 경로 또는 `f39ad58` 계열 body key를 수신하면 lockincomp 장치 인증 응답을 반환한다.

상기 Java 계층은 LSPlant와 embedded `RedirectHooks.dex`를 포함한다. `src/lsplant_hooks.cpp`는 Dobby 기반 inline hooker와 ART symbol resolver로 LSPlant를 초기화한다. `src/dex_loader.cpp`는 embedded dex를 `InMemoryDexClassLoader`로 로드하고, `RedirectHooks.java`의 native callback을 `RegisterNatives`로 C++ 함수에 연결한다.

```text
Java layer
  ├─ java.net.URL.<init>(String)
  ├─ java.net.URL.<init>(URL, String)
  ├─ java.net.URL.<init>(URL, String, URLStreamHandler)
  ├─ okhttp3.Request$Builder.url(String)
  ├─ android.os.Process.killProcess(int)
  └─ com.kakaogame.util.HmacSHA256Util.verifySignature(String, String)
```

상기 URL 생성자와 OkHttp builder hook은 입력 URL을 `redirect_url_cpp()`로 재작성한 뒤 LSPlant backup method를 호출한다. `killProcess` hook은 게임 자기 종료 경로를 소거한다. `verifySignature` hook은 서명 판정 결과를 통과 값으로 반환한다.

상기 frida-gum 계층은 `gum_init_embedded()`로 런타임을 초기화하고, `GumInterceptor`로 IL2CPP 함수 포인터를 replace한다. `src/native_url_hooks.cpp`는 `libil2cpp.so` 로드 후 `il2cpp_init`을 hook하고, 초기화 완료 시점에 UnityWebRequest 계층과 KGConfiguration URL 반환 지점을 설치한다.

```text
frida-gum / IL2CPP layer
  ├─ il2cpp_init detour
  ├─ UnityWebRequest .ctor
  ├─ UnityWebRequest set_url
  ├─ UnityWebRequest SetUrl
  └─ KGConfiguration RVA
       ├─ 0x0894A724
       ├─ 0x0894A85C
       └─ 0x0894A994
```

상기 IL2CPP hook은 IL2CPP string을 UTF-8로 변환하고, `redirect_url_cpp()` 적용 후 새 IL2CPP string을 원본 호출 인자로 전달한다. 이에 따라 UnityWebRequest 경로의 `https` 및 `wss` 요청은 로컬 `http` 및 `ws` 경로로 변환된다.

상기 전송 계층은 `src/net_redirect.cpp`에서 DobbyHook으로 구성된다. `getaddrinfo()`와 `android_getaddrinfofornet()`는 대상 host를 `127.0.0.1`로 해석하게 하며, `connect()`는 loopback으로 들어온 `80`, `443`, `1739` 포트를 `9991`로 재작성한다.

```text
transport layer
  ├─ getaddrinfo(host)                 -> 127.0.0.1
  ├─ android_getaddrinfofornet(host)   -> 127.0.0.1
  └─ connect(127.0.0.1:80/443/1739)    -> 127.0.0.1:9991
```

상기 URL 정책은 Kakao, game.kakao, zinny3, live-kr/live-sea Eversoul host, WebSocket host, lockincomp host를 대상으로 한다. Java 계층과 IL2CPP 계층은 scheme을 `https -> http`, `wss -> ws`로 낮추고, 전송 계층은 host 및 port를 로컬 서버로 수렴시킨다.

---

## 실행 구성

본 프로젝트의 기본 실행 구성은 Windows PC와 MuMuPlayer Global 12.0을 대상으로 한다. Windows 서버 EXE는 프로젝트 출력 디렉터리의 `adb\adb.exe`를 내부 ADB 실행기로 설정한다. 이 ADB 실행기는 MuMuPlayer ADB 파일을 프로젝트 출력물에 배치한 구성으로 사용된다.

MuMuPlayer의 ADB 포트는 MuMu 설정의 멀티 인스턴스 ADB 포트 값을 사용한다. 사용자는 Web UI에 포트 값만 입력한다. Web UI는 해당 포트를 `adb_port` 설정값으로 저장하고, 서버 EXE는 내부 ADB 실행기를 통해 `127.0.0.1:<ADB_PORT>` 연결, 기기 조회, 패키지 조회, root 상태 조회, 게임 실행, 게임 중지, pid 조회, logcat 수집을 수행한다.

```text
Web UI
  ├─ MuMu ADB port 입력
  ├─ /web/api/adb/port
  ├─ /web/api/adb/probe
  ├─ /web/api/injector/devices
  ├─ /web/api/injector/run
  ├─ /web/api/injector/stop
  └─ /web/api/logs/adb/stream
```

상기 ADB 제어 계층은 Web UI와 서버 EXE 내부에서 수행된다. 게임 실행 버튼은 다음 Activity를 ADB로 실행한다.

```text
com.kakaogames.eversoul/com.kakaogames.eversoul.unity.UnityPlayerActivity
```

---

## 빌드 구성

본 프로젝트는 Windows PowerShell 빌드 스크립트를 기본 빌드 진입점으로 사용한다.

```powershell
.\build-server.ps1 --gui
.\build-server.ps1 --cmd
.\build-server.ps1
.\build-android.ps1
```

상기 `build-server.ps1`은 `third_party\tailwindcss.exe`를 이용하여 `src\web\input.css`로부터 `src\web\style.css`를 생성한다. 이후 CMake는 GUI 서버 대상 `eversoul_gui`와 콘솔 서버 대상 `eversoul_console`을 빌드한다. 빌드 산출 디렉터리에는 `copy_only\dll`의 런타임 DLL과 `copy_only\adb`의 ADB 실행 파일을 배치한다.

상기 `build-android.ps1`은 Android NDK `29.0.14206865`, ABI `arm64-v8a`, platform `android-29`를 사용하여 Android SO 대상 `swappywrapper`를 빌드한다.

```text
build\gui\eversoul_gui.exe
build\cmd\eversoul_console.exe
build\android\libswappywrapper.so
```

---

## 서버 EXE 구조

본 서버 EXE는 GUI 실행형과 콘솔 실행형을 포함한다. `eversoul_gui.exe`는 WebView2를 통해 `http://127.0.0.1:9991/web/`를 표시한다. `eversoul_console.exe`는 기본 브라우저로 동일한 Web UI를 열고, ADB logcat 스트림을 서버의 SSE 채널과 `logs/adb.log`로 전달한다.

서버 시작 시 `src/server.cpp`는 오프라인 데이터, fixture store, WebSocket fixture, 계정 DB를 초기화하고 `9991` 포트에서 요청을 수신한다. `src/router.cpp`는 Web UI API, Kakao SDK API, Infodesk API, `/Live/...` 패치 라우트, 게임 Protobuf 라우트, WebSocket upgrade 라우트를 처리한다.

```text
src/gui_main.cpp
  └─ WebView2 + start_async(9991)

src/console_main.cpp
  ├─ start_async(9991)
  ├─ logcat_process::start(adb)
  └─ ShellExecute("http://127.0.0.1:9991/web/")

src/server.cpp
  ├─ fixture_store().load()
  ├─ ws_load_fixtures()
  ├─ orm::ensure_ready()
  └─ run_server(9991)
```

---

## ADB 및 MuMuPlayer 연동 구조

본 서버는 `src/adb_runner.cpp`를 통해 ADB 명령을 `CreateProcess`로 실행한다. 표준 출력과 표준 에러는 ADB 로그 채널로 전달되며, Web UI는 `/web/api/logs/adb/stream` SSE 경로로 이를 표시한다.

MuMuPlayer 연동은 다음 순서로 구성한다.

1. 사용자는 MuMuPlayer의 ADB 포트를 Web UI 또는 설정 화면에 입력한다.
2. Web UI는 `/web/api/adb/port`에 포트를 저장한다.
3. 서버는 `127.0.0.1:<ADB_PORT>`를 ADB serial로 설정한다.
4. Web UI는 `/web/api/adb/probe`를 호출한다.
5. 서버는 `adb connect`, 패키지 조회, root 상태 조회를 수행한다.
6. Web UI의 게임 실행 버튼은 `/web/api/injector/run`을 호출한다.
7. 서버는 내부 ADB 실행기로 에버소울 Unity Activity를 실행한다.

상기 구조에서 ADB 포트는 MuMuPlayer 인스턴스 식별자로 동작한다. 다중 MuMu 인스턴스를 사용할 때에는 각 인스턴스의 ADB 포트를 별도로 입력하고, Web UI의 기기 목록에서 대상 serial을 선택한다.

---

## 다중 계정 구조

본 시스템은 계정 목록 DB와 계정별 상태 DB를 분리한다. 계정 목록 DB는 `runtime_state/accounts.sqlite3`에 위치하며, 각 계정의 게임 상태 DB는 `runtime_state/accounts/<account_id>/state.sqlite3`에 위치한다.

```text
runtime_state/
  ├─ accounts.sqlite3
  │    ├─ account_registry
  │    ├─ active_account
  │    ├─ account_operation_log
  │    └─ account_session
  └─ accounts/
       └─ <account_id>/
            └─ state.sqlite3
```

`account_registry`는 계정 식별자, 표시 이름, player id, idp code, seed 출처, DB 상대 경로를 보관한다. `active_account`는 현재 게임 요청에 연결되는 단일 활성 계정을 지정한다. `account_session`은 WebSocket 및 로그인 응답에 주입되는 player id, idp code, ZAT, ZRT, market, lang, push token 값을 보관한다.

서버는 시작 시 `orm::ensure_ready()`를 실행한다. 계정 목록이 비어 있으면 `acct-default` 계정을 생성하고 `responses/UserInfo.json` 기반 상태를 계정 DB에 적재한다. 계정 목록이 있으면 `active_account`가 가리키는 계정 DB를 열어 게임 요청 처리에 사용한다.

Web UI와 게임 라우트는 다음 흐름으로 활성 계정을 사용한다.

```text
/web/api/accounts
  ├─ POST              새 계정 생성
  ├─ GET               계정 목록 조회
  ├─ GET /<id>         계정 상세 조회
  ├─ PATCH /<id>       닉네임 변경
  ├─ POST /<id>/select 활성 계정 전환
  ├─ POST /<id>/copy   계정 DB 복제
  ├─ GET /<id>/export  UserInfo JSON 내보내기
  ├─ POST /<id>/import UserInfo JSON 가져오기
  ├─ PATCH /<id>/session 로그인 / WSS 세션 값 갱신
  └─ DELETE /<id>      계정 삭제
```

활성 계정 전환 시 `AccountDatabaseManager`는 기존 계정 DB 핸들을 닫고 선택된 계정의 `state.sqlite3`를 연다. 이후 `/UserInfo`, tutorial, dungeon, formation, hero, item, equipment, spirit tree, gacha, shop, task, achievement, mail, attendance, friend heart, nickname, auto hunt 계열 엔드포인트는 활성 계정 DB를 기준으로 응답과 상태 변경을 수행한다.

WebSocket 세션 응답은 `account_session`의 값을 사용한다. `src/ws_session.cpp`는 active account id를 조회하고, 해당 계정의 session row를 읽어 initial push와 session reply의 player id, idp code, token, market, lang 값을 구성한다.

---

## 오프라인 데이터 구조

본 프로젝트의 오프라인 데이터 계층은 응답 fixture, Protobuf schema, Web UI 자산, WebSocket fixture를 하나의 로딩 구조로 연결한다.

```text
responses/           기존 계정 응답 fixture
responses_newbie/    신규 계정 응답 fixture
schema/              Protobuf JSON schema
wss/                 WebSocket session fixture
src/web/             Web UI 정적 자산
tools/pack_offline_data.py
```

`tools/pack_offline_data.py`는 상기 데이터 소스를 `ESOFLND1` 아카이브로 묶고, 산출 파일명을 `libofflinedata.so`로 부여한다. 상기 파일은 네이티브 코드 라이브러리가 아니라 오프라인 데이터 컨테이너로 동작한다.

Windows 서버 EXE는 CMake가 생성한 embedded web blob을 먼저 사용한다. Android 및 비 Windows 경로는 로드된 SO의 디렉터리를 기준으로 `libofflinedata.so`를 읽는다. 데이터 컨테이너가 없는 실행 형태에서는 `config().data_dir`의 디렉터리 파일을 직접 읽는다.

서버 응답 계층은 다음 방식으로 데이터를 사용한다.

```text
HTTP / Protobuf 요청
  ├─ router.cpp
  ├─ fixture_store
  ├─ AccountDatabase
  ├─ UserInfoRepository
  ├─ json_encoder
  └─ protobuf payload
```

고정 응답은 fixture store에서 제공한다. 계정 상태가 필요한 응답은 AccountDatabase에서 정규화된 상태를 읽고, UserInfoRepository가 `/UserInfo` JSON을 재구성한 뒤 schema 기반 인코더를 통해 Protobuf payload로 변환한다.

---

## Android SO 구조

Android SO 대상은 `libswappywrapper.so`이다. 상기 SO는 APK의 `com.liapp.x.attachBaseContext()`에서 조기 로드된다. 이후 native constructor와 `JNI_OnLoad`를 통해 hook 계층을 설치한다.

```text
src/entry.cpp
  ├─ anticheat::install()
  ├─ net_redirect::install()
  ├─ frida_gum::init()
  ├─ lsplant::install_java_hooks(vm)
  └─ native_hooks::install_il2cpp_hooks()
```

상기 hook 계층은 다음 기능을 수행한다.

- `src/anticheat_patch.cpp`: `pthread_create` 호출을 inline hook으로 가로채고 특정 보호 라이브러리 경로의 thread start routine을 no-op routine으로 교체한다.
- `src/net_redirect.cpp`: `connect`, `getaddrinfo`, `android_getaddrinfofornet` 호출을 hook하여 대상 호스트의 연결을 `127.0.0.1:9991`로 재작성한다.
- `src/lsplant_hooks.cpp`: `java.net.URL`, `okhttp3.Request$Builder.url(String)`, `android.os.Process.killProcess`, `HmacSHA256Util.verifySignature` 경로를 hook한다.
- `src/dex_loader.cpp`: embedded `RedirectHooks.dex`를 InMemoryDexClassLoader로 로드한다.
- `src/native_url_hooks.cpp`: IL2CPP UnityWebRequest 생성자와 URL setter, KGConfiguration URL 반환 지점을 hook한다.

---

## APK 연구 및 패치 구조

APK 연구 기준 경로는 `apk/research`이다. 상기 경로는 APK 분석 및 DEX / Smali 연구 입력을 보관한다.

```text
apk/research/
  ├─ classes3.dex
  ├─ jadx3/
  └─ smali_out/
```

APK 패치 계층은 `libswappywrapper.so`를 앱 프로세스에서 조기 로드하는 구성을 사용한다. 배포용 패치 산출물과 키 저장소는 `apk/` 아래에서 관리한다.

```text
apk/
  ├─ base.apk
  ├─ base_patched.apk
  ├─ base_patched.apk.idsig
  └─ eversoul.keystore
```

직접 Smali URLHook 자료는 구버전 DEX 패치 흐름에 속한다. 기본 실행 경로는 CMake Android SO와 Windows 서버 EXE 구조를 사용한다.

---

## 프로젝트 디렉터리 구조

```text
src/                 C++ 서버, Android SO hook, 계정 DB, WebSocket, ADB 실행 계층
src/web/             Web UI, 계정 관리 UI, ADB / injector UI
apk/research/        APK 분석 기준 경로
smali_inject/        embedded dex 및 직접 Smali hook 자료
scripts/             Android embedded dex 생성 스크립트
tools/               데이터 변환, 패킹, DEX patch 보조 도구
schema/              Protobuf JSON schema
responses/           기존 계정 fixture
responses_newbie/    신규 계정 fixture
wss/                 WebSocket fixture
probability/         확률표 문서
ProtocolBuffers/     Protobuf 참조 자료
third_party/         Dobby, LSPlant, frida-gum, SQLite, WebView2, ADB, apktool, jadx, tailwindcss
copy_only/           Windows EXE 출력 디렉터리로 복사되는 ADB 및 DLL 파일
eversoul-redirect-module/ Android 보조 Gradle 모듈
pine_helper/         Android helper Gradle 모듈
```

---

## 실행 절차

1. 서버 EXE와 Android SO를 빌드한다.
2. MuMuPlayer에서 에버소울 패치 APK를 실행 가능한 상태로 준비한다.
3. MuMuPlayer ADB 포트 값을 읽어 온다.
4. `eversoul_gui.exe` 또는 `eversoul_console.exe`를 실행한다.
5. Web UI에서 ADB 포트를 저장하고 기기 상태를 조회한다.
6. 계정 관리 화면에서 계정을 생성하거나 선택한다.
7. Web UI에서 게임 실행 버튼을 사용한다.
8. 게임 클라이언트의 서버 요청은 Android SO와 로컬 연결 경로를 통해 Windows 서버 EXE로 전달된다.

---

## 라이선스

본 프로젝트의 라이선스는 `LICENSE` 파일에 따른다.

---

## APK

https://drive.google.com/file/d/1v7oG2i1bFFInL-bW6YRYowwcKiqSaBuR/view?usp=sharing
