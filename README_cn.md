<p align="center">
  <img src="src/assets/logo.png" width="160" alt="EverSoul Offline" />
</p>

<h1 align="center">Eversoul Offline</h1>
<h3 align="center">Windows 专用主机流水线 + Android ARM64 重定向运行时</h3>

<p align="center">
  将 Android 客户端的 Java / IL2CPP / 传输层请求重定向到本地 Windows 服务端，<br>
  由 Windows EXE 提供 Kakao / Infodesk / 游戏 Protobuf / WebSocket 响应和账号状态。
</p>

<p align="center">
  <a href="https://discord.gg/ZptEmqfuv"><img src="https://img.shields.io/badge/Discord-Join%20Server-5865F2?style=for-the-badge&logo=discord&logoColor=white" alt="Discord" /></a>
  &nbsp;
  <img src="https://img.shields.io/badge/Host-Windows-0078D4?style=for-the-badge&logo=windows&logoColor=white" alt="Windows" />
  &nbsp;
  <img src="https://img.shields.io/badge/Target-Android%20ARM64-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android ARM64" />
  &nbsp;
  <img src="https://img.shields.io/badge/C%2B%2B-23-00599C?style=for-the-badge&logo=cplusplus&logoColor=white" alt="C++23" />
</p>

<p align="center">
  <a href="README_en.md"><img src="https://img.shields.io/badge/English-EN-0078D4?style=flat-square" alt="English" /></a>
  &nbsp;
  <a href="README.md"><img src="https://img.shields.io/badge/%ED%95%9C%EA%B5%AD%EC%96%B4-KR-003478?style=flat-square" alt="한국어" /></a>
  &nbsp;
  <img src="https://img.shields.io/badge/%E4%B8%AD%E6%96%87-CN-DE2910?style=flat-square" alt="中文" />
</p>

---

## 当前基准

- 确认日期：2026-06-18
- 主机操作系统：仅 Windows
- 服务端端口：`9991`（`src/common.hpp` 中的 `kServerListenPort`）
- Android ABI / API：`arm64-v8a`，`android-29`
- `build-android.ps1` 使用的 Android NDK 路径：`C:\Users\koiya\AppData\Local\Android\Sdk\ndk\29.0.14206865`
- Windows 服务端目标：`eversoul_gui.exe`，`eversoul_console.exe`
- Android SO 目标：`libswappywrapper.so`
- 当前 CMake 文件没有定义 `eversoul_offline_server` 可执行目标。`src/main.cpp` 和部分资源字符串仍保留该名称，但当前 Windows 构建目标是 `eversoul_gui` 和 `eversoul_console`。

---

## 实际运行流水线

```text
patched APK
  └─ com.liapp.x.attachBaseContext()
       └─ System.loadLibrary("swappywrapper")
            └─ libswappywrapper.so
                 ├─ pthread_create inline hook
                 │    └─ 将来自 libcawwyayy 路径的 start routine 替换为 no-op routine
                 ├─ connect / getaddrinfo / android_getaddrinfofornet hook
                 │    └─ 将 Kakao / zinny3 / esoul 目标改写为 127.0.0.1:9991
                 ├─ LSPlant Java hook
                 │    ├─ java.net.URL 构造函数
                 │    ├─ okhttp3.Request$Builder.url(String)
                 │    ├─ android.os.Process.killProcess
                 │    └─ com.kakaogame.util.HmacSHA256Util.verifySignature
                 ├─ embedded RedirectHooks.dex
                 │    └─ scripts/build_redirect_dex.sh 将其转换为 redirect_hooks.o
                 └─ frida-gum IL2CPP hook
                      ├─ UnityWebRequest .ctor / set_url / SetUrl
                      └─ KGConfiguration URL 返回点

adb reverse tcp:9991 tcp:9991
  └─ Windows PC
       ├─ eversoul_gui.exe
       │    ├─ WebView2 UI
       │    └─ http://127.0.0.1:9991/web/
       └─ eversoul_console.exe
            ├─ 默认浏览器 UI
            └─ adb logcat 采集

Windows server on 127.0.0.1:9991
  ├─ Kakao SDK / Infodesk HTTP 响应
  ├─ /Live 补丁文件响应
  ├─ Protobuf 游戏端点
  ├─ WebSocket 会话响应
  ├─ 多账号 SQLite 状态
  └─ /web/api/* 账号管理 API
```

Android SO 不是 HTTP 服务端。当前 Android CMake 目标 `swappywrapper` 不包含 `src/server.cpp` 或 `src/router.cpp`，`src/entry.cpp` 也没有调用服务端启动函数。Android hook 层将游戏请求改写到 `127.0.0.1:9991`，再通过 `adb reverse tcp:9991 tcp:9991` 转发到 Windows EXE 服务端。

---

## Windows 构建与运行

当前构建入口是 PowerShell 脚本。

```powershell
.\build-server.ps1 --gui
.\build-server.ps1 --cmd
.\build-server.ps1
.\build-android.ps1
```

- `.\build-server.ps1 --gui`：构建 `build\gui\eversoul_gui.exe` 目标
- `.\build-server.ps1 --cmd`：构建 `build\cmd\eversoul_console.exe` 目标
- `.\build-server.ps1`：同时构建 GUI 和控制台目标
- `.\build-android.ps1`：构建 `build\android\libswappywrapper.so` 目标

`build-server.ps1` 使用 `third_party\tailwindcss.exe` 将 `src\web\input.css` 处理为 `src\web\style.css`，然后构建 CMake 目标。服务端输出目录还会复制 `copy_only\dll\*`、`copy_only\adb\*` 和 `src\assets\logo.ico`。

运行流程：

```powershell
adb reverse tcp:9991 tcp:9991
.\build\gui\eversoul_gui.exe
```

或使用控制台服务端：

```powershell
adb reverse tcp:9991 tcp:9991
.\build\cmd\eversoul_console.exe
```

GUI 通过 WebView2 打开 `http://127.0.0.1:9991/web/`。控制台目标会用默认浏览器打开同一个 UI。两个执行文件都使用 `src/server.cpp` 的异步服务端启动路径。

---

## Android SO 实现状态

| 领域 | 文件 | 状态 |
| --- | --- | --- |
| Android SO CMake 目标 | `CMakeLists.txt` 中的 `add_library(swappywrapper SHARED ...)` | 已实现 |
| SO 入口 | `src/entry.cpp` | 构造函数安装反作弊补丁、传输重定向和 frida-gum 初始化。`JNI_OnLoad` 安装 LSPlant 和 IL2CPP hook |
| 反作弊线程抑制 | `src/anticheat_patch.cpp` | 通过 `pthread_create` inline hook 将 `libcawwyayy` 路径的 start routine 替换为 no-op routine |
| 传输层重定向 | `src/net_redirect.cpp`, `src/url_redirect.cpp` | 根据目标 host 和 port 条件改写到 `127.0.0.1:9991` |
| Java hook | `src/lsplant_hooks.cpp`, `src/dex_loader.cpp`, `smali_inject/RedirectHooks.java` | 加载 embedded dex，并 hook URL、OkHttp、killProcess、verifySignature 路径 |
| IL2CPP / Unity hook | `src/native_url_hooks.cpp`, `src/frida_gum_init.cpp` | 改写 UnityWebRequest URL 和 KGConfiguration URL 返回点 |
| Android 内置 HTTP 服务端 | 当前 Android CMake 目标 | 未包含。服务端由 Windows EXE 负责 |
| Android raw proxy helper | `src/proxy.cpp` | Android 分支实现存在，但当前 Android SO 目标不包含服务端 router |

---

## Windows 服务端 EXE 实现状态

| 领域 | 文件 | 状态 |
| --- | --- | --- |
| GUI 执行文件 | `src/gui_main.cpp`, `CMakeLists.txt` 中的 `eversoul_gui` | 已实现。与 WebView2 UI 一起启动服务端 |
| 控制台执行文件 | `src/console_main.cpp`, `CMakeLists.txt` 中的 `eversoul_console` | 已实现。启动服务端、打开浏览器并采集 adb logcat |
| HTTP 服务端 | `src/server.cpp`, `src/http.cpp`, `src/router.cpp` | 已实现。在 `9991` 处理 HTTP 和 WebSocket upgrade |
| Infodesk / Kakao 响应 | `src/router.cpp` | 已实现。包含 `/v2/app`、Kakao 路由和 `/Live/...` 补丁路由 |
| Protobuf 游戏路由 | `src/router.cpp`, `src/protobuf.cpp`, `src/json_encoder.cpp` | 已实现。基于 fixture 和 SQLite 状态编码响应 |
| WebSocket 响应 | `src/websocket.cpp`, `src/ws_session.cpp`, `wss/` | 已实现。加载 `wss` fixture 并处理会话响应 |
| 多账号存储 | `src/account_registry.cpp`, `src/account_database.cpp`, `src/account_db_manager.cpp` | 已实现。使用 `runtime_state/accounts.sqlite3` 和每账号 `state.sqlite3` |
| 账号 Web API | `src/router.cpp` | 已实现。存在列表、创建、读取、更新、选择、复制、export、import、session 更新和删除路由 |
| UserInfo 重建 | `src/userinfo_repository.cpp`, `src/orm/storage.cpp` | 已实现。将规范化 SQLite 状态与保留字段合并为 `/UserInfo` 响应 |
| 状态变更端点 | `src/endpoint_mutation_service.cpp` | 已实现。覆盖 tutorial、dungeon、formation、hero、item、equipment、spirit tree、gacha、shop、task、achievement、mail、attendance、friend heart、nickname、auto hunt 流程 |
| catalog DB 模块 | `src/game_catalog.cpp`, `src/game_catalog.hpp` | 源码实现存在。已确认的服务端启动路径调用 `fixture_store`、`wss`、`orm::ensure_ready`；该启动路径中未确认到 catalog populate 调用 |

---

## APK 与 Smali 状态

| 领域 | 文件 | 状态 |
| --- | --- | --- |
| 原始 APK | `apk/base.apk`, `apk/永恒灵魂_1.34.101.apk` | 存在 |
| 补丁 APK | `apk/base_patched.apk`, `apk/base_patched.apk.idsig` | 存在 |
| 反编译树 | `apk/1/` | 存在 |
| Manifest | `apk/1/AndroidManifest.xml` | 已确认 `package="com.kakaogames.eversoul"`、`application android:name="com.liapp.x"`、`debuggable`、`extractNativeLibs`、`usesCleartextTraffic` |
| SO 提前加载 | `apk/1/smali_classes4/com/liapp/x.smali` | `attachBaseContext` 中已插入 `System.loadLibrary("swappywrapper")` |
| APK 树内 ARM64 库 | `apk/1/lib/arm64-v8a/`, `apk/out/lib/arm64-v8a/` | 存在 `libswappywrapper.so`、`libofflinedata.so`、`libcawwyayy.so`、`libil2cpp.so`、`libunity.so`、`libdobby.so` |
| 直接 Smali URLHook | `apk/1/smali_classes3/com/rikka/redirect/URLHook.smali` | 类和插入点存在。字段为 `9991`，方法体常量仍有 `9999`，因此该直接路径与 Windows CMake 集成端口基准不同 |
| 直接 Smali patch 工具 | `tools/apply_java_redirect.sh`, `tools/patch_java_redirect.py`, `smali_inject/URLHook.java` | 存在。`smali_inject/URLHook.java` 和工具注释仍使用 `9999` |

本 README 将 CMake 集成 SO + Windows EXE 路径作为主运行路径。该路径的端口基准是 `9991`，来源于 `src/common.hpp`、`src/url_redirect.hpp` 和 `src/redirect.hpp`。直接 Smali URLHook 路径存在，但已确认文件中仍含 `9999` 常量，因此不作为主运行路径记录。

---

## 数据与打包结构

当前文件数量：

| 路径 | 文件数 | 角色 |
| --- | ---: | --- |
| `schema/` | 167 | Protobuf JSON schema |
| `responses/` | 102 | 既有账号 HTTP / Protobuf 响应 fixture |
| `responses_newbie/` | 156 | 新账号响应 fixture |
| `wss/` | 4 | WebSocket 会话响应 fixture |
| `probability/` | 11 | 概率表文档 |
| `ProtocolBuffers/` | 2633 | Protobuf 源文件和参考资料 |

`tools/pack_offline_data.py` 将 `responses`、`responses_newbie`、`schema`、`src/web`、`wss/session_replies.json`、`wss/chat_engineio.json` 打包为 `ESOFLND1` 格式，并写入 `build/offline_data/libofflinedata.so`。该文件使用 `.so` 后缀，但已确认结构是自定义数据归档。

`src/offline_data.cpp` 在 Windows 上读取 CMake 生成的 embedded web blob；在 Android / 非 Windows 路径上，会以已加载 SO 的位置为基准查找同目录的 `libofflinedata.so`。如果没有 blob，则通过 `config().data_dir` 走目录加载。

---

## 项目结构与角色

| 路径 | 角色 | 当前实现状态 |
| --- | --- | --- |
| `src/` | C++ 运行时：Android SO hook、Windows 服务端、router、Protobuf、SQLite、WebSocket、ADB、WebView2 入口 | 核心实现 |
| `src/web/` | Windows 服务端提供的账号选择 / 管理 UI 和静态资源 | 已实现 |
| `src/orm/` | 将既有 `orm::*` 公开 API 映射到每账号 SQLite 数据库的兼容层 | 已实现 |
| `apk/` | 原始 APK、补丁 APK、反编译 APK、jadx 输出和 research 资料 | 实际 APK 工作树 |
| `smali_inject/` | embedded `RedirectHooks.java` 与直接 Smali URLHook 资料 | 同时包含 SO embedded dex 路径和直接 DEX patch 路径 |
| `scripts/` | Android embedded dex 生成脚本 | `build_redirect_dex.sh` 被 CMake Android 构建使用 |
| `tools/` | HAR 转换、schema export、JSON to protobuf、offline data pack、DEX patch、验证工具 | 流水线工具集合 |
| `schema/` | JSON schema | 用于服务端响应编码 |
| `responses/` | 既有账号 fixture | 用于服务端 fixture 和账号 seed |
| `responses_newbie/` | 新账号 fixture | 用于新账号 seed 和 newbie 路由 |
| `wss/` | WebSocket fixture | 用于 Windows 服务端 WebSocket 会话 |
| `probability/` | 概率表 Markdown 文件 | 概率文档资料 |
| `ProtocolBuffers/` | Protobuf 资料 | schema 和 payload 分析参考 |
| `expected/` | 验证基准二进制资料 | 验证资料存放 |
| `docs/` | 结构和方法论文档 | 参考文档。本 README 只反映已确认代码状态 |
| `third_party/` | 外部依赖 | 包含 `adb`、Dobby、frida-gum、LSPlant、sqlite、sqlite_orm、WebView2、apktool、jadx、tailwindcss |
| `copy_only/` | 原样复制到 Windows 输出目录的文件 | 包含 `adb.exe`、ADB DLL、curl DLL、MinGW runtime DLL |
| `cmake/` | CMake 辅助模块 | 构建辅助结构 |
| `eversoul-redirect-module/` | 独立 Gradle Android 模块 | 不包含在当前基于 CMake 的 Windows 运行路径中 |
| `pine_helper/` | 独立 Gradle helper 项目 | 不包含在当前基于 CMake 的 Windows 运行路径中 |
| `sss/` | 辅助资料目录 | 仓库中存在。README 运行路径中未确认到调用 |
| `build/` | 本地构建产物 | 已确认 `build/android` 产物 |

---

## 已确认的不一致项

- 旧 README 中的 `./build.sh`、`build/eversoul_offline_server`、`9999` 服务端基准与当前 Windows CMake 目标不一致。
- `CMakeLists.txt` 的 Android 状态消息仍提到 `9999`，但实际公共常量、Windows 服务端和 Android URL 重定向源码使用 `9991`。
- 直接 Smali URLHook 资料中仍存在 `9999` 常量。主运行路径使用 `src/common.hpp`、`src/url_redirect.hpp`、`src/redirect.hpp` 中的 `9991`。
- `src/main.cpp` 存在独立服务端 CLI 入口，但当前 CMake 没有定义 `add_executable(eversoul_offline_server ...)`。

---

## 许可证

本仓库使用 `LICENSE` 文件中说明的许可证。
