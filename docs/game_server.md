# 게임 서버 기능 명세서 (game_server.md)

이 문서는 에버소울 오프라인 PC 서버의 핵심인 프로토콜 버퍼(Protobuf) 기반 암복호화 처리 및 SQLite 데이터베이스 동적 상태 변이 엔진에 대하여 상세히 기술합니다.

---

## 1. 게임 프로토콜 및 암복호화 레이어
에버소울 게임 클라이언트와 메인 게임 서버(기본 포트: 9991)는 바이너리 프로토콜 버퍼(Protobuf) 메시지를 대칭키 방식으로 암호화하여 통신합니다.

```mermaid
graph LR
    Client[클라이언트] -->|1. 암호화 패킷 송신| Recv[서버 수신 TCP Accept]
    Recv -->|2. 패킷 복호화 crypto.cpp| Decrypt[평문 Protobuf 바이너리]
    Decrypt -->|3. 메시지 분석 protobuf.cpp| Routing[동적 / 정적 디스패처 분기]
    Routing -->|4. 응답 조립 payloads.cpp| ResponseProto[평문 응답 Protobuf]
    ResponseProto -->|5. 패킷 암호화 crypto.cpp| Encrypt[암호화 패킷]
    Encrypt -->|6. 클라이언트 수신| Client
```

### 1.1 암복호화 및 서명 모듈 (`crypto.cpp`)
*   **패킷 흐름**: 게임 클라이언트와의 바이너리 통신은 4바이트 시퀀스 번호와 4바이트 페이로드 크기 헤더로 포장된 바이트 스트림을 기반으로 합니다.
*   **암호화 영역의 한계 및 우회**:
    *   본 PC 가상 서버의 `crypto.cpp` 모듈은 실제 게임 패킷 자체의 대칭키 AES 암복호화를 수행하지 않습니다.
    *   대신, 가상 서버는 이미 덤프되거나 캡처된 responses 폴더 하위의 원시 바이너리 픽스처 데이터를 파일 시스템에서 다이렉트로 로드하여 봉투 구조(`payloads.cpp` 내의 `game_binary_response`)에 담아 그대로 회신하는 **바이패스/리플레이** 방식으로 프로토콜 레이어를 모킹합니다.
    *   `crypto.cpp`가 담당하는 핵심 역할은 카카오/지니 SDK 인증에 필요한 SHA-256, HMAC-SHA256, Base64 연산 및 인포데스크 헤더 검증 서명(`infodesk_sig`)을 계산하는 보안 연산에 한정됩니다.
*   **보안 우회 (LIAPP 디바이스 인증 모킹)**: 게임 진입 직전 모바일 안티치트 솔루션인 LIAPP(락인컴퍼니)의 기기 인증 API 호출(`/sbaa479o` 등)이 강제됩니다. 오프라인 상태에서는 해당 외부 검증 서버에 닿지 않아 구동이 불가능하므로, 고정된 세션 서명값(fdbd8509 계열)을 미리 하드코딩하여 완벽하게 리플레이 응답을 반환합니다.

### 1.2 Protobuf 와이어 처리 (`protobuf.cpp` 및 `payloads.cpp`)
*   **동적 해석 및 패키징**: 서버는 캡처된 정적 JSON 파일을 프로토콜 명세에 맞추어 동적으로 인코딩하는 리플렉션 기술(`json_encoder.cpp`)과 직접 원시 와이어 데이터에 Protobuf 메시지 태그(필드 번호)를 기록 및 추출하는 바이너리 직렬화 헬퍼(`pb_int32`, `pb_string`, `pb_message` 등)를 조합하여 사용합니다.
*   **유연성**: 컴파일 시점에 특정 Protobuf 클래스가 정적으로 바인딩되지 않아도, 런타임에 유연하게 가짜 패킷의 필드 값을 변조하여 조립 및 주입할 수 있습니다.

---

## 2. 동적 엔드포인트 디스패칭 및 상태 변이 구조

### 2.1 동적 라우팅 제어 (`dynamic_endpoint_dispatcher.cpp`)
*   사용자의 상태 변경(재화 소비, 영웅 레벨업, 스테이지 클리어 등)을 수반하는 핵심 API 엔드포인트 요청들은 단순 정적 JSON 리플레이로 처리할 경우 클라이언트 측 시뮬레이션 흐름과 모순이 발생하여 게임 진행이 멈추거나 고착될 수 있습니다.
*   라우터(`router.cpp`)는 `dispatch_dynamic_game_endpoint`를 호출해 동적 처리가 할당된 전용 서비스로 분기시킵니다.

### 2.2 영속화 저장소 레이어 (SQLite ORM)
*   **데이터베이스 구조 (`account_database.cpp`, `storage.cpp`)**: 가벼우면서 강력한 구조의 `sqlite_orm` C++ 라이브러리를 바인딩하여 활성 계정의 데이터를 관리합니다.
*   **테이블 명세**:
    *   `UserInfo`: 플레이어 레벨, 현재 장착 포메이션, 클리어한 최근 스토리 및 스테이지 상태.
    *   `Currency`: 골드, 크리스탈, 소환 티켓, 하트 등 게임 재화의 총합.
    *   `Hero`: 플레이어가 보유한 영웅의 고유 인덱스, 레벨, 등급(Grade), 초월 스탯.
    *   `Item`: 장비 및 소모품 아이템 개수.
    *   `Dungeon` & `Mail`: 진행 중인 던전 진행률 및 우편함 정보.

### 2.3 UserInfo 동적 조립 파이프라인 (`userinfo_builder.cpp`)
*   **재구성 메커니즘**:
    *   클라이언트가 계정 프로필 상태 정보(/UserInfo)를 요청하면, 서버는 정적 파일인 `responses/UserInfo.json`(또는 responses_newbie) 베이스 파일과 그에 대응하는 프로토콜 형태 정의 파일인 `schema/UserInfo.json`을 메모리에 파싱해 적재합니다.
    *   그 후 SQLite 데이터베이스로부터 조회한 실제 유저 데이터(`heroes()`, `currencies()`, `item_etcs()`, `stages()`, `tutorials()` 등)를 가공하여, 베이스 JSON 트리 구조의 각 해당 필드 노드(`user`, `currency`, `hero`, `stage`, `formation` 등)에 실시간으로 Overwrite합니다.
    *   최종 업데이트된 JSON 객체를 `json_encoder.cpp`의 동적 리플렉터로 보내 바이너리 포맷 Protobuf 데이터로 정밀 인코딩하여 완벽한 동적 응답을 반환합니다.
*   **핵심 상태 변이 서비스 구현 (`endpoint_mutation_service.cpp`)**:
    *   **스테이지/스토리 클리어 (`StageClear`, `StoryClear`)**:
        *   요청 패킷의 클리어 스테이지 번호를 추출하여 데이터베이스의 `UserInfo`에 갱신 및 기록합니다.
        *   그에 상응하는 스테이지 첫 클리어 보상 및 방치형 자동 사냥 오픈 규칙을 동기화하여 고착(예: 1-2 무한 루프 반복 오류) 현상을 원천 차단합니다.
    *   **영웅 소환 (`GachaHero`, `GachaPremium`)**:
        *   소모 재화(크리스탈 등)를 계정 재화 테이블에서 차감합니다.
        *   `tbl_heroes.json` 메타데이터와 대조하여 유효한 캐릭터 인덱스를 생성하고 보유 영웅 테이블에 인서트합니다.
        *   누적 마일리지를 데이터베이스에 반영하여 갱신된 소환 결과를 반환합니다.
    *   **상점 및 아이템 소비 (`ShopItemBuy`, `ItemUse`)**:
        *   상점 카탈로그 정보(`game_catalog.cpp`)를 참조하여 상품 비용을 차감하고 플레이어 인벤토리에 해당 아이템 개수를 더합니다.
        *   가방 내 아이템 사용 시, 해당 수량을 정상 차감하고 획득하는 내부 결과물을 유저 프로필 상태로 영속 동기화합니다.
    *   **재화 동기화 훅**: 동적 데이터베이스 변경이 발생하면 변경 사항을 로컬 파일(`UserInfo.json`)과 동기화하는 백그라운드 스레드 함수(`sync_db_currencies_to_fixture`)가 실행되어 데이터의 정합성을 항상 100%로 보장합니다.

---

## 3. 소스 코드 클래스 및 함수 설계 명세

게임 프로토콜 처리 및 SQLite 영속 데이터 처리를 담당하는 핵심 모듈 설계 구조입니다.

### 3.1 암호화 및 와이어 파서 설계
*   **서명 연산 (`src/core/encoding/crypto.cpp`)**:
    *   `std::string infodesk_sig(std::string_view body)`: JSON 인포데스크 명세서를 해독한 특수 키 `"qvjNK+TlAJ"`로 HMAC-SHA256 해시를 산출하고 Base64로 인코딩한 뒤 헤더로 전달합니다.
*   **Protobuf 분석 (`src/game/protocol/protobuf.cpp`)**:
    *   `int32_t pb_get_int32(const std::string &buffer, int field_number, int fallback)`: 직렬화된 Protobuf 평문 스트림에서 대상 필드 태그 번호를 추적하여 정수형 데이터를 직접 파싱 및 리턴합니다.
    *   `std::string pb_get_string(const std::string &buffer, int field_number, const std::string &fallback)`: 와이어에서 문자열 필드를 읽어 정합성 검증을 거친 후 안전하게 문자열로 변환합니다.

### 3.2 동적 상태 제어 및 변이 서비스 설계
*   **동적 디스패처 (`src/game/endpoints/dynamic_endpoint_dispatcher.cpp`)**:
    *   `std::optional<HttpResponse> dispatch_dynamic_game_endpoint(uint64_t id, const HttpRequest &req, void(*sync_hook)())`:
        *   **역할**: 들어온 게임 요청 패킷의 헤더 주소를 분석하여 `/GachaHero`, `/StageClear`, `/ItemUse` 등 영속 변경이 필수적인 경로인 경우 데이터베이스 트랜잭션 함수를 실행하고 최종 결과 패킷을 리턴합니다.
*   **UserInfo 빌더 (`src/orm/userinfo_builder.cpp`)**:
    *   `std::string build_user_info_payload(const std::string &data_dir)`:
        *   **역할**: `/UserInfo` 데이터 요청 시 활성 프로필에 따라 스키마 및 원본 픽스처 파일을 파싱하여 SQLite 영속 상태를 동적 업데이트하고 리플렉션 변환을 거쳐 Protobuf 페이로드를 생성합니다.
*   **변이 엔진 (`src/game/endpoints/endpoint_mutation_service.cpp`)**:
    *   `std::string db::stage_clear(int32_t stage_no)`:
        *   **역할**: 클라이언트의 최근 스테이지 진행 상황을 영속 데이터베이스의 UserInfo 테이블에 기록하고, 해당 진행도에 상응하는 방치형 사냥 보상 비율 상승 및 가차 해금 상태 구조를 반영한 직렬화 응답 페이로드를 생성합니다.
    *   `std::string db::gacha_hero(int32_t gacha_id, int32_t count)`:
        *   **역할**: 플레이어의 영웅 템플릿과 등급 데이터를 참고하여 소환 확률 분포에 따라 신규 보유 캐릭터 구조를 인서트하고 마일리지 등급 상태를 가산 처리하여 반환합니다.
*   **SQLite 저장소 및 스키마 매핑 (`src/orm/schema.hpp` 및 `storage.cpp`)**:
    *   `sqlite_orm` 템플릿 선언을 활용하여 C++ 구조체(UserInfo, Hero, Item 등)를 로컬 관계형 데이터베이스 테이블 구조와 1:1로 매핑하여 로직을 구성합니다.
    *   `bool ensure_ready(const std::string &data_dir)`: 가상 서버 실행 및 모드 변경 시 해당 계정의 SQLite 데이터베이스 스키마 무결성을 보장하고 초기화 과정을 보증합니다.

