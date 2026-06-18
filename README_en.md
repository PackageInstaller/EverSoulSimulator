<p align="center">
  <img src="src/assets/logo.png" width="160" alt="EverSoul Offline" />
</p>

<h1 align="center">Eversoul Offline</h1>
<h3 align="center">Eversoul Offline Project</h3>

<p align="center">
  This project composes the Eversoul offline server EXEs, Android SO redirect layer, APK / Smali patching layer, offline data container, and account database into one local runtime architecture.
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
  <img src="https://img.shields.io/badge/version-0.0.6-blue?style=for-the-badge" alt="v0.0.5" />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/English-EN-0078D4?style=flat-square" alt="English" />
  &nbsp;
  <a href="README.md"><img src="https://img.shields.io/badge/%ED%95%9C%EA%B5%AD%EC%96%B4-KR-003478?style=flat-square" alt="한국어" /></a>
  &nbsp;
  <a href="README_cn.md"><img src="https://img.shields.io/badge/%E4%B8%AD%E6%96%87-CN-DE2910?style=flat-square" alt="中文" /></a>
</p>

---

## Diagram D-01: Architecture Overview

The system contains a Windows server EXE layer, an Android ARM64 SO layer, an APK research and patching layer, an offline data layer, and a multi-account SQLite layer. These components rewire the Eversoul client so that the client communicates with the local Windows server instead of the external game service.

The Windows server EXE provides HTTP, Protobuf, WebSocket, Web UI, and ADB control APIs on `127.0.0.1:9991`. The Android SO redirects Java URL, OkHttp URL, IL2CPP UnityWebRequest URL, and libc transport connections to `127.0.0.1:9991`. The ADB layer uses the server-side ADB runner and the MuMuPlayer ADB port saved by the Web UI.

This document uses the following diagram, flowchart, and flow-table identifiers.

| ID | Type | Title | Scope |
| --- | --- | --- | --- |
| D-01 | Diagram | Overall composition diagram | Windows server EXE, Android SO, APK research, offline data, multi-account state |
| D-02 | Diagram | Root layer diagram | Repository root directories and roles |
| D-03 | Diagram | `src` layer diagram | C++ server, account, ADB, Android hook, Web asset layers |
| F-01 | Flowchart | Full pipeline flowchart | Build, APK patch input, server run, MuMuPlayer control, game request handling |
| F-02 | Flowchart | Runtime request flowchart | Client request, URL rewrite, server routing, response generation |
| F-03 | Flowchart | Account state flowchart | Web UI account operation, game endpoint mutation, WebSocket session |
| F-04 | Flowchart | Bypass installation flowchart | APK early load, native constructor, JNI hook installation |
| T-01 | Flow table | Root layer flow table | Root directory composition and roles |
| T-02 | Flow table | `src` layer flow table | Input, processing, output |
| T-03 | Flow table | Request handling flow table | Hook layer, route layer, account layer |
| T-04 | Flow table | Account state flow table | Account API and game endpoint state output |
| T-05 | Flow table | Build output flow table | EXE, SO, embedded dex, offline data outputs |

Diagram D-01 shows the top-level composition.

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

## Diagram D-02: Root Layer Architecture

The root layer combines build entry points, runtime implementation, APK research material, offline response data, protocol references, third-party dependencies, runtime copy sets, and Android helper projects.

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

Flow table T-01 maps the root-layer roles.

| Layer | Components | Role |
| --- | --- | --- |
| Build entry | `CMakeLists.txt`, `build-server.ps1`, `build-android.ps1` | Produces Windows EXE, Android SO, Web UI CSS, and runtime copy output. |
| Runtime implementation | `src/`, `src/web/`, `src/orm/` | Runs server routing, account DB, Web UI, ADB, WebSocket, and Android hook logic. |
| APK research input | `apk/research/`, `smali_inject/`, `scripts/` | Stores APK analysis baseline, embedded dex, Smali material, and hook load inputs. |
| Offline data | `responses/`, `responses_newbie/`, `schema/`, `wss/`, `expected/` | Supplies account seeds, fixed replies, Protobuf schema, WebSocket fixtures, and response comparison material. |
| Protocol material | `ProtocolBuffers/`, `probability/` | Stores Protobuf reference material and probability table documents. |
| Dependencies | `third_party/`, `copy_only/` | Supplies Dobby, LSPlant, frida-gum, SQLite, WebView2, Tailwind, ADB, and DLL copy sets. |
| Helper projects | `eversoul-redirect-module/`, `pine_helper/` | Stores Android helper modules and hook research support. |

---

## Diagram D-03: src Layer Architecture

The `src` layer is a single C++ codebase that produces both Windows server EXEs and the Android ARM64 SO.

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

Flow table T-02 maps the `src` layer input, processing, and output.

| Layer | Input | Processing | Output |
| --- | --- | --- | --- |
| EXE entry | Process start | ADB path setup, async server start, Web UI display | `127.0.0.1:9991/web/` |
| Server routes | HTTP, WebSocket, Protobuf request | Route match, body decode, response build, upgrade handling | HTTP payload, Protobuf payload, WSS reply |
| Account state | Account id, endpoint body, session values | Active account DB selection, state mutation, UserInfo rebuild | Per-account `state.sqlite3` and response body |
| Data protocol | Fixture, schema, packed archive | JSON load, schema lookup, crypto helper, payload encode | Game client response |
| ADB log | Web UI command, MuMu ADB port | Internal ADB execution, stdout/stderr capture, SSE streaming | Device state, run state, log stream |
| Android hook | APK process load, URL and socket calls | Java hook, IL2CPP hook, libc hook, LIAPP2 path handling | Local server request |
| Web assets | `src/web/*.html`, `*.js`, `*.css` | Account UI, injector UI, ADB UI, log UI | Browser control surface |

---

## Flowchart F-01: Full Pipeline

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

## Flowchart F-02: Runtime Request Flow

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

Flow table T-03 maps request handling.

| Request layer | Hook or module | Operation | Next step |
| --- | --- | --- | --- |
| Java URL | `lsplant_hooks.cpp`, `RedirectHooks.java` | Rewrites URL constructor input to a local URL. | OkHttp or Java network stack |
| OkHttp | `lsplant_hooks.cpp` | Rewrites `Request$Builder.url(String)` input to a local URL. | Android network stack |
| UnityWebRequest | `native_url_hooks.cpp` | Rewrites IL2CPP string input to a local URL. | Unity request dispatch |
| libc transport | `net_redirect.cpp` | Adjusts host resolution and socket port to the local server target. | Windows server route |
| HTTP route | `router.cpp` | Selects a response builder by path, method, and body. | Fixture or account DB |
| Account mutation | `endpoint_mutation_service.cpp` | Mutates tutorial, stage, hero, item, gacha, shop, and related state. | Account DB commit |
| Response encode | `json_encoder.cpp`, `protobuf.cpp` | Converts JSON response into Protobuf payload. | Game client |

---

## Flowchart F-03 And Flow Table T-04: Account State

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

| Flow | API or endpoint | Module | State output |
| --- | --- | --- | --- |
| Account creation | `POST /web/api/accounts` | `account_registry.cpp`, `account_database.cpp` | New account DB and registry row |
| Account switch | `POST /web/api/accounts/<id>/select` | `account_db_manager.cpp` | Active DB handle replacement |
| Account copy | `POST /web/api/accounts/<id>/copy` | `account_registry.cpp` | Copied `state.sqlite3` |
| UserInfo export | `GET /web/api/accounts/<id>/export` | `userinfo_repository.cpp` | UserInfo JSON |
| UserInfo import | `POST /web/api/accounts/<id>/import` | `account_database.cpp` | Account DB reload |
| Session update | `PATCH /web/api/accounts/<id>/session` | `account_registry.cpp` | `account_session` row |
| Game mutation | `/Live/...` game endpoint | `endpoint_mutation_service.cpp` | hero, item, dungeon, shop, task state |
| Login and WSS reply | WebSocket route | `ws_session.cpp` | player id, idp, token, market, lang payload |

---

## Flow Table T-05: Build Output

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

| Output | Creation path | Input | Used by |
| --- | --- | --- | --- |
| `eversoul_gui.exe` | `build-server.ps1 --gui` | `src/gui_main.cpp`, server source, WebView2 | GUI server runtime |
| `eversoul_console.exe` | `build-server.ps1 --cmd` | `src/console_main.cpp`, server source | Console server runtime |
| `style.css` | `third_party/tailwindcss.exe` | `src/web/input.css` | Web UI |
| `libswappywrapper.so` | `build-android.ps1` | Android hook source, Dobby, LSPlant, frida-gum | APK process hook |
| `RedirectHooks.dex` embedded object | `scripts/build_redirect_dex.sh` | `smali_inject/RedirectHooks.java` | LSPlant Java hook |
| `libofflinedata.so` | `tools/pack_offline_data.py` | fixture, schema, web, wss | Offline data loading |

---

## Flowchart F-04: Bypass And Hook Architecture

Flowchart F-04 maps hook installation after early `libswappywrapper.so` loading.

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

The LIAPP2 hook composition targets `com.liapp.x`, `libcawwyayy.so`, `lockincomp.com` device auth, process termination calls, and HMAC signature decision calls. `src/anticheat_patch.cpp` replaces the start of libc `pthread_create` with an ARM64 inline jump and builds a trampoline. When the thread start routine path contains `cawwyayy`, the routine is replaced with a no-op routine.

```text
Java layer
  ├─ java.net.URL.<init>(String)
  ├─ java.net.URL.<init>(URL, String)
  ├─ java.net.URL.<init>(URL, String, URLStreamHandler)
  ├─ okhttp3.Request$Builder.url(String)
  ├─ android.os.Process.killProcess(int)
  └─ com.kakaogame.util.HmacSHA256Util.verifySignature(String, String)
```

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

```text
transport layer
  ├─ getaddrinfo(host)                 -> 127.0.0.1
  ├─ android_getaddrinfofornet(host)   -> 127.0.0.1
  └─ connect(127.0.0.1:80/443/1739)    -> 127.0.0.1:9991
```

---

## Runtime Composition

The default operating composition targets a Windows PC and MuMuPlayer Global 12.0. The Windows server EXE sets the ADB executable path to `adb\adb.exe` inside the output directory.

The MuMuPlayer ADB port comes from the multi-instance ADB port setting. The user enters only that port in the Web UI. The Web UI stores the value as `adb_port`, and the server runs internal ADB commands against `127.0.0.1:<ADB_PORT>`. After connection, the server executes `adb devices`, package query, `su -c id`, `adb root`, `am start`, `force-stop`, `pidof`, and `logcat` through the ADB API.

The Web UI game start action launches this Activity through ADB:

```text
com.kakaogames.eversoul/com.kakaogames.eversoul.unity.UnityPlayerActivity
```

---

## Build Composition

The project uses Windows PowerShell scripts as build entry points.

```powershell
.\build-server.ps1 --gui
.\build-server.ps1 --cmd
.\build-server.ps1
.\build-android.ps1
```

`build-server.ps1` generates `src\web\style.css` from `src\web\input.css` with `third_party\tailwindcss.exe`, then builds the `eversoul_gui` and `eversoul_console` CMake targets. The output directory receives runtime DLLs from `copy_only\dll` and ADB files from `copy_only\adb`.

`build-android.ps1` builds the `swappywrapper` Android SO target with Android NDK `29.0.14206865`, ABI `arm64-v8a`, and platform `android-29`.

```text
build\gui\eversoul_gui.exe
build\cmd\eversoul_console.exe
build\android\libswappywrapper.so
```

---

## Server EXE Structure

The server EXE layer contains GUI and console entry points. `eversoul_gui.exe` renders `http://127.0.0.1:9991/web/` through WebView2. `eversoul_console.exe` opens the same Web UI in the default browser and streams ADB logcat into the server SSE channel and `logs/adb.log`.

At startup, `src/server.cpp` initializes offline data, fixture store, WebSocket fixtures, and the account database, then listens on port `9991`. `src/router.cpp` routes Web UI APIs, Kakao SDK APIs, Infodesk APIs, `/Live/...` patch routes, game Protobuf routes, and WebSocket upgrades.

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

## ADB And MuMuPlayer Structure

The server uses `src/adb_runner.cpp` to execute ADB commands through `CreateProcess`. Standard output and standard error flow into the ADB log channel, and the Web UI displays them through `/web/api/logs/adb/stream`.

MuMuPlayer integration uses this sequence:

1. Enter the MuMuPlayer ADB port in the Web UI or settings page.
2. The Web UI stores the port through `/web/api/adb/port`.
3. The server sets `127.0.0.1:<ADB_PORT>` as the ADB serial.
4. The Web UI calls `/web/api/adb/probe`.
5. The server executes `adb connect`, package query, and root-state checks.
6. The Web UI game start button calls `/web/api/injector/run`.
7. The server launches the Eversoul Unity Activity through ADB.

The ADB port identifies the MuMuPlayer instance. With multiple MuMu instances, use each instance's ADB port and select the target serial from the Web UI device list.

---

## Multi-Account Structure

The account layer separates the account registry database from per-account state databases. The registry database is `runtime_state/accounts.sqlite3`, and each account state database is `runtime_state/accounts/<account_id>/state.sqlite3`.

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

`account_registry` stores account id, display name, player id, idp code, seed source, and database path. `active_account` selects the single account bound to game requests. `account_session` stores player id, idp code, ZAT, ZRT, market, lang, and push token values used by WebSocket and login responses.

During server startup, `orm::ensure_ready()` prepares the account layer. If the registry has no account, it creates `acct-default` and seeds its state from `responses/UserInfo.json`. If the registry has accounts, it opens the database selected by `active_account`.

```text
/web/api/accounts
  ├─ POST              create account
  ├─ GET               list accounts
  ├─ GET /<id>         read account
  ├─ PATCH /<id>       update nickname
  ├─ POST /<id>/select switch active account
  ├─ POST /<id>/copy   copy account database
  ├─ GET /<id>/export  export UserInfo JSON
  ├─ POST /<id>/import import UserInfo JSON
  ├─ PATCH /<id>/session update login / WSS session values
  └─ DELETE /<id>      delete account
```

On account switch, `AccountDatabaseManager` closes the previous database handle and opens the selected account's `state.sqlite3`. `/UserInfo`, tutorial, dungeon, formation, hero, item, equipment, spirit tree, gacha, shop, task, achievement, mail, attendance, friend heart, nickname, and auto hunt routes then operate on the active account database.

WebSocket session responses use `account_session`. `src/ws_session.cpp` reads the active account session row and composes player id, idp code, token, market, and lang fields for initial push and session replies.

---

## Offline Data Structure

The offline data layer connects response fixtures, Protobuf schemas, Web UI assets, and WebSocket fixtures into a single loading structure.

```text
responses/           existing-account response fixtures
responses_newbie/    new-account response fixtures
schema/              Protobuf JSON schemas
wss/                 WebSocket session fixtures
src/web/             Web UI static assets
tools/pack_offline_data.py
```

`tools/pack_offline_data.py` packs these data sources into the `ESOFLND1` archive format and names the output `libofflinedata.so`. The file acts as an offline data container, not as a native code library.

The Windows server EXE uses the embedded web blob generated by CMake first. Android and non-Windows paths load `libofflinedata.so` from the loaded SO directory. Directory-based execution reads files from `config().data_dir`.

```text
HTTP / Protobuf request
  ├─ router.cpp
  ├─ fixture_store
  ├─ AccountDatabase
  ├─ UserInfoRepository
  ├─ json_encoder
  └─ protobuf payload
```

Fixed responses come from fixture store. Account-state responses read normalized state from AccountDatabase. UserInfoRepository rebuilds `/UserInfo` JSON and the schema-based encoder converts it into a Protobuf payload.

---

## Android SO Structure

The Android SO target is `libswappywrapper.so`. The APK loads this SO early from `com.liapp.x.attachBaseContext()`. The native constructor and `JNI_OnLoad` install the hook layers.

```text
src/entry.cpp
  ├─ anticheat::install()
  ├─ net_redirect::install()
  ├─ frida_gum::init()
  ├─ lsplant::install_java_hooks(vm)
  └─ native_hooks::install_il2cpp_hooks()
```

- `src/anticheat_patch.cpp`: hooks `pthread_create` and replaces selected protected-library thread start routines with a no-op routine.
- `src/net_redirect.cpp`: hooks `connect`, `getaddrinfo`, and `android_getaddrinfofornet` to rewrite target connections to `127.0.0.1:9991`.
- `src/lsplant_hooks.cpp`: hooks `java.net.URL`, `okhttp3.Request$Builder.url(String)`, `android.os.Process.killProcess`, and `HmacSHA256Util.verifySignature`.
- `src/dex_loader.cpp`: loads embedded `RedirectHooks.dex` through InMemoryDexClassLoader.
- `src/native_url_hooks.cpp`: hooks IL2CPP UnityWebRequest constructors, URL setters, and KGConfiguration URL return points.

---

## APK Research And Patch Structure

The APK research baseline path is `apk/research`.

```text
apk/research/
  ├─ classes3.dex
  ├─ jadx3/
  └─ smali_out/
```

The APK patching layer loads `libswappywrapper.so` early inside the app process. Patch outputs and keystore files are managed under `apk/`.

```text
apk/
  ├─ base.apk
  ├─ base_patched.apk
  ├─ base_patched.apk.idsig
  └─ eversoul.keystore
```

The direct Smali URLHook material belongs to the legacy DEX patch flow. The default execution path uses the CMake Android SO and Windows server EXE structure.

---

## Project Directory Structure

```text
src/                 C++ server, Android SO hooks, account DB, WebSocket, ADB runner
src/web/             Web UI, account management UI, ADB / injector UI
apk/research/        APK analysis baseline path
smali_inject/        embedded dex and direct Smali hook material
scripts/             Android embedded dex generation script
tools/               data conversion, packing, and DEX patch helper tools
schema/              Protobuf JSON schemas
responses/           existing-account fixtures
responses_newbie/    new-account fixtures
wss/                 WebSocket fixtures
probability/         probability table documents
ProtocolBuffers/     Protobuf reference material
third_party/         Dobby, LSPlant, frida-gum, SQLite, WebView2, ADB, apktool, jadx, tailwindcss
copy_only/           ADB and DLL files copied into Windows EXE output directories
eversoul-redirect-module/ Android helper Gradle module
pine_helper/         Android helper Gradle module
```

---

## Execution Procedure

1. Build the server EXE and Android SO.
2. Prepare the patched Eversoul APK in MuMuPlayer.
3. Read the MuMuPlayer ADB port value.
4. Run `eversoul_gui.exe` or `eversoul_console.exe`.
5. Store the ADB port in the Web UI and query device status.
6. Create or select an account in the account management page.
7. Start the game through the Web UI or launch the Unity Activity through ADB.
8. The game client's server requests flow through Android SO and the local routing layer into the Windows server EXE.

---

## License

This project follows the license in `LICENSE`.
