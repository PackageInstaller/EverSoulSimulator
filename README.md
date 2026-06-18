<p align="center">
  <img src="src/assets/logo.png" width="160" alt="EverSoul Offline" />
</p>

<h1 align="center">Eversoul Offline</h1>
<h3 align="center">Windows 전용 호스트 파이프라인 + Android ARM64 리다이렉트 런타임</h3>

<p align="center">
  Android 클라이언트의 Java / IL2CPP / 전송 계층 요청을 로컬 Windows 서버로 돌리고,<br>
  Windows EXE가 Kakao / Infodesk / 게임 Protobuf / WebSocket 응답과 계정 상태를 제공하는 오프라인 런타임입니다.
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
  <a href="README_cn.md"><img src="https://img.shields.io/badge/%E4%B8%AD%E6%96%87-CN-DE2910?style=flat-square" alt="中文" /></a>
  &nbsp;
  <img src="https://img.shields.io/badge/%ED%95%9C%EA%B5%AD%EC%96%B4-KR-003478?style=flat-square" alt="한국어" />
</p>

---

## 현재 기준

- 확인일: 2026-06-18
- 호스트 운영체제: Windows 전용
- 서버 포트: `9991` (`src/common.hpp`의 `kServerListenPort`)
- Android ABI / API: `arm64-v8a`, `android-29`
- Android NDK 경로: `build-android.ps1` 기준 `C:\Users\koiya\AppData\Local\Android\Sdk\ndk\29.0.14206865`
- Windows 서버 실행 대상: `eversoul_gui.exe`, `eversoul_console.exe`
- Android SO 대상: `libswappywrapper.so`
- 현재 CMake에 `eversoul_offline_server` 실행 대상은 정의되어 있지 않습니다. `src/main.cpp`와 일부 리소스 문자열에는 해당 이름이 남아 있으나, 최신 Windows 빌드 대상은 `eversoul_gui`와 `eversoul_console`입니다.

---

## 실제 파이프라인 구조

```text
patched APK
  └─ com.liapp.x.attachBaseContext()
       └─ System.loadLibrary("swappywrapper")
            └─ libswappywrapper.so
                 ├─ pthread_create inline hook
                 │    └─ libcawwyayy 경로의 시작 루틴을 no-op 루틴으로 교체
                 ├─ connect / getaddrinfo / android_getaddrinfofornet hook
                 │    └─ Kakao / zinny3 / esoul 대상 연결을 127.0.0.1:9991로 재작성
                 ├─ LSPlant Java hook
                 │    ├─ java.net.URL 생성자
                 │    ├─ okhttp3.Request$Builder.url(String)
                 │    ├─ android.os.Process.killProcess
                 │    └─ com.kakaogame.util.HmacSHA256Util.verifySignature
                 ├─ embedded RedirectHooks.dex
                 │    └─ scripts/build_redirect_dex.sh가 redirect_hooks.o로 변환
                 └─ frida-gum IL2CPP hook
                      ├─ UnityWebRequest .ctor / set_url / SetUrl
                      └─ KGConfiguration URL 반환 지점

adb reverse tcp:9991 tcp:9991
  └─ Windows PC
       ├─ eversoul_gui.exe
       │    ├─ WebView2 UI
       │    └─ http://127.0.0.1:9991/web/
       └─ eversoul_console.exe
            ├─ 기본 브라우저 UI
            └─ adb logcat 수집

Windows server on 127.0.0.1:9991
  ├─ Kakao SDK / Infodesk HTTP 응답
  ├─ /Live 패치 파일 응답
  ├─ Protobuf 게임 엔드포인트
  ├─ WebSocket 세션 응답
  ├─ 다중 계정 SQLite 상태 저장
  └─ /web/api/* 계정 관리 API
```

Android SO는 로컬 서버를 직접 실행하는 구조가 아닙니다. 현재 Android CMake 대상 `swappywrapper`에는 `src/server.cpp`와 `src/router.cpp`가 포함되지 않으며, `src/entry.cpp`도 서버 시작 함수를 호출하지 않습니다. 게임 요청은 Android 훅 계층에서 `127.0.0.1:9991`로 바뀌고, `adb reverse tcp:9991 tcp:9991`을 통해 Windows EXE 서버로 전달됩니다.

---

## Windows 빌드 및 실행

모든 최신 빌드 진입점은 PowerShell 스크립트입니다.

```powershell
.\build-server.ps1 --gui
.\build-server.ps1 --cmd
.\build-server.ps1
.\build-android.ps1
```

- `.\build-server.ps1 --gui`: `build\gui\eversoul_gui.exe` 대상 빌드
- `.\build-server.ps1 --cmd`: `build\cmd\eversoul_console.exe` 대상 빌드
- `.\build-server.ps1`: GUI와 콘솔 대상 모두 빌드
- `.\build-android.ps1`: `build\android\libswappywrapper.so` 대상 빌드

`build-server.ps1`은 `src\web\input.css`를 `third_party\tailwindcss.exe`로 처리해 `src\web\style.css`를 생성한 뒤 CMake 대상을 빌드합니다. 서버 출력 디렉터리에는 `copy_only\dll\*`, `copy_only\adb\*`, `src\assets\logo.ico`가 함께 복사됩니다.

실행 흐름:

```powershell
adb reverse tcp:9991 tcp:9991
.\build\gui\eversoul_gui.exe
```

또는 콘솔 서버:

```powershell
adb reverse tcp:9991 tcp:9991
.\build\cmd\eversoul_console.exe
```

GUI는 WebView2로 `http://127.0.0.1:9991/web/`를 열고, 콘솔 버전은 기본 브라우저로 같은 UI를 엽니다. 두 실행 파일 모두 `src/server.cpp`의 비동기 서버 시작 경로를 사용합니다.

---

## Android SO 구현 상태

| 영역 | 실제 파일 | 상태 |
| --- | --- | --- |
| Android SO CMake 대상 | `CMakeLists.txt`의 `add_library(swappywrapper SHARED ...)` | 구현됨 |
| SO 진입점 | `src/entry.cpp` | 생성자에서 안티치트 패치, 전송 리다이렉트, frida-gum 초기화 수행. `JNI_OnLoad`에서 LSPlant와 IL2CPP 훅 설치 |
| 안티치트 스레드 억제 | `src/anticheat_patch.cpp` | `pthread_create` inline hook으로 `libcawwyayy` 경로의 시작 루틴을 no-op 루틴으로 교체 |
| 전송 계층 리다이렉트 | `src/net_redirect.cpp`, `src/url_redirect.cpp` | 대상 호스트와 포트 조건을 확인해 `127.0.0.1:9991`로 재작성 |
| Java 훅 | `src/lsplant_hooks.cpp`, `src/dex_loader.cpp`, `smali_inject/RedirectHooks.java` | embedded dex를 로드하고 URL, OkHttp, killProcess, verifySignature 경로를 훅 |
| IL2CPP / Unity 훅 | `src/native_url_hooks.cpp`, `src/frida_gum_init.cpp` | UnityWebRequest URL과 KGConfiguration URL 반환 지점을 재작성 |
| Android 내장 HTTP 서버 | Android CMake 대상 기준 | 포함되지 않음. 서버는 Windows EXE가 담당 |
| Android raw proxy helper | `src/proxy.cpp` | Android 분기 구현은 존재하지만 현재 Android SO 대상에 서버 라우터가 포함되지 않음 |

---

## Windows 서버 EXE 구현 상태

| 영역 | 실제 파일 | 상태 |
| --- | --- | --- |
| GUI 실행 파일 | `src/gui_main.cpp`, `CMakeLists.txt`의 `eversoul_gui` | 구현됨. WebView2 UI와 서버를 함께 시작 |
| 콘솔 실행 파일 | `src/console_main.cpp`, `CMakeLists.txt`의 `eversoul_console` | 구현됨. 서버 시작, 브라우저 열기, adb logcat 수집 수행 |
| HTTP 서버 | `src/server.cpp`, `src/http.cpp`, `src/router.cpp` | 구현됨. `9991`에서 HTTP와 WebSocket 업그레이드 처리 |
| Infodesk / Kakao 응답 | `src/router.cpp` | 구현됨. `/v2/app`, Kakao 계열 라우트, `/Live/...` 패치 라우트 포함 |
| Protobuf 게임 라우트 | `src/router.cpp`, `src/protobuf.cpp`, `src/json_encoder.cpp` | 구현됨. fixture와 SQLite 상태를 바탕으로 응답 인코딩 |
| WebSocket 응답 | `src/websocket.cpp`, `src/ws_session.cpp`, `wss/` | 구현됨. `wss` 픽스처를 로드해 세션 응답 처리 |
| 다중 계정 저장소 | `src/account_registry.cpp`, `src/account_database.cpp`, `src/account_db_manager.cpp` | 구현됨. `runtime_state/accounts.sqlite3`와 계정별 `state.sqlite3` 사용 |
| 계정 Web API | `src/router.cpp` | 구현됨. 목록, 생성, 조회, 수정, 선택, 복사, export, import, session, 삭제 라우트 존재 |
| UserInfo 재구성 | `src/userinfo_repository.cpp`, `src/orm/storage.cpp` | 구현됨. 정규화된 SQLite 상태와 보존 필드를 합쳐 `/UserInfo` 응답 생성 |
| 상태 변경 엔드포인트 | `src/endpoint_mutation_service.cpp` | 구현됨. tutorial, dungeon, formation, hero, item, equipment, spirit tree, gacha, shop, task, achievement, mail, attendance, friend heart, nickname, auto hunt 계열 처리 |
| catalog DB 모듈 | `src/game_catalog.cpp`, `src/game_catalog.hpp` | 소스 구현 존재. 현재 확인한 서버 시작 경로는 `fixture_store`, `wss`, `orm::ensure_ready`를 호출하며 catalog populate 호출은 서버 시작 경로에서 확인되지 않음 |

---

## APK 및 Smali 상태

| 영역 | 실제 파일 | 상태 |
| --- | --- | --- |
| 원본 APK | `apk/base.apk`, `apk/永恒灵魂_1.34.101.apk` | 존재 |
| 패치 APK | `apk/base_patched.apk`, `apk/base_patched.apk.idsig` | 존재 |
| 디컴파일 트리 | `apk/1/` | 존재 |
| Manifest | `apk/1/AndroidManifest.xml` | `package="com.kakaogames.eversoul"`, `application android:name="com.liapp.x"`, `debuggable`, `extractNativeLibs`, `usesCleartextTraffic` 확인 |
| SO 조기 로드 | `apk/1/smali_classes4/com/liapp/x.smali` | `attachBaseContext`에서 `System.loadLibrary("swappywrapper")` 삽입 확인 |
| APK 내 ARM64 라이브러리 | `apk/1/lib/arm64-v8a/`, `apk/out/lib/arm64-v8a/` | `libswappywrapper.so`, `libofflinedata.so`, `libcawwyayy.so`, `libil2cpp.so`, `libunity.so`, `libdobby.so` 존재 |
| 직접 Smali URLHook | `apk/1/smali_classes3/com/rikka/redirect/URLHook.smali` | 클래스와 삽입 지점 존재. 필드에는 `9991`, 메서드 본문 상수에는 `9999`가 남아 있어 현재 Windows CMake 통합 경로와 포트 기준이 다름 |
| 직접 Smali 패치 도구 | `tools/apply_java_redirect.sh`, `tools/patch_java_redirect.py`, `smali_inject/URLHook.java` | 존재. `smali_inject/URLHook.java`와 도구 주석은 `9999` 기준 |

현재 문서의 기본 런타임 기준은 CMake 통합 SO + Windows EXE 경로이며 포트는 `9991`입니다. 직접 Smali URLHook 경로는 파일과 삽입 지점이 존재하지만, 확인된 파일 안에 `9999` 상수가 남아 있으므로 이 문서에서 기본 파이프라인으로 취급하지 않습니다.

---

## 데이터 및 패킹 구조

현재 파일 수:

| 경로 | 파일 수 | 역할 |
| --- | ---: | --- |
| `schema/` | 167 | Protobuf JSON 스키마 |
| `responses/` | 102 | 기존 계정 기준 HTTP / Protobuf 응답 fixture |
| `responses_newbie/` | 156 | 신규 계정 기준 응답 fixture |
| `wss/` | 4 | WebSocket 세션 응답 fixture |
| `probability/` | 11 | 확률표 문서 |
| `ProtocolBuffers/` | 2633 | Protobuf 원본 / 참조 자료 |

`tools/pack_offline_data.py`는 `responses`, `responses_newbie`, `schema`, `src/web`, `wss/session_replies.json`, `wss/chat_engineio.json`을 `ESOFLND1` 포맷으로 묶어 `build/offline_data/libofflinedata.so`에 기록합니다. 이 파일은 이름만 `.so`이며 실제 구조는 커스텀 데이터 아카이브입니다.

`src/offline_data.cpp`는 Windows에서는 CMake가 생성한 embedded web blob을 읽고, Android / 비 Windows 경로에서는 로드된 SO 위치를 기준으로 같은 디렉터리의 `libofflinedata.so`를 탐색합니다. 데이터 blob이 없으면 `config().data_dir` 디렉터리 기반 로딩으로 진행합니다.

---

## 프로젝트 구조와 역할

| 경로 | 역할 | 현재 구현 상태 |
| --- | --- | --- |
| `src/` | C++ 런타임 전체. Android SO 훅, Windows 서버, 라우터, Protobuf, SQLite, WebSocket, ADB, WebView2 진입점 포함 | 핵심 구현 |
| `src/web/` | Windows 서버가 제공하는 계정 선택 / 관리 UI와 정적 자산 | 구현됨 |
| `src/orm/` | 기존 `orm::*` 공개 API를 계정별 SQLite DB로 연결하는 호환 계층 | 구현됨 |
| `apk/` | 원본 APK, 패치 APK, 디컴파일 APK, jadx / research 산출물 | 실제 APK 작업 트리 |
| `smali_inject/` | embedded `RedirectHooks.java`와 직접 Smali URLHook 자료 | SO embedded dex 경로와 직접 DEX 패치 경로가 함께 존재 |
| `scripts/` | Android embedded dex 생성 스크립트 | `build_redirect_dex.sh`가 CMake Android 빌드에서 사용됨 |
| `tools/` | HAR 변환, schema export, JSON to protobuf, offline data pack, DEX patch, 검증 도구 | 파이프라인 도구 모음 |
| `schema/` | JSON 스키마 | 서버 응답 인코딩에 사용 |
| `responses/` | 기존 계정 fixture | 서버 fixture와 계정 seed에 사용 |
| `responses_newbie/` | 신규 계정 fixture | 신규 계정 seed와 newbie 라우팅에 사용 |
| `wss/` | WebSocket fixture | Windows 서버 WebSocket 세션에 사용 |
| `probability/` | 확률표 Markdown | 확률표 문서 자료 |
| `ProtocolBuffers/` | Protobuf 자료 | schema / payload 분석 기준 자료 |
| `expected/` | 검증 기준 바이너리 자료 | 검증 자료 보관 |
| `docs/` | 구조 / 방법론 문서 | 참고 문서. README는 코드 확인 결과만 반영 |
| `third_party/` | 외부 의존성 | `adb`, Dobby, frida-gum, LSPlant, sqlite, sqlite_orm, WebView2, apktool, jadx, tailwindcss 포함 |
| `copy_only/` | Windows 출력 디렉터리에 그대로 복사되는 파일 | `adb.exe`, ADB DLL, curl / MinGW 런타임 DLL 포함 |
| `cmake/` | CMake 보조 모듈 | 빌드 보조 구조 |
| `eversoul-redirect-module/` | 별도 Gradle Android 모듈 | 현재 CMake 기반 Windows 런타임 경로에는 포함되지 않음 |
| `pine_helper/` | 별도 Gradle helper 프로젝트 | 현재 CMake 기반 Windows 런타임 경로에는 포함되지 않음 |
| `sss/` | 보조 자료 디렉터리 | 루트에 존재. 현재 README 기준 런타임 경로에서는 호출 확인 없음 |
| `build/` | 로컬 빌드 산출물 | `build/android` 산출물 확인됨 |

---

## 현재 확인된 불일치

- 기존 README의 `./build.sh`, `build/eversoul_offline_server`, `9999` 서버 기준은 현재 CMake Windows 대상과 맞지 않습니다.
- `CMakeLists.txt`의 Android 상태 메시지에는 `9999`가 남아 있으나, 실제 공통 상수와 Windows 서버 / Android URL 리다이렉트 소스는 `9991`을 사용합니다.
- 직접 Smali URLHook 자료에는 `9999` 상수가 남아 있습니다. 현재 기본 파이프라인은 `src/url_redirect.hpp`, `src/redirect.hpp`, `src/common.hpp` 기준 `9991`입니다.
- `src/main.cpp`에는 독립 서버 CLI 진입점이 존재하지만, 현재 CMake에는 이를 빌드하는 `add_executable(eversoul_offline_server ...)`가 없습니다.

---

## 라이선스

이 저장소의 라이선스는 `LICENSE` 파일을 기준으로 합니다.
