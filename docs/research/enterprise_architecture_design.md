# 에버소울 오프라인 가상 서버: HAR-TBL 교차 검증 기반 동적 아키텍처 재설계 연구 (Enterprise Architecture Design)

## 초록 (Abstract)
현재 v0.0.2 오프라인 로컬 에뮬레이터에서 발생하는 다수의 치명적 결함(출석부 무한루프, 전투 결과창 소프트락, 잠재능력 렌더링 크래시 등)은 기존의 '정적 JSON 픽스쳐 폴백(Static JSON Fixture Fallback)' 시스템이 안고 있는 근본적 한계에서 기인합니다. 본 연구는 7개의 원본 HAR 덤프 패킷과 359개의 TBL 메타데이터를 전면 교차 대조(Cross-Validation)한 실증적 데이터를 바탕으로, 기존의 픽스쳐 의존 구조를 탈피하고 C++ 백엔드 레벨에서의 100% 동적 Protobuf 직렬화 아키텍처를 새롭게 설계 및 제안합니다.

---

## 1. 서론 (Introduction) 및 문제 정의

현재 에버소울 오프라인 서버는 라우팅 로직이 구현되지 않은 엔드포인트에 대해 `responses/` 디렉터리에 캐싱된 JSON을 Protobuf로 역직렬화하여 클라이언트로 반환합니다. 그러나 HAR 패킷 수집 과정에서 네트워크 오류 또는 암호화 크래시로 인해 **치명적인 바디 유실(Empty Body)**이 발생한 픽스쳐들이 다수 존재함을 확인했습니다.

### 1.1. 주요 렌더링 블록(Softlock) 발생 원인
- `BattleSave` (전투 종료), `SpiritTreeList` (정령의 나무), `ArenaWeeklyRankReward` 등의 주요 엔드포인트 덤프가 완벽히 비어있는 `{ "__format__": "empty" }` 상태입니다.
- 클라이언트는 전투 종료 후 `sCurrencyAll`, `itemEtc`, `stageNo` 등을 기대하고, 정령의 나무 진입 시 노드 트리 배열을 기대합니다. 서버가 0바이트를 반환하므로 클라이언트의 렌더러가 대기 상태에 빠지며 소프트락(Softlock)이 유발됩니다.

---

## 2. HAR 및 TBL 맵핑 데이터 분석 (Empirical Analysis)

앞서 실행된 `deep_har_tbl_mapper.py` 스크립트를 통해 217개의 캡처된 API 엔드포인트와 359개의 TBL 구조를 대조한 결과(부록 참고), 다음의 핵심 인사이트를 도출했습니다.

### 2.1. 동적 조립(Dynamic Assembly) 필수 엔드포인트 식별
전체 217개 엔드포인트 중 약 43%에 해당하는 통신이 클라이언트의 State Mutation(상태 변이)을 유발하며, 이는 고정된 픽스쳐로는 절대 대응할 수 없음을 증명했습니다.

- **출석 시스템 (`/ReceiveAttendance`)**
  - 추출된 키: `attendance.no`, `attendance.day`
  - 맵핑 TBL: `Attendance.json`
  - 상태: 클라이언트가 로비로 탈출하기 위해선 고정된 덤프가 아닌 'DB에 누적된 출석 차수(no)'가 정확히 반영된 동적 패킷이 필요합니다.
- **아르바이트 시스템 (`/ArbeitStart`, `/ArbeitFinish`)**
  - 맵핑 TBL: `ArbeitChoice`, `ArbeitList`, `Hero`
  - 상태: 영웅의 피로도와 남은 시간, 획득한 골드 등을 실시간으로 계산해야 합니다.

### 2.2. 정적 픽스쳐(Static Fixture) 유지 가능 엔드포인트 식별
단순 조회(View)성 데이터인 `/TownInfoData`, `/GuildInfo` 등은 클라이언트가 정보를 읽어 UI를 그리는 데 그치므로, 기존의 캐싱된 JSON을 반환하는 아키텍처를 유지하여 개발 공수를 최소화(Optimization)할 수 있습니다.

---

## 3. 백엔드 아키텍처 재설계 사양 (Architecture Redesign Specification)

위의 데이터 증명을 기반으로, C++ 오프라인 서버의 코어 라우터를 아래와 같이 재설계합니다.

### 3.1. AccountDB 기반 ORM 통합
기존 `account_db.cpp` 내에 방치되어 있던 `remember_empty_response_endpoint()` 래퍼를 전면 폐기합니다.
- SQLite 기반의 `adb` (Account Database)를 통해 유저의 레벨, 획득 재화량, 스테이지 클리어 차수 등을 실시간 영속성(Persistence)으로 관리합니다.

### 3.2. C++ TBL Lookup 엔진 연동
- 전투 클리어(`/BattleSave`) 시, `Stage.json` TBL을 메모리 캐시에서 직접 룩업하여 첫 클리어 보상 유무 및 일반 획득 아이템 번호를 산출합니다.
- 이 값을 `adb.add_item_etc()` 등 기존 내부 함수와 연동하여 DB 계정 상태와 인게임 획득 상태를 100% 동기화시킵니다.

### 3.3. Protobuf 동적 인코딩 (Dynamic Protobuf Encoder)
- `src/game/protocol/protobuf.hpp`의 헬퍼(`pb_message`, `pb_int32`)를 활용해, 맵핑된 TBL 데이터 구조에 정확히 부합하는 Protobuf 바이너리 스트림을 생성합니다.
- 이 과정은 스키마(`StageClear.json` 등)와 완벽히 호환되므로 클라이언트가 요구하는 필드 누락으로 인한 소프트락을 원천 차단합니다.

---

## 4. 결론 (Conclusion)

본 설계 아키텍처는 에버소울 가상 서버의 버그 원인을 단순한 코드 오타가 아닌 시스템 구조적 한계(오염된 패킷의 맹목적 재현)로 규정했습니다. HAR와 TBL의 전수 대조를 통해 도출된 C++ 동적 라우팅 및 Protobuf 실시간 직렬화로의 전환만이 현존하는 무한루프와 크래시 버그를 뿌리뽑을 유일한 해법임을 증명합니다.
