<p align="center">
  <img src="src/assets/logo.png" width="160" alt="EverSoul Offline" />
</p>

<h1 align="center">Eversoul Offline</h1>
<h3 align="center">Offline Server &amp; ARM64 Injection Toolkit</h3>

<p align="center">
  A local Kakao SDK / Infodesk mock server for the <i>Eversoul</i> game client,<br>
  an ARM64 C++ injection wrapper that intercepts Unity / Java network requests,<br>
  and an automated adb injector.
</p>

<p align="center">
  <a href="https://discord.gg/ZptEmqfuv"><img src="https://img.shields.io/badge/Discord-Join%20Server-5865F2?style=for-the-badge&logo=discord&logoColor=white" alt="Discord" /></a>
  &nbsp;
  <img src="https://img.shields.io/badge/Platform-Android%20ARM64-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android ARM64" />
  &nbsp;
  <img src="https://img.shields.io/badge/NDK-r27%2B-brightgreen?style=for-the-badge" alt="NDK r27+" />
  &nbsp;
  <img src="https://img.shields.io/badge/C%2B%2B-17-00599C?style=for-the-badge&logo=cplusplus&logoColor=white" alt="C++17" />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/English-EN-0078D4?style=flat-square" alt="English" />
  &nbsp;
  <a href="README_cn.md"><img src="https://img.shields.io/badge/%E4%B8%AD%E6%96%87-CN-DE2910?style=flat-square" alt="中文" /></a>
  &nbsp;
  <a href="README.md"><img src="https://img.shields.io/badge/%ED%95%9C%EA%B5%AD%EC%96%B4-KR-003478?style=flat-square" alt="한국어" /></a>
  &nbsp;
  <a href="https://discord.gg/ZptEmqfuv"><img src="https://img.shields.io/badge/Discord-Join%20Server-5865F2?style=flat-square&logo=discord&logoColor=white" alt="Discord" /></a>
</p>

---

## Quick Start

### Prerequisites (Windows)

| Tool | Version |
|------|---------|
| CMake | 3.21+ |
| GCC (MinGW-W64 POSIX UCRT) | 15.x |
| Python | 3.x |
| Java | 11+ |
| apktool | latest |
| apksigner | Android SDK Build-Tools |
| Android NDK | r27+ |

### Build

```powershell
./build.ps1
```

Build artifacts:

| Path | Description |
|------|-------------|
| `build/eversoul_offline_server.exe` | Local Mock/Proxy server (port 9999) |
| `build/eversoul_injector.exe` | adb auto-injector |
| `build/android/libswappywrapper.so` | ARM64 injection wrapper |
| `build/apk/base_patched.apk` | smali-patched + signed APK |
| `build/apk/split_config.arm64_v8a.apk` | ARM64 split APK |
| `build/apk/libcawwyayy_patched.so` | LIAPP integrity bypass SO |

### Run

```powershell
./build/eversoul_injector.exe
```

On first run, enter the adb path and emulator port. These are saved to `injector.cfg`.

---

## Full Pipeline

### Stage 1 — Build (build.ps1)

```
HAR packet file merge
  → responses/         API fixture JSON
  → wss/               WebSocket fixture JSON
  → web/               account selection SPA (HTML/CSS/JS)

pack_offline_data.py
  → responses/ + wss/ + web/ packed into libofflinedata.so
    format: [8B magic "ESOFLN D1"][4B count]
            [[4B path_len][path][4B data_len][data] ...]

cmake (Windows)
  → build/eversoul_offline_server.exe
  → build/eversoul_injector.exe

cmake (Android NDK, ARM64)
  → build/android/libswappywrapper.so

APK patch:
  apk/origin/base.apk → apk/make/base.apk          (copy origin, origin immutable)
  apktool d apk/make/base.apk → apk/make/base_decoded/
  patch_smali.py apk/make/base_decoded/
    inject at com.liapp.x.attachBaseContext entry point:
      const-string v0, "swappywrapper"
      invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
  build/android/libswappywrapper.so → lib/arm64-v8a/libswappywrapper.so
  apktool b apk/make/base_decoded/ → apk/make/base_patched_unsigned.apk
  apksigner sign (v2) → build/apk/base_patched.apk

libcawwyayy.so extraction:
  apk/make/base.apk (zip) lib/arm64-v8a/libcawwyayy.so
  → build/apk/libcawwyayy_patched.so

split APK copy:
  apk/origin/split_config.arm64_v8a.apk → build/apk/

apk/make/ full cleanup
```

---

### Stage 2 — Injector (eversoul_injector.exe)

```
start_offline_server():
  probe_port(9999) → skip if already responding
  else CreateProcessW("server.exe --mock-only") → DETACHED_PROCESS
  600ms wait (server binding)

adb connect 127.0.0.1:{port}
  verify output contains "connected" or "already"

adb shell pm path com.kakaogames.eversoul
  → parse "package:/data/app/.../base.apk"
  → create %TEMP%/previous/
  → each APK: adb pull {device_path} %TEMP%/previous/{filename}
  → copy to exe_dir/apk/backup/{filename} (device backup)

adb install-multiple -r base_patched.apk split_config.arm64_v8a.apk
  → verify output contains "Success"

adb push exe_dir/apk/libcawwyayy_patched.so
       → /data/local/tmp/libcawwyayy_patched.so

adb reverse tcp:9999 tcp:9999
  → device 127.0.0.1:9999 → Windows localhost:9999 TCP tunnel

adb shell am force-stop com.kakaogames.eversoul
800ms wait
adb shell am start -n com.kakaogames.eversoul/com.kakaogame.KGUnityPlayerActivity
                   -a android.intent.action.MAIN -c android.intent.category.LAUNCHER

separate thread: adb logcat -s libswappywrapper:V *:S  (stream until exit)
```

---

### Stage 3 — Hook Behavior After Game Launch

#### Entry Point Execution Order

```
APK load → smali patch → System.loadLibrary("swappywrapper")
  → libswappywrapper.so __attribute__((constructor))

  [1] asset_migration::migrate()
      check/move /sdcard/Android/data/com.kakaogames.eversoul

  [2] liapp_bypass::install()
      install_libc_hooks() — dlsym(RTLD_DEFAULT) inline hook x7:
        fopen    → hook_fopen
        fopen64  → hook_fopen64
        openat   → hook_openat
        openat64 → hook_openat64
        read     → hook_read
        kill     → hook_kill
        connect  → hook_connect
      poller thread (250ms interval, max 30s):
        dl_iterate_phdr → find libcawwyayy.so base address
        on found, direct GOT patch (ARM64):
          base + 0xa3ec8 = hook_fopen   (GOT[fopen])
          base + 0xa3dc8 = hook_openat  (GOT[openat])
          base + 0xa3e38 = hook_kill    (GOT[kill])
          (restore mprotect PROT_READ after patch)

  [3] anticheat::install()
      dlsym("pthread_create") → inline hook → hook_pthread_create
      hook: dladdr(start_routine) → if "cawwyayy" in name
            g_orig_pthread_create(thread, attr, dummy_thread, arg)
            dummy_thread: return nullptr (immediate exit)

  [4] il2cpp_redirect::install()
      poller thread (500ms interval, max 60s):
        dlsym("il2cpp_string_new") → dladdr → libil2cpp.so base
        on found, RVA-based inline hook x10:
          base + 0x097887a4  UWR::ctor(string)
          base + 0x097889e4  UWR::ctor(string, method)
          base + 0x09788c5c  UWR::ctor(full)
          base + 0x09789be8  UWR::SetUrl
          base + 0x0978ac50  UWR::Get
          base + 0x0978b040  UWR::Put(bytes)
          base + 0x0978b27c  UWR::Put(string)
          base + 0x0978b488  UWR::PostWwwForm
          base + 0x0978b700  UWR::Post(contentType)
          base + 0x04c72530  KakaoSDKAdapter::ShowMsgBox (block)
        redirect_url():
          kakaogames.com family  → http://127.0.0.1:9999
          live-sea-chat family   → ws://127.0.0.1:9999
          *.lockincomp.com       → http://127.0.0.1:9999
          rttcheck-*.kakaogames.io → http://127.0.0.1:9999

JNI_OnLoad():
  [5] jni_bypass::init(vm)
      JNIEnv vtable 256 entries → mmap copy
      vtable[215] = hook_register_natives
      hook: __builtin_return_address(0) → dladdr → if "cawwyayy" origin
            return JNI_OK (skip LIAPP native method registration)

  [6] java_hook::init(vm)
      installer_thread → vm->AttachCurrentThread
      init_trampoline: Object.hashCode ArtMethod+0x20(EP) → g_jni_trampoline

      install immediately (java.* / android.*):
        java/net/URL.<init>(String)          → redirect_url
        java/net/URL.<init>(URL, String)     → redirect_url
        android/os/Process.killProcess       → block if self pid
        android/app/Activity.finishAffinity  → block
        android/app/Activity.startActivityForResult
          → if kauth.kakao.com / accounts.kakao.com URL
            fake onActivityResult(RESULT_OK,
                                  kakao743487://oauth?code=offline-kakao-code-0)

      200ms retry, max 60s (wait for app DEX decryption):
        okhttp3/Request$Builder.url           → redirect_url
        CustomTabsIntent.launchUrl            → block if kauth
        ServerService.useSessionConnection    → force useHttpConnection()
        ConnectionManager.setConnectionType   → force boolean arg true
        HmacSHA256Util.verifySignature        → return JNI_TRUE

      ArtMethod direct patch:
        ArtMethod + 0x04 (flags) |= kAccNative (0x0100)
        ArtMethod + 0x18 (data)   = hook_fn
        ArtMethod + 0x20 (ep)     = g_jni_trampoline
        on call: mutex lock → restore_orig → call original → reapply_hook → unlock
```

#### inline_hook Structure (ARM64)

```
install_inline_hook(target, hook_fn, &trampoline):

trampoline slot (static pool 24 slots, 32 bytes each):
  [0~15]  = target original 16 bytes (displaced instructions)
  [16]    = LDR X16, #8   (0x58000050)
  [20]    = BR X16        (0xD61F0200)
  [24~31] = target+16 absolute address (resume)

target patch:
  [0]    = LDR X16, #8   (0x58000050)
  [4]    = BR X16        (0xD61F0200)
  [8~15] = hook_fn absolute address

write_memory:
  mprotect RWX → memcpy → __builtin___clear_cache → restore PROT_READ|EXEC
  on failure, fallback to /proc/self/mem write

execution flow:
  call target → LDR+BR hook_fn → enter hook_fn
  call g_orig_*(trampoline) → execute displaced 16 bytes
                             → LDR+BR target+16 → return to original code
```

#### Hook Summary

| Hook | Condition | Action |
|------|-----------|--------|
| `hook_fopen/64` | path contains "cawwyayy" | redirect to `/data/local/tmp/libcawwyayy_patched.so` |
| `hook_fopen/64` | path contains magisk/zygisk etc. | return `ENOENT` (pretend file missing) |
| `hook_openat/64` | path contains "cawwyayy" | redirect to `kPatchedSoPath` |
| `hook_openat/64` | `/proc/*/maps` | register `track_fd` |
| `hook_read` | tracked fd | strip "libswappywrapper"/"magisk"/"zygisk" lines before return |
| `hook_kill` | `pid == getpid()` + SIGKILL/SIGTERM | `return 0` (block self-termination) |
| `hook_connect` | AF_INET, host != loopback, port 80/443/8080 | `connect(127.0.0.1:9999)` |
| GOT fopen/openat/kill | libcawwyayy.so GOT | replace with hook_fn + restore PROT_READ |
| `hook_pthread_create` | start_routine dladdr → "cawwyayy" | replace with `dummy_thread` (immediate exit) |
| UWR hook x10 | all UnityWebRequest create/set | `redirect_url` → `http://127.0.0.1:9999` |
| `hook_register_natives` | JNIEnv vtable[215] | if "cawwyayy" origin → JNI_OK (skip registration) |

---

### Stage 4 — Server Receive / Response Flow

#### Bidirectional Communication Path

```
game connect(127.0.0.1:9999)      ← hook_connect or redirect_url applied
  → adb reverse tcp:9999 TCP tunnel
  → Windows server.exe 0.0.0.0:9999 accept(fd)
  → std::thread(handle_client, fd).detach()

request receive (client → server):
  recv_until_headers → search for \r\n\r\n
  parse headers map → extract Content-Length
  body = extra + additional recv → body.resize(content_length)
  game protobuf request body: [4B sequence][protobuf payload]

response send (server → client):
  game_binary_response(req, proto):
    body = [4B 0x00][4B payload_size LE][protobuf payload]
    Content-Type: application/octet-stream
  send_response:
    HTTP/1.1 {status} + Content-Length: body.size() + Connection: close
  send_all: while(left > 0) platform_send loop → flush guaranteed
  → adb reverse tunnel → game recv()
```

#### Routing (router.cpp)

```
/sbaa479o  or body contains "f39ad58"
  → LIAPP lockincomp device-auth static response (fdbd8509 signature)

/service/v3/util/country/get     → {"country":"kr"}
/v2/app                          → infodesk (agreementUrl, gameServerAddr=http://127.0.0.1:9999)
/v2/appGroup                     → appGroup esoul_service
/v2/app/server/maintenance       → maintenance null (server healthy)
/service/v3/auth/loginKakao      → mock_login_data_response (zat + player JSON)
/service/v4/auth/loginDevice     → mock_login_data_response
/service/v3/auth/loginZinnyDevice→ mock_login_data_response
/service/v3/zat/refresh          → mock_zat_refresh_response
/service/v3/zat/issueToken       → mock_zat_refresh_response
/oauth/token                     → fake Kakao access_token
/service/v3/player/getLocal      → mock_local_player_response
/service/v3/player/getUUID       → fixed zinnyUuid
/service/v3/agreement/getForLogin→ agreementPopup flag response
/service/v3/log/writeSdkBasicLog → logId UUID response
/service/...                     → {} (SDK housekeeping generic OK)
/socket.io                       → engine.io HTTP polling (OPEN / ack)
/account-select                  → offline_data "web/account_select.html"
/api/accounts GET                → orm account list JSON
/api/accounts/create POST        → orm account creation
/api/accounts/select POST        → orm account selection
/api/accounts/{id} DELETE        → orm account deletion

/Login        → fixture_store first, else login_payload(protobuf)
/ServerTime   → server_time_payload() (always dynamically generated)
/UserInfo     → newbie mode: db::build_user_info() (SQLite)
               full mode: fixture_store (HAR-captured protobuf)
/StageClear   → db::stage_clear(stageNo) → stage table save + stageNo echo
/StoryClear   → db::story_clear(storyNo)
/GachaHero    → db::gacha_hero → hero INSERT + currency deduction
/TutorialActive → db::tutorial_active (newbie)
other game API → fixture_store → session_harvested → harvested_payload → inline handler
unknown endpoint → if is_empty_game_endpoint: empty proto, else 404
```

#### offline_data Load

```
OfflineData::init():
  priority 1: libofflinedata.so (blob)
    validate kMagic "ESOFLN D1"
    parse [8B magic][4B count][[4B plen][path][4B dlen][data]...]
    → blob_entries_ map (rel → data) fully loaded

  priority 2: directory direct (debug fallback)
    data_dir/responses/*.json, /wss/*.json, /web/*

read("responses/UserInfo.json")    → blob_entries_["responses/UserInfo.json"]
read("wss/session_replies.json")   → blob_entries_["wss/session_replies.json"]
read("web/account_select.html")    → blob_entries_["web/account_select.html"]
```

#### fixture_store Load

```
FixtureStore::load():
  data.list("responses/") → JSON file list in blob
  each file → parse JSON → check __format__:
    "empty" → payload = ""
    "raw"   → decode fixture["hex"] → raw bytes
    "proto" → json_encoder → protobuf encoding
  payload_map["/EndpointName"] = bytes

fixture_store().payload("/UserInfo", newbie_mode)
  → payloads_ or newbie_payloads_
```

---

### Stage 5 — WebSocket Bidirectional Flow

```
game WS connect → il2cpp redirect → ws://127.0.0.1:9999/session
  → adb reverse tunnel
  → handle_websocket(id, fd, req, pre)

handshake:
  Sec-WebSocket-Key → HMAC-SHA1(key + "258EAFA5-...") → base64
  send HTTP/1.1 101 Switching Protocols

gc-session (Kakao JSON-RPC):
  handle_session_ws:
    ws_session_initial_push() immediate server → client push:
      blob["wss/session_replies.json"]["initial_push"]
      [topic, {meta publishTime=now}, body] → JSON dump
      ws_encode_frame(Text, push) → send_all

    ws_loop:
      client → server:
        ws_parse_frame → FIN + opcode + unmask
        Ping  → Pong (same payload)
        Close → echo Close → end loop
        Text  → parse_rpc → extract topic
               → ws_session_reply:
                   if session["replies"][topic] exists → combine meta_template + body
                   else generic {"status":200,"desc":"OK","content":{}}
      server → client:
        ws_encode_frame(Text, reply) unmasked → send_all

socket.io chat:
  handle_chat_ws:
    ws_loop:
      "2probe" → "3probe"  (engine.io upgrade probe)
      "2"      → "3"       (ping → pong)
      "40..."  → namespace_connect_ack

WS frame encoding (server→client):
  [FIN|opcode 1B][length 1~9B][payload]  — unmasked (RFC 6455)

WS frame decoding (client→server):
  [FIN|opcode 1B][MASK|length 1~9B][mask 4B][masked payload] → XOR unmask
```

---

## Currency & Accounts

The offline server manages per-account game state independently via SQLite DB.

Admin panel: `http://localhost:9998/admin`

| Currency Type | Description | Default |
|--------------|-------------|---------|
| 1 | Gold | 1,000,000 |
| 2 | Diamond | 30,000 |
| 3 | Free Diamond | 1,000,000 |

---

## Implemented Interfaces

### Kakao SDK / Infodesk

- /service/v3/util/country/get
- /service/v4/device/accessToken/create
- /service/v3/agreement/getForLogin, getForConnect
- /service/v3/auth/loginKakao, loginZinnyDevice3
- /service/v4/auth/loginDevice
- /service/v3/zat/refresh, login, issueToken
- /service/v4/zat/issueToken
- /service/v3/player/getLocal, getUUID
- /service/v3/log/writeSdkBasicLog
- /service/v3/tracer/sdk
- /service/v3/promotion/checkUrlPromotion
- /service/v3/auth/getGoogleIdpId
- /oauth/token
- /v2/app, /v2/appGroup, /v2/app/server/maintenance
- /v2/client/getList, /v2/client/end
- /sbaa479o (LIAPP lockincomp device-auth)
- /socket.io (engine.io HTTP polling)
- /account-select (account selection SPA)
- /api/accounts (CRUD)

### Game Business API (protobuf)

- /Login, /ServerTime, /Logout
- /UserInfo, /LobbyRefresh
- /TutorialActive, /TutorialList, /TutorialStoryClear
- /GachaHeroTutorial, /GachaHeroTutorialFix
- /UserNicknameChange
- /BattleStart
- /StageClear, /StoryClear
- /HeroLevelUp, /HeroUpgrade, /HeroGift
- /HeroEquip, /HeroUnequip, /HeroEquipMulti
- /EquipItemUpgrade, /EquipItemTranscendence
- /SpiritTreeSlotEquip, /SpiritTreeSlotUnEquip
- /FormationSave
- /GachaHero, /GachaPremium, /GachaSignature, /GachaInfo, /GachaMileageDelete
- /ShopItemBuy, /CashShopList, /CashShopUserAbleCashItemIdAllList
- /ItemUse
- /DungeonEnter, /DungeonInfoUpdate, /DungeonBattle, /DungeonClear
- /TaskList, /TaskReceive
- /AchievementList, /AchievementAllReceive
- /MailItemAllReceive
- /ReceiveAttendance
- /FriendHeartReceiveAll
- /GetContentClearDeck
- /AutoHuntOpen, /AutoHuntReceive
- /NewMailCnt, /IllustList
- /GuideQuestList (empty proto, `is_empty_game_endpoint`)
- Unknown endpoints not in the list above → empty proto or 404 depending on `is_empty_game_endpoint` registration

---

## Directory Structure

```
EverSoulSimulator/
  apk/
    origin/       pristine original APK (never modified)
    backup/       APK pulled from device by injector
  build/
    apk/          build artifacts (base_patched.apk, split, libcawwyayy_patched.so)
    android/      libswappywrapper.so
    eversoul_offline_server.exe
    eversoul_injector.exe
    offline_data/ libofflinedata.so
  responses/      API fixture JSON extracted from HAR
  responses_newbie/ new account tutorial fixtures
  wss/            WebSocket fixture JSON
  web/            account selection SPA
  src/            C++ source
  tools/          Python build tools
```

---

## Community & Contributing

Have feedback, found a bug, or want to suggest a feature?
Feel free to open a thread on **[GitHub Issues](https://github.com/everlib/EverSoulSimulator/issues)** — all opinions are welcome.

For setup instructions and detailed usage guides, visit the **[Wiki](https://github.com/everlib/EverSoulSimulator/wiki)**.
