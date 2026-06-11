<p align="center">
  <img src="src/assets/logo.png" width="140" alt="EverSoul Offline" />
</p>

<h1 align="center">Eversoul Offline</h1>
<h3 align="center">Offline Server &amp; Injection Tools</h3>

<p align="center">
  A local Kakao SDK / Infodesk mock server for the Eversoul game client, along with a C++ injection wrapper and admin dashboard that lets you run the game in a fully offline in-process environment.
</p>

<p align="center">
  <strong>English</strong> &nbsp;|&nbsp; <a href="README_cn.md">中文</a> &nbsp;|&nbsp; <a href="README.md">한국어</a>
</p>

---

## Quick Start

### 1. Build Prerequisites (Windows)

| Tool | Version | Install |
|------|---------|---------|
| CMake | 3.21+ | `winget install Kitware.CMake` |
| GCC (MinGW-W64 POSIX UCRT) | 15.x | `winget install BrechtSanders.WinLibs.POSIX.UCRT` |
| Python | 3.x | `winget install Python.Python.3` |
| protoc | 35.x | `winget install Google.Protobuf` |
| protobuf (Python) | 4.21+ | `pip install protobuf` |
| libcurl (MinGW) | 8.x | `winget install cURL.cURL` |
| Android NDK | r27+ | `winget install Google.AndroidCLI` then `sdkmanager "ndk;27.2.12479018"` |

Run the unified build script from the project root (Git Bash on Windows):

```bash
./build.sh
```

Choose the Python tool output language via environment variable:

```bash
EVERSOUL_LANG=en ./build.sh   # English (default)
EVERSOUL_LANG=ko ./build.sh   # Korean
EVERSOUL_LANG=zh ./build.sh   # Chinese
 ./build.ps1 -NoExit #windwos only
```

If no `.har` capture file is present in the project root, the build script automatically skips the HAR merge step and compiles directly from the existing `responses/` and `responses_newbie/` fixtures.

Build artifacts:

| Path | Description |
|------|-------------|
| `build/eversoul_offline_server` | Desktop offline server / proxy |
| `build/eversoul_injector.exe` | MuMu emulator auto-injector (Windows) |
| `build/android/libswappywrapper.so` | Android intercept wrapper library |
| `build/offline_data/libofflinedata.so` | Packed offline JSON data (Android) |

---

### 2. Running the Desktop Server

```bash
# Offline mode (default)
./build/eversoul_offline_server

# Proxy mode (capture live traffic)
./build/eversoul_offline_server --proxy

# Full options
./build/eversoul_offline_server \
  --port 9999          \   # Game server port (default: 9999)
  --admin-port 9998    \   # Admin web UI port (default: 9998)
  --lang en            \   # Terminal output language: ko / en / zh
  --data-dir ./        \   # Root path for responses/ and schema/
  --game-server-url https://live-sea.esoul.kakaogames.com:1739
```

After startup, open `http://localhost:9998/admin/` in your browser to access the admin dashboard.

---

### 3. Admin Web Dashboard (Port 9998)

| Page | Content |
|------|---------|
| Dashboard | Live stats: port, request count, uptime, fixture count, DB info |
| Health | 9-item health check: server, DB, fixtures, offline data, proxy, data dir |
| Request Log | SSE real-time streaming, filter, pause, clear |
| Database | SQLite table list and row-level data viewer |
| Fixtures | Loaded response JSON index with content preview |
| Settings | Toggle proxy, change game server URL and data dir at runtime |

Language switching (Korean / English / Chinese) is available in the sidebar footer and is reflected immediately across the entire UI and server terminal output.

---

### 4. Automatic Injection into Android Emulator

`eversoul_injector.exe` automates Frida-based injection into a running MuMu Player 12 instance on Windows.

```
CMake POST_BUILD hook runs the injector automatically after each Android build.
Manual execution: build/eversoul_injector.exe
```

Injection sequence:
1. Locate ADB at `D:\MuMuPlayer\nx_device\12.0\shell\adb.exe` or system PATH
2. Auto-select connected emulator / device
3. Push `frida-server` from `tools/frida/` to the device if not already present, then start it
4. Inject `libswappywrapper.so` into the Eversoul process via `Module.load()`
5. Stream `logcat -s libswappywrapper` on a dedicated background thread

---

## Core Architecture

### Anti-cheat Bypass

The game uses LIAPP anti-cheat. The current strategy injects `libswappywrapper.so` into the game process via Frida. The library constructor installs an ARM64 inline hook on `pthread_create` in `libc.so`. Whenever a new thread is created, the hook checks if the `start_routine` belongs to `libcawwyayy.so` (LIAPP). Anti-cheat scanner threads are silently redirected to a no-op function; all other game threads run normally.

### Offline Data Pipeline

```
libofflinedata.so  (custom archive disguised as a .so)
  └─ OfflineData::init()    ← auto-located via dladdr
       └─ FixtureStore::load()
            └─ responses/*.json  +  schema/*.json
                 └─ JsonEncoder → Protobuf binary cache (in memory)
                      └─ router.cpp → dispatch by request path
```

### SQLite ORM

`src/orm/` provides a `sqlite_orm`-backed persistence layer for mutable account state. Stage clears, formations, gacha results, and item inventory are all persisted. `/UserInfo` and other response payloads are built dynamically from the current database state.

### i18n System

`src/i18n.cpp` and `tools/i18n.py` share the same key table. The C++ runtime (`--lang`), Python tools (`EVERSOUL_LANG`), and the admin web UI (sidebar switcher) all resolve strings from the same source. Supported languages: Korean · English · Chinese.

---

## Runtime Modes

### A. Capture / Proxy Mode

The server runs on your PC, so port forwarding is required:

```bash
adb reverse tcp:9999 tcp:9999
./build/eversoul_offline_server --proxy
frida -H 127.0.0.1:27042 -f com.kakaogames.eversoul -l tools/monitor_unity_web_request.js
```

### B. Full Offline Mode

`libswappywrapper.so` starts its own server internally on the device — no port forwarding needed:

```bash
frida -H 127.0.0.1:27042 -f com.kakaogames.eversoul -l tools/monitor_unity_web_request.js
```

---

## Implemented Endpoints

### Platform / SDK (Kakao · Infodesk)

- `/service/v3/util/country/get`
- `/service/v4/device/accessToken/create`
- `/service/v3/agreement/getForLogin`
- `/service/v3/log/writeSdkBasicLog`
- `/v2/appGroup`, `/v2/app`, `/v2/app/server/maintenance`

### Game Server (Protobuf)

`/Login` · `/ServerTime` · `/UserInfo` · `/LobbyRefresh` · `/TutorialActive` · `/BattleStart` · `/UserNicknameChange` · `/StageClear` · `/StoryClear` · `/HeroLevelUp` · `/DungeonEnter` · `/DungeonInfoUpdate` · `/DungeonBattle` · `/DungeonClear` · `/FormationSave` · `/HeroUpgrade` · `/HeroGift` · `/HeroEquip` · `/HeroUnequip` · `/EquipItemUpgrade` · `/EquipItemTranscendence` · `/SpiritTreeSlotEquip` · `/SpiritTreeSlotUnEquip` · `/GachaHero` · `/GachaPremium` · `/GachaSignature` · `/ShopItemBuy` · `/ItemUse` · `/TaskReceive` · `/AchievementAllReceive` · `/MailItemAllReceive` · `/ReceiveAttendance` · `/FriendHeartReceiveAll` · `/GetContentClearDeck` · `/AutoHuntOpen` · `/AutoHuntReceive` · `/HeroEquipMulti` · `/GachaHeroTutorial` · `/GachaHeroTutorialFix` · `/GachaMileageDelete` · `/CashShopList` · `/CashShopUserAbleCashItemIdAllList` · `/AchievementList` · `/GuideQuestList` · `/TaskList` · `/NewMailCnt` · `/GachaInfo` · `/IllustList`

Unclassified bootstrap and list endpoints respond with an 8-byte header and an empty Protobuf payload.

---

## Contribution Guide

- **Dynamic Route Logic** — add ORM-backed dynamic handlers in `router.cpp` to replace static mocks
- **ORM Extensions** — add guild, spirit tree, or other tables to `orm/schema.hpp` and `orm/storage.hpp`
- **Expand Capture Coverage** — capture new routes in proxy mode, convert to JSON + schema, submit to `responses/` and `schema/`
- **Cross-platform Injector** — implement macOS / Linux branches in `src/injector_main.cpp`

---

## Related Documentation

- `OFFLINE_PIPELINE.md` — JSON ↔ Protobuf conversion pipeline and validation
- `captured_requests.md` — Standard traffic capture analysis
- `captured_new_user_registration.md` — New account registration and tutorial flow
