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
  <img src="https://img.shields.io/badge/version-0.0.3-blue?style=for-the-badge" alt="v0.0.1" />
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

## 빠른 시작 가이드

### 1. 데스크탑 및 Android 라이브러리 빌드

프로젝트 루트에서 통합 빌드 스크립트를 실행합니다:

```bash
./build.sh
```

루트 디렉토리에 .har 캡처 파일이 없으면 빌드 스크립트가 HAR 병합 단계를 자동으로 건너뛰고, responses/ 와 responses_newbie/ 의 기존 JSON 픽스처를 사용해 컴파일합니다. 클론 후 바로 빌드가 가능합니다.

빌드 성공 시 생성되는 주요 산출물:

- build/eversoul_offline_server (로컬 프록시 & 오프라인 게임 Mock 서버)
- build/android/libswappywrapper.so (Android 클라이언트용 C++ 래퍼 훅)
- build/offline_data/libofflinedata.so (정적 JSON 데이터를 패킹한 Android 라이브러리)

---

### 2. Android 기기에 런타임 라이브러리 및 데이터 배포

Android 기기에 USB 디버깅이 활성화되어 있고 ADB로 연결되어 있어야 합니다. 이후 실행:

```bash
./deploy_offline_data.sh
```

이 스크립트는:
1. libswappywrapper.so 와 libofflinedata.so 를 앱의 네이티브 라이브러리 디렉토리에 push합니다.
2. 기기에 배포된 파일의 SHA-256 해시를 검증하여 배포 성공을 확인합니다.

---

## 핵심 기술 구현 상세

### 1. 인젝션 및 패치 로드 방식 (안티치트 우회)

게임이 LIAPP 안티치트 보호를 사용하므로 전체 패키지 언패킹은 번거롭고 유지보수하기 어렵습니다. 우회 및 인젝션 래퍼 로드 방식은 다음과 같습니다:

핵심 안티치트 진입 클래스인 `com.liapp.x` 의 `attachBaseContext` 메서드에 다음 Smali 코드를 삽입하여 컴파일한 훅 래퍼를 조기 로드합니다:

```smali
const-string v0, "swappywrapper"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
```

이 메서드에서 래퍼 라이브러리를 조기 로드함으로써, 안티치트 환경이 보안 탐지 스레드를 초기화하기 전에 이를 일시 중단하거나 차단할 수 있습니다. 보호 쉘을 그대로 유지하면서 게임이 오프라인 인터셉터 라이브러리를 로드하고 실행할 수 있게 됩니다.

### 2. 네트워크 트래픽 리다이렉션

네트워크 요청 리다이렉션은 두 단계로 계획되어 있습니다:

- 개발 및 테스트 단계: 현재 Frida 스크립트(monitor_unity_web_request.js)를 사용해 Unity의 HTTP 및 WebSocket 연결을 localhost로 인터셉트·리다이렉트합니다.
- 향후 루트리스 단계: 추후 업데이트에서 Frida Gadget 또는 패키지 크기와 SHA-256 해시의 이중 검사를 우회하여 루트 없이 스크립트 없이 리다이렉션을 지원할 예정입니다.

---

## 실행 모드

### A. 캡처 / 프록시 모드

이 모드에서 로컬 서버는 투명한 HTTP 프록시로 동작하며, 관심 있는 인증/SDK 요청을 인터셉트하면서 게임 서버 트래픽은 실제 서버로 포워딩하고 캡처 덤프를 저장합니다.

```bash
# 1. TCP 포트 9999 역방향 포워딩
adb reverse tcp:9999 tcp:9999

# 2. 프록시 모드로 로컬 서버 시작
./build/eversoul_offline_server --proxy --port 9999

# 3. Frida로 게임 프로세스에 훅을 걸어 Unity HTTP/WebSocket 엔드포인트 리다이렉트
frida -H 127.0.0.1:27042 -f com.kakaogames.eversoul -l monitor_unity_web_request.js
```

### B. 오프라인 Mock 모드

이 모드에서 모든 플랫폼 및 게임 요청은 로컬 서버 또는 인젝션된 오프라인 패키지가 모의 응답합니다.

```bash
# 1. TCP 포트 9999 역방향 포워딩
adb reverse tcp:9999 tcp:9999

# 2. Mock 전용 서버 시작 및 게임 서버 호스트 주소를 localhost로 지정
./build/eversoul_offline_server --mock-only --port 9999 --game-server-url http://127.0.0.1:9999

# 3. Frida로 게임 프로세스에 훅 적용
frida -H 127.0.0.1:27042 -f com.kakaogames.eversoul -l monitor_unity_web_request.js
```

---

## 엔드포인트 구현 현황 & 로드맵

현재 모의 응답 엔드포인트는 **순수 정적 JSON 응답을 반환**합니다. 목표는 완전한 프로토콜 커버리지를 우선 확립하여, 게임이 완전한 오프라인 환경에서 시작·로그인·신규 유저 튜토리얼·메인 UI 로딩 화면까지 원활하게 진행될 수 있도록 하는 것입니다. 향후에는 동적 게임 상태 업데이트(가차 뽑기, 영웅 강화, 전투 클리어 처리 등)를 도입할 계획입니다.

### 1. 모의 응답 플랫폼 / SDK 엔드포인트 (Kakao / Infodesk)

- /service/v3/util/country/get (국가 조회)
- /service/v4/device/accessToken/create (액세스 토큰 생성)
- /service/v3/agreement/getForLogin (이용 약관)
- /service/v3/log/writeSdkBasicLog (SDK 로깅)
- /v2/appGroup (앱 그룹 메타데이터)
- /v2/app (앱 설정 및 서버 주소)
- /v2/app/server/maintenance (서버 점검 상태 확인)

### 2. 모의 응답 게임 서버 Protobuf 라우트

현재 모의 응답 중인 엔드포인트:

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
- 그 외 캡처된 부트스트랩 또는 목록 엔드포인트는 관측된 8바이트 응답 헤더와 함께 빈 Protobuf 페이로드를 반환합니다.

상세 트래픽 분석 리포트:
- captured_requests.md (표준 트래픽 캡처 분석)
- captured_new_user_registration.md (회원가입 및 튜토리얼 상태 흐름)

---

## 프로젝트 파이프라인 & 구조

JSON-Protobuf 변환 파이프라인, 스키마, 예상 바이너리 검증, 데스크탑 검증 도구에 대한 정보는 다음을 참고하세요:
- OFFLINE_PIPELINE.md
