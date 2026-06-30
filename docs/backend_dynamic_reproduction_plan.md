# 백엔드 동적 재현 구현 계획

## 목적

이 저장소는 안드로이드 공유 라이브러리 구현이 아니라 순수 피시 Fixture 서버다. 서버는 덤프된 응답을 재생하고, 에뮬레이터 런타임에서 수집한 실제 요청·응답, 프로토 구조, 계정 데이터베이스, TBL JSON을 결합해 에버소울 오프라인 서버 응답을 동적으로 재현한다.

## 구현 원칙

- 상태 변경 엔드포인트는 고정 fixture보다 먼저 동적 백엔드에서 처리한다.
- fixture JSON은 초기 상태, 캡처 근거, 후순위 폴백 자료로만 사용한다.
- 요청 해석은 `src/game/protocol/protobuf.*` 공용 유틸과 `ProtocolBuffers/`, `schema/` 근거를 따른다.
- 상태 변경은 `AccountDatabase`에 영속 저장하고, 응답은 변경된 상태에서 새로 조립한다.
- 보상, 작업, 영혼, 아이템, 재화 계산은 가능한 경우 `tbl_json` 행을 근거로 한다.
- TBL이 존재하지 않는 영역은 실제 캡처 fixture payload에서 먼저 값을 읽고, 중앙 정책 모듈의 fallback을 사용한다.
- 타입, 정책, 템플릿, 변이 로직은 라우터나 함수 내부에 중복 작성하지 않는다.

## 도메인 구조

소스는 `src/메인도메인/서브도메인/이름` 구조를 따른다.

- `src/server/app/`: 서버 수신 루프와 HTTP 라우터.
- `src/account/api/`: 라우터와 게임 도메인이 호출하는 계정 API.
- `src/account/state/`: SQLite 계정 상태 저장소와 활성 DB 관리자.
- `src/account/profile/`: 계정 프로필 선택과 `UserInfo` 재구성.
- `src/game/endpoints/`: 게임 API 디스패치, 변이 서비스, endpoint 정책·템플릿.
- `src/game/protocol/`: protobuf wire 유틸, 게임 payload, 응답 봉투.
- `src/game/catalog/`: 게임 카탈로그 조회.
- `src/data/fixture/`: JSON fixture와 오프라인 데이터 적재.
- `src/data/tbl/`: TBL JSON 적재, 조회, 검증.
- `src/network/http/`, `src/network/proxy/`, `src/network/websocket/`: 통신 경계.
- `src/platform/adb/`: ADB 실행과 logcat 프로세스 관리.
- `src/core/runtime/`, `src/core/encoding/`, `src/core/logging/`: 공용 런타임, 인코딩, 로그.
- `src/config/ini/`: 로컬 설정 저장.
- `src/orm/`: sqlite_orm 기반 보조 저장소.
- `src/web/`: 관리 UI 정적 자산.

## 현재 백엔드 기반

- `router.*`는 HTTP 요청 분기, fixture 폴백, proxy 경계만 담당한다.
- `dynamic_endpoint_dispatcher.*`는 상태 변경 게임 엔드포인트의 request payload 파싱과 계정 API 호출을 중앙화한다.
- `endpoint_mutation_service.*`는 계정 DB 변경과 응답 protobuf 조립을 담당한다.
- `auto_hunt_policy.*`는 AutoHunt 보상 정책을 중앙화하고, 실제 `AutoHuntOpen` fixture payload 필드 3, 4, 5를 우선 사용한다.
- `gacha_template_data.*`는 가챠 fallback·튜토리얼 영혼 템플릿을 중앙화한다.
- `catalog_endpoint_payloads.*`는 빈 fixture로 남아 있던 카탈로그성 응답 중 HAR와 TBL 연결이 확인된 응답을 동적으로 조립한다.
- `account_database.*`는 계정 상태 테이블과 CRUD를 담당한다.
- `account_db.*`는 외부 도메인에서 사용하는 계정 상태 변경 API 경계다.
- `tbl_store.*`는 TBL 적재, `no` 인덱스, fixture 참조 검증을 담당한다.

## HAR·TBL 증거 반영

- `EventStoryInfo`: `research/cdp.cloud.unity3d.com_2026_06_10_09_18_58.har`에서 응답 payload 321바이트, story 32개를 확인했다. 구현은 `EventInfo`의 preview 이벤트를 `EventStory.story_act`로 연결하고, `StoryInfo.act`별 최대 `episode`를 `lastStoryNo`로 산출한다.
- `SignatureList`: `research/cdp.cloud.unity3d.com_2026_06_11_11_14_13.har`에서 응답 payload 176바이트, itemSignature 16개를 확인했다. 구현은 계정 DB의 보유 영혼을 `Signature.hero_sno`, `SignatureGrade`, `SignatureLevel`과 연결해 현재 계정 기준으로 생성한다.
- `CashShopList`: HAR에서 요청 `no=172`가 `501,502,503,511`, 요청 `no=173`이 `310,320`을 반환하는 것을 확인했다. 구현은 이 요청 번호를 각각 `CashShopItem.shop_no=500`, `shop_no=300`으로 연결하고, 다른 요청은 TBL의 직접 shop group과 `CashShop.shop_no`를 사용한다.
- `HeroEquipPresetInfoList`: `research/cdp.cloud.unity3d.com_2026_06_10_09_18_58.har`에서 `slotCount=1`, `presetSlot.name="yyy"` 응답을 확인했고, 같은 세션의 `HeroEquipPresetSave` fixture에서 동일한 `presetName`과 영웅 장비 목록을 확인했다. 구현은 TBL이 아닌 계정 상태 영역으로 분리해 프리셋 슬롯과 장비 항목을 SQLite에 저장하고 `InfoList`, `List`, `Save`, `Apply`를 같은 DB 상태에서 조립한다.
- `EventPickupGachaSelect`: HAR에서 `group=2`와 `gachaNo=5105/5110/5115` 요청은 `EventPickupSelect` TBL에 존재하고 empty 응답이었다. `group=4`, `gachaNo=5416` 요청은 로컬 TBL에는 없지만 실제 HAR에서 5바이트 echo 응답을 확인했다. 구현은 TBL 유효 선택은 저장 후 empty, HAR echo 확인 선택은 저장 후 echo로 응답한다.
- `BuffList`: HAR에서 payload 377바이트, buff 30개를 확인했지만 content/account 상태별 버프 조합 규칙이 아직 분리되지 않았다. TBL 전체 나열은 실제 응답이 아니므로 동적 구현 대상에서 보류한다.
- `IllustList`: HAR와 full fixture의 문자열 비트셋은 확인됐지만 `Illust` TBL 행 나열 구조가 아니다. 비트셋 인덱스 규칙이 확정되기 전까지 빈 동적 응답으로 가리지 않고 fixture 폴백을 사용한다.

## 동적 구현 대상

- 작업 시작·완료: 작업 번호, 영혼 배치, 시작·종료 시각, 스트레스, 작업 경험치, 보상 반영.
- 소환: 소모 재화, 마일리지, 획득 영혼, 자동 분해 상태 반영.
- 아이템 사용: 사용 수량 차감, 선택 상자 보상, 재화 보상 반영.
- 장비 프리셋: 프리셋 슬롯 이름과 영웅별 장비 슬롯을 저장하고, 조회·적용 시 계정 DB의 장비 슬롯 상태와 응답을 함께 갱신.
- 상점 구매: 구매 수량, 누적 구매량, 재화 차감, 아이템 증가 반영.
- 출석, 우편, 친구 하트, 업적, 과제 보상: 일일 수령 상태와 재화·아이템 반영.
- AutoHunt: 수령 가능 보상 계산, 수령 시 재화 반영, 수령 시각 갱신.

## 구현 순서

1. 엔드포인트가 고정 fixture에 가려지지 않도록 라우터 우선순위를 유지한다.
2. 요청 필드는 공용 protobuf 유틸로만 해석한다.
3. endpoint별 상태 변경은 `EndpointMutationService`에 추가한다.
4. 상태 저장이 필요한 값은 `AccountDatabase` 테이블이나 meta에 저장한다.
5. 응답은 계정 DB 최신 상태와 TBL·fixture 근거값으로 새로 만든다.
6. 새 정책·템플릿·타입은 도메인 모듈로 분리하고 CMake에 명시적으로 연결한다.

## 검증 기준

- 응답의 참조 번호는 TBL 또는 실제 fixture payload 근거와 일치해야 한다.
- 변이 이후 계정 DB와 응답 protobuf가 같은 상태를 표현해야 한다.
- 라우터 내부에 endpoint별 계산 로직을 추가하지 않는다.
- 함수 내부 인라인 타입, 중복 정책 상수, 임시 구현, 가짜 코드, 반환값 무시 회피 문법을 만들지 않는다.
- 검증은 정적 분석, TBL·fixture 대조, `g++ -fsyntax-only`, `git diff --check`로 수행한다.
- TS/TSX가 추가된 범위가 있으면 타입체크를 수행한다.

## 남은 확장 기준

- 새 엔드포인트는 `dynamic_endpoint_dispatcher.*`에 라우팅하고 실제 변경은 `EndpointMutationService` 또는 별도 도메인 서비스에 둔다.
- TBL 테이블이 추가되면 정책 fallback보다 TBL 조회를 우선하도록 `tbl_store.*` 접근 함수를 확장한다.
- 런타임 캡처 JSON이 추가되면 fixture 폴백을 갱신하기 전에 DB 상태와 protobuf 응답의 차이를 먼저 검증한다.
