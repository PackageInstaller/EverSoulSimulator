<p align="center">
  <img src="src/assets/logo.png" width="160" alt="EverSoul Offline" />
</p>

<h1 align="center">Eversoul Offline</h1>
<h3 align="center">Eversoul Offline 项目</h3>

<p align="center">
  本项目将 Eversoul 离线服务端 EXE、Android SO 重定向层、APK / Smali patch 层、离线数据容器和账号数据库组合为一个本地运行架构。
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
  <img src="https://img.shields.io/badge/version-0.0.9-blue?style=for-the-badge" alt="v0.0.5" />
</p>

<p align="center">
  <a href="README_en.md"><img src="https://img.shields.io/badge/English-EN-0078D4?style=flat-square" alt="English" /></a>
  &nbsp;
  <a href="README.md"><img src="https://img.shields.io/badge/%ED%95%9C%EA%B5%AD%EC%96%B4-KR-003478?style=flat-square" alt="한국어" /></a>
  &nbsp;
  <img src="https://img.shields.io/badge/%E4%B8%AD%E6%96%87-CN-DE2910?style=flat-square" alt="中文" />
</p>

---

## 图 D-01：架构概述

本系统包含 Windows 服务端 EXE 层、Android ARM64 SO 层、APK 研究与 patch 层、离线数据层和多账号 SQLite 层。上述组件将 Eversoul 客户端的通信路径重组为本地 Windows 服务端通信路径。

Windows 服务端 EXE 在 `127.0.0.1:9991` 提供 HTTP、Protobuf、WebSocket、Web UI 和 ADB 控制 API。Android SO 将 Java URL、OkHttp URL、IL2CPP UnityWebRequest URL 和 libc 传输层连接导向 `127.0.0.1:9991`。ADB 层使用服务端内部 ADB runner，并使用 Web UI 保存的 MuMuPlayer ADB 端口。

本文使用以下图、流程图和流程表标识。

| 标识 | 类型 | 标题 | 说明对象 |
| --- | --- | --- | --- |
| D-01 | 图 | 整体组成图 | Windows 服务端 EXE、Android SO、APK 研究、离线数据、多账号状态 |
| D-02 | 图 | root 层图 | 仓库根目录及角色 |
| D-03 | 图 | `src` 层图 | C++ 服务端、账号、ADB、Android hook、Web 资源层 |
| F-01 | 流程图 | 全管线流程图 | 构建、APK patch 输入、服务端运行、MuMuPlayer 控制、游戏请求处理 |
| F-02 | 流程图 | 运行时请求流程图 | 客户端请求、URL 改写、服务端路由、响应生成 |
| F-03 | 流程图 | 账号状态流程图 | Web UI 账号操作、游戏 endpoint 状态变更、WebSocket session |
| F-04 | 流程图 | Bypass 安装流程图 | APK 提前加载、native constructor、JNI hook 安装 |
| T-01 | 流程表 | root 层流程表 | 根目录组成和角色 |
| T-02 | 流程表 | `src` 层流程表 | 输入、处理、输出 |
| T-03 | 流程表 | 请求处理流程表 | hook 层、route 层、account 层 |
| T-04 | 流程表 | 账号状态流程表 | 账号 API 和游戏 endpoint 状态输出 |
| T-05 | 流程表 | 构建产物流程表 | EXE、SO、embedded dex、offline data 产物 |

图 D-01 表示整体组成的上层关系。

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

## 图 D-02：root 层架构

root 层组合构建入口、运行时实现、APK 研究资料、离线响应数据、protocol 参考、第三方依赖、运行时复制集和 Android helper 项目。

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

流程表 T-01 表示 root 层角色。

| 层 | 构成 | 角色 |
| --- | --- | --- |
| 构建入口 | `CMakeLists.txt`, `build-server.ps1`, `build-android.ps1` | 生成 Windows EXE、Android SO、Web UI CSS 和运行时复制产物。 |
| 运行时实现 | `src/`, `src/web/`, `src/orm/` | 执行服务端路由、账号 DB、Web UI、ADB、WebSocket 和 Android hook。 |
| APK 研究输入 | `apk/research/`, `smali_inject/`, `scripts/` | 管理 APK 分析基准、embedded dex、Smali 资料和 hook 加载输入。 |
| 离线数据 | `responses/`, `responses_newbie/`, `schema/`, `wss/`, `expected/` | 提供账号 seed、固定响应、Protobuf schema、WebSocket fixture 和响应对比资料。 |
| protocol 资料 | `ProtocolBuffers/`, `probability/` | 保存 Protobuf 参考资料和概率表文档。 |
| 依赖 | `third_party/`, `copy_only/` | 提供 Dobby、LSPlant、frida-gum、SQLite、WebView2、Tailwind、ADB 和 DLL 复制集。 |
| helper 项目 | `eversoul-redirect-module/`, `pine_helper/` | 保存 Android helper module 和 hook 研究辅助结构。 |

---

## 图 D-03：src 层架构

`src` 层由同一 C++ 代码库生成 Windows 服务端 EXE 和 Android ARM64 SO。

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

流程表 T-02 表示 `src` 层的输入、处理和输出。

| 层 | 输入 | 处理 | 输出 |
| --- | --- | --- | --- |
| EXE 入口 | 进程启动 | 设置 ADB path，异步启动服务端，显示 Web UI | `127.0.0.1:9991/web/` |
| 服务端路由 | HTTP、WebSocket、Protobuf 请求 | route match、body decode、response build、upgrade 处理 | HTTP payload、Protobuf payload、WSS reply |
| 账号状态 | account id、endpoint body、session 值 | 选择活动账号 DB，变更状态，重建 UserInfo | 每账号 `state.sqlite3` 和 response body |
| 数据 protocol | fixture、schema、packed archive | JSON load、schema lookup、crypto helper、payload encode | 游戏客户端响应 |
| ADB log | Web UI command、MuMu ADB port | 内部 ADB 执行，stdout/stderr 收集，SSE streaming | 设备状态、运行状态、log stream |
| Android hook | APK 进程加载、URL 和 socket 调用 | Java hook、IL2CPP hook、libc hook、LIAPP2 路径处理 | 本地服务端请求 |
| Web 资源 | `src/web/*.html`, `*.js`, `*.css` | 账号 UI、injector UI、ADB UI、log UI | 浏览器控制界面 |

---

## 流程图 F-01：全管线

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

## 流程图 F-02：运行时请求

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

流程表 T-03 表示请求处理。

| 请求层 | hook 或模块 | 动作 | 下一阶段 |
| --- | --- | --- | --- |
| Java URL | `lsplant_hooks.cpp`, `RedirectHooks.java` | 将 URL constructor 输入改写为本地 URL。 | OkHttp 或 Java network stack |
| OkHttp | `lsplant_hooks.cpp` | 将 `Request$Builder.url(String)` 输入改写为本地 URL。 | Android network stack |
| UnityWebRequest | `native_url_hooks.cpp` | 将 IL2CPP string 输入改写为本地 URL。 | Unity request dispatch |
| libc transport | `net_redirect.cpp` | 调整 host 解析和 socket port 到本地服务端目标。 | Windows 服务端 route |
| HTTP route | `router.cpp` | 按 path、method、body 选择 response builder。 | fixture 或 account DB |
| Account mutation | `endpoint_mutation_service.cpp` | 变更 tutorial、stage、hero、item、gacha、shop 等状态。 | Account DB commit |
| Response encode | `json_encoder.cpp`, `protobuf.cpp` | 将 JSON response 转换为 Protobuf payload。 | 游戏客户端 |

---

## 流程图 F-03 与流程表 T-04：账号状态

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

| 流程 | API 或 endpoint | 模块 | 状态输出 |
| --- | --- | --- | --- |
| 账号创建 | `POST /web/api/accounts` | `account_registry.cpp`, `account_database.cpp` | 新账号 DB 和 registry row |
| 账号切换 | `POST /web/api/accounts/<id>/select` | `account_db_manager.cpp` | 活动 DB handle 替换 |
| 账号复制 | `POST /web/api/accounts/<id>/copy` | `account_registry.cpp` | 复制后的 `state.sqlite3` |
| UserInfo export | `GET /web/api/accounts/<id>/export` | `userinfo_repository.cpp` | UserInfo JSON |
| UserInfo import | `POST /web/api/accounts/<id>/import` | `account_database.cpp` | 账号 DB 重载 |
| Session update | `PATCH /web/api/accounts/<id>/session` | `account_registry.cpp` | `account_session` row |
| 游戏状态变更 | `/Live/...` game endpoint | `endpoint_mutation_service.cpp` | hero、item、dungeon、shop、task state |
| 登录和 WSS reply | WebSocket route | `ws_session.cpp` | player id、idp、token、market、lang payload |

---

## 流程表 T-05：构建产物

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

| 产物 | 生成路径 | 输入 | 使用层 |
| --- | --- | --- | --- |
| `eversoul_gui.exe` | `build-server.ps1 --gui` | `src/gui_main.cpp`, server source, WebView2 | GUI 服务端运行 |
| `eversoul_console.exe` | `build-server.ps1 --cmd` | `src/console_main.cpp`, server source | 控制台服务端运行 |
| `style.css` | `third_party/tailwindcss.exe` | `src/web/input.css` | Web UI |
| `libswappywrapper.so` | `build-android.ps1` | Android hook source, Dobby, LSPlant, frida-gum | APK 进程 hook |
| `RedirectHooks.dex` embedded object | `scripts/build_redirect_dex.sh` | `smali_inject/RedirectHooks.java` | LSPlant Java hook |
| `libofflinedata.so` | `tools/pack_offline_data.py` | fixture, schema, web, wss | 离线数据加载 |

---

## 流程图 F-04：Bypass 与 Hook 架构

流程图 F-04 表示 `libswappywrapper.so` 提前加载后的 hook 安装顺序。

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

LIAPP2 hook 组成面向 `com.liapp.x`、`libcawwyayy.so`、`lockincomp.com` 设备认证、进程结束调用和 HMAC signature decision 调用。`src/anticheat_patch.cpp` 用 ARM64 inline jump 替换 libc `pthread_create` 起始部，并生成 trampoline。thread start routine path 含有 `cawwyayy` 时，该 routine 会替换为 no-op routine。

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

## 运行组成

默认运行组成面向 Windows PC 和 MuMuPlayer Global 12.0。Windows 服务端 EXE 将 ADB 可执行文件路径设置为输出目录中的 `adb\adb.exe`。

MuMuPlayer ADB 端口来自多开实例的 ADB 端口设置。用户只在 Web UI 输入端口值。Web UI 将该端口保存为 `adb_port`，服务端随后使用内部 ADB runner 连接 `127.0.0.1:<ADB_PORT>`。连接后，服务端通过 ADB API 执行 `adb devices`、包查询、`su -c id`、`adb root`、`am start`、`force-stop`、`pidof` 和 `logcat`。

Web UI 的游戏启动动作通过 ADB 启动以下 Activity：

```text
com.kakaogames.eversoul/com.kakaogames.eversoul.unity.UnityPlayerActivity
```

---

## 构建组成

本项目使用 Windows PowerShell 脚本作为构建入口。

```powershell
.\build-server.ps1 --gui
.\build-server.ps1 --cmd
.\build-server.ps1
.\build-android.ps1
```

`build-server.ps1` 使用 `third_party\tailwindcss.exe` 从 `src\web\input.css` 生成 `src\web\style.css`，随后构建 CMake 目标 `eversoul_gui` 和 `eversoul_console`。输出目录接收 `copy_only\dll` 的运行时 DLL 和 `copy_only\adb` 的 ADB 文件。

`build-android.ps1` 使用 Android NDK `29.0.14206865`、ABI `arm64-v8a`、platform `android-29` 构建 Android SO 目标 `swappywrapper`。

```text
build\gui\eversoul_gui.exe
build\cmd\eversoul_console.exe
build\android\libswappywrapper.so
```

---

## 服务端 EXE 结构

服务端 EXE 层包含 GUI 入口和控制台入口。`eversoul_gui.exe` 通过 WebView2 显示 `http://127.0.0.1:9991/web/`。`eversoul_console.exe` 在默认浏览器中打开同一 Web UI，并将 ADB logcat 流写入服务端 SSE 通道和 `logs/adb.log`。

启动时，`src/server.cpp` 初始化离线数据、fixture store、WebSocket fixture 和账号 DB，然后在 `9991` 端口监听请求。`src/router.cpp` 处理 Web UI API、Kakao SDK API、Infodesk API、`/Live/...` patch 路由、游戏 Protobuf 路由和 WebSocket upgrade。

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

## ADB 与 MuMuPlayer 结构

服务端通过 `src/adb_runner.cpp` 使用 `CreateProcess` 执行 ADB 命令。标准输出和标准错误进入 ADB 日志通道，Web UI 通过 `/web/api/logs/adb/stream` 显示这些输出。

MuMuPlayer 联动使用以下顺序：

1. 在 Web UI 或设置页输入 MuMuPlayer ADB 端口。
2. Web UI 通过 `/web/api/adb/port` 保存端口。
3. 服务端将 `127.0.0.1:<ADB_PORT>` 设置为 ADB serial。
4. Web UI 调用 `/web/api/adb/probe`。
5. 服务端执行 `adb connect`、包查询和 root 状态检查。
6. Web UI 的游戏启动按钮调用 `/web/api/injector/run`。
7. 服务端通过 ADB 启动 Eversoul Unity Activity。

ADB 端口用于标识 MuMuPlayer 实例。多个 MuMu 实例同时运行时，为每个实例输入各自的 ADB 端口，并在 Web UI 设备列表中选择目标 serial。

---

## 多账号结构

账号层将账号注册表 DB 与每账号状态 DB 分离。注册表 DB 为 `runtime_state/accounts.sqlite3`，每个账号的状态 DB 为 `runtime_state/accounts/<account_id>/state.sqlite3`。

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

`account_registry` 保存 account id、显示名称、player id、idp code、seed 来源和数据库路径。`active_account` 选择绑定到游戏请求的单一账号。`account_session` 保存 WebSocket 和登录响应使用的 player id、idp code、ZAT、ZRT、market、lang 和 push token。

服务端启动时，`orm::ensure_ready()` 准备账号层。如果注册表为空，则创建 `acct-default` 并从 `responses/UserInfo.json` 写入初始状态。如果注册表已有账号，则打开 `active_account` 指向的账号数据库。

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

切换账号时，`AccountDatabaseManager` 关闭前一个数据库句柄并打开所选账号的 `state.sqlite3`。`/UserInfo`、tutorial、dungeon、formation、hero、item、equipment、spirit tree、gacha、shop、task、achievement、mail、attendance、friend heart、nickname、auto hunt 路由随后使用活动账号数据库。

WebSocket 会话响应使用 `account_session`。`src/ws_session.cpp` 读取活动账号 session row，并为 initial push 和 session reply 组合 player id、idp code、token、market、lang 字段。

---

## 离线数据结构

离线数据层将响应 fixture、Protobuf schema、Web UI 资源和 WebSocket fixture 连接为一个加载结构。

```text
responses/           existing-account response fixtures
responses_newbie/    new-account response fixtures
schema/              Protobuf JSON schemas
wss/                 WebSocket session fixtures
src/web/             Web UI static assets
tools/pack_offline_data.py
```

`tools/pack_offline_data.py` 将这些数据源打包为 `ESOFLND1` 归档格式，并将输出命名为 `libofflinedata.so`。该文件作为离线数据容器运行，而不是 native code library。

Windows 服务端 EXE 优先使用 CMake 生成的 embedded web blob。Android 和非 Windows 路径从已加载 SO 的目录读取 `libofflinedata.so`。目录执行形态从 `config().data_dir` 读取文件。

```text
HTTP / Protobuf request
  ├─ router.cpp
  ├─ fixture_store
  ├─ AccountDatabase
  ├─ UserInfoRepository
  ├─ json_encoder
  └─ protobuf payload
```

固定响应来自 fixture store。账号状态响应从 AccountDatabase 读取规范化状态。UserInfoRepository 重建 `/UserInfo` JSON，schema 编码器将其转换为 Protobuf payload。

---

## Android SO 结构

Android SO 目标为 `libswappywrapper.so`。APK 在 `com.liapp.x.attachBaseContext()` 中提前加载该 SO。native constructor 和 `JNI_OnLoad` 安装 hook 层。

```text
src/entry.cpp
  ├─ anticheat::install()
  ├─ net_redirect::install()
  ├─ frida_gum::init()
  ├─ lsplant::install_java_hooks(vm)
  └─ native_hooks::install_il2cpp_hooks()
```

- `src/anticheat_patch.cpp`：hook `pthread_create`，将指定保护库线程 start routine 替换为 no-op routine。
- `src/net_redirect.cpp`：hook `connect`、`getaddrinfo`、`android_getaddrinfofornet`，将目标连接改写到 `127.0.0.1:9991`。
- `src/lsplant_hooks.cpp`：hook `java.net.URL`、`okhttp3.Request$Builder.url(String)`、`android.os.Process.killProcess` 和 `HmacSHA256Util.verifySignature`。
- `src/dex_loader.cpp`：通过 InMemoryDexClassLoader 加载 embedded `RedirectHooks.dex`。
- `src/native_url_hooks.cpp`：hook IL2CPP UnityWebRequest 构造函数、URL setter 和 KGConfiguration URL 返回点。

---

## APK 研究与 Patch 结构

APK 研究基准路径为 `apk/research`。

```text
apk/research/
  ├─ classes3.dex
  ├─ jadx3/
  └─ smali_out/
```

APK patch 层在 app 进程中提前加载 `libswappywrapper.so`。patch 产物和 keystore 在 `apk/` 下管理。

```text
apk/
  ├─ base.apk
  ├─ base_patched.apk
  ├─ base_patched.apk.idsig
  └─ eversoul.keystore
```

直接 Smali URLHook 资料属于旧版 DEX patch 流程。默认执行路径使用 CMake Android SO 和 Windows 服务端 EXE 结构。

---

## 项目目录结构

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

## 执行流程

1. 构建服务端 EXE 和 Android SO。
2. 在 MuMuPlayer 中准备 patched Eversoul APK。
3. 读取 MuMuPlayer ADB 端口值。
4. 运行 `eversoul_gui.exe` 或 `eversoul_console.exe`。
5. 在 Web UI 中保存 ADB 端口并查询设备状态。
6. 在账号管理页创建或选择账号。
7. 通过 Web UI 启动游戏，或通过 ADB 启动 Unity Activity。
8. 游戏客户端的服务器请求经由 Android SO 和本地路由层进入 Windows 服务端 EXE。

---

## 许可证

本项目遵循 `LICENSE` 文件中的许可证。

---

## APK

https://drive.google.com/file/d/1v7oG2i1bFFInL-bW6YRYowwcKiqSaBuR/view?usp=sharing