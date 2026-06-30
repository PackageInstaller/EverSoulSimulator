# 에버소울 오프라인 종합 아키텍처 명세서 (architecture.md)

이 문서는 에버소울 오프라인 PC 서버의 전체적인 아키텍처 구조와 설계 사상, 동작 원리, 데이터 흐름을 한국어로 기술합니다.

---

## 1. 아키텍처 설계 사상 및 목적
본 프로젝트는 서비스가 종료되거나 오프라인 환경인 경우에도 에버소울 클라이언트가 동작할 수 있도록 로컬 가상 환경을 제공하는 **PC 가상 피스처(Fixture) 서버**입니다.
*   **리플레이 기반 처리**: 기기에서 캡처된 정적/동적 패킷을 재생하여 모킹 응답을 생성합니다.
*   **영속성 보장**: 정적 응답에만 의존하지 않고, SQLite 데이터베이스를 사용하여 사용자의 영웅 소환, 재화 변동, 스토리/스테이지 진행도 등 중요한 상태 변화를 기록 및 영속화합니다.
*   **하이브리드 통신**: 외부의 실제 게임 서버와 연결을 유지하며 새로운 프로토콜을 수집(Harvesting)하는 프록시 모드와 순수 로컬로만 작동하는 오프라인 피스처 모드를 동시에 지원합니다.

---

## 2. 시스템 아키텍처 및 통신 구조
서버는 단일 C++23 프로세스로 구성되어 있으며, 다수의 내부 가상 서버 모듈이 비동기 멀티스레드로 클라이언트 소켓 요청을 나누어 처리합니다.

```mermaid
%%{init: {
  'theme': 'base',
  'themeVariables': {
    'primaryColor': '#1e293b',
    'primaryTextColor': '#f8fafc',
    'primaryBorderColor': '#475569',
    'lineColor': '#3b82f6',
    'secondaryColor': '#0f172a',
    'tertiaryColor': '#1e1b4b',
    'mainBkg': '#0f172a',
    'nodeBorder': '#334155',
    'clusterBkg': '#1e293b',
    'clusterBorder': '#475569'
  }
}}%%
graph TD
    Client["📱 에뮬레이터 / 안드로이드 클라이언트"] <-->|ADB 역방향 터널링 9991| ServerPort["🌐 TCP 소켓 리스너 (Port: 9991)"]
    
    subgraph MockServer ["💻 Eversoul 오프라인 가상 서버"]
        ServerPort --> Parser["🔌 프로토콜 파서 (HTTP / WebSocket)"]
        
        Parser -->|1. 로그인 & 인증 요청| AuthServer["🔑 Kakao / Zinny 인증 모킹 모듈"]
        Parser -->|2. 웹소켓 프레임 (JSON-RPC)| WebSocketServer["💬 웹소켓 세션 & socket.io 채팅 Replay"]
        Parser -->|3. 어드민 페이지 & API 요청| WebUI["🖥️ 대시보드 Web UI & REST API"]
        Parser -->|4. 바이너리 게임 패킷| GameServer["🎯 게임 콘텐츠 엔진"]
        
        GameServer -->|대칭키 복호화 & 필드 바인딩| ProtoHelper["📦 Protobuf & Crypt 헬퍼"]
        GameServer -->|요청 라우팅 분기| MutationService["🔄 Endpoint Mutation 서비스"]
        GameServer -->|바이너리 패킷 fallback| FixtureStore["📂 Fixture Store (responses/)"]
        
        MutationService <-->|sqlite_orm 기반 상태 기록| AccountDB[("🗃️ SQLite DB - account.db")]
        MutationService -->|사양 데이터 유효성 대조| TBLStore[("📊 TBL Store - tbl/")]
        
        Parser -->|5. 미지원 엔드포인트 포워딩| ProxyServer["🔄 리버스 프록시 하베스터 (libcurl)"]
    end
    
    ProxyServer <-->|외부 HTTPS 통신| ExternalServer["🌍 실제 에버소울 상용 API 서버"]
    
    subgraph HostPCTools ["📟 호스트 디버그 도구 세트"]
        WebUI <-->|비동기 프로세스 셸 제어| ADBModule["📟 ADB Runner & Logcat 엔진"]
        ADBModule <-->|ADB Shell & Port Forward| Client
    end

    %% 스타일 노드 할당
    classDef clientNode fill:#1e3a8a,stroke:#3b82f6,stroke-width:1px,color:#f8fafc;
    classDef serverCore fill:#0f172a,stroke:#475569,stroke-width:1px,color:#f8fafc;
    classDef dbNode fill:#064e3b,stroke:#10b981,stroke-width:1px,color:#f8fafc;
    classDef cloudNode fill:#881337,stroke:#f43f5e,stroke-width:1px,color:#f8fafc;

    class Client clientNode;
    class ServerPort,Parser,AuthServer,WebSocketServer,WebUI,GameServer,ProtoHelper,MutationService,FixtureStore,ProxyServer,ADBModule serverCore;
    class AccountDB,TBLStore dbNode;
    class ExternalServer cloudNode;
```

---

## 3. 프로젝트 상세 소스 트리 및 파일 구성 명세

프로젝트의 전체 소스 코드 디렉터리 트리 구조와 각 핵심 소스 파일들의 세부 역할 명세입니다.

```text
Fixture/
├── CMakeLists.txt                      # 빌드 대상 정의 및 컴파일 구성 파일
├── README.md                           # 시스템 개요 및 퀵 스타트 가이드
├── AGENTS.md                           # AI 개발자 전용 가이드라인 (비공개)
├── .gitignore                          # 버전 관리 빌드 산출물 제외 규칙
├── docs/                               # 아키텍처 상세 설계 문서 및 계획
│   ├── architecture.md                 # 종합 아키텍처 개요 명세서 (본 파일)
│   ├── auth_server.md                  # 인증 서버 상세 동작 및 모킹 명세
│   ├── game_server.md                  # 암복호화 프로토콜 및 영속성 변이 명세
│   ├── proxy_server.md                 # 프록시 및 API 수집 프레임워크 명세
│   ├── websocket_server.md             # 웹소켓 RPC 및 실시간 푸시 세션 명세
│   ├── web_ui_server.md                # 웹 관리 대시보드 및 SSE 스트리밍 명세
│   ├── adb_injector.md                 # ADB 자동 터널링 및 Logcat 원격 진단 명세
│   └── backend_dynamic_reproduction_plan.md# 동적 로직 재현 계획서
├── copy_only/                          # 컴파일 후 배포 산출물에 강제 복사할 DLL 및 도구
│   ├── adb/                            # 윈도우용 ADB 디버거 세트
│   │   ├── adb.exe                     # 안드로이드 기기 연결 브릿지 엔진
│   │   ├── AdbWinApi.dll               # ADB 윈도우 연동 API DLL
│   │   └── AdbWinUsbApi.dll            # ADB WinUSB 드라이버 DLL
│   └── dll/                            # 런타임에 필요한 C++ 및 CURL 공유 라이브러리
│       ├── libcurl-x64.dll             # curl 프록시 통신용 DLL
│       ├── libgcc_s_seh-1.dll          # GCC 런타임 지원 DLL
│       ├── libstdc++-6.dll             # C++ 표준 라이브러리 DLL
│       └── libwinpthread-1.dll         # POSIX 스레드 호환성 DLL
├── responses/                          # 성장 계정 정적/동적 JSON 피스처 데이터
├── responses_newbie/                   # 신규 튜토리얼 계정 전용 JSON 피스처 데이터
├── src/                                # C++ 기반 가상 서버 코어 소스코드
│   ├── main.cpp                        # 서버 포트 바인딩 및 TCP accept 루프 진입점
│   ├── console_main.cpp                # 디버깅 테스트용 가상 콘솔 진입점
│   ├── encoder_validate.cpp            # 데이터 인코더 무결성 검증 유틸
│   ├── offline_data_test.cpp           # 오프라인 바이너리 로더 테스트 스크립트
│   ├── orm_seed_check.cpp              # 데이터베이스 시드 데이터 유효성 검증
│   ├── account/                        # 계정 상태 제어 및 프로필 관리 모듈
│   │   ├── api/
│   │   │   └── account_db.hpp/cpp      # 계정 상태 제어용 외부 API 인터페이스
│   │   ├── profile/
│   │   │   ├── account_registry.hpp/cpp# 프로필 등록, 선택 및 세팅 연동
│   │   │   └── userinfo_repository.hpp/cpp # 유저 데이터 정보 처리 저장소
│   │   └── state/
│   │       ├── account_database.hpp/cpp# SQLite 계정 테이블 CRUD 원자적 처리
│   │       └── account_db_manager.hpp/cpp# 활성 SQLite 데이터베이스 세션 제어
│   ├── config/                         # 글로벌 및 활성 프로필 설정 도메인
│   │   └── ini/
│   │       └── ini_store.hpp/cpp       # ba.ini 등 설정 파일 파서 및 영속 제어
│   ├── core/                           # 공용 인코딩, 암호화, 로그 모듈
│   │   ├── encoding/
│   │   │   ├── crypto.hpp/cpp          # 대칭키 기반 게임 패킷 암복호화 엔진
│   │   │   ├── json.hpp/cpp            # 가벼운 JSON 파서 및 메모리 표현 객체
│   │   │   └── json_encoder.hpp/cpp    # JSON-Protobuf 동적 리플렉션 변환기
│   │   ├── logging/
│   │   │   ├── log.hpp/cpp             # 서버 표준 디버그 콘솔 출력기
│   │   │   ├── har_log.hpp/cpp         # 트랜잭션 기록용 HTTP 아카이브 기록기
│   │   │   └── sse_log.hpp/cpp         # 웹 대시보드용 SSE 로그 관리자
│   │   └── runtime/
│   │       ├── common.hpp              # 글로벌 포트 및 활성 설정 공통 헤더
│   │       ├── platform.hpp            # OS 독립적 소켓 라이브러리 브릿지
│   │       └── util.hpp/cpp            # 유닉스 시간 및 포맷 변환 공용 유틸
│   ├── data/                           # 피스처 및 TBL 적재기
│   │   ├── fixture/
│   │   │   ├── fixture_store.hpp/cpp   # responses 파일 로드 및 Protobuf 조립 캐싱
│   │   │   └── offline_data.hpp/cpp    # 정적 내장 바이너리 파일 입출력 제어
│   │   └── tbl/
│   │       └── tbl_store.hpp/cpp       # 게임 사양 메타데이터 JSON 로드 및 검색
│   ├── game/                           # 실제 게임 사양 도메인 및 변이 로직
│   │   ├── catalog/
│   │   │   └── game_catalog.hpp/cpp    # 가차 영웅, 장비 아이템 데이터 조회 헬퍼
│   │   ├── endpoints/
│   │   │   ├── auto_hunt_policy.hpp/cpp# 자동 방치형 보상 계산 및 수령 정책
│   │   │   ├── dynamic_endpoint_dispatcher.hpp/cpp # 상태 변이 요청 분기 디스패처
│   │   │   ├── endpoint_mutation_service.hpp/cpp   # 소환, 상점, 우편, 출석 상태 변경 처리
│   │   │   └── gacha_template_data.hpp/cpp # 가차 시뮬레이션 기본 영웅 풀 템플릿
│   │   └── protocol/
│   │       ├── payloads.hpp/cpp        # 게임 프로토콜별 바이너리 페이로드 조립기
│   │       └── protobuf.hpp/cpp        # Protobuf 와이어 기반 키-값 추출 유틸
│   ├── network/                        # 네트워크 계층
│   │   ├── http/
│   │   │   └── http.hpp/cpp            # 가벼운 TCP 소켓 기반 수동 HTTP 핸들러
│   │   ├── proxy/
│   │   │   └── proxy.hpp/cpp           # CURL API 포워딩 기반 리버스 프록시 클라이언트
│   │   └── websocket/
│   │       ├── websocket.hpp/cpp       # 웹소켓 프레임 마스킹 복호화 및 통신 루프
│   │       └── ws_session.hpp/cpp      # 카카오 JSON-RPC 세션 및 실시간 채팅 Replay
│   ├── orm/                            # sqlite_orm 바인딩 레이어
│   │   ├── schema.hpp                  # sqlite_orm 기반 테이블 구조 스키마 매핑
│   │   ├── storage.hpp/cpp             # 데이터베이스 초기 정비 및 계정 파일 시드 복제
│   │   └── userinfo_builder.hpp/cpp    # UserInfo 파일 구조 해석 및 동기화 처리
│   ├── platform/                       # 호스트 OS 제어 및 진단 모듈
│   │   └── adb/
│   │       ├── adb_runner.hpp/cpp      # adb 서브프로세스 셸 명령 자동 실행기
│   │       └── logcat_process.hpp/cpp  # 기기 Logcat 분석 및 실시간 SSE 연동
│   └── web/                            # 관리 UI 어드민 프런트엔드
│       ├── index.html                  # 대시보드 레이아웃 UI 메인 HTML
│       ├── style.css & input.css       # 메인 레이아웃 스타일시트
│       └── app.js                      # REST API 연동 웹 클라이언트 스크립트
```


---

## 4. 라이프사이클 및 데이터 흐름

### 4.1 로그인 및 계정 초기화 흐름
1.  게임 실행 시 카카오 SDK가 활성화되어 `/v2/app`, `/service/v3/agreement/getForLogin` 등으로 인증 서버에 접근합니다.
2.  인증 서버는 미리 약속된 가짜 Access Token(`zat`)과 IDP 정보를 발행하여 클라이언트의 로그인 검증 단계를 통과시킵니다.
3.  플레이어가 로그인(`/Login`)하면 계정 저장소에서 플레이어 정보를 가져와 활성화 상태를 확인하고, 신규 계정인 경우 `UserInfo` 데이터를 리드하여 가짜 응답을 전달하거나 DB 상태를 리셋하여 초기화합니다.

### 4.2 게임 요청 및 동적 상태 처리 흐름
1.  게임 내에서 상점 구매, 소환, 스테이지 클리어 등의 트랜잭션이 일어나면 암호화된 바이너리 Protobuf 요청이 전달됩니다.
2.  `crypto.cpp`에서 대칭키를 활용해 암호화된 게임 요청 패킷을 복호화하고, `protobuf.cpp`에서 메시지 필드 데이터를 구조화하여 추출합니다.
3.  `dynamic_endpoint_dispatcher.cpp`에서 요청 경로를 대조하여 상태 저장이 필요한 동적 엔드포인트인 경우 `endpoint_mutation_service.cpp`로 위임합니다.
4.  변이 서비스는 요청 필드 값을 기반으로 SQLite 계정 데이터베이스의 해당 테이블(아이템, 영웅, 재화 등)에 변경 사항을 반영(Insert/Update)합니다.
5.  상태 갱신 후, 최신 데이터베이스 값과 `tbl` 정보 및 템플릿 정보를 취합하여 클라이언트 규격에 맞는 직렬화된 Protobuf 응답 봉투를 빌드하여 암호화 전송합니다.
