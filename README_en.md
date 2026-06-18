<p align="center">
  <img src="src/assets/logo.png" width="160" alt="EverSoul Offline" />
</p>

<h1 align="center">Eversoul Offline</h1>
<h3 align="center">Windows-only host pipeline + Android ARM64 redirect runtime</h3>

<p align="center">
  Redirects the Android client's Java / IL2CPP / transport-layer traffic to a local Windows server,<br>
  where Windows EXE targets provide Kakao / Infodesk / game Protobuf / WebSocket responses and account state.
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
  <img src="https://img.shields.io/badge/English-EN-0078D4?style=flat-square" alt="English" />
  &nbsp;
  <a href="README.md"><img src="https://img.shields.io/badge/%ED%95%9C%EA%B5%AD%EC%96%B4-KR-003478?style=flat-square" alt="한국어" /></a>
  &nbsp;
  <a href="README_cn.md"><img src="https://img.shields.io/badge/%E4%B8%AD%E6%96%87-CN-DE2910?style=flat-square" alt="中文" /></a>
</p>

---

## Current Baseline

- Verified on: 2026-06-18
- Host operating system: Windows only
- Server port: `9991` (`kServerListenPort` in `src/common.hpp`)
- Android ABI / API: `arm64-v8a`, `android-29`
- Android NDK path from `build-android.ps1`: `C:\Users\koiya\AppData\Local\Android\Sdk\ndk\29.0.14206865`
- Windows server targets: `eversoul_gui.exe`, `eversoul_console.exe`
- Android SO target: `libswappywrapper.so`
- The current CMake file does not define an `eversoul_offline_server` executable target. `src/main.cpp` and some resource strings still contain that name, but the current Windows build targets are `eversoul_gui` and `eversoul_console`.

---

## Runtime Pipeline

```text
patched APK
  └─ com.liapp.x.attachBaseContext()
       └─ System.loadLibrary("swappywrapper")
            └─ libswappywrapper.so
                 ├─ pthread_create inline hook
                 │    └─ replaces start routines from the libcawwyayy path with a no-op routine
                 ├─ connect / getaddrinfo / android_getaddrinfofornet hooks
                 │    └─ rewrites Kakao / zinny3 / esoul destinations to 127.0.0.1:9991
                 ├─ LSPlant Java hooks
                 │    ├─ java.net.URL constructors
                 │    ├─ okhttp3.Request$Builder.url(String)
                 │    ├─ android.os.Process.killProcess
                 │    └─ com.kakaogame.util.HmacSHA256Util.verifySignature
                 ├─ embedded RedirectHooks.dex
                 │    └─ scripts/build_redirect_dex.sh converts it to redirect_hooks.o
                 └─ frida-gum IL2CPP hooks
                      ├─ UnityWebRequest .ctor / set_url / SetUrl
                      └─ KGConfiguration URL return points

adb reverse tcp:9991 tcp:9991
  └─ Windows PC
       ├─ eversoul_gui.exe
       │    ├─ WebView2 UI
       │    └─ http://127.0.0.1:9991/web/
       └─ eversoul_console.exe
            ├─ default browser UI
            └─ adb logcat collection

Windows server on 127.0.0.1:9991
  ├─ Kakao SDK / Infodesk HTTP responses
  ├─ /Live patch file responses
  ├─ Protobuf game endpoints
  ├─ WebSocket session responses
  ├─ multi-account SQLite state
  └─ /web/api/* account management API
```

The Android SO is not the HTTP server. The current Android CMake target `swappywrapper` does not include `src/server.cpp` or `src/router.cpp`, and `src/entry.cpp` does not call the server start function. Android hooks rewrite game traffic to `127.0.0.1:9991`; `adb reverse tcp:9991 tcp:9991` forwards it to the Windows EXE server.

---

## Windows Build And Run

The current build entry points are PowerShell scripts.

```powershell
.\build-server.ps1 --gui
.\build-server.ps1 --cmd
.\build-server.ps1
.\build-android.ps1
```

- `.\build-server.ps1 --gui`: builds the `build\gui\eversoul_gui.exe` target
- `.\build-server.ps1 --cmd`: builds the `build\cmd\eversoul_console.exe` target
- `.\build-server.ps1`: builds both GUI and console targets
- `.\build-android.ps1`: builds the `build\android\libswappywrapper.so` target

`build-server.ps1` processes `src\web\input.css` into `src\web\style.css` with `third_party\tailwindcss.exe`, then builds the CMake targets. The server output directory also receives `copy_only\dll\*`, `copy_only\adb\*`, and `src\assets\logo.ico`.

Runtime flow:

```powershell
adb reverse tcp:9991 tcp:9991
.\build\gui\eversoul_gui.exe
```

Or with the console server:

```powershell
adb reverse tcp:9991 tcp:9991
.\build\cmd\eversoul_console.exe
```

The GUI opens `http://127.0.0.1:9991/web/` through WebView2. The console target opens the same UI in the default browser. Both executables use the asynchronous server path in `src/server.cpp`.

---

## Android SO Implementation Status

| Area | Files | Status |
| --- | --- | --- |
| Android SO CMake target | `add_library(swappywrapper SHARED ...)` in `CMakeLists.txt` | Implemented |
| SO entry point | `src/entry.cpp` | Constructor installs the anti-cheat patch, transport redirect, and frida-gum init. `JNI_OnLoad` installs LSPlant and IL2CPP hooks |
| Anti-cheat thread suppression | `src/anticheat_patch.cpp` | `pthread_create` inline hook replaces start routines from the `libcawwyayy` path with a no-op routine |
| Transport redirect | `src/net_redirect.cpp`, `src/url_redirect.cpp` | Rewrites matching host and port traffic to `127.0.0.1:9991` |
| Java hooks | `src/lsplant_hooks.cpp`, `src/dex_loader.cpp`, `smali_inject/RedirectHooks.java` | Loads the embedded dex and hooks URL, OkHttp, killProcess, and verifySignature paths |
| IL2CPP / Unity hooks | `src/native_url_hooks.cpp`, `src/frida_gum_init.cpp` | Rewrites UnityWebRequest URLs and KGConfiguration URL return points |
| Android embedded HTTP server | Current Android CMake target | Not included. The Windows EXE owns the server |
| Android raw proxy helper | `src/proxy.cpp` | Android branch exists, but the current Android SO target does not include the server router |

---

## Windows Server EXE Implementation Status

| Area | Files | Status |
| --- | --- | --- |
| GUI executable | `src/gui_main.cpp`, `eversoul_gui` in `CMakeLists.txt` | Implemented. Starts the server with a WebView2 UI |
| Console executable | `src/console_main.cpp`, `eversoul_console` in `CMakeLists.txt` | Implemented. Starts the server, opens the browser, and collects adb logcat |
| HTTP server | `src/server.cpp`, `src/http.cpp`, `src/router.cpp` | Implemented. Handles HTTP and WebSocket upgrade on `9991` |
| Infodesk / Kakao responses | `src/router.cpp` | Implemented. Includes `/v2/app`, Kakao routes, and `/Live/...` patch routes |
| Protobuf game routes | `src/router.cpp`, `src/protobuf.cpp`, `src/json_encoder.cpp` | Implemented. Encodes responses from fixtures and SQLite state |
| WebSocket responses | `src/websocket.cpp`, `src/ws_session.cpp`, `wss/` | Implemented. Loads `wss` fixtures and handles session responses |
| Multi-account storage | `src/account_registry.cpp`, `src/account_database.cpp`, `src/account_db_manager.cpp` | Implemented. Uses `runtime_state/accounts.sqlite3` plus per-account `state.sqlite3` files |
| Account Web API | `src/router.cpp` | Implemented. Routes exist for list, create, read, update, select, copy, export, import, session update, and delete |
| UserInfo reconstruction | `src/userinfo_repository.cpp`, `src/orm/storage.cpp` | Implemented. Combines normalized SQLite state with preserved fields for `/UserInfo` |
| Stateful endpoint mutations | `src/endpoint_mutation_service.cpp` | Implemented. Covers tutorial, dungeon, formation, hero, item, equipment, spirit tree, gacha, shop, task, achievement, mail, attendance, friend heart, nickname, and auto hunt flows |
| Catalog DB module | `src/game_catalog.cpp`, `src/game_catalog.hpp` | Source implementation exists. The verified server startup path calls `fixture_store`, `wss`, and `orm::ensure_ready`; no catalog populate call was found in that startup path |

---

## APK And Smali Status

| Area | Files | Status |
| --- | --- | --- |
| Original APK | `apk/base.apk`, `apk/永恒灵魂_1.34.101.apk` | Present |
| Patched APK | `apk/base_patched.apk`, `apk/base_patched.apk.idsig` | Present |
| Decompiled tree | `apk/1/` | Present |
| Manifest | `apk/1/AndroidManifest.xml` | `package="com.kakaogames.eversoul"`, `application android:name="com.liapp.x"`, `debuggable`, `extractNativeLibs`, and `usesCleartextTraffic` verified |
| Early SO load | `apk/1/smali_classes4/com/liapp/x.smali` | `System.loadLibrary("swappywrapper")` is inserted in `attachBaseContext` |
| ARM64 libraries inside APK tree | `apk/1/lib/arm64-v8a/`, `apk/out/lib/arm64-v8a/` | `libswappywrapper.so`, `libofflinedata.so`, `libcawwyayy.so`, `libil2cpp.so`, `libunity.so`, and `libdobby.so` are present |
| Direct Smali URLHook | `apk/1/smali_classes3/com/rikka/redirect/URLHook.smali` | Class and injection sites are present. Fields contain `9991`, while method-body constants still contain `9999`, so this direct path does not match the Windows CMake integrated port baseline |
| Direct Smali patch tools | `tools/apply_java_redirect.sh`, `tools/patch_java_redirect.py`, `smali_inject/URLHook.java` | Present. `smali_inject/URLHook.java` and tool comments still use `9999` |

This README treats the CMake-integrated SO + Windows EXE path as the main runtime path. Its port baseline is `9991`, from `src/common.hpp`, `src/url_redirect.hpp`, and `src/redirect.hpp`. The direct Smali URLHook path exists, but verified files still contain `9999` constants, so it is not documented as the main runtime path.

---

## Data And Packing Structure

Current file counts:

| Path | File count | Role |
| --- | ---: | --- |
| `schema/` | 167 | Protobuf JSON schemas |
| `responses/` | 102 | Existing-account HTTP / Protobuf response fixtures |
| `responses_newbie/` | 156 | New-account response fixtures |
| `wss/` | 4 | WebSocket session response fixtures |
| `probability/` | 11 | Probability table documents |
| `ProtocolBuffers/` | 2633 | Protobuf source and reference material |

`tools/pack_offline_data.py` packs `responses`, `responses_newbie`, `schema`, `src/web`, `wss/session_replies.json`, and `wss/chat_engineio.json` into the `ESOFLND1` archive format at `build/offline_data/libofflinedata.so`. The file uses a `.so` extension, but the verified structure is a custom data archive.

`src/offline_data.cpp` reads generated embedded web blobs on Windows. On Android and non-Windows paths, it locates `libofflinedata.so` next to the loaded SO. If no blob is available, it falls back to directory loading through `config().data_dir`.

---

## Project Structure And Roles

| Path | Role | Current implementation status |
| --- | --- | --- |
| `src/` | C++ runtime: Android SO hooks, Windows server, router, Protobuf, SQLite, WebSocket, ADB, and WebView2 entry points | Core implementation |
| `src/web/` | Account selection / management UI and static web assets served by the Windows server | Implemented |
| `src/orm/` | Compatibility layer that maps the existing `orm::*` public API onto per-account SQLite databases | Implemented |
| `apk/` | Original APK, patched APK, decompiled APK, jadx output, and research material | Active APK work tree |
| `smali_inject/` | Embedded `RedirectHooks.java` plus direct Smali URLHook material | Contains both the SO embedded dex path and the direct DEX patch path |
| `scripts/` | Android embedded dex generation scripts | `build_redirect_dex.sh` is used by the CMake Android build |
| `tools/` | HAR conversion, schema export, JSON to protobuf, offline data packing, DEX patching, verification tools | Pipeline tools |
| `schema/` | JSON schemas | Used for server response encoding |
| `responses/` | Existing-account fixtures | Used by server fixtures and account seeding |
| `responses_newbie/` | New-account fixtures | Used by new-account seeding and newbie routing |
| `wss/` | WebSocket fixtures | Used by Windows server WebSocket sessions |
| `probability/` | Probability table Markdown files | Probability documentation data |
| `ProtocolBuffers/` | Protobuf material | Reference for schema and payload analysis |
| `expected/` | Verification reference binaries | Stored verification material |
| `docs/` | Structure and methodology documents | Reference documents. This README reflects only verified code state |
| `third_party/` | External dependencies | Includes `adb`, Dobby, frida-gum, LSPlant, sqlite, sqlite_orm, WebView2, apktool, jadx, and tailwindcss |
| `copy_only/` | Files copied as-is into Windows output directories | Includes `adb.exe`, ADB DLLs, curl DLL, and MinGW runtime DLLs |
| `cmake/` | CMake helper modules | Build helper structure |
| `eversoul-redirect-module/` | Separate Gradle Android module | Not included in the current CMake-based Windows runtime path |
| `pine_helper/` | Separate Gradle helper project | Not included in the current CMake-based Windows runtime path |
| `sss/` | Auxiliary data directory | Present in the repository. No call from the README runtime path was verified |
| `build/` | Local build output | `build/android` output verified |

---

## Verified Mismatches

- The previous README baseline of `./build.sh`, `build/eversoul_offline_server`, and server port `9999` does not match the current Windows CMake targets.
- The Android status messages in `CMakeLists.txt` still mention `9999`, while the actual common constants and Windows server / Android URL redirect sources use `9991`.
- Direct Smali URLHook material still contains `9999` constants. The main runtime path uses `9991` from `src/common.hpp`, `src/url_redirect.hpp`, and `src/redirect.hpp`.
- `src/main.cpp` contains a standalone server CLI entry point, but current CMake does not define `add_executable(eversoul_offline_server ...)`.

---

## License

This repository uses the license described in `LICENSE`.
