# 웹 UI 관리 서버 기능 명세서 (web_ui_server.md)

이 문서는 에버소울 오프라인 PC 서버의 프론트엔드 대시보드 웹 UI 및 REST API 명세와 실시간 로그 스트리밍 구현에 대해 상세히 기술합니다.

---

## 1. 개요 및 웹 UI 디자인
본 프로젝트는 개발자 및 사용자가 에뮬레이터나 실기기의 상태를 제어하고, 오프라인 데이터를 실시간으로 모니터링 및 편집할 수 있도록 풍부한 반응형 대시보드 웹 UI를 자체 제공합니다.
*   **리소스 서빙**: `/web` 및 `/web/*` 경로로 접근할 때 `serve_web_static` 모듈을 통해 `src/web/` 하위의 HTML, CSS(Vanilla CSS 중심), JS 정적 자산을 효율적으로 탐색하고 반환합니다.
*   **어드민 허브**: 재화 조작, 영웅 수량 변경, 실시간 로그 모니터링, ADB 연결 설정을 한 화면에서 수행할 수 있습니다.

---

## 2. 핵심 REST API (/web/api/*) 명세

| 엔드포인트 | HTTP 메서드 | 역할 및 반환 포맷 |
| :--- | :---: | :--- |
| `/web/api/status` | GET | 서버의 포트, 프록시 구동 여부, 로드된 피스처 개수 및 서버 시작 시각 반환 |
| `/web/api/health` | GET | 외부 게임 서버 연결, 로컬 피스처 데이터 무결성, ADB 실행 환경 헬스체크 결과 조회 |
| `/web/api/tbl/status` | GET | 메모리에 로드된 Eversoul 메타 데이터 테이블(tbl) 및 영웅 테이블 정보 수량 출력 |
| `/web/api/tbl/validate` | GET | 특정 API 피스처 JSON 내용에 대하여 스키마 및 누락 데이터 구조 적합성 검증 |
| `/web/api/fixtures` | GET | responses/ 내의 전체 가짜 응답 피스처 파일 리스트 및 개별 바이트 크기 반환 |
| `/web/api/gamedata/userinfo`| GET / POST | 활성 프로필 계정의 닉네임, 유저 레벨 및 골드/크리스탈 대표 재화 조회 및 갱신 |
| `/web/api/gamedata/currencies`| GET / POST / DELETE | 전체 상세 재화 리스트의 조회, 금액 추가/변동 및 재화 삭제 제어 |
| `/web/api/gamedata/heroes` | GET / POST / DELETE | 보유 영웅의 레벨, 초월성(Grade), 인덱스 조회 및 추가/삭제 트랜잭션 수행 |
| `/web/api/gamedata/items` | GET / POST / DELETE | 가방 내 소모품, 장비 등의 아이템 번호 및 보유 수량 조회 및 가감 처리 |
| `/web/api/accounts` | GET | 현재 사용 가능한 계정 프로필(responses / responses_newbie) 목록 조회 |
| `/web/api/accounts/{id}/select`| POST | 활성 플레이어 프로필을 교체하고 데이터베이스 및 ORM 스토어 재생성 유도 |

---

## 3. 실시간 로그 스트리밍 구현 (Server-Sent Events)
실시간 분석 페이지에서 서버의 트랜잭션 상황과 안드로이드 Logcat 내용을 모니터링하기 위하여 **SSE(Server-Sent Events) 프로토콜**을 구현했습니다.

*   **게임 API 요청 SSE (`/web/api/logs/server/stream`)**:
    *   커넥션이 맺어지는 즉시 `sse_log::subscribe_server`를 호출하여 관찰자(Observer) 패턴 구독을 엽니다.
    *   에버소울 게임 서버로 오가는 API의 요청(REQUEST) 및 응답(RESPONSE) 정보가 수신될 때마다 JSON 포맷으로 소켓 버퍼에 기록하여 실시간 스트리밍합니다.
*   **기기 Logcat SSE (`/web/api/logs/adb/stream`)**:
    *   연결 감지 시 백그라운드로 `adb logcat` 서브프로세스를 동작시킵니다.
    *   게임 앱(`com.kakaogames.eversoul`) 태그 필터링이 적용된 로그 라인을 가로채 웹 화면으로 즉시 이벤트 전송하여, 별도의 기기 콘솔을 열지 않아도 웹 브라우저 상에서 앱 오류 크래시를 원격 진단할 수 있도록 지원합니다.

---

## 4. 소스 코드 클래스 및 함수 설계 명세

어드민 제어 및 실시간 관찰자 기능을 구현하는 핵심 소스 코드 설계 구조입니다.

### 4.1 관련 소스 파일 구성
*   **`src/server/app/router.cpp`**: `/web/*` 경로의 정적 파일 탐색을 처리하고, 대시보드 조작 REST API를 실시간 라우팅 분기하는 파일.
*   **`src/core/logging/sse_log.cpp`**: 클라이언트가 요청하는 실시간 게임 트랜잭션 및 모바일 기기 출력 아웃풋 스트림 관찰자 구독 관리자.
*   **`src/web/index.html` & `app.js`**: 순수 바닐라 스크립트 기반 웹 UI 클라이언트 인터페이스.

### 4.2 주요 핵심 함수 설계
*   `HttpResponse serve_web_static(const HttpRequest &req)`:
    *   **역할**: 요청된 경로에서 `/web` 접두사를 제어하고 `offline_data().read(key)`를 실행하여 빌드에 내장된 웹 UI 구성 자산들을 알맞은 MIME 유형 헤더와 함께 소켓으로 회신합니다.
*   `HttpResponse handle_web_api(uint64_t id, int fd, const HttpRequest &req)`:
    *   **역할**: 웹 API 엔드포인트의 중심 게이트웨이 역할을 수행하며, 가차 테이블 조회, 로그 파일 수신, 재화 가감 등의 명령을 분석해 담당 계정 저장소 API로 중계합니다.
*   `size_t sse_log::subscribe_server(std::function<bool(const std::string&)> callback)`:
    *   **역할**: 서버 표준 입출력에 기재되는 게임 API 트랜잭션 기록이 감지되었을 때 호출할 실시간 소켓 라이브 이벤트 콜백 수집기를 등록합니다.
*   `size_t sse_log::subscribe_adb(std::function<bool(const std::string&)> callback)`:
    *   **역할**: 백그라운드로 작동하는 기기 Logcat 프로세스가 반환하는 안드로이드 운영체제 출력 정보의 관찰용 실시간 콜백 수집기를 등록합니다.

