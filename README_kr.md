# Eversoul Offline (오프라인 서버 및 인젝션 툴)

본 프로젝트는 《에버소울》(Eversoul) 클라이언트를 위한 로컬 Kakao SDK / Infodesk 모의 서버와, Unity 네트워크 요청을 가로채고 파싱하기 위한 C++ 인젝션 래퍼 및 오프라인 데이터 서버를 제공합니다.

- [영문 문서](README_en.md) | [中文文档](README.md) | **한국어 문서**

---

## 빠른 시작 가이드

### 1. 데스크톱 및 Android 라이브러리 빌드

#### 사전 준비 (Windows)

| 도구 | 버전 | 설치 방법 |
|------|------|----------|
| CMake | 3.21+ | `winget install Kitware.CMake` |
| GCC (MinGW-W64 POSIX UCRT) | 15.x | `winget install BrechtSanders.WinLibs.POSIX.UCRT` |
| Python | 3.x | `winget install Python.Python.3` |
| protoc | 35.x | `winget install Google.Protobuf` |
| protobuf (Python) | 4.21+ | `pip install protobuf` |
| libcurl (MinGW) | 8.x | `winget install cURL.cURL` |
| Android NDK | r27+ | `winget install Google.AndroidCLI` 후 `sdkmanager "ndk;27.2.12479018"` |

프로젝트 루트 디렉토리에서 통합 빌드 스크립트를 실행합니다 (Windows는 Git Bash 사용):

```bash
./build.sh
```

Python 도구 출력 언어를 선택할 수 있습니다:

```bash
EVERSOUL_LANG=en ./build.sh   # 영어 (기본값)
EVERSOUL_LANG=ko ./build.sh   # 한국어
EVERSOUL_LANG=zh ./build.sh   # 중국어
```

현재 디렉토리에 .har 패킷 캡처 파일이 없는 경우, 빌드 스크립트는 HAR 병합 추출 단계를 자동으로 건너뛰고 `responses/` 및 `responses_newbie/` 디렉토리의 데이터를 읽어 컴파일합니다. 따라서 프로젝트 클론 이후 정상적인 빌드에 영향을 주지 않습니다.

빌드 후 생성되는 주요 산출물:

- build/eversoul_offline_server (로컬 프록시 및 오프라인 데이터 Mock 서버)
- build/android/libswappywrapper.so (Android 클라이언트용 인터셉트 인젝션 래퍼 라이브러리)
- build/offline_data/libofflinedata.so (오프라인 정적 JSON 데이터가 패키징된 Android 동적 라이브러리)

---

### 2. Android 기기에 오프라인 데이터 및 인젝션 라이브러리 배포

Android 기기의 ADB 디버깅이 활성화되어 있고 연결된 상태인지 확인한 후, 다음을 실행합니다:

```bash
./deploy_offline_data.sh
```

이 스크립트는 다음 작업을 자동으로 수행합니다:
1. `libswappywrapper.so`와 `libofflinedata.so`를 게임 APK의 Native 동적 라이브러리 디렉토리에 푸시합니다.
2. 배포가 올바르게 이루어졌는지 확인하기 위해 기기 내 파일의 해시 값을 검증합니다.

---

## 핵심 기술 구현 세부 사항

### 1. 인젝션 및 패치 로드 방식 (안티치트 우회)

게임이 LIAPP 안티치트 보호를 사용하기 때문에, 전체 패키지 언패킹은 번거롭고 유지보수가 어렵습니다. 현재의 우회 및 로드 방식은 다음과 같습니다:

안티치트 핵심 진입 클래스 `com.liapp.x`의 `attachBaseContext` 메서드에 다음 Smali 코드를 주입하여, 컴파일된 인젝션 래퍼 라이브러리를 조기에 로드합니다:

```smali
const-string v0, "swappywrapper"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
```

이 위치에서 래퍼 라이브러리를 조기에 로드함으로써, 안티치트 환경이 보안 탐지 스레드 생성을 시작하기 전에 이를 일시 중단하거나 차단할 수 있습니다. 이를 통해 셸 보호를 유지한 채로 게임이 오프라인 데이터 인터셉트 라이브러리를 정상적으로 로드하고 실행할 수 있습니다.

### 2. 네트워크 요청 리다이렉션 방식

현재 요청 리다이렉션은 두 단계로 나뉩니다:

- **개발 및 테스트 단계**: 현재 Frida 스크립트(monitor_unity_web_request.js)를 사용하여 Unity의 네트워크 및 WebSocket 연결을 가로채고 리다이렉션합니다.
- **이후 오픈소스/루트 불필요 단계**: 이후에는 Frida Gadget 실행을 통합하거나, 클라이언트의 APK 크기 및 SHA-256 해시 이중 검증을 우회하여 Root 환경 없이 스크립트 없이 직접 리다이렉션하는 실행 방식을 구현할 예정입니다.

---

## 오프라인 백엔드 런타임 구체적 흐름

오프라인 백엔드의 실행은 저수준 Hook과 비동기 서비스의 협력을 통해 이루어지며, 구체적인 실행 과정은 다음과 같습니다:

1. **동적 라이브러리 진입 로드 및 Hook 설치**
   게임 엔진이 Java 레이어의 `loadLibrary`를 통해 래퍼 라이브러리 `libswappywrapper.so`를 로드할 때, [entry.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/entry.cpp)의 `__attribute__((constructor))` 초기화 함수 `eversoul_entry`가 즉시 실행됩니다.
   이 진입 함수는 먼저 [anticheat_patch.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/anticheat_patch.cpp)의 설치 인터페이스를 호출하여, ARM64 어셈블리 수준에서 `libc.so`의 `pthread_create`에 Inline Hook을 적용합니다(16바이트 절대 점프 명령으로 함수 시작 부분을 교체).
   인터셉트 콜백 함수는 새 스레드 생성 요청을 감지할 때, `dladdr`을 사용하여 스레드를 시작하는 함수가 LIAPP 안티치트 모듈 `libcawwyayy.so`에 속하는지 확인합니다. 안티치트 스캔 스레드로 판단되면 빈 함수를 호출하여 종료시켜 안티치트 엔진을 일시 중단하고, 나머지 게임 자체 스레드는 정상적으로 통과시킵니다.

2. **데이터 초기화 및 비동기 서비스 시작**
   안티치트 인터셉트 훅 설치가 완료된 후, [entry.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/entry.cpp)는 백그라운드 독립 스레드에서 오프라인 Mock 서버([server.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/server.cpp) 구현)를 시작합니다.
   비동기 서버 시작 시, [offline_data.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/offline_data.cpp)는 현재 디렉토리의 `libofflinedata.so`(동적 라이브러리로 위장한 오프라인 아카이브 패키지)를 자동으로 찾아 파싱합니다. 위치 파악에 실패하면 자동으로 로컬 파일 디렉토리의 정적 리소스를 읽도록 폴백합니다.
   이어서 [fixture_store.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/fixture_store.cpp)는 C++ 네이티브 변환 모듈과 함께 `schema/` 디렉토리의 Protobuf 구조 선언을 파싱하고, `responses/`의 JSON 정적 데이터를 메모리에서 일괄적으로 바이너리 Protobuf 데이터로 역직렬화하여 효율적인 캐시 맵을 구축하는 동시에 WebSocket 정적 데이터를 미리 로드합니다.

3. **라우팅 매칭 및 동적 인터셉션**
   클라이언트의 HTTP/WebSocket 요청은 로컬 포트 9999로 리다이렉션됩니다. 서버는 연결 수신 후 detached 스레드를 생성하여 처리합니다.
   요청은 라우터 [router.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/router.cpp)에 디스패치됩니다. Kakao SDK 등 플랫폼 설정 인터페이스에 해당하는 경우, 로컬 Mock JSON을 즉시 반환하고 `gameServerAddr`을 통해 이후 게임 비즈니스 Protobuf 요청을 로컬 서비스로 안내합니다. 비즈니스 인터페이스의 경우:
   - **성숙 계정 모드(Full Account)**: 서버는 요청 경로에 따라 `FixtureStore` 캐시 테이블에서 해당 정적 Protobuf 데이터 스트림을 직접 검색하여 응답하며, 기존 고레벨 계정 데이터의 빠른 재생을 지원합니다.
   - **신규 계정 모드(Newbie Account)**: 정적 재생으로 인한 신규 튜토리얼 상태 교착을 방지하기 위해, [router.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/router.cpp)는 튜토리얼 핵심 인터페이스(`/UserInfo`, `/TutorialActive`, `/StageClear`, `/FormationSave` 등)를 접수합니다. 이 인터페이스들은 하위 레벨 SQLite 데이터베이스 [src/orm](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/orm)에 바인딩됩니다. 플레이어가 스테이지를 클리어하거나, 닉네임을 변경하거나, 편성을 저장할 때 서버는 데이터베이스를 동적으로 수정하고 최신 에코 구조를 동기적으로 생성하여, 일관된 신규 게임 튜토리얼 진행과 진행 상황 저장을 실현합니다.

---

## 실행 모드 설명

### A. 캡처 및 프록시 모드 (Capture / Proxy Mode)

이 모드에서 PC 데스크톱 서버는 투명 프록시로 동작하여 플랫폼 로그인/인증 요청을 가로채고, 다른 비즈니스 요청은 공식 서버로 전달하며 캡처된 데이터를 자동으로 내보냅니다.

프록시 서버가 PC에서 실행되므로 adb 포트 리다이렉션이 필요합니다:

```bash
# 1. 기기 포트 리다이렉션 (PC 디버깅/프록시 패킷 캡처 모드에서만 필요)
adb reverse tcp:9999 tcp:9999

# 2. PC에서 프록시 서버 시작
./build/eversoul_offline_server --proxy --port 9999

# 3. Frida 인젝션 스크립트로 게임 실행
frida -H 127.0.0.1:27042 -f com.kakaogames.eversoul -l monitor_unity_web_request.js
```

### B. 완전 오프라인 Mock 모드 (Offline Mock Mode)

이 모드에서 모든 인터페이스의 데이터는 로컬 Mock 서버(또는 클라이언트에 인젝션된 오프라인 데이터 패키지)가 오프라인으로 응답합니다.

완전 오프라인 상태(즉, 기기에서 직접 독립적으로 게임 실행)에서, 오프라인 서버는 이미 `libswappywrapper.so` 내에서 독립적인 백그라운드 스레드로 비동기적으로 시작되었습니다. 따라서 **기기와 오프라인 서버가 모두 스마트폰 로컬 환경에 있어 포트 포워딩이 필요하지 않습니다**. Frida 스크립트를 직접 실행하여 주소를 인터셉션하면 됩니다. PC 데스크톱을 Mock 서버로 사용할 때만 `adb reverse` 포트 포워딩이 필요합니다.

```bash
# 1. Frida 인젝션 스크립트로 게임 직접 실행 (포트 포워딩 불필요)
frida -H 127.0.0.1:27042 -f com.kakaogames.eversoul -l monitor_unity_web_request.js
```

---

## 인터페이스 구현 상태 및 로드맵

현재 구현된 인터페이스 응답은 **순수 정적 JSON Mock 데이터**이며, 목적은 먼저 전체 응답 프로토콜 커버리지를 완성하여 게임이 오프라인 상태에서 시작, 로그인, 신규 튜토리얼, 주요 화면 데이터 로딩 흐름을 원활하게 진행할 수 있도록 하는 것입니다. 이후 개발 계획에서는 동적 비즈니스 로직(가차 뽑기, 캐릭터 레벨업, 스테이지 클리어 결산 등 상태 업데이트 동적 처리)을 점진적으로 도입할 예정입니다.

### 1. 구현된 플랫폼/인증 인터페이스 Mock (Kakao / Infodesk)

- /service/v3/util/country/get (국가/지역 코드 조회)
- /service/v4/device/accessToken/create (기기 AccessToken 생성)
- /service/v3/agreement/getForLogin (로그인 약관 상태 조회)
- /service/v3/log/writeSdkBasicLog (SDK 기본 로그 인터페이스)
- /v2/appGroup (앱 패키지 그룹 설정)
- /v2/app (앱 기본 설정 파라미터)
- /v2/app/server/maintenance (게임 서버 유지보수 상태)

### 2. 구현된 Protobuf 게임 비즈니스 인터페이스 Mock

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
- 이 외에도 캡처된 미분류 초기화/리스트 조회 인터페이스에 대해, 서버는 기본적으로 8바이트 응답 헤더를 가진 빈 Payload로 응답합니다.

자세한 트래픽 및 튜토리얼 상태 분석은 다음을 참고하세요:
- captured_requests.md (일반 요청 분석)
- captured_new_user_registration.md (신규 플레이어 등록 및 신규 튜토리얼 흐름)

---

## 기여 가이드

Eversoul Offline 오픈소스 공동 개발에 개발자분들의 참여를 환영합니다. 주로 다음 방향으로 기여할 수 있습니다:

- **인터페이스 동적화 리팩토링**
  현재 대부분의 비즈니스 응답은 정적 Mock입니다. [router.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/router.cpp)의 정적 라우트에 동적 처리 로직을 작성하고, [src/orm](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/orm)의 SQLite 데이터베이스에 바인딩하여 가차 토큰 차감, 캐릭터 레벨업 골드 소비, 장비 착용 속성 변경 등 완전한 인터랙션 흐름을 구현할 수 있습니다.

- **테이블 구조 및 퍼시스턴스 필드 보충**
  더 복잡한 게임 플레이(예: 길드 시스템, 정령의 나무 등)를 도입해야 할 경우, [orm/schema.hpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/orm/schema.hpp)와 [orm/storage.hpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/orm/storage.hpp)를 직접 수정하여 해당 데이터 테이블과 ORM 작업 인터페이스를 추가할 수 있습니다.

- **패킷 캡처 커버리지 향상**
  프록시 모드로 새로운 네트워크 라우팅 패킷을 캡처하여 JSON 형식으로 변환하고 Schema 설명을 추출한 후, `responses/` 및 `schema/` 디렉토리에 제출하여 서버가 인식하는 API 범위를 확장할 수 있습니다.

- **인젝션 및 리다이렉션 최적화**
  Root 불필요 리다이렉션 탐지 우회 관련 Smali 코드를 제출하거나, [anticheat_patch.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/anticheat_patch.cpp)의 inline hook 안정성 최적화 및 수정을 제공할 수 있습니다.

---

## 디렉토리 및 파이프라인 구조

오프라인 데이터 복원 파이프라인(JSON과 Protobuf 상호 변환 형식), 데이터 디렉토리 정의 및 빌드 검증 흐름에 대한 자세한 내용은 다음 문서를 참고하세요:
- OFFLINE_PIPELINE.md
