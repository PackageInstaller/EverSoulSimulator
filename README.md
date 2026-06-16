<p align="center">
  <img src="src/assets/logo.png" width="160" alt="EverSoul Offline" />
</p>

<h1 align="center">Eversoul Offline</h1>
<h3 align="center">오프라인 서버 &amp; ARM64 인젝션 툴킷</h3>

<p align="center">
  《에버소울》(Eversoul) 클라이언트를 위한 로컬 Kakao SDK / Infodesk 모의 서버,<br>
  Unity / Java 네트워크 요청을 가로채는 ARM64 C++ 인젝션 래퍼,<br>
  adb 자동 인젝터를 제공합니다.
</p>

<p align="center">
  <a href="https://discord.gg/ZptEmqfuv"><img src="https://img.shields.io/badge/Discord-Join%20Server-5865F2?style=for-the-badge&logo=discord&logoColor=white" alt="Discord" /></a>
  &nbsp;
  <img src="https://img.shields.io/badge/Platform-Android%20ARM64-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android ARM64" />
  &nbsp;
  <img src="https://img.shields.io/badge/C%2B%2B-17-00599C?style=for-the-badge&logo=cplusplus&logoColor=white" alt="C++17" />
  &nbsp;
  <img src="https://img.shields.io/badge/version-0.0.9-blue?style=for-the-badge" alt="v0.0.1" />
</p>

<p align="center">
  <a href="README_en.md"><img src="https://img.shields.io/badge/English-EN-0078D4?style=flat-square" alt="English" /></a>
  &nbsp;
  <a href="README_cn.md"><img src="https://img.shields.io/badge/%E4%B8%AD%E6%96%87-CN-DE2910?style=flat-square" alt="中文" /></a>
  &nbsp;
  <img src="https://img.shields.io/badge/%ED%95%9C%EA%B5%AD%EC%96%B4-KR-003478?style=flat-square" alt="한국어" />
  &nbsp;
  <a href="https://discord.gg/ZptEmqfuv"><img src="https://img.shields.io/badge/Discord-Join%20Server-5865F2?style=flat-square&logo=discord&logoColor=white" alt="Discord" /></a>
</p>

---

## 빠른 시작

### 사전 준비 (Windows)

| 도구 | 버전 |
|------|------|
| CMake | 3.21+ |
| GCC (MinGW-W64 POSIX UCRT) | 15.x |
| Python | 3.x |
| MSVC | Visual Studio 2019+ |
| Android NDK | r27+ (libswappywrapper.so 별도 빌드 시) |

### 빌드

```powershell
./build.ps1
```

빌드 후 생성되는 산출물:

| 경로 | 설명 |
|------|------|
| `build/eversoul_offline_server.exe` | 로컬 Mock/Proxy 서버 (포트 9999) |
| `build/eversoul_injector.exe` | adb 자동 인젝터 |
| `build/android/libswappywrapper.so` | ARM64 인젝션 래퍼 (별도 Android NDK CMake 빌드) |
| `build/apk/base.apk` | copy/base.apk에서 복사 (패치 완료 APK를 copy/에 준비) |
| `build/apk/libcawwyayy.so` | (옵셔널) 존재 시 인젝터가 자동 교체 |

### 실행

```powershell
./build/eversoul_injector.exe
```

최초 실행 시 adb 경로와 에뮬레이터 포트를 입력합니다. 이후 `injector.cfg`에 저장됩니다.

---

## 전체 파이프라인

### 1단계 — 빌드 (build.ps1)

```
HAR 패킷 파일 병합
  → responses/          API 픽스처 JSON
  → responses_newbie/   신규 계정 튜토리얼 픽스처 JSON

export_schema.py  → schema/ 재생성
dump_expected.py  → expected/ 재생성

pack_offline_data.py
  → responses/ + wss/ 전체를 libofflinedata.so로 패킹
    포맷: [8B 매직 "ESOFLN D1"][4B count]
          [[4B path_len][path][4B data_len][data] ...]

cmake (Windows, Ninja)
  → build/eversoul_offline_server.exe
  → encoder_validate.exe, offline_data_test.exe (검증용)

[별도] cmake (Android NDK, ARM64)
  → build/android/libswappywrapper.so
  (build.ps1 외부에서 별도 빌드 필요)

Tailwind CSS 빌드
  tools/tailwindcss.exe -i src/web/input.css -o src/web/style.css --minify

src/web/ → build/web/ 복사
  index.html, app.js, style.css, account_select.html, account_select.js
src/assets/ → build/web/ 복사
  logo.png, main_bg.png, loading.png, lang.png

injector MSVC 빌드 (vcvars64.bat)
  → build/eversoul_injector.exe

검증
  encoder_validate.exe
  offline_data_test.exe build/offline_data/libofflinedata.so "UserInfo"
  offline_data_test.exe build/offline_data/libofflinedata.so "UserInfo" responses_newbie

copy/base.apk → build/apk/base.apk 복사

해시 출력 (SHA256)
  build/eversoul_offline_server.exe
  build/offline_data/libofflinedata.so
  build/apk/base.apk
```

---

### 2단계 — 인젝터 실행 (eversoul_injector.exe)

```
start_offline_server():
  probe_port(9999) → 이미 응답하면 건너뜀
  없으면 CreateProcessW("server.exe --mock-only") → DETACHED_PROCESS
  600ms 대기 (서버 바인딩 완료 대기)

adb connect 127.0.0.1:{port}
  출력에 "connected" 또는 "already" 포함 확인

adb -s {serial} root
  1초 대기

adb shell pm path com.kakaogames.eversoul
  → "package:/data/app/.../base.apk" 형태 경로 파싱
  → device_base_apk, device_app_dir 확정

adb push exe_dir/apk/base.apk /data/local/tmp/base.apk
  su -c "cp /data/local/tmp/base.apk {device_base_apk} && chmod 644 {device_base_apk}"

adb push exe_dir/android/libswappywrapper.so /data/local/tmp/libswappywrapper.so
  su -c "cp ... {device_app_dir}lib/arm64/libswappywrapper.so && chmod 644 ..."

(선택) exe_dir/apk/libcawwyayy.so 존재 시:
  adb push .../libcawwyayy.so /data/local/tmp/libcawwyayy.so
  su -c "cp .../libcawwyayy.so {device_app_dir}lib/arm64/libcawwyayy.so && chmod 644 ..."

adb reverse tcp:9999 tcp:9999
  → 기기 127.0.0.1:9999 → Windows localhost:9999 TCP 터널

adb shell am force-stop com.kakaogames.eversoul
800ms 대기
adb shell am start -n com.kakaogames.eversoul/com.kakaogame.KGUnityPlayerActivity
                   -a android.intent.action.MAIN -c android.intent.category.LAUNCHER

별도 스레드: adb logcat -s libswappywrapper:V eversoul_offline:V *:S  (종료까지 스트리밍)
```

---

### 3단계 — 게임 실행 후 Hook 동작

#### 진입점 실행 순서

```
APK 로드 → smali 패치 → System.loadLibrary("swappywrapper")
  → libswappywrapper.so __attribute__((constructor))

  [1] asset_migration::migrate()
      /sdcard/Android/data/com.kakaogames.eversoul 경로 확인/이동

  [2] liapp_bypass::install()
      install_libc_hooks() — dlsym(RTLD_DEFAULT) 기반 inline hook 7개:
        fopen    → hook_fopen
        fopen64  → hook_fopen64
        openat   → hook_openat
        openat64 → hook_openat64
        read     → hook_read
        kill     → hook_kill
        connect  → hook_connect
      poller 스레드 시작 (250ms 간격, 최대 30초):
        dl_iterate_phdr → libcawwyayy.so base 주소 탐색
        발견 시 GOT 직접 패치 (ARM64):
          base + 0xa3ec8 = hook_fopen   (GOT[fopen])
          base + 0xa3dc8 = hook_openat  (GOT[openat])
          base + 0xa3e38 = hook_kill    (GOT[kill])
          (패치 후 mprotect PROT_READ 복원)

  [3] anticheat::install()
      dlsym("pthread_create") → inline hook → hook_pthread_create
      hook: dladdr(start_routine) → "cawwyayy" 포함이면
            g_orig_pthread_create(thread, attr, dummy_thread, arg)
            dummy_thread: return nullptr (즉시 종료)

  [4] il2cpp_redirect::install()
      poller 스레드 시작 (500ms 간격, 최대 60초):
        dlsym("il2cpp_string_new") → dladdr → libil2cpp.so base
        발견 시 RVA 기반 inline hook 10개:
          base + 0x097887a4  UWR::ctor(string)
          base + 0x097889e4  UWR::ctor(string, method)
          base + 0x09788c5c  UWR::ctor(full)
          base + 0x09789be8  UWR::SetUrl
          base + 0x0978ac50  UWR::Get
          base + 0x0978b040  UWR::Put(bytes)
          base + 0x0978b27c  UWR::Put(string)
          base + 0x0978b488  UWR::PostWwwForm
          base + 0x0978b700  UWR::Post(contentType)
          base + 0x04c72530  KakaoSDKAdapter::ShowMsgBox (차단)
        redirect_url():
          kakaogames.com 계열  → http://127.0.0.1:9999
          live-sea-chat 계열   → ws://127.0.0.1:9999
          *.lockincomp.com     → http://127.0.0.1:9999
          rttcheck-*.kakaogames.io → http://127.0.0.1:9999

JNI_OnLoad():
  [5] jni_bypass::init(vm)
      JNIEnv vtable 256개 → mmap 복사본
      vtable[215] = hook_register_natives
      hook: __builtin_return_address(0) → dladdr → "cawwyayy" 출처이면
            JNI_OK 반환 (LIAPP native method 등록 무시)

  [6] java_hook::init(vm)
      installer_thread 시작 → vm->AttachCurrentThread
      init_trampoline: Object.hashCode ArtMethod+0x20(EP) → g_jni_trampoline

      즉시 설치 (java.* / android.*):
        java/net/URL.<init>(String)          → redirect_url
        java/net/URL.<init>(URL, String)     → redirect_url
        android/os/Process.killProcess       → self pid이면 차단
        android/app/Activity.finishAffinity  → 차단
        android/app/Activity.startActivityForResult
          → kauth.kakao.com / accounts.kakao.com URL이면
            fake onActivityResult(RESULT_OK,
                                  kakao743487://oauth?code=offline-kakao-code-0)

      200ms retry, 최대 60초 (app DEX 복호화 대기):
        okhttp3/Request$Builder.url           → redirect_url
        CustomTabsIntent.launchUrl            → kauth이면 차단
        ServerService.useSessionConnection    → useHttpConnection() 강제 호출
        ConnectionManager.setConnectionType   → boolean 인자 true 강제
        HmacSHA256Util.verifySignature        → JNI_TRUE 반환

      ArtMethod 직접 패치:
        ArtMethod + 0x04 (flags) |= kAccNative (0x0100)
        ArtMethod + 0x18 (data)   = hook_fn
        ArtMethod + 0x20 (ep)     = g_jni_trampoline
        호출 시: mutex lock → restore_orig → 원본 호출 → reapply_hook → unlock
```

#### inline_hook 구조 (ARM64)

```
install_inline_hook(target, hook_fn, &trampoline):

trampoline 슬롯 (static pool 24개, 각 32바이트):
  [0~15]  = target 원본 16바이트 (displaced instructions)
  [16]    = LDR X16, #8   (0x58000050)
  [20]    = BR X16        (0xD61F0200)
  [24~31] = target+16 절대 주소 (resume)

target 패치:
  [0]    = LDR X16, #8   (0x58000050)
  [4]    = BR X16        (0xD61F0200)
  [8~15] = hook_fn 절대 주소

write_memory:
  mprotect RWX → memcpy → __builtin___clear_cache → PROT_READ|EXEC 복원
  실패 시 /proc/self/mem write 폴백

실행 흐름:
  target 호출 → LDR+BR hook_fn → hook_fn 진입
  g_orig_*(trampoline) 호출 시 → displaced 16바이트 실행
                               → LDR+BR target+16 → 원본 코드 복귀
```

#### Hook 동작 요약

| Hook | 조건 | 동작 |
|------|------|------|
| `hook_fopen/64` | path에 "cawwyayy" | `/data/local/tmp/libcawwyayy_patched.so`로 redirect |
| `hook_fopen/64` | path에 magisk/zygisk 등 | `ENOENT` 반환 (파일 없는 척) |
| `hook_openat/64` | path에 "cawwyayy" | `kPatchedSoPath`로 redirect |
| `hook_openat/64` | `/proc/*/maps` | `track_fd` 등록 |
| `hook_read` | tracked fd | "libswappywrapper"/"magisk"/"zygisk" 행 제거 후 반환 |
| `hook_kill` | `pid == getpid()` + SIGKILL/SIGTERM | `return 0` (자기 종료 차단) |
| `hook_connect` | AF_INET, host != loopback, port 80/443/8080 | `connect(127.0.0.1:9999)` |
| GOT fopen/openat/kill | libcawwyayy.so GOT | hook_fn으로 교체 + PROT_READ 복원 |
| `hook_pthread_create` | start_routine dladdr → "cawwyayy" | `dummy_thread`(즉시 종료)로 교체 |
| UWR hook 10종 | 모든 UnityWebRequest 생성/설정 | `redirect_url` → `http://127.0.0.1:9999` |
| `hook_register_natives` | JNIEnv vtable[215] | "cawwyayy" 출처이면 JNI_OK (등록 무시) |

---

### 4단계 — 서버 수신/응답 흐름

#### 양방향 통신 경로

```
게임 connect(127.0.0.1:9999)      ← hook_connect 또는 redirect_url 적용
  → adb reverse tcp:9999 TCP 터널
  → Windows server.exe 0.0.0.0:9999 accept(fd)
  → std::thread(handle_client, fd).detach()

요청 수신 (클라이언트 → 서버):
  recv_until_headers → \r\n\r\n 탐색
  headers map 파싱 → Content-Length 추출
  body = extra + 추가 recv → body.resize(content_length)
  게임 protobuf 요청 바디: [4B sequence][protobuf payload]

응답 전송 (서버 → 클라이언트):
  game_binary_response(req, proto):
    body = [4B 0x00][4B payload_size LE][protobuf payload]
    Content-Type: application/octet-stream
  send_response:
    HTTP/1.1 {status} + Content-Length: body.size() + Connection: close
  send_all: while(left > 0) platform_send 루프 → flush 보장
  → adb reverse 역방향 터널 → 게임 recv()
```

#### 라우팅 분기 (router.cpp)

```
/sbaa479o  또는 body에 "f39ad58"
  → LIAPP lockincomp device-auth 정적 응답 (fdbd8509 signature)

/service/v3/util/country/get     → {"country":"kr"}
/v2/app                          → infodesk (agreementUrl, gameServerAddr=http://127.0.0.1:9999)
/v2/appGroup                     → appGroup esoul_service
/v2/app/server/maintenance       → maintenance null (서버 정상)
/service/v3/auth/loginKakao      → mock_login_data_response (zat + player JSON)
/service/v4/auth/loginDevice     → mock_login_data_response
/service/v3/auth/loginZinnyDevice→ mock_login_data_response
/service/v3/zat/refresh          → mock_zat_refresh_response
/service/v3/zat/issueToken       → mock_zat_refresh_response
/oauth/token                     → fake Kakao access_token
/service/v3/player/getLocal      → mock_local_player_response
/service/v3/player/getUUID       → zinnyUuid 고정값
/service/v3/agreement/getForLogin→ agreementPopup 여부 응답
/service/v3/log/writeSdkBasicLog → logId UUID 응답
/service/...                     → {} (SDK housekeeping generic OK)
/socket.io                       → engine.io HTTP polling (OPEN / ack)
/account-select                  → offline_data "web/account_select.html"
/api/accounts GET                → orm 계정 목록 JSON
/api/accounts/create POST        → orm 계정 생성
/api/accounts/select POST        → orm 계정 선택
/api/accounts/{id} DELETE        → orm 계정 삭제

/Login        → fixture_store 우선, 없으면 login_payload(protobuf)
/ServerTime   → server_time_payload() (항상 현재 시각 동적 생성)
/UserInfo     → newbie 모드: db::build_user_info() (SQLite)
               full 모드: fixture_store (HAR 캡처 protobuf)
/StageClear   → db::stage_clear(stageNo) → stage 테이블 저장 + stageNo echo
/StoryClear   → db::story_clear(storyNo)
/GachaHero    → db::gacha_hero → hero INSERT + currency 차감
/TutorialActive → db::tutorial_active (newbie)
그 외 game API → fixture_store → session_harvested → harvested_payload → inline 핸들러
알 수 없는 끝점 → is_empty_game_endpoint이면 빈 proto, 아니면 404
```

#### offline_data 로드

```
OfflineData::init():
  1순위: libofflinedata.so (blob)
    kMagic "ESOFLN D1" 검증
    [8B magic][4B count][[4B plen][path][4B dlen][data]...] 파싱
    → blob_entries_ map (rel → data) 전체 로드

  2순위: 디렉토리 직접 (debug fallback)
    data_dir/responses/*.json, /wss/*.json, /web/*

read("responses/UserInfo.json")    → blob_entries_["responses/UserInfo.json"]
read("wss/session_replies.json")   → blob_entries_["wss/session_replies.json"]
read("web/account_select.html")    → blob_entries_["web/account_select.html"]
```

#### fixture_store 로드

```
FixtureStore::load():
  data.list("responses/") → blob 내 JSON 파일 목록
  각 파일 → JSON 파싱 → __format__ 확인:
    "empty" → payload = ""
    "raw"   → fixture["hex"] 디코딩 → 원시 바이트
    "proto" → json_encoder → protobuf 인코딩
  payload_map["/EndpointName"] = bytes

fixture_store().payload("/UserInfo", newbie_mode)
  → payloads_ 또는 newbie_payloads_
```

---

### 5단계 — WebSocket 양방향 흐름

```
게임 WS 연결 → il2cpp redirect → ws://127.0.0.1:9999/session
  → adb reverse 터널
  → handle_websocket(id, fd, req, pre)

핸드셰이크:
  Sec-WebSocket-Key → HMAC-SHA1(key + "258EAFA5-...") → base64
  HTTP/1.1 101 Switching Protocols 전송

gc-session (Kakao JSON-RPC):
  handle_session_ws:
    ws_session_initial_push() 즉시 서버 → 클라이언트 push:
      blob["wss/session_replies.json"]["initial_push"]
      [topic, {meta publishTime=now}, body] → JSON dump
      ws_encode_frame(Text, push) → send_all

    ws_loop:
      클라이언트 → 서버:
        ws_parse_frame → FIN + opcode + mask 해제
        Ping  → Pong (같은 payload)
        Close → Close 에코 → 루프 종료
        Text  → parse_rpc → topic 추출
               → ws_session_reply:
                   session["replies"][topic] 있으면 meta_template + body 조합
                   없으면 generic {"status":200,"desc":"OK","content":{}}
      서버 → 클라이언트:
        ws_encode_frame(Text, reply) unmasked → send_all

socket.io chat:
  handle_chat_ws:
    ws_loop:
      "2probe" → "3probe"  (engine.io upgrade probe)
      "2"      → "3"       (ping → pong)
      "40..."  → namespace_connect_ack

WS 프레임 인코딩 (서버→클라이언트):
  [FIN|opcode 1B][length 1~9B][payload]  — unmasked (RFC 6455)

WS 프레임 디코딩 (클라이언트→서버):
  [FIN|opcode 1B][MASK|length 1~9B][mask 4B][masked payload] → XOR 해제
```

---

## 재화 및 계정

오프라인 서버는 SQLite DB로 계정별 게임 상태를 독립적으로 관리합니다.

Admin 패널: `http://localhost:9998/admin`

| 재화 타입 | 설명 | 기본값 |
|-----------|------|--------|
| 1 | 골드 | 1,000,000 |
| 2 | 다이아 | 30,000 |
| 3 | 무과금 다이아 | 1,000,000 |

---

## 구현된 인터페이스 목록

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
- /account-select (계정 선택 SPA)
- /api/accounts (CRUD)

### 게임 비즈니스 API (protobuf)

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
- /GuideQuestList (빈 proto, `is_empty_game_endpoint`)
- 위 목록에 없는 알 수 없는 끝점 → `is_empty_game_endpoint` 등록 여부에 따라 빈 proto 또는 404

---

## 디렉토리 구조

```
EverSoulSimulator/
  copy/
    base.apk      패치 완료 APK (build.ps1이 build/apk/base.apk로 복사)
  build/
    apk/          base.apk (copy/에서), libcawwyayy.so (옵셔널)
    android/      libswappywrapper.so (별도 Android NDK CMake 빌드)
    web/          index.html, app.js, style.css, account_select.html/js
    offline_data/ libofflinedata.so
    eversoul_offline_server.exe
    eversoul_injector.exe
  responses/      HAR에서 추출한 API 픽스처 JSON
  responses_newbie/ 신규 계정 튜토리얼 픽스처
  wss/            WebSocket 픽스처 JSON
  src/
    web/          관리자 웹 UI 소스 (index.html, app.js, account_select.*)
  tools/          Python 빌드 도구
```

---

## 커뮤니티 & 기여

의견, 버그 제보, 기능 요청 등 자유롭게 **[GitHub Issues](https://github.com/everlib/EverSoulSimulator/issues)** 에 남겨 주세요.

자세한 사용 방법과 설정 가이드는 **[Wiki](https://github.com/everlib/EverSoulSimulator/wiki)** 를 참고해 주세요.
