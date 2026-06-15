<p align="center">
  <img src="src/assets/logo.png" width="160" alt="EverSoul Offline" />
</p>

<h1 align="center">Eversoul Offline</h1>
<h3 align="center">离线服务端 &amp; ARM64 注入工具包</h3>

<p align="center">
  面向《永恒灵魂》(Eversoul) 客户端的本地 Kakao SDK / Infodesk 模拟服务，<br>
  拦截 Unity / Java 网络请求的 ARM64 C++ 注入包装库，<br>
  以及 adb 自动注入器。
</p>

<p align="center">
  <a href="https://discord.gg/ZptEmqfuv"><img src="https://img.shields.io/badge/Discord-Join%20Server-5865F2?style=for-the-badge&logo=discord&logoColor=white" alt="Discord" /></a>
  &nbsp;
  <img src="https://img.shields.io/badge/Platform-Android%20ARM64-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android ARM64" />
  &nbsp;
  <img src="https://img.shields.io/badge/NDK-r27%2B-brightgreen?style=for-the-badge" alt="NDK r27+" />
  &nbsp;
  <img src="https://img.shields.io/badge/C%2B%2B-17-00599C?style=for-the-badge&logo=cplusplus&logoColor=white" alt="C++17" />
  &nbsp;
  <img src="https://img.shields.io/badge/version-0.0.3-blue?style=for-the-badge" alt="v0.0.1" />
</p>

<p align="center">
  <a href="README_en.md"><img src="https://img.shields.io/badge/English-EN-0078D4?style=flat-square" alt="English" /></a>
  &nbsp;
  <img src="https://img.shields.io/badge/%E4%B8%AD%E6%96%87-CN-DE2910?style=flat-square" alt="中文" />
  &nbsp;
  <a href="README.md"><img src="https://img.shields.io/badge/%ED%95%9C%EA%B5%AD%EC%96%B4-KR-003478?style=flat-square" alt="한국어" /></a>
  &nbsp;
  <a href="https://discord.gg/ZptEmqfuv"><img src="https://img.shields.io/badge/Discord-Join%20Server-5865F2?style=flat-square&logo=discord&logoColor=white" alt="Discord" /></a>
</p>

---

## 快速开始

### 前置依赖 (Windows)

| 工具 | 版本 |
|------|------|
| CMake | 3.21+ |
| GCC (MinGW-W64 POSIX UCRT) | 15.x |
| Python | 3.x |
| Java | 11+ |
| apktool | 最新版 |
| apksigner | Android SDK Build-Tools |
| Android NDK | r27+ |

### 构建

```powershell
./build.ps1
```

构建产物：

| 路径 | 说明 |
|------|------|
| `build/eversoul_offline_server.exe` | 本地 Mock/Proxy 服务端（端口 9999）|
| `build/eversoul_injector.exe` | adb 自动注入器 |
| `build/android/libswappywrapper.so` | ARM64 注入包装库 |
| `build/apk/base_patched.apk` | smali 补丁 + 已签名 APK |
| `build/apk/split_config.arm64_v8a.apk` | ARM64 split APK |
| `build/apk/libcawwyayy_patched.so` | LIAPP 完整性绕过 SO |

### 运行

```powershell
./build/eversoul_injector.exe
```

首次运行时输入 adb 路径与模拟器端口，之后保存至 `injector.cfg`。

---

## 完整流水线

### 第 1 阶段 — 构建 (build.ps1)

```
HAR 数据包文件合并
  → responses/         API Fixture JSON
  → wss/               WebSocket Fixture JSON
  → web/               账号选择 SPA（HTML/CSS/JS）

pack_offline_data.py
  → responses/ + wss/ + web/ 全部打包至 libofflinedata.so
    格式：[8B 魔数 "ESOFLN D1"][4B count]
          [[4B path_len][path][4B data_len][data] ...]

cmake (Windows)
  → build/eversoul_offline_server.exe
  → build/eversoul_injector.exe

cmake (Android NDK, ARM64)
  → build/android/libswappywrapper.so

APK 补丁：
  apk/origin/base.apk → apk/make/base.apk          （复制原始，origin 不可变）
  apktool d apk/make/base.apk → apk/make/base_decoded/
  patch_smali.py apk/make/base_decoded/
    在 com.liapp.x.attachBaseContext 入口处注入：
      const-string v0, "swappywrapper"
      invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
  build/android/libswappywrapper.so → lib/arm64-v8a/libswappywrapper.so
  apktool b apk/make/base_decoded/ → apk/make/base_patched_unsigned.apk
  apksigner sign (v2) → build/apk/base_patched.apk

libcawwyayy.so 提取：
  apk/make/base.apk (zip) lib/arm64-v8a/libcawwyayy.so
  → build/apk/libcawwyayy_patched.so

split APK 复制：
  apk/origin/split_config.arm64_v8a.apk → build/apk/

清理 apk/make/ 工作目录
```

---

### 第 2 阶段 — 注入器 (eversoul_injector.exe)

```
start_offline_server()：
  probe_port(9999) → 若已响应则跳过
  否则 CreateProcessW("server.exe --mock-only") → DETACHED_PROCESS
  等待 600ms（服务器绑定完成）

adb connect 127.0.0.1:{port}
  确认输出包含 "connected" 或 "already"

adb shell pm path com.kakaogames.eversoul
  → 解析 "package:/data/app/.../base.apk"
  → 创建 %TEMP%/previous/
  → 每个 APK：adb pull {device_path} %TEMP%/previous/{filename}
  → 复制至 exe_dir/apk/backup/{filename}（设备原始备份）

adb install-multiple -r base_patched.apk split_config.arm64_v8a.apk
  → 确认输出包含 "Success"

adb push exe_dir/apk/libcawwyayy_patched.so
       → /data/local/tmp/libcawwyayy_patched.so

adb reverse tcp:9999 tcp:9999
  → 设备 127.0.0.1:9999 → Windows localhost:9999 TCP 隧道

adb shell am force-stop com.kakaogames.eversoul
等待 800ms
adb shell am start -n com.kakaogames.eversoul/com.kakaogame.KGUnityPlayerActivity
                   -a android.intent.action.MAIN -c android.intent.category.LAUNCHER

独立线程：adb logcat -s libswappywrapper:V *:S（持续流输出至退出）
```

---

### 第 3 阶段 — 游戏启动后 Hook 行为

#### 入口点执行顺序

```
APK 加载 → smali 补丁 → System.loadLibrary("swappywrapper")
  → libswappywrapper.so __attribute__((constructor))

  [1] asset_migration::migrate()
      检查/迁移 /sdcard/Android/data/com.kakaogames.eversoul

  [2] liapp_bypass::install()
      install_libc_hooks() — dlsym(RTLD_DEFAULT) inline hook x7：
        fopen    → hook_fopen
        fopen64  → hook_fopen64
        openat   → hook_openat
        openat64 → hook_openat64
        read     → hook_read
        kill     → hook_kill
        connect  → hook_connect
      poller 线程（250ms 间隔，最大 30s）：
        dl_iterate_phdr → 搜索 libcawwyayy.so 基址
        找到后直接 GOT 修补（ARM64）：
          base + 0xa3ec8 = hook_fopen   (GOT[fopen])
          base + 0xa3dc8 = hook_openat  (GOT[openat])
          base + 0xa3e38 = hook_kill    (GOT[kill])
          （修补后恢复 mprotect PROT_READ）

  [3] anticheat::install()
      dlsym("pthread_create") → inline hook → hook_pthread_create
      hook：dladdr(start_routine) → 若包含 "cawwyayy"
            g_orig_pthread_create(thread, attr, dummy_thread, arg)
            dummy_thread：return nullptr（立即退出）

  [4] il2cpp_redirect::install()
      poller 线程（500ms 间隔，最大 60s）：
        dlsym("il2cpp_string_new") → dladdr → libil2cpp.so 基址
        找到后基于 RVA 的 inline hook x10：
          base + 0x097887a4  UWR::ctor(string)
          base + 0x097889e4  UWR::ctor(string, method)
          base + 0x09788c5c  UWR::ctor(full)
          base + 0x09789be8  UWR::SetUrl
          base + 0x0978ac50  UWR::Get
          base + 0x0978b040  UWR::Put(bytes)
          base + 0x0978b27c  UWR::Put(string)
          base + 0x0978b488  UWR::PostWwwForm
          base + 0x0978b700  UWR::Post(contentType)
          base + 0x04c72530  KakaoSDKAdapter::ShowMsgBox（拦截）
        redirect_url()：
          kakaogames.com 系列  → http://127.0.0.1:9999
          live-sea-chat 系列   → ws://127.0.0.1:9999
          *.lockincomp.com     → http://127.0.0.1:9999
          rttcheck-*.kakaogames.io → http://127.0.0.1:9999

JNI_OnLoad()：
  [5] jni_bypass::init(vm)
      JNIEnv vtable 256 项 → mmap 副本
      vtable[215] = hook_register_natives
      hook：__builtin_return_address(0) → dladdr → 若来源含 "cawwyayy"
            返回 JNI_OK（忽略 LIAPP 原生方法注册）

  [6] java_hook::init(vm)
      installer_thread → vm->AttachCurrentThread
      init_trampoline：Object.hashCode ArtMethod+0x20(EP) → g_jni_trampoline

      立即安装（java.* / android.*）：
        java/net/URL.<init>(String)          → redirect_url
        java/net/URL.<init>(URL, String)     → redirect_url
        android/os/Process.killProcess       → 若为自身 pid 则拦截
        android/app/Activity.finishAffinity  → 拦截
        android/app/Activity.startActivityForResult
          → 若为 kauth.kakao.com / accounts.kakao.com URL
            伪造 onActivityResult(RESULT_OK,
                                  kakao743487://oauth?code=offline-kakao-code-0)

      200ms 重试，最大 60s（等待 app DEX 解密）：
        okhttp3/Request$Builder.url           → redirect_url
        CustomTabsIntent.launchUrl            → 若为 kauth 则拦截
        ServerService.useSessionConnection    → 强制调用 useHttpConnection()
        ConnectionManager.setConnectionType   → 强制布尔参数为 true
        HmacSHA256Util.verifySignature        → 返回 JNI_TRUE

      ArtMethod 直接修补：
        ArtMethod + 0x04 (flags) |= kAccNative (0x0100)
        ArtMethod + 0x18 (data)   = hook_fn
        ArtMethod + 0x20 (ep)     = g_jni_trampoline
        调用时：mutex lock → restore_orig → 调用原始函数 → reapply_hook → unlock
```

#### inline_hook 结构（ARM64）

```
install_inline_hook(target, hook_fn, &trampoline)：

trampoline 槽（静态池 24 个，每个 32 字节）：
  [0~15]  = target 原始 16 字节（被替换的指令）
  [16]    = LDR X16, #8   (0x58000050)
  [20]    = BR X16        (0xD61F0200)
  [24~31] = target+16 绝对地址（恢复点）

target 修补：
  [0]    = LDR X16, #8   (0x58000050)
  [4]    = BR X16        (0xD61F0200)
  [8~15] = hook_fn 绝对地址

write_memory：
  mprotect RWX → memcpy → __builtin___clear_cache → 恢复 PROT_READ|EXEC
  失败时降级至 /proc/self/mem 写入

执行流程：
  调用 target → LDR+BR hook_fn → 进入 hook_fn
  调用 g_orig_*(trampoline) → 执行被替换的 16 字节
                             → LDR+BR target+16 → 返回原始代码
```

#### Hook 行为汇总

| Hook | 条件 | 动作 |
|------|------|------|
| `hook_fopen/64` | 路径含 "cawwyayy" | 重定向至 `/data/local/tmp/libcawwyayy_patched.so` |
| `hook_fopen/64` | 路径含 magisk/zygisk 等 | 返回 `ENOENT`（伪装文件不存在）|
| `hook_openat/64` | 路径含 "cawwyayy" | 重定向至 `kPatchedSoPath` |
| `hook_openat/64` | `/proc/*/maps` | 注册 `track_fd` |
| `hook_read` | tracked fd | 删除含 "libswappywrapper"/"magisk"/"zygisk" 的行后返回 |
| `hook_kill` | `pid == getpid()` + SIGKILL/SIGTERM | `return 0`（阻止自我终止）|
| `hook_connect` | AF_INET, host != loopback, port 80/443/8080 | `connect(127.0.0.1:9999)` |
| GOT fopen/openat/kill | libcawwyayy.so GOT | 替换为 hook_fn + 恢复 PROT_READ |
| `hook_pthread_create` | start_routine dladdr → "cawwyayy" | 替换为 `dummy_thread`（立即退出）|
| UWR hook x10 | 所有 UnityWebRequest 创建/设置 | `redirect_url` → `http://127.0.0.1:9999` |
| `hook_register_natives` | JNIEnv vtable[215] | 若来源含 "cawwyayy" → JNI_OK（跳过注册）|

---

### 第 4 阶段 — 服务端收发流程

#### 双向通信路径

```
游戏 connect(127.0.0.1:9999)      ← hook_connect 或 redirect_url 生效
  → adb reverse tcp:9999 TCP 隧道
  → Windows server.exe 0.0.0.0:9999 accept(fd)
  → std::thread(handle_client, fd).detach()

请求接收（客户端 → 服务端）：
  recv_until_headers → 搜索 \r\n\r\n
  解析 headers map → 提取 Content-Length
  body = extra + 追加 recv → body.resize(content_length)
  游戏 protobuf 请求体：[4B sequence][protobuf payload]

响应发送（服务端 → 客户端）：
  game_binary_response(req, proto)：
    body = [4B 0x00][4B payload_size LE][protobuf payload]
    Content-Type: application/octet-stream
  send_response：
    HTTP/1.1 {status} + Content-Length: body.size() + Connection: close
  send_all：while(left > 0) platform_send 循环 → 保证刷新
  → adb reverse 反向隧道 → 游戏 recv()
```

#### 路由分支（router.cpp）

```
/sbaa479o  或 body 含 "f39ad58"
  → LIAPP lockincomp device-auth 静态响应（fdbd8509 signature）

/service/v3/util/country/get     → {"country":"kr"}
/v2/app                          → infodesk（agreementUrl, gameServerAddr=http://127.0.0.1:9999）
/v2/appGroup                     → appGroup esoul_service
/v2/app/server/maintenance       → maintenance null（服务器正常）
/service/v3/auth/loginKakao      → mock_login_data_response（zat + player JSON）
/service/v4/auth/loginDevice     → mock_login_data_response
/service/v3/auth/loginZinnyDevice→ mock_login_data_response
/service/v3/zat/refresh          → mock_zat_refresh_response
/service/v3/zat/issueToken       → mock_zat_refresh_response
/oauth/token                     → 伪造 Kakao access_token
/service/v3/player/getLocal      → mock_local_player_response
/service/v3/player/getUUID       → zinnyUuid 固定值
/service/v3/agreement/getForLogin→ agreementPopup 标志响应
/service/v3/log/writeSdkBasicLog → logId UUID 响应
/service/...                     → {}（SDK 杂项通用 OK）
/socket.io                       → engine.io HTTP polling（OPEN / ack）
/account-select                  → offline_data "web/account_select.html"
/api/accounts GET                → orm 账号列表 JSON
/api/accounts/create POST        → orm 创建账号
/api/accounts/select POST        → orm 选择账号
/api/accounts/{id} DELETE        → orm 删除账号

/Login        → 优先 fixture_store，否则 login_payload(protobuf)
/ServerTime   → server_time_payload()（始终动态生成当前时间）
/UserInfo     → 新手模式：db::build_user_info()（SQLite）
               完整模式：fixture_store（HAR 抓包 protobuf）
/StageClear   → db::stage_clear(stageNo) → 写入 stage 表 + 返回 stageNo
/StoryClear   → db::story_clear(storyNo)
/GachaHero    → db::gacha_hero → hero INSERT + 扣除货币
/TutorialActive → db::tutorial_active（新手）
其他游戏 API → fixture_store → session_harvested → harvested_payload → inline 处理器
未知端点 → 若已注册 is_empty_game_endpoint 则返回空 proto，否则 404
```

#### offline_data 加载

```
OfflineData::init()：
  优先级 1：libofflinedata.so（blob）
    校验 kMagic "ESOFLN D1"
    解析 [8B magic][4B count][[4B plen][path][4B dlen][data]...]
    → blob_entries_ map（rel → data）全量加载

  优先级 2：目录直读（debug fallback）
    data_dir/responses/*.json, /wss/*.json, /web/*

read("responses/UserInfo.json")    → blob_entries_["responses/UserInfo.json"]
read("wss/session_replies.json")   → blob_entries_["wss/session_replies.json"]
read("web/account_select.html")    → blob_entries_["web/account_select.html"]
```

#### fixture_store 加载

```
FixtureStore::load()：
  data.list("responses/") → blob 内 JSON 文件列表
  每个文件 → JSON 解析 → 检查 __format__：
    "empty" → payload = ""
    "raw"   → 解码 fixture["hex"] → 原始字节
    "proto" → json_encoder → protobuf 编码
  payload_map["/EndpointName"] = bytes

fixture_store().payload("/UserInfo", newbie_mode)
  → payloads_ 或 newbie_payloads_
```

---

### 第 5 阶段 — WebSocket 双向流程

```
游戏 WS 连接 → il2cpp redirect → ws://127.0.0.1:9999/session
  → adb reverse 隧道
  → handle_websocket(id, fd, req, pre)

握手：
  Sec-WebSocket-Key → HMAC-SHA1(key + "258EAFA5-...") → base64
  发送 HTTP/1.1 101 Switching Protocols

gc-session（Kakao JSON-RPC）：
  handle_session_ws：
    ws_session_initial_push() 立即推送（服务端 → 客户端）：
      blob["wss/session_replies.json"]["initial_push"]
      [topic, {meta publishTime=now}, body] → JSON dump
      ws_encode_frame(Text, push) → send_all

    ws_loop：
      客户端 → 服务端：
        ws_parse_frame → FIN + opcode + 解掩码
        Ping  → Pong（相同 payload）
        Close → 回显 Close → 结束循环
        Text  → parse_rpc → 提取 topic
               → ws_session_reply：
                   若 session["replies"][topic] 存在 → 拼接 meta_template + body
                   否则通用 {"status":200,"desc":"OK","content":{}}
      服务端 → 客户端：
        ws_encode_frame(Text, reply) 未加掩码 → send_all

socket.io chat：
  handle_chat_ws：
    ws_loop：
      "2probe" → "3probe"（engine.io upgrade probe）
      "2"      → "3"（ping → pong）
      "40..."  → namespace_connect_ack

WS 帧编码（服务端→客户端）：
  [FIN|opcode 1B][length 1~9B][payload]  — 不加掩码（RFC 6455）

WS 帧解码（客户端→服务端）：
  [FIN|opcode 1B][MASK|length 1~9B][mask 4B][masked payload] → XOR 解掩码
```

---

## 货币与账号

离线服务端通过 SQLite 数据库对每个账号的游戏状态进行独立管理。

管理后台：`http://localhost:9998/admin`

| 货币类型 | 说明 | 默认值 |
|---------|------|--------|
| 1 | 金币 | 1,000,000 |
| 2 | 钻石 | 30,000 |
| 3 | 免费钻石 | 1,000,000 |

---

## 已实现接口列表

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
- /sbaa479o（LIAPP lockincomp device-auth）
- /socket.io（engine.io HTTP polling）
- /account-select（账号选择 SPA）
- /api/accounts（CRUD）

### 游戏业务 API（protobuf）

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
- /GuideQuestList（空 proto，`is_empty_game_endpoint`）
- 不在上述列表中的未知端点 → 根据 `is_empty_game_endpoint` 注册状态返回空 proto 或 404

---

## 目录结构

```
EverSoulSimulator/
  apk/
    origin/       纯净原始 APK（绝对不可修改）
    backup/       注入器从设备 pull 的 APK 备份
  build/
    apk/          构建产物（base_patched.apk、split、libcawwyayy_patched.so）
    android/      libswappywrapper.so
    eversoul_offline_server.exe
    eversoul_injector.exe
    offline_data/ libofflinedata.so
  responses/      从 HAR 提取的 API Fixture JSON
  responses_newbie/ 新账号教程 Fixture
  wss/            WebSocket Fixture JSON
  web/            账号选择 SPA
  src/            C++ 源码
  tools/          Python 构建工具
```

---

## 社区 & 贡献

有任何意见、建议或发现了 Bug？
欢迎在 **[GitHub Issues](https://github.com/everlib/EverSoulSimulator/issues)** 上提交 Issue，随时欢迎各种反馈。

详细使用方法与配置指南请参阅 **[Wiki](https://github.com/everlib/EverSoulSimulator/wiki)**。
