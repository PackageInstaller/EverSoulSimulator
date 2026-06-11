# Eversoul Offline (Offline Server & Injection Tools)

This project provides a local Kakao SDK / Infodesk mock server for the game Eversoul, alongside C++ injection wrappers and an offline game server to intercept and handle Unity web requests offline.

- **English Documentation** | [中文文档](README.md) | [한국어 문서](README_kr.md)

---

## Quick Start Guide

### 1. Build Desktop and Android Libraries

Run the unified build script directly from the project root:

```bash
./build.sh
```

If the build script detects that the .har capture files are missing in the root directory, it will automatically skip the HAR merge steps and use the pre-existing JSON fixtures in responses/ and responses_newbie/ for compilation, making it easy to build directly after cloning.

After a successful build, the following main artifacts are generated:

- build/eversoul_offline_server (Local proxy and offline game mock server)
- build/android/libswappywrapper.so (C++ wrapper hook for the Android client)
- build/offline_data/libofflinedata.so (Android library containing packed static JSON data)

---

### 2. Deploy Runtime Libraries and Data to Android

Ensure your Android device has USB debugging enabled and is connected via ADB. Then run:

```bash
./deploy_offline_data.sh
```

This script will:
1. Push libswappywrapper.so and libofflinedata.so to the app's native library directory.
2. Verify SHA-256 hashes of the files on the device to confirm successful deployment.

---

## Core Technical Implementation Details

### 1. Injection and Patch Load Method (Anti-cheat Bypass)

Since the game uses LIAPP anti-cheat protection, performing a full package unpacking is tedious and hard to maintain. The bypass and injection wrapper loading scheme is as follows:

Inject the following Smali code into the `attachBaseContext` method of the core anti-cheat entry class `com.liapp.x` to load our compiled hook wrapper early:

```smali
const-string v0, "swappywrapper"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
```

By loading the wrapper library early in this method, we can suspend or block the creation of security detection threads before the anti-cheat environment initializes them. This allows the game to load and execute our offline interceptor library while keeping the protected shell intact.

### 2. Network Traffic Redirection

The network request redirection is planned in two phases:

- Development and Testing Phase: Currently, a Frida script (monitor_unity_web_request.js) is used to intercept and redirect Unity's HTTP and WebSocket connections to localhost.
- Upcoming Rootless Phase: Future updates will support Frida Gadget or bypass the client's dual check of package size and SHA-256 hash to achieve rootless, script-free redirection.

---

## Offline Backend Runtime Process

The offline backend operates through a coordinated process of low-level hooks and asynchronous services:

1. **Library Entry and Hook Installation**
   When the game engine loads the library `libswappywrapper.so` through the Java layer, the constructor function `eversoul_entry` in [entry.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/entry.cpp) runs immediately.
   This entry function invokes the installation logic in [anticheat_patch.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/anticheat_patch.cpp), applying an ARM64 inline hook to `pthread_create` in libc.so (replacing the beginning with a 16-byte absolute jump instruction).
   The hook checks if the `start_routine` of any newly requested thread belongs to the LIAPP anti-cheat module `libcawwyayy.so` using `dladdr`. If it is identified as an anti-cheat scanner thread, the call is diverted to a dummy no-op thread, effectively suspending anti-cheat detection, while normal game threads are allowed to execute.

2. **Data Initialization and Background Server Startup**
   Once the anti-cheat bypass is set up, [entry.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/entry.cpp) starts the offline server on a background thread (implemented in [server.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/server.cpp)).
   Upon startup, [offline_data.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/offline_data.cpp) locates and parses `libofflinedata.so` (disguised archive containing JSON fixtures). If the blob is missing, it falls back to raw directories.
   Next, [fixture_store.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/fixture_store.cpp) reads the Protobuf structures in `schema/` and decodes the JSON fixtures in `responses/` and `responses_newbie/` into memory-cached binary Protobuf payloads. It also loads WebSockets configurations.

3. **Routing and Dynamic Interception**
   HTTP and WebSockets requests from the game client are redirected to localhost port 9999. The server handles connections in detached threads.
   Requests are processed by [router.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/router.cpp). If they are Kakao SDK setup calls, they receive static mock JSONs, which redirect further game server requests (`gameServerAddr`) to port 9999. Game business endpoints are matched as follows:
   - Full Account Mode: Requests are served directly from the compiled binary Protobuf caches in `FixtureStore`, allowing high-fidelity offline replays of the high-level profile.
   - Newbie Account Mode: To prevent tutorial state deadlocks (caused by static responses failing to match changing client parameters), [router.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/router.cpp) intercepts critical progress endpoints (e.g. `/UserInfo`, `/TutorialActive`, `/StageClear`, `/FormationSave`). These endpoints interact with the local SQLite database via [src/orm](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/orm). As players clear stages or update formations, the database is modified and correct progress updates are returned, resolving tutorial loops.

---

## Runtime Modes

### A. Capture / Proxy Mode

In this mode, the PC desktop server functions as a transparent HTTP proxy, intercepting authentication/SDK requests of interest while forwarding game-server traffic to live servers and saving capture dumps.

Since the proxy server is running on the computer, port forwarding is required:

```bash
# 1. Reverse-forward TCP port 9999 (only needed in PC proxy / capture mode)
adb reverse tcp:9999 tcp:9999

# 2. Start the local server in proxy mode on PC
./build/eversoul_offline_server --proxy --port 9999

# 3. Hook the game process using Frida to redirect Unity HTTP/WebSocket endpoints
frida -H 127.0.0.1:27042 -f com.kakaogames.eversoul -l monitor_unity_web_request.js
```

### B. Offline Mock Mode

In this mode, all platform and game requests are mocked by the local server or the injected offline package.

When running in a completely offline state (i.e. running the game standalone on the device), the offline server is already started inside the wrapper dynamic library `libswappywrapper.so` as a background thread. Therefore, **the game client and the mock server reside in the same local device environment, and no port forwarding is required**. You can start the Frida script directly. Port forwarding via `adb reverse` is only required if you run the mock server on a PC instead.

```bash
# 1. Hook the game process directly with Frida (no port forwarding required)
frida -H 127.0.0.1:27042 -f com.kakaogames.eversoul -l monitor_unity_web_request.js
```

---

## Endpoint Implementation Status & Roadmap

Currently, the mocked endpoints **return purely static JSON responses**. The goal is to first establish complete protocol coverage, ensuring the game can smoothly run through the startup, login, newbie tutorial, and main UI loading screens in a completely offline environment. Future development plans will introduce dynamic game state updates (e.g. handling gacha pulls, hero upgrades, and battle clears dynamically).

### 1. Mocked Platform / SDK Endpoints (Kakao / Infodesk)

- /service/v3/util/country/get (Country lookup)
- /service/v4/device/accessToken/create (Access token creation)
- /service/v3/agreement/getForLogin (Terms agreements)
- /service/v3/log/writeSdkBasicLog (SDK logging)
- /v2/appGroup (App group metadata)
- /v2/app (App configurations & server addresses)
- /v2/app/server/maintenance (Server maintenance status check)

### 2. Mocked Game Server Protobuf Routes

The following endpoints are currently mocked:

- /Login
- /ServerTime
- /UserInfo
- /LobbyRefresh
- /TutorialActive
- /BattleStart
- /UserNicknameChange
- /StageClear
- /StoryClear
- /HeroLevelUp
- /DungeonEnter
- /DungeonInfoUpdate
- /DungeonBattle
- /DungeonClear
- /FormationSave
- /HeroUpgrade
- /HeroGift
- /HeroEquip
- /HeroUnequip
- /EquipItemUpgrade
- /EquipItemTranscendence
- /SpiritTreeSlotEquip
- /SpiritTreeSlotUnEquip
- /GachaHero
- /GachaPremium
- /GachaSignature
- /ShopItemBuy
- /ItemUse
- /TaskReceive
- /AchievementAllReceive
- /MailItemAllReceive
- /ReceiveAttendance
- /FriendHeartReceiveAll
- /GetContentClearDeck
- /AutoHuntReceive
- /HeroEquipMulti
- /GachaHeroTutorial
- /GachaHeroTutorialFix
- /GachaMileageDelete
- /CashShopList
- /CashShopUserAbleCashItemIdAllList
- /AchievementList
- /GuideQuestList
- /TaskList
- /AutoHuntOpen
- /NewMailCnt
- /GachaInfo
- /IllustList
- Note: All other captured bootstrap or list endpoints return an empty Protobuf payload with the observed 8-byte response header.

Detailed traffic analysis reports:
- captured_requests.md (Standard traffic capture analysis)
- captured_new_user_registration.md (Registration and tutorial state flow)

---

## Contribution Guide

We warmly welcome contributions to Eversoul Offline. You can help improve the project in the following areas:

- **Dynamic Route Rewrite**
  Most game business responses are currently static. You can add dynamic logic to routes in [router.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/router.cpp) and bind them to the local SQLite database in [src/orm](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/orm) to handle item purchases, gacha calculations, or stats updates.
  
- **Schema & ORM Enhancements**
  To support additional features (e.g. Guild systems, Spirit Tree upgrades), you can modify [orm/schema.hpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/orm/schema.hpp) and [orm/storage.hpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/orm/storage.hpp) to add tables and database operations.

- **Expanding Capture Coverage**
  Capture additional routes in proxy mode, format them as JSON, extract their Schemas, and add them to `responses/` and `schema/` to expand API coverage.

- **Hook & Redirection Optimizations**
  Submit Smali patches for rootless bypass, or provide bug fixes and stability enhancements for the inline hook implementation in [anticheat_patch.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/anticheat_patch.cpp).

---

## Project Pipelines & Structures

For information on the JSON-Protobuf conversion pipeline, schemas, expected binary verification, and desktop validation tools, please read:
- OFFLINE_PIPELINE.md
