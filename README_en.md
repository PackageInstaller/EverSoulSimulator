# Eversoul Offline (Offline Server & Injection Tools)

This project provides a local Kakao SDK / Infodesk mock server for the game Eversoul, alongside C++ injection wrappers and an offline game server to intercept and handle Unity web requests offline.

- English Documentation | 中文文档: README.md

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

## Runtime Modes

### A. Capture / Proxy Mode

In this mode, the local server functions as a transparent HTTP proxy, intercepting authentication/SDK requests of interest while forwarding game-server traffic to live servers and saving capture dumps.

```bash
# 1. Reverse-forward TCP port 9999
adb reverse tcp:9999 tcp:9999

# 2. Start the local server in proxy mode
./build/eversoul_offline_server --proxy --port 9999

# 3. Hook the game process using Frida to redirect Unity HTTP/WebSocket endpoints
frida -H 127.0.0.1:27042 -f com.kakaogames.eversoul -l monitor_unity_web_request.js
```

### B. Offline Mock Mode

In this mode, all platform and game requests are mocked by the local server or the injected offline package.

```bash
# 1. Reverse-forward TCP port 9999
adb reverse tcp:9999 tcp:9999

# 2. Start the mock-only server and point the game server host address to localhost
./build/eversoul_offline_server --mock-only --port 9999 --game-server-url http://127.0.0.1:9999

# 3. Hook the game process with Frida
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

## Project Pipelines & Structures

For information on the JSON-Protobuf conversion pipeline, schemas, expected binary verification, and desktop validation tools, please read:
- OFFLINE_PIPELINE.md
