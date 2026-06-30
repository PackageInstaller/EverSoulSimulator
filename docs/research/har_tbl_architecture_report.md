# HAR 및 TBL 전면 대조: 엄격한 10단계 6하원칙 아키텍처 보고서

분석된 TBL JSON 총 갯수: 359
분석된 HAR 엔드포인트 총 갯수: 217

---

## 엔드포인트: `/AchievementAllReceive`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/AchievementAllReceive`
- **응답**: HTTP 200
- **바디**: 1822 bytes (바이너리 스트림)
- **데이터**: achievement, allCurrency, behavior, channelNo, cnt, contribution, currency, customEmblem, days, dt, ... 등 총 41개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: AchievementAllReceive 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Achievement.json, Behavior.json, Item.json, Level.json, Skill.json, Task.json, Thumbnail.json
- **TBL JSON 라인수**: Achievement.json (22,699줄), Behavior.json (964줄), Item.json (80,876줄), Level.json (9,004줄), Skill.json (188,636줄), Task.json (211줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ AchievementAllReceive`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 41개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/AchievementList`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/AchievementList`
- **응답**: HTTP 200
- **바디**: 7 bytes (바이너리 스트림)
- **데이터**: achievement, behavior, value... 등 총 3개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: AchievementList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Achievement.json, Behavior.json
- **TBL JSON 라인수**: Achievement.json (22,699줄), Behavior.json (964줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ AchievementList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 3개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ArbeitFinish`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ArbeitFinish`
- **응답**: HTTP 200
- **바디**: 7726 bytes (바이너리 스트림)
- **데이터**: allCurrency, arbeitChoiceNo, arbeitEndTimestamp, arbeitExp, arbeitList, arbeitNo, arbeitReward, arbe... 등 총 33개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ArbeitFinish 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: ArbeitChoice.json, ArbeitList.json, Hero.json, Item.json, Level.json
- **TBL JSON 라인수**: ArbeitChoice.json (3,637줄), ArbeitList.json (11,620줄), Hero.json (49,015줄), Item.json (80,876줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ArbeitFinish`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 33개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ArbeitList`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/ArbeitList`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ArbeitList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: ArbeitList.json
- **TBL JSON 라인수**: ArbeitList.json (11,620줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/ArbeitList` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/ArbeitOption`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ArbeitOption`
- **응답**: HTTP 200
- **바디**: 4 bytes (바이너리 스트림)
- **데이터**: option1, option2... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ArbeitOption`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ArbeitStart`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ArbeitStart`
- **응답**: HTTP 200
- **바디**: 1746 bytes (바이너리 스트림)
- **데이터**: arbeitChoiceNo, arbeitEndTimestamp, arbeitExp, arbeitList, arbeitNo, arbeitStartTimestamp, costumeIt... 등 총 22개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ArbeitStart 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: ArbeitChoice.json, ArbeitList.json, Hero.json, Item.json, Level.json
- **TBL JSON 라인수**: ArbeitChoice.json (3,637줄), ArbeitList.json (11,620줄), Hero.json (49,015줄), Item.json (80,876줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ArbeitStart`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 22개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ArenaEnter`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ArenaEnter`
- **응답**: HTTP 200
- **바디**: 9 bytes (바이너리 스트림)
- **데이터**: dailyContent, doubleGateNormalTicketBuyCount, raceSno, teamarenaCnt... 등 총 4개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ArenaEnter`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 4개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ArenaFormationInfo`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ArenaFormationInfo`
- **응답**: HTTP 200
- **바디**: 17769 bytes (바이너리 스트림)
- **데이터**: arenaFormation, arenaFormationHeroInfo, arenaType, buff, buffNo, buffType, contentType, costumeItemN... 등 총 36개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ArenaFormationInfo 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Formation.json, Hero.json, HeroOption.json, Item.json, Level.json, Signature.json
- **TBL JSON 라인수**: Formation.json (324줄), Hero.json (49,015줄), HeroOption.json (4,804줄), Item.json (80,876줄), Level.json (9,004줄), Signature.json (4,866줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ArenaFormationInfo`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 36개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ArenaMatchingList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ArenaMatchingList`
- **응답**: HTTP 200
- **바디**: 311 bytes (바이너리 스트림)
- **데이터**: firstTitle, nickName, power, rank, rankList, score, secondTitle, thumbnail, thumbnailFrame, thumbnai... 등 총 12개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ArenaMatchingList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: ArenaMatch.json, Rank.json, Thumbnail.json
- **TBL JSON 라인수**: ArenaMatch.json (964줄), Rank.json (88줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ArenaMatchingList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 12개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ArenaMyRank`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/ArenaMyRank`
- **응답**: HTTP 200
- **바디**: 4 bytes (바이너리 스트림)
- **데이터**: myChampionsArena, myNormalArena... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ArenaMyRank 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Rank.json
- **TBL JSON 라인수**: Rank.json (88줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ArenaMyRank`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ArenaRankList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ArenaRankList`
- **응답**: HTTP 200
- **바디**: 3459 bytes (바이너리 스트림)
- **데이터**: arenaOpenNotificationDt, championsArenaOpenNotificationDt, firstTitle, myPower, myRank, myScore, nic... 등 총 17개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ArenaRankList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Rank.json, Thumbnail.json
- **TBL JSON 라인수**: Rank.json (88줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ArenaRankList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 17개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ArenaRankListV2`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ArenaRankListV2`
- **응답**: HTTP 200
- **바디**: 2415 bytes (바이너리 스트림)
- **데이터**: arenaOpenNotificationDt, championsArenaOpenNotificationDt, firstTitle, myPower, myRank, nickName, po... 등 총 16개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ArenaRankListV2 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Rank.json, Thumbnail.json
- **TBL JSON 라인수**: Rank.json (88줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ArenaRankListV2`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 16개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ArenaResultSave`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ArenaResultSave`
- **응답**: HTTP 200
- **바디**: 740 bytes (바이너리 스트림)
- **데이터**: allCurrency, bName, battleRecord, battleStatus, battletype, clientVersion, cnt, currency, dt, fileNa... 등 총 28개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ArenaResultSave 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, Rank.json, Thumbnail.json
- **TBL JSON 라인수**: Item.json (80,876줄), Rank.json (88줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ArenaResultSave`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 28개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ArenaTargetDetail`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ArenaTargetDetail`
- **응답**: HTTP 200
- **바디**: 9840 bytes (바이너리 스트림)
- **데이터**: arenaFormation, arenaFormationHeroInfo, buff, buffNo, buffType, contentType, costumeItemNo, exp, for... 등 총 33개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ArenaTargetDetail 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Formation.json, Hero.json, HeroOption.json, Item.json, Level.json, Signature.json
- **TBL JSON 라인수**: Formation.json (324줄), Hero.json (49,015줄), HeroOption.json (4,804줄), Item.json (80,876줄), Level.json (9,004줄), Signature.json (4,866줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ArenaTargetDetail`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 33개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ArenaWaitRewardReceive`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ArenaWaitRewardReceive`
- **응답**: HTTP 200
- **바디**: 330 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, type, value, waitRewardStartDt... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ArenaWaitRewardReceive`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ArenaWeeklyRankReward`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ArenaWeeklyRankReward`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ArenaWeeklyRankReward 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Rank.json
- **TBL JSON 라인수**: Rank.json (88줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/ArenaWeeklyRankReward` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/ArkEnhanceCore`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ArkEnhanceCore`
- **응답**: HTTP 200
- **바디**: 10 bytes (바이너리 스트림)
- **데이터**: coreLevel, coreType01, coreType02, currency... 등 총 4개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ArkEnhanceCore 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: ArkEnhance.json, Level.json
- **TBL JSON 라인수**: ArkEnhance.json (112,116줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ArkEnhanceCore`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 4개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ArkOverClockInfo`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ArkOverClockInfo`
- **응답**: HTTP 200
- **바디**: 5 bytes (바이너리 스트림)
- **데이터**: overClockLevel... 등 총 1개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ArkOverClockInfo 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: ArkOverClock.json, Level.json
- **TBL JSON 라인수**: ArkOverClock.json (3,492줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ArkOverClockInfo`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 1개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/AutoHuntOpen`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/AutoHuntOpen`
- **응답**: HTTP 200
- **바디**: 211 bytes (바이너리 스트림)
- **데이터**: allAutoHuntCurrency, autoHuntCurrency, type... 등 총 3개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ AutoHuntOpen`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 3개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/AutoHuntQuickReceive`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/AutoHuntQuickReceive`
- **응답**: HTTP 200
- **바디**: 336 bytes (바이너리 스트림)
- **데이터**: ahQuickCnt, allCurrency, arenaCnt, currency, dailyContent, raceSno, teamarenaCnt, townCoin, type, va... 등 총 10개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ AutoHuntQuickReceive`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 10개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/AutoHuntReceive`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/AutoHuntReceive`
- **응답**: HTTP 200
- **바디**: 681 bytes (바이너리 스트림)
- **데이터**: allAutoHuntCurrency, allCurrency, autoHunt, autoHuntCurrency, autoHuntItemBox, currency, itemNo, lab... 등 총 12개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: AutoHuntReceive 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, ItemBox.json, Stage.json
- **TBL JSON 라인수**: Item.json (80,876줄), ItemBox.json (35,365줄), Stage.json (305,528줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ AutoHuntReceive`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 12개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/AutoRelease`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/AutoRelease`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/AutoRelease` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/BattleConfigSave`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/BattleConfigSave`
- **응답**: HTTP 200
- **바디**: 10 bytes (바이너리 스트림)
- **데이터**: actionActive, actionUltimate, battleAutoActive, battleAutoUltimate, speed... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ BattleConfigSave`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/BattleSave`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/BattleSave`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/BattleSave` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/BattleStart`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/BattleStart`
- **응답**: HTTP 200
- **바디**: 2 bytes (바이너리 스트림)
- **데이터**: result... 등 총 1개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ BattleStart`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 1개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/BestScore`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/BestScore`
- **응답**: HTTP 200
- **바디**: 10 bytes (바이너리 스트림)
- **데이터**: category, score... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ BestScore`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/BuffList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/BuffList`
- **응답**: HTTP 200
- **바디**: 12987 bytes (바이너리 스트림)
- **데이터**: buff, buffNo, buffType, contentType, value... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ BuffList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/CashGrowInfo`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/CashGrowInfo`
- **응답**: HTTP 200
- **바디**: 20 bytes (바이너리 스트림)
- **데이터**: cashGrow, shopItemNo... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: CashGrowInfo 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, Shop.json
- **TBL JSON 라인수**: Item.json (80,876줄), Shop.json (3,444줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ CashGrowInfo`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/CashShopList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/CashShopList`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: CashShopList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: CashShop.json, Shop.json
- **TBL JSON 라인수**: CashShop.json (2,674줄), Shop.json (3,444줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/CashShopList` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/CashShopUserAbleCashItemIdAllList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/CashShopUserAbleCashItemIdAllList`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: CashShopUserAbleCashItemIdAllList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: CashShop.json, Item.json, Shop.json
- **TBL JSON 라인수**: CashShop.json (2,674줄), Item.json (80,876줄), Shop.json (3,444줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/CashShopUserAbleCashItemIdAllList` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/CategoryMail`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/CategoryMail`
- **응답**: HTTP 200
- **바디**: 1569 bytes (바이너리 스트림)
- **데이터**: context, dt, expireDt, idx, isItemReceived, isRead, mail, reward, sender, subject, type... 등 총 11개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: CategoryMail 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json
- **TBL JSON 라인수**: Item.json (80,876줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ CategoryMail`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 11개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ChangeArenaFormation`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ChangeArenaFormation`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ChangeArenaFormation 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Formation.json
- **TBL JSON 라인수**: Formation.json (324줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/ChangeArenaFormation` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/ChangeLobbyBackground`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ChangeLobbyBackground`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ChangeLobbyBackground 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Background.json
- **TBL JSON 라인수**: Background.json (274줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/ChangeLobbyBackground` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/ChangeThumbnail`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ChangeThumbnail`
- **응답**: HTTP 200
- **바디**: 45 bytes (바이너리 스트림)
- **데이터**: thumbnail, thumbnailFrame, useCustom... 등 총 3개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ChangeThumbnail 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Thumbnail.json
- **TBL JSON 라인수**: Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ChangeThumbnail`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 3개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ContentClearDeckSave`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ContentClearDeckSave`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/ContentClearDeckSave` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/ContentLimitSave`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ContentLimitSave`
- **응답**: HTTP 200
- **바디**: 155 bytes (바이너리 스트림)
- **데이터**: no... 등 총 1개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ContentLimitSave`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 1개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DJSoulInfoList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DJSoulInfoList`
- **응답**: HTTP 200
- **바디**: 134 bytes (바이너리 스트림)
- **데이터**: info, level, maxScore, receiveRewardNo, stageNo... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DJSoulInfoList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Level.json, Stage.json
- **TBL JSON 라인수**: Level.json (9,004줄), Stage.json (305,528줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DJSoulInfoList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DJSoulTotalRanking`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DJSoulTotalRanking`
- **응답**: HTTP 200
- **바디**: 8824 bytes (바이너리 스트림)
- **데이터**: firstTitle, friendRank, myFriendRank, myRatingScore, myScore, myTotalRank, nickName, rank, ratingSco... 등 총 17개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DJSoulTotalRanking 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Rank.json, Thumbnail.json
- **TBL JSON 라인수**: Rank.json (88줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DJSoulTotalRanking`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 17개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DailyResetList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DailyResetList`
- **응답**: HTTP 200
- **바디**: 2767 bytes (바이너리 스트림)
- **데이터**: additionalInfo, ahQuickCnt, allCurrency, arenaCnt, buffNo, cashDailyN, conditionInfo, currency, dail... 등 총 53개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DailyResetList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json, Hero.json, Level.json, Stage.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄), Hero.json (49,015줄), Level.json (9,004줄), Stage.json (305,528줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DailyResetList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 53개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DailyTalk`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DailyTalk`
- **응답**: HTTP 200
- **바디**: 22 bytes (바이너리 스트림)
- **데이터**: heroNo, lovePoint, reputation, talkDt, talkNo... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DailyTalk 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, Talk.json
- **TBL JSON 라인수**: Hero.json (49,015줄), Talk.json (5,313,514줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DailyTalk`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DestinyInfoList`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/DestinyInfoList`
- **응답**: HTTP 200
- **바디**: 9 bytes (바이너리 스트림)
- **데이터**: tripRemainCount, tripResetDt... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DestinyInfoList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DestinyPickUpList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DestinyPickUpList`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/DestinyPickUpList` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/DestinyStoryEpisodeClear`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DestinyStoryEpisodeClear`
- **응답**: HTTP 200
- **바디**: 275 bytes (바이너리 스트림)
- **데이터**: affinityPoint, allCurrency, currency, destinyStoryAffinityPoint, destinyStoryEpisode, heroNo, lastRe... 등 총 11개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DestinyStoryEpisodeClear 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json
- **TBL JSON 라인수**: Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DestinyStoryEpisodeClear`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 11개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DestinyStoryEpisodeStart`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DestinyStoryEpisodeStart`
- **응답**: HTTP 200
- **바디**: 12 bytes (바이너리 스트림)
- **데이터**: destinyStoryEpisode, heroNo, state, storyNo... 등 총 4개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DestinyStoryEpisodeStart 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json
- **TBL JSON 라인수**: Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DestinyStoryEpisodeStart`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 4개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DoubleGateSweep`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DoubleGateSweep`
- **응답**: HTTP 200
- **바디**: 338 bytes (바이너리 스트림)
- **데이터**: allCurrency, cnt, currency, difficulty, doubleGate, itemChangeAmount, itemNo, stageType, sweepDiffic... 등 총 11개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DoubleGateSweep 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, Stage.json
- **TBL JSON 라인수**: Item.json (80,876줄), Stage.json (305,528줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DoubleGateSweep`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 11개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DungeonBattle`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DungeonBattle`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DungeonBattle 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/DungeonBattle` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/DungeonChestRewardCheck`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DungeonChestRewardCheck`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DungeonChestRewardCheck 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/DungeonChestRewardCheck` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/DungeonClear`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DungeonClear`
- **응답**: HTTP 200
- **바디**: 412 bytes (바이너리 스트림)
- **데이터**: additionalInfo, conditionInfo, difficulty, dungeon, dungeonLevel, dungeonNo, dungeonPerfectClearReco... 등 총 22개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DungeonClear 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json, Hero.json, Level.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄), Hero.json (49,015줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DungeonClear`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 22개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DungeonEnter`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DungeonEnter`
- **응답**: HTTP 200
- **바디**: 54 bytes (바이너리 스트림)
- **데이터**: difficulty, dungeon, dungeonNo, heroInfo, id, isEnter, missionCnt, missionNo, seed, x, z... 등 총 11개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DungeonEnter 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json, Hero.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄), Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DungeonEnter`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 11개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DungeonInfoUpdate`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DungeonInfoUpdate`
- **응답**: HTTP 200
- **바디**: 394 bytes (바이너리 스트림)
- **데이터**: additionalInfo, conditionInfo, difficulty, dungeon, dungeonNo, heroInfo, id, isClear, isEnter, isFir... 등 총 18개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DungeonInfoUpdate 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json, Hero.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄), Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DungeonInfoUpdate`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 18개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DungeonLevelScaling`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/DungeonLevelScaling`
- **응답**: HTTP 200
- **바디**: 2 bytes (바이너리 스트림)
- **데이터**: scalingLevel... 등 총 1개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DungeonLevelScaling 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json, Level.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DungeonLevelScaling`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 1개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DungeonMode`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DungeonMode`
- **응답**: HTTP 200
- **바디**: 5 bytes (바이너리 스트림)
- **데이터**: difficulty, dungeonNo... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DungeonMode 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DungeonMode`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DungeonMonsterRewardCheck`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DungeonMonsterRewardCheck`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DungeonMonsterRewardCheck 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/DungeonMonsterRewardCheck` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/DungeonObjectReward`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DungeonObjectReward`
- **응답**: HTTP 200
- **바디**: 305 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, dungeonNo, dungeonReward, reward, rewardNo, type, value... 등 총 8개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DungeonObjectReward 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DungeonObjectReward`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 8개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DungeonOpenCheck`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/DungeonOpenCheck`
- **응답**: HTTP 200
- **바디**: 4 bytes (바이너리 스트림)
- **데이터**: isLabyrinthOpen, isRotationDungeonOpen... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DungeonOpenCheck 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DungeonOpenCheck`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DungeonPerfectClear`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DungeonPerfectClear`
- **응답**: HTTP 200
- **바디**: 566 bytes (바이너리 스트림)
- **데이터**: additionalInfo, conditionInfo, difficulty, dungeon, dungeonLevel, dungeonNo, heroInfo, id, isClear, ... 등 총 22개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DungeonPerfectClear 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json, Hero.json, Level.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄), Hero.json (49,015줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DungeonPerfectClear`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 22개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DungeonRestart`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DungeonRestart`
- **응답**: HTTP 200
- **바디**: 119 bytes (바이너리 스트림)
- **데이터**: difficulty, dungeon, dungeonNo, id, isClear, isFirstClear, mapInfo, missionCnt, missionNo, seed, x, ... 등 총 12개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DungeonRestart 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DungeonRestart`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 12개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DungeonSave`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DungeonSave`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DungeonSave 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/DungeonSave` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/DungeonShopItemBuy`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DungeonShopItemBuy`
- **응답**: HTTP 200
- **바디**: 287 bytes (바이너리 스트림)
- **데이터**: allCurrency, cnt, currency, itemCnt, itemEtc, itemNo, no, type, value... 등 총 9개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DungeonShopItemBuy 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json, Item.json, Shop.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄), Item.json (80,876줄), Shop.json (3,444줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DungeonShopItemBuy`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 9개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/DungeonShopOpen`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/DungeonShopOpen`
- **응답**: HTTP 200
- **바디**: 78 bytes (바이너리 스트림)
- **데이터**: dungeonShopItem, itemNo, no, payAmount, payItemNo, saleRate, sellCnt, slotNo... 등 총 8개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: DungeonShopOpen 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json, Item.json, Shop.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄), Item.json (80,876줄), Shop.json (3,444줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ DungeonShopOpen`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 8개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/EdenUnionInfo`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/EdenUnionInfo`
- **응답**: HTTP 200
- **바디**: 7 bytes (바이너리 스트림)
- **데이터**: day, rewardState, unionGroup... 등 총 3개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: EdenUnionInfo 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: EdenUnion.json
- **TBL JSON 라인수**: EdenUnion.json (132줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ EdenUnionInfo`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 3개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/EdenUnionRankList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/EdenUnionRankList`
- **응답**: HTTP 200
- **바디**: 8771 bytes (바이너리 스트림)
- **데이터**: firstTitle, maxLevel, myRank, nickName, rank, rankList, secondTitle, thumbnail, thumbnailFrame, thum... 등 총 13개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: EdenUnionRankList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: EdenUnion.json, EdenUnionRank.json, Level.json, Rank.json, Thumbnail.json
- **TBL JSON 라인수**: EdenUnion.json (132줄), EdenUnionRank.json (1,500줄), Level.json (9,004줄), Rank.json (88줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ EdenUnionRankList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 13개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/EventActiveList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/EventActiveList`
- **응답**: HTTP 200
- **바디**: 31 bytes (바이너리 스트림)
- **데이터**: delayOffTs, endTs, eventActive, eventNumber, eventType, group, startTs, userType... 등 총 8개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ EventActiveList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 8개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/EventDailyPassList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/EventDailyPassList`
- **응답**: HTTP 200
- **바디**: 18 bytes (바이너리 스트림)
- **데이터**: eventGroup, eventNumber, lastReceivedDate, lastReceivedNo, passInfo, startDate... 등 총 6개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: EventDailyPassList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: EventDailyPass.json
- **TBL JSON 라인수**: EventDailyPass.json (10줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ EventDailyPassList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 6개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/EventDailyPassReceive`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/EventDailyPassReceive`
- **응답**: HTTP 200
- **바디**: 34 bytes (바이너리 스트림)
- **데이터**: cnt, currency, eventGroup, eventNumber, itemChangeAmount, itemEtc, itemNo, lastReceivedDate, lastRec... 등 총 11개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: EventDailyPassReceive 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: EventDailyPass.json, Item.json
- **TBL JSON 라인수**: EventDailyPass.json (10줄), Item.json (80,876줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ EventDailyPassReceive`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 11개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/EventPickupGachaSelect`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/EventPickupGachaSelect`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: EventPickupGachaSelect 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Gacha.json
- **TBL JSON 라인수**: Gacha.json (4,127줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/EventPickupGachaSelect` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/EventQuestAllReceive`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/EventQuestAllReceive`
- **응답**: HTTP 200
- **바디**: 417 bytes (바이너리 스트림)
- **데이터**: allCurrency, behavior, currency, dt, event, eventNumber, eventResult, eventType, group, isReceive, n... 등 총 14개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: EventQuestAllReceive 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Behavior.json, EventQuest.json
- **TBL JSON 라인수**: Behavior.json (964줄), EventQuest.json (8,176줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ EventQuestAllReceive`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 14개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/EventQuestList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/EventQuestList`
- **응답**: HTTP 200
- **바디**: 1588 bytes (바이너리 스트림)
- **데이터**: behavior, dt, event, eventNumber, eventResult, eventType, group, isReceive, no, subNo, value... 등 총 11개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: EventQuestList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Behavior.json, EventQuest.json
- **TBL JSON 라인수**: Behavior.json (964줄), EventQuest.json (8,176줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ EventQuestList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 11개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/EventStoryInfo`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/EventStoryInfo`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: EventStoryInfo 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: EventStory.json, StoryInfo.json
- **TBL JSON 라인수**: EventStory.json (814줄), StoryInfo.json (48,754줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/EventStoryInfo` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/EverTalkList`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/EverTalkList`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: EverTalkList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: EverTalk.json, Talk.json
- **TBL JSON 라인수**: EverTalk.json (26,668줄), Talk.json (5,313,514줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/EverTalkList` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/EverTalkSetGroupNo`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/EverTalkSetGroupNo`
- **응답**: HTTP 200
- **바디**: 15 bytes (바이너리 스트림)
- **데이터**: groupNo, heroNo, recordedDt... 등 총 3개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: EverTalkSetGroupNo 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: EverTalk.json, Hero.json, Talk.json
- **TBL JSON 라인수**: EverTalk.json (26,668줄), Hero.json (49,015줄), Talk.json (5,313,514줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ EverTalkSetGroupNo`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 3개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/FormationSave`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/FormationSave`
- **응답**: HTTP 200
- **바디**: 48 bytes (바이너리 스트림)
- **데이터**: formationType, heroidx, kind, no, results... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: FormationSave 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Formation.json, Hero.json
- **TBL JSON 라인수**: Formation.json (324줄), Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ FormationSave`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/FriendHeartReceiveAll`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/FriendHeartReceiveAll`
- **응답**: HTTP 200
- **바디**: 505 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, heartReceiveAll, heartReceiveCnt, heartReceiveFlag, requestUserIdx, responseU... 등 총 9개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ FriendHeartReceiveAll`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 9개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/FriendHeartSendAll`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/FriendHeartSendAll`
- **응답**: HTTP 200
- **바디**: 1768 bytes (바이너리 스트림)
- **데이터**: heartSendAll, heartSendCnt, heartSendFlag, requestUserIdx, responseUserIdx... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ FriendHeartSendAll`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/FriendRecommendList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/FriendRecommendList`
- **응답**: HTTP 200
- **바디**: 2129 bytes (바이너리 스트림)
- **데이터**: firstTitle, friendRecommend, id, lastLoginDt, level, logoutDt, nickName, power, secondTitle, thumbna... 등 총 14개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: FriendRecommendList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Level.json, Thumbnail.json
- **TBL JSON 라인수**: Level.json (9,004줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ FriendRecommendList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 14개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/FriendRentHero`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/FriendRentHero`
- **응답**: HTTP 200
- **바디**: 13321 bytes (바이너리 스트림)
- **데이터**: buff, buffNo, buffType, contentType, costumeItemNo, exp, grade, gradeSno, groupNo, heroIdx, heroNo, ... 등 총 30개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: FriendRentHero 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, HeroOption.json, Item.json, Level.json, Signature.json
- **TBL JSON 라인수**: Hero.json (49,015줄), HeroOption.json (4,804줄), Item.json (80,876줄), Level.json (9,004줄), Signature.json (4,866줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ FriendRentHero`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 30개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/FriendRequest`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/FriendRequest`
- **응답**: HTTP 200
- **바디**: 42 bytes (바이너리 스트림)
- **데이터**: friendRequest_... 등 총 1개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ FriendRequest`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 1개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/FriendTotalList`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/FriendTotalList`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/FriendTotalList` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/GachaChangeTribe`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GachaChangeTribe`
- **응답**: HTTP 200
- **바디**: 338 bytes (바이너리 스트림)
- **데이터**: ahQuickCnt, allCurrency, arenaCnt, currency, daliyContent, raceSno, teamarenaCnt, townCoin, type, va... 등 총 10개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GachaChangeTribe 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Gacha.json
- **TBL JSON 라인수**: Gacha.json (4,127줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GachaChangeTribe`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 10개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GachaHero`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GachaHero`
- **응답**: HTTP 200
- **바디**: 377 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, gacha, gachaMileage, gradeSno, heroGachaAutoRelease, heroGachaCeilCnt, heroGa... 등 총 21개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GachaHero 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Gacha.json, GachaMileage.json, Hero.json, Level.json, Signature.json, Tutorial.json
- **TBL JSON 라인수**: Gacha.json (4,127줄), GachaMileage.json (956줄), Hero.json (49,015줄), Level.json (9,004줄), Signature.json (4,866줄), Tutorial.json (8,211줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GachaHero`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 21개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GachaHeroTutorial`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GachaHeroTutorial`
- **응답**: HTTP 200
- **바디**: 144 bytes (바이너리 스트림)
- **데이터**: gradeSno, heroNo, heros, level, raceSno... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GachaHeroTutorial 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Gacha.json, Hero.json, Level.json, Tutorial.json
- **TBL JSON 라인수**: Gacha.json (4,127줄), Hero.json (49,015줄), Level.json (9,004줄), Tutorial.json (8,211줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GachaHeroTutorial`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GachaHeroTutorialFix`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GachaHeroTutorialFix`
- **응답**: HTTP 200
- **바디**: 366 bytes (바이너리 스트림)
- **데이터**: gacha, gradeSno, heroGachaTutorialFixed, heroNo, heros, idx, level, maxGradeSno, objetNo, raceSno, r... 등 총 11개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GachaHeroTutorialFix 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Gacha.json, Hero.json, Level.json, Tutorial.json
- **TBL JSON 라인수**: Gacha.json (4,127줄), Hero.json (49,015줄), Level.json (9,004줄), Tutorial.json (8,211줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GachaHeroTutorialFix`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 11개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GachaInfo`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/GachaInfo`
- **응답**: HTTP 200
- **바디**: 66 bytes (바이너리 스트림)
- **데이터**: ableCnt, expiredDt, gacha, gachaLimit, gachaNo... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GachaInfo 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Gacha.json
- **TBL JSON 라인수**: Gacha.json (4,127줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GachaInfo`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GachaMileageDelete`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/GachaMileageDelete`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GachaMileageDelete 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Gacha.json, GachaMileage.json
- **TBL JSON 라인수**: Gacha.json (4,127줄), GachaMileage.json (956줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/GachaMileageDelete` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/GachaMileageUse`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GachaMileageUse`
- **응답**: HTTP 200
- **바디**: 20 bytes (바이너리 스트림)
- **데이터**: afterPoint, cnt, currency, gachaMileage, itemEtc, itemNo, mileageNo, rewardedPoint... 등 총 8개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GachaMileageUse 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Gacha.json, GachaMileage.json, Item.json
- **TBL JSON 라인수**: Gacha.json (4,127줄), GachaMileage.json (956줄), Item.json (80,876줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GachaMileageUse`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 8개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GachaPremium`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GachaPremium`
- **응답**: HTTP 200
- **바디**: 353 bytes (바이너리 스트림)
- **데이터**: allCurrency, cnt, currency, gacha, gachaPremiumPickInfo, heroGachaAutoRelease, heroGachaCeilCnt, her... 등 총 16개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GachaPremium 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Gacha.json, Hero.json, Item.json, Signature.json, Tutorial.json
- **TBL JSON 라인수**: Gacha.json (4,127줄), Hero.json (49,015줄), Item.json (80,876줄), Signature.json (4,866줄), Tutorial.json (8,211줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GachaPremium`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 16개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GachaPremiumHeroList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GachaPremiumHeroList`
- **응답**: HTTP 200
- **바디**: 171 bytes (바이너리 스트림)
- **데이터**: heroNo... 등 총 1개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GachaPremiumHeroList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Gacha.json, Hero.json
- **TBL JSON 라인수**: Gacha.json (4,127줄), Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GachaPremiumHeroList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 1개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GachaSignature`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GachaSignature`
- **응답**: HTTP 200
- **바디**: 339 bytes (바이너리 스트림)
- **데이터**: allCurrency, cnt, currency, itemEtc, itemNo, rewardSignaturePieces, type, value... 등 총 8개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GachaSignature 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Gacha.json, Item.json, Signature.json
- **TBL JSON 라인수**: Gacha.json (4,127줄), Item.json (80,876줄), Signature.json (4,866줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GachaSignature`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 8개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GachaWishRegister`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GachaWishRegister`
- **응답**: HTTP 200
- **바디**: 61 bytes (바이너리 스트림)
- **데이터**: gachaType, gachaWish, slotNum, wishId... 등 총 4개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GachaWishRegister 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Gacha.json
- **TBL JSON 라인수**: Gacha.json (4,127줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GachaWishRegister`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 4개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GetContentClearDeck`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GetContentClearDeck`
- **응답**: HTTP 200
- **바디**: 652 bytes (바이너리 스트림)
- **데이터**: clearHero, contentClearDeckInfo, contentClearDecks, contentNo, formationType, gradeSno, heroNo, leve... 등 총 9개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GetContentClearDeck 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Formation.json, Hero.json, Level.json
- **TBL JSON 라인수**: Formation.json (324줄), Hero.json (49,015줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GetContentClearDeck`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 9개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GuideQuestList`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/GuideQuestList`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GuideQuestList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: GuideQuest.json, GuideQuestList.json
- **TBL JSON 라인수**: GuideQuest.json (34줄), GuideQuestList.json (967줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/GuideQuestList` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/GuideQuestRewardAllReceive`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GuideQuestRewardAllReceive`
- **응답**: HTTP 200
- **바디**: 280 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, receiveNoArr, type, value... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GuideQuestRewardAllReceive 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: GuideQuest.json
- **TBL JSON 라인수**: GuideQuest.json (34줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GuideQuestRewardAllReceive`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GuildInfo`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GuildInfo`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/GuildInfo` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/GuildJoinRequest`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GuildJoinRequest`
- **응답**: HTTP 200
- **바디**: 3451 bytes (바이너리 스트림)
- **데이터**: channelNo, cnt, contribution, customEmblem, dt, exp, firstTitle, grade, guild, guildIdx, guildMember... 등 총 32개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GuildJoinRequest 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Level.json, Skill.json, Thumbnail.json
- **TBL JSON 라인수**: Level.json (9,004줄), Skill.json (188,636줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GuildJoinRequest`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 32개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GuildJoinRequestList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GuildJoinRequestList`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/GuildJoinRequestList` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/GuildList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GuildList`
- **응답**: HTTP 200
- **바디**: 2782 bytes (바이너리 스트림)
- **데이터**: cnt, customEmblem, emblemNo, exp, guild, idx, introduction, limitLv, name, notice, skillLevel, skill... 등 총 12개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GuildList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Level.json, Skill.json
- **TBL JSON 라인수**: Level.json (9,004줄), Skill.json (188,636줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GuildList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 12개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GuildMemberList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GuildMemberList`
- **응답**: HTTP 200
- **바디**: 3322 bytes (바이너리 스트림)
- **데이터**: channelNo, contribution, dt, grade, guildIdx, guildMember, lastLoginDt, logoutDt, thumbnail, thumbna... 등 총 14개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GuildMemberList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Thumbnail.json
- **TBL JSON 라인수**: Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GuildMemberList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 14개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GuildRaidBattleResult`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GuildRaidBattleResult`
- **응답**: HTTP 200
- **바디**: 19 bytes (바이너리 스트림)
- **데이터**: bestScore, maxScore, score... 등 총 3개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GuildRaidBattleResult 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: GuildRaid.json
- **TBL JSON 라인수**: GuildRaid.json (84줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GuildRaidBattleResult`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 3개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GuildRaidBattleSkip`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GuildRaidBattleSkip`
- **응답**: HTTP 200
- **바디**: 13 bytes (바이너리 스트림)
- **데이터**: bestScore, maxScore... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GuildRaidBattleSkip 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: GuildRaid.json
- **TBL JSON 라인수**: GuildRaid.json (84줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GuildRaidBattleSkip`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GuildRaidInfo`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/GuildRaidInfo`
- **응답**: HTTP 200
- **바디**: 22 bytes (바이너리 스트림)
- **데이터**: guildRaidOpenNotificationDt, maxCnt, open, remainTs, scheduleId, seasonRewardState... 등 총 6개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GuildRaidInfo 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: GuildRaid.json
- **TBL JSON 라인수**: GuildRaid.json (84줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GuildRaidInfo`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 6개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GuildRaidMemberHistoryList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GuildRaidMemberHistoryList`
- **응답**: HTTP 200
- **바디**: 486 bytes (바이너리 스트림)
- **데이터**: guildRaidPlayMemberHistory, maxScore, nickName, otherGuildUserIdx, scheduleId, thumbnail, thumbnailF... 등 총 9개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GuildRaidMemberHistoryList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: GuildRaid.json, Thumbnail.json
- **TBL JSON 라인수**: GuildRaid.json (84줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GuildRaidMemberHistoryList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 9개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GuildRaidRanking`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GuildRaidRanking`
- **응답**: HTTP 200
- **바디**: 8829 bytes (바이너리 스트림)
- **데이터**: customEmblem, emblemNo, guildIdx, guildRaidRankGroup, myGuildRaidRankInfo, name, rank, scheduleId, s... 등 총 9개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GuildRaidRanking 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: GuildRaid.json, Rank.json
- **TBL JSON 라인수**: GuildRaid.json (84줄), Rank.json (88줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GuildRaidRanking`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 9개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GuildTargetInfo`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GuildTargetInfo`
- **응답**: HTTP 200
- **바디**: 4298 bytes (바이너리 스트림)
- **데이터**: channelNo, cnt, contribution, customEmblem, dt, exp, firstTitle, grade, guild, guildIdx, guildMember... 등 총 33개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: GuildTargetInfo 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Level.json, Skill.json, Thumbnail.json
- **TBL JSON 라인수**: Level.json (9,004줄), Skill.json (188,636줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ GuildTargetInfo`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 33개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/GuildTimeCheck`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/GuildTimeCheck`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/GuildTimeCheck` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/HeroCostumeEquip`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/HeroCostumeEquip`
- **응답**: HTTP 200
- **바디**: 59 bytes (바이너리 스트림)
- **데이터**: arbeitExp, costumeItemNo, giftDt, heroNo, heroRepuation, lastUpdateDt, maxGradeSno, maxLevelDt, obje... 등 총 14개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: HeroCostumeEquip 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, Item.json, Level.json
- **TBL JSON 라인수**: Hero.json (49,015줄), Item.json (80,876줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ HeroCostumeEquip`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 14개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/HeroEquipMulti`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/HeroEquipMulti`
- **응답**: HTTP 200
- **바디**: 26 bytes (바이너리 스트림)
- **데이터**: equip, heroEquipList, heroIdx, itemEquipId... 등 총 4개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: HeroEquipMulti 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, Item.json
- **TBL JSON 라인수**: Hero.json (49,015줄), Item.json (80,876줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ HeroEquipMulti`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 4개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/HeroEquipPresetApply`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/HeroEquipPresetApply`
- **응답**: HTTP 200
- **바디**: 1038 bytes (바이너리 스트림)
- **데이터**: equip, heroEquipAll, heroIdx, itemEquipId, presetSlot, slot... 등 총 6개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: HeroEquipPresetApply 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, Item.json
- **TBL JSON 라인수**: Hero.json (49,015줄), Item.json (80,876줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ HeroEquipPresetApply`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 6개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/HeroEquipPresetInfoList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/HeroEquipPresetInfoList`
- **응답**: HTTP 200
- **바디**: 9 bytes (바이너리 스트림)
- **데이터**: name, presetSlot, slotCount... 등 총 3개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: HeroEquipPresetInfoList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json
- **TBL JSON 라인수**: Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ HeroEquipPresetInfoList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 3개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/HeroEquipPresetSave`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/HeroEquipPresetSave`
- **응답**: HTTP 200
- **바디**: 1141 bytes (바이너리 스트림)
- **데이터**: heroIdx, itemEquipId, itemSlot, presetHero, presetName, slot... 등 총 6개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: HeroEquipPresetSave 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, Item.json
- **TBL JSON 라인수**: Hero.json (49,015줄), Item.json (80,876줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ HeroEquipPresetSave`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 6개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/HeroGift`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/HeroGift`
- **응답**: HTTP 200
- **바디**: 26 bytes (바이너리 스트림)
- **데이터**: cnt, currency, giftDt, heroNo, itemEtc, itemNo, lovePoint, reputation... 등 총 8개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: HeroGift 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, HeroGift.json, Item.json
- **TBL JSON 라인수**: Hero.json (49,015줄), HeroGift.json (526줄), Item.json (80,876줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ HeroGift`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 8개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/HeroLevelUp`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/HeroLevelUp`
- **응답**: HTTP 200
- **바디**: 276 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, levelUpFlag, type, value... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: HeroLevelUp 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, Level.json
- **TBL JSON 라인수**: Hero.json (49,015줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ HeroLevelUp`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/HeroPowerUpdate`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/HeroPowerUpdate`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: HeroPowerUpdate 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json
- **TBL JSON 라인수**: Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/HeroPowerUpdate` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/HeroRelease`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/HeroRelease`
- **응답**: HTTP 200
- **바디**: 480 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, deleteHeroIdxList, type, value... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: HeroRelease 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json
- **TBL JSON 라인수**: Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ HeroRelease`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/HeroReputationInfoAll`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/HeroReputationInfoAll`
- **응답**: HTTP 200
- **바디**: 5367 bytes (바이너리 스트림)
- **데이터**: arbeitExp, costumeItemNo, giftDt, heroNo, heroReputation, lastUpdateDt, maxGradeSno, maxLevelDt, obj... 등 총 15개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: HeroReputationInfoAll 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, Item.json, Level.json
- **TBL JSON 라인수**: Hero.json (49,015줄), Item.json (80,876줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ HeroReputationInfoAll`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 15개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/HeroUpgrade`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/HeroUpgrade`
- **응답**: HTTP 200
- **바디**: 424 bytes (바이너리 스트림)
- **데이터**: allCurrency, arbeitExp, currency, deleteHeroIdxList, gradeSno, heroNo, heroReputation, idx, lastUpda... 등 총 19개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: HeroUpgrade 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, HeroUpgrade.json, Level.json
- **TBL JSON 라인수**: Hero.json (49,015줄), HeroUpgrade.json (1,369줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ HeroUpgrade`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 19개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/IllustList`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/IllustList`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: IllustList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Illust.json
- **TBL JSON 라인수**: Illust.json (7,319줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/IllustList` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/ItemUse`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ItemUse`
- **응답**: HTTP 200
- **바디**: 598 bytes (바이너리 스트림)
- **데이터**: ahQuickCnt, allCurrency, arenaCnt, cashDailyN, cnt, currency, dailyContent, endYyyymmdd, itemEtc, it... 등 총 17개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ItemUse 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, ItemUse.json
- **TBL JSON 라인수**: Item.json (80,876줄), ItemUse.json (1,484줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ItemUse`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 17개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ItemUseAbleItems`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ItemUseAbleItems`
- **응답**: HTTP 200
- **바디**: 14 bytes (바이너리 스트림)
- **데이터**: elf, furry, human, itemUseAbleGachaGrade, itemUseAbleGachaTribe, rare, undead... 등 총 7개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ItemUseAbleItems 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Gacha.json, Item.json, ItemUse.json
- **TBL JSON 라인수**: Gacha.json (4,127줄), Item.json (80,876줄), ItemUse.json (1,484줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ItemUseAbleItems`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 7개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/LabyrinthClear`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/LabyrinthClear`
- **응답**: HTTP 200
- **바디**: 922 bytes (바이너리 스트림)
- **데이터**: additionalInfo, allCurrency, conditionInfo, currency, difficulty, dungeon, dungeonItem, dungeonLevel... 등 총 25개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: LabyrinthClear 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json, Hero.json, Item.json, Level.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄), Hero.json (49,015줄), Item.json (80,876줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ LabyrinthClear`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 25개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/LabyrinthHiddenChestReward`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/LabyrinthHiddenChestReward`
- **응답**: HTTP 200
- **바디**: 307 bytes (바이너리 스트림)
- **데이터**: allCurrency, cnt, currency, dungeonNo, dungeonReward, itemEtc, itemNo, labyrinthHiddenReward, reward... 등 총 11개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: LabyrinthHiddenChestReward 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json, Item.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄), Item.json (80,876줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ LabyrinthHiddenChestReward`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 11개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/LabyrinthHiddenMonsterReward`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/LabyrinthHiddenMonsterReward`
- **응답**: HTTP 200
- **바디**: 289 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, dungeonNo, dungeonReward, labyrinthHiddenReward, rewardNo, type, value... 등 총 8개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: LabyrinthHiddenMonsterReward 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ LabyrinthHiddenMonsterReward`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 8개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/LabyrinthInfo`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/LabyrinthInfo`
- **응답**: HTTP 200
- **바디**: 7 bytes (바이너리 스트림)
- **데이터**: labyrinthInfo_... 등 총 1개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ LabyrinthInfo`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 1개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/LabyrinthReward`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/LabyrinthReward`
- **응답**: HTTP 200
- **바디**: 1236 bytes (바이너리 스트림)
- **데이터**: additionalInfo, allCurrency, cnt, conditionInfo, currency, currentAdditionalInfo, currentLabyrinthNo... 등 총 35개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: LabyrinthReward 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json, Hero.json, Item.json, Level.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄), Hero.json (49,015줄), Item.json (80,876줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ LabyrinthReward`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 35개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/LabyrinthRewardList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/LabyrinthRewardList`
- **응답**: HTTP 200
- **바디**: 53 bytes (바이너리 스트림)
- **데이터**: cnt, itemNo, labyrinthItem... 등 총 3개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: LabyrinthRewardList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json
- **TBL JSON 라인수**: Item.json (80,876줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ LabyrinthRewardList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 3개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/LabyrinthSkip`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/LabyrinthSkip`
- **응답**: HTTP 200
- **바디**: 406 bytes (바이너리 스트림)
- **데이터**: allCurrency, cnt, currency, currentLabyrinthNo, difficulty, dungeon, dungeonNo, dungeonReward, id, i... 등 총 26개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: LabyrinthSkip 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json, Item.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄), Item.json (80,876줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ LabyrinthSkip`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 26개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/LabyrinthTempChestReward`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/LabyrinthTempChestReward`
- **응답**: HTTP 200
- **바디**: 25 bytes (바이너리 스트림)
- **데이터**: cnt, dungeonReward, itemNo, labyrinthItem, labyrinthTempReward, rewardNo, type... 등 총 7개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: LabyrinthTempChestReward 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json, Item.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄), Item.json (80,876줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ LabyrinthTempChestReward`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 7개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/LabyrinthTempMonsterReward`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/LabyrinthTempMonsterReward`
- **응답**: HTTP 200
- **바디**: 34 bytes (바이너리 스트림)
- **데이터**: cnt, dungeonNo, dungeonReward, itemNo, labyrinthItem, labyrinthTempReward, rewardNo, type... 등 총 8개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: LabyrinthTempMonsterReward 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json, Item.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄), Item.json (80,876줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ LabyrinthTempMonsterReward`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 8개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/LikeOtherUserAll`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/LikeOtherUserAll`
- **응답**: HTTP 200
- **바디**: 4693 bytes (바이너리 스트림)
- **데이터**: lastLoginDt, likeClick, nickName, otherUserInfoList, popularity, stageNo, thumbnail, thumbnailFrame,... 등 총 12개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: LikeOtherUserAll 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Level.json, Stage.json, Thumbnail.json, TownLevel.json
- **TBL JSON 라인수**: Level.json (9,004줄), Stage.json (305,528줄), Thumbnail.json (1,192줄), TownLevel.json (379줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ LikeOtherUserAll`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 12개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/LobbyRefresh`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/LobbyRefresh`
- **응답**: HTTP 200
- **바디**: 2032 bytes (바이너리 스트림)
- **데이터**: customEmblem, dot, dt, name, rankNo, rankRewardRedDot, releasedHeroList, seq, topGuildInfo... 등 총 9개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: LobbyRefresh 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, Rank.json
- **TBL JSON 라인수**: Hero.json (49,015줄), Rank.json (88줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ LobbyRefresh`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 9개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/Log`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/Log`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/Log` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/Login`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/Login`
- **응답**: HTTP 200
- **바디**: 19 bytes (바이너리 스트림)
- **데이터**: playerId, type... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ Login`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/Logout`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/Logout`
- **응답**: HTTP 200
- **바디**: 2 bytes (바이너리 스트림)
- **데이터**: success... 등 총 1개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ Logout`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 1개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/LostFoundEnd`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/LostFoundEnd`
- **응답**: HTTP 200
- **바디**: 40 bytes (바이너리 스트림)
- **데이터**: clearDt, heroNo, id, isFirst, keywordNo, lastNo, lostFound, lovePoint, reputation, state, tripKeywor... 등 총 11개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: LostFoundEnd 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, TripKeyword.json
- **TBL JSON 라인수**: Hero.json (49,015줄), TripKeyword.json (6,466줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ LostFoundEnd`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 11개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/LostFoundStart`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/LostFoundStart`
- **응답**: HTTP 200
- **바디**: 15 bytes (바이너리 스트림)
- **데이터**: heroNo, id, lastNo, lostFound, state... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: LostFoundStart 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json
- **TBL JSON 라인수**: Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ LostFoundStart`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/LostFoundWaitClear`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/LostFoundWaitClear`
- **응답**: HTTP 200
- **바디**: 15 bytes (바이너리 스트림)
- **데이터**: heroNo, id, lastNo, lostFound, state... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: LostFoundWaitClear 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json
- **TBL JSON 라인수**: Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ LostFoundWaitClear`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/MailItemAllReceive`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/MailItemAllReceive`
- **응답**: HTTP 200
- **바디**: 597 bytes (바이너리 스트림)
- **데이터**: allCurrency, context, currency, dt, expireDt, idx, isItemReceived, mail, reward, sender, subject, ty... 등 총 13개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: MailItemAllReceive 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json
- **TBL JSON 라인수**: Item.json (80,876줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ MailItemAllReceive`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 13개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/MailRedDot`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/MailRedDot`
- **응답**: HTTP 200
- **바디**: 2 bytes (바이너리 스트림)
- **데이터**: normalRedDot... 등 총 1개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ MailRedDot`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 1개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/MessageMailList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/MessageMailList`
- **응답**: HTTP 200
- **바디**: 1056 bytes (바이너리 스트림)
- **데이터**: isReceive, messageMail, no... 등 총 3개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: MessageMailList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: MessageMail.json
- **TBL JSON 라인수**: MessageMail.json (3,436줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ MessageMailList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 3개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/MissionPassList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/MissionPassList`
- **응답**: HTTP 200
- **바디**: 21 bytes (바이너리 스트림)
- **데이터**: expiredDt, missionPass, missionPassNo, point, rewardNo, rewardedPoint... 등 총 6개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ MissionPassList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 6개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/MissionPassRewardAll`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/MissionPassRewardAll`
- **응답**: HTTP 200
- **바디**: 30 bytes (바이너리 스트림)
- **데이터**: cnt, currency, expiredDt, itemEtc, itemNo, missionPass, missionPassNo, point, rewardNo, rewardedPoin... 등 총 10개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: MissionPassRewardAll 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json
- **TBL JSON 라인수**: Item.json (80,876줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ MissionPassRewardAll`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 10개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/MissionPassSelectRewardType`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/MissionPassSelectRewardType`
- **응답**: HTTP 200
- **바디**: 18 bytes (바이너리 스트림)
- **데이터**: expiredDt, missionPass, missionPassNo, point, rewardNo... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ MissionPassSelectRewardType`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/NewMailCnt`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/NewMailCnt`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/NewMailCnt` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/ObjetBuffList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ObjetBuffList`
- **응답**: HTTP 200
- **바디**: 2081 bytes (바이너리 스트림)
- **데이터**: buffNo, buildBuff, heroBuff, heroNo, objetNo, objetUid... 등 총 6개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ObjetBuffList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json
- **TBL JSON 라인수**: Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ObjetBuffList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 6개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/OriginTowerList`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/OriginTowerList`
- **응답**: HTTP 200
- **바디**: 2230 bytes (바이너리 스트림)
- **데이터**: firstConquerorNickName, firstConquerorThumbnail, firstConquerorUserIdx, firstTitle, originTower, sec... 등 총 11개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: OriginTowerList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Thumbnail.json, Tower.json
- **TBL JSON 라인수**: Thumbnail.json (1,192줄), Tower.json (234줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ OriginTowerList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 11개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/OriginTowerStageClear`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/OriginTowerStageClear`
- **응답**: HTTP 200
- **바디**: 10 bytes (바이너리 스트림)
- **데이터**: cnt, currency, itemEtc, itemNo... 등 총 4개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: OriginTowerStageClear 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, Stage.json, Tower.json, TowerStage.json
- **TBL JSON 라인수**: Item.json (80,876줄), Stage.json (305,528줄), Tower.json (234줄), TowerStage.json (26,490줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ OriginTowerStageClear`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 4개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/OriginTowerStoryClear`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/OriginTowerStoryClear`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: OriginTowerStoryClear 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Tower.json
- **TBL JSON 라인수**: Tower.json (234줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/OriginTowerStoryClear` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/OtherUserTownEnemyDestroySkip`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/OtherUserTownEnemyDestroySkip`
- **응답**: HTTP 200
- **바디**: 351 bytes (바이너리 스트림)
- **데이터**: allCurrency, cnt, currency, itemChangeAmount, itemNo, type, value... 등 총 7개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: OtherUserTownEnemyDestroySkip 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, TownEnemy.json
- **TBL JSON 라인수**: Item.json (80,876줄), TownEnemy.json (364줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ OtherUserTownEnemyDestroySkip`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 7개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/PrevChat`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/PrevChat`
- **응답**: HTTP 200
- **바디**: 34321 bytes (바이너리 스트림)
- **데이터**: chat, dt, firstTitle, guildGrade, message, messageType, nickname, secondTitle, thumbnail, thumbnailF... 등 총 14개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: PrevChat 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Thumbnail.json
- **TBL JSON 라인수**: Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ PrevChat`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 14개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ProfileCustomList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ProfileCustomList`
- **응답**: HTTP 200
- **바디**: 4489 bytes (바이너리 스트림)
- **데이터**: profile, uid... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ProfileCustomList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ProfileCustomSave`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ProfileCustomSave`
- **응답**: HTTP 200
- **바디**: 4 bytes (바이너리 스트림)
- **데이터**: uid... 등 총 1개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ProfileCustomSave`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 1개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ProfileInfos`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ProfileInfos`
- **응답**: HTTP 200
- **바디**: 5259 bytes (바이너리 스트림)
- **데이터**: aboutMe, activatedZodiacBlessNo, arenaScore, arkMainCoreLevel, bossNo, buff, buffNo, buffType, champ... 등 총 63개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ProfileInfos 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Barrier.json, EdenAlliance.json, GuildRaid.json, Hero.json, Item.json, Level.json, Rank.json, SingleRaid.json, Stage.json, Sticker.json, Thumbnail.json, TownLevel.json, UserLevel.json, Zodiac.json
- **TBL JSON 라인수**: Barrier.json (39줄), EdenAlliance.json (232줄), GuildRaid.json (84줄), Hero.json (49,015줄), Item.json (80,876줄), Level.json (9,004줄), Rank.json (88줄), SingleRaid.json (529줄), Stage.json (305,528줄), Sticker.json (2,169줄), Thumbnail.json (1,192줄), TownLevel.json (379줄), UserLevel.json (7,004줄), Zodiac.json (1,670줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ProfileInfos`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 63개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ProfileUpdateVisible`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ProfileUpdateVisible`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/ProfileUpdateVisible` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/RankingAchievementAllReward`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/RankingAchievementAllReward`
- **응답**: HTTP 200
- **바디**: 240 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, type, value... 등 총 4개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: RankingAchievementAllReward 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Achievement.json, Rank.json
- **TBL JSON 라인수**: Achievement.json (22,699줄), Rank.json (88줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ RankingAchievementAllReward`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 4개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/RankingAchievementPopup`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/RankingAchievementPopup`
- **응답**: HTTP 200
- **바디**: 991 bytes (바이너리 스트림)
- **데이터**: isReward, itemAmount, itemNo, level, nickName, no, popularity, rankAchievementUser, rankNo, thumbnai... 등 총 16개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: RankingAchievementPopup 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Achievement.json, Item.json, Level.json, Rank.json, RankAchievement.json, Thumbnail.json
- **TBL JSON 라인수**: Achievement.json (22,699줄), Item.json (80,876줄), Level.json (9,004줄), Rank.json (88줄), RankAchievement.json (3,490줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ RankingAchievementPopup`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 16개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/RankingList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/RankingList`
- **응답**: HTTP 200
- **바디**: 13420 bytes (바이너리 스트림)
- **데이터**: firstTitle, level, myRank, myUpdateDt, myValue, nickName, popularity, rank, rankGroup, rankNo, secon... 등 총 18개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: RankingList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Level.json, Rank.json, Thumbnail.json
- **TBL JSON 라인수**: Level.json (9,004줄), Rank.json (88줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ RankingList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 18개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ReceiveAttendance`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ReceiveAttendance`
- **응답**: HTTP 200
- **바디**: 334 bytes (바이너리 스트림)
- **데이터**: allCurrency, attendance, consecutiveDays, currency, day, no, type, value... 등 총 8개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ReceiveAttendance 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Attendance.json
- **TBL JSON 라인수**: Attendance.json (472줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ReceiveAttendance`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 8개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/RecordList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/RecordList`
- **응답**: HTTP 200
- **바디**: 40039 bytes (바이너리 스트림)
- **데이터**: arrRecord, bName, battleStatus, battletype, clientVersion, dt, fileName, firstTitle, nickname, score... 등 총 20개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: RecordList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Thumbnail.json
- **TBL JSON 라인수**: Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ RecordList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 20개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/RecordListV2`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/RecordListV2`
- **응답**: HTTP 200
- **바디**: 2058 bytes (바이너리 스트림)
- **데이터**: afterRank, arrRecord, battleStatus, battletype, beforeRank, clientVersion, dt, firstTitle, nickname,... 등 총 18개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: RecordListV2 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Rank.json, Thumbnail.json
- **TBL JSON 라인수**: Rank.json (88줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ RecordListV2`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 18개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/RelationList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/RelationList`
- **응답**: HTTP 200
- **바디**: 7848 bytes (바이너리 스트림)
- **데이터**: friend, guildMember, heart, isVisitBattleFlag, isVisitBattleFriendFlag, isYesterdayHelper, lastLogin... 등 총 19개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: RelationList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Level.json, Stage.json, Thumbnail.json, TownLevel.json
- **TBL JSON 라인수**: Level.json (9,004줄), Stage.json (305,528줄), Thumbnail.json (1,192줄), TownLevel.json (379줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ RelationList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 19개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/RestIn`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/RestIn`
- **응답**: HTTP 200
- **바디**: 1190 bytes (바이너리 스트림)
- **데이터**: arbeitExp, costumeItemNo, giftDt, heroNo, heroReputation, lastUpdateDt, maxGradeSno, maxLevelDt, obj... 등 총 15개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: RestIn 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, Item.json, Level.json
- **TBL JSON 라인수**: Hero.json (49,015줄), Item.json (80,876줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ RestIn`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 15개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/RestOut`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/RestOut`
- **응답**: HTTP 200
- **바디**: 1063 bytes (바이너리 스트림)
- **데이터**: arbeitExp, costumeItemNo, giftDt, heroNo, heroReputation, lastUpdateDt, maxGradeSno, maxLevelDt, obj... 등 총 13개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: RestOut 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, Item.json, Level.json
- **TBL JSON 라인수**: Hero.json (49,015줄), Item.json (80,876줄), Level.json (9,004줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ RestOut`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 13개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ReviewPopUp`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ReviewPopUp`
- **응답**: HTTP 200
- **바디**: 9 bytes (바이너리 스트림)
- **데이터**: flag, reviewDt... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ReviewPopUp`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/RotationDungeonReward`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/RotationDungeonReward`
- **응답**: HTTP 200
- **바디**: 283 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, dungeonNo, dungeonReward, rewardNo, type, value... 등 총 7개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: RotationDungeonReward 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Dungeon.json
- **TBL JSON 라인수**: Dungeon.json (1,018줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ RotationDungeonReward`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 7개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SaveBGM`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SaveBGM`
- **응답**: HTTP 200
- **바디**: 387 bytes (바이너리 스트림)
- **데이터**: bGM, battleBgm, lobbyBgm... 등 총 3개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SaveBGM 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: BattleBGM.json, LobbyBGM.json
- **TBL JSON 라인수**: BattleBGM.json (180줄), LobbyBGM.json (2,512줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ SaveBGM`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 3개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SaveIllust`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SaveIllust`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SaveIllust 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Illust.json
- **TBL JSON 라인수**: Illust.json (7,319줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/SaveIllust` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/SdCharacterChange`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SdCharacterChange`
- **응답**: HTTP 200
- **바디**: 3 bytes (바이너리 스트림)
- **데이터**: sdHeroNo... 등 총 1개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SdCharacterChange 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json
- **TBL JSON 라인수**: Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ SdCharacterChange`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 1개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/Sequence`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/Sequence`
- **응답**: HTTP 200
- **바디**: 8 bytes (바이너리 스트림)
- **데이터**: seq, serverSeq, userSeq... 등 총 3개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ Sequence`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 3개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ServerTime`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/ServerTime`
- **응답**: HTTP 200
- **바디**: 7 bytes (바이너리 스트림)
- **데이터**: dt... 등 총 1개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ServerTime`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 1개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SetArenaFormation`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SetArenaFormation`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SetArenaFormation 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Formation.json
- **TBL JSON 라인수**: Formation.json (324줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/SetArenaFormation` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/SetHeroSlotObjet`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SetHeroSlotObjet`
- **응답**: HTTP 200
- **바디**: 72687 bytes (바이너리 스트림)
- **데이터**: arbeitExp, costumeItemNo, giftDt, heroNo, heroReputation, lastUpdateDt, maxGradeSno, maxLevelDt, obj... 등 총 20개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SetHeroSlotObjet 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, Item.json, Level.json, TownObjet.json
- **TBL JSON 라인수**: Hero.json (49,015줄), Item.json (80,876줄), Level.json (9,004줄), TownObjet.json (9,808줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ SetHeroSlotObjet`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 20개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SetPlayerPosition`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SetPlayerPosition`
- **응답**: HTTP 200
- **바디**: 17 bytes (바이너리 스트림)
- **데이터**: playerPosition, x, y, z... 등 총 4개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ SetPlayerPosition`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 4개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SetTownLocation`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SetTownLocation`
- **응답**: HTTP 200
- **바디**: 69 bytes (바이너리 스트림)
- **데이터**: currency, currentDevelopPoint, itemEtc, itemNo, objetNo, position, rotation, townInfo, townLevel, to... 등 총 11개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SetTownLocation 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, Level.json, TownLevel.json, TownLocation.json
- **TBL JSON 라인수**: Item.json (80,876줄), Level.json (9,004줄), TownLevel.json (379줄), TownLocation.json (314줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ SetTownLocation`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 11개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SetTripKeywordList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SetTripKeywordList`
- **응답**: HTTP 200
- **바디**: 18 bytes (바이너리 스트림)
- **데이터**: heroNo, isFirst, keywordNo, tripKeyword... 등 총 4개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SetTripKeywordList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, TripKeyword.json
- **TBL JSON 라인수**: Hero.json (49,015줄), TripKeyword.json (6,466줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ SetTripKeywordList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 4개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ShopItemBuy`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ShopItemBuy`
- **응답**: HTTP 200
- **바디**: 340 bytes (바이너리 스트림)
- **데이터**: allCurrency, buyCnt, currency, no, shopItem, shopItemNo, shopNo, type, value... 등 총 9개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ShopItemBuy 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, Shop.json
- **TBL JSON 라인수**: Item.json (80,876줄), Shop.json (3,444줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ShopItemBuy`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 9개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ShopList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ShopList`
- **응답**: HTTP 200
- **바디**: 4895 bytes (바이너리 스트림)
- **데이터**: buyCnt, nextResetYyyymmdd, no, shop, shopItem, shopItemNo, shopNo... 등 총 7개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ShopList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, Shop.json
- **TBL JSON 라인수**: Item.json (80,876줄), Shop.json (3,444줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ShopList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 7개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SignatureEquip`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SignatureEquip`
- **응답**: HTTP 200
- **바디**: 103 bytes (바이너리 스트림)
- **데이터**: equip, grade, heroEquip, heroIdx, itemEquipId, itemNo, itemSignature, level, slot... 등 총 9개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SignatureEquip 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, Item.json, Level.json, Signature.json
- **TBL JSON 라인수**: Hero.json (49,015줄), Item.json (80,876줄), Level.json (9,004줄), Signature.json (4,866줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ SignatureEquip`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 9개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SignatureLevelUp`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SignatureLevelUp`
- **응답**: HTTP 200
- **바디**: 288 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, grade, itemNo, itemSignature, level, type, value... 등 총 8개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SignatureLevelUp 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, Level.json, Signature.json, SignatureLevel.json
- **TBL JSON 라인수**: Item.json (80,876줄), Level.json (9,004줄), Signature.json (4,866줄), SignatureLevel.json (70,474줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ SignatureLevelUp`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 8개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SignatureList`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/SignatureList`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SignatureList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Signature.json
- **TBL JSON 라인수**: Signature.json (4,866줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/SignatureList` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/SignatureUpgrade`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SignatureUpgrade`
- **응답**: HTTP 200
- **바디**: 16 bytes (바이너리 스트림)
- **데이터**: grade, itemEtc, itemNo, itemSignature, level... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SignatureUpgrade 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, Level.json, Signature.json
- **TBL JSON 라인수**: Item.json (80,876줄), Level.json (9,004줄), Signature.json (4,866줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ SignatureUpgrade`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SimpleTrip`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SimpleTrip`
- **응답**: HTTP 200
- **바디**: 23 bytes (바이너리 스트림)
- **데이터**: heroNo, isReceive, reputation, trip, uid, yymmdd... 등 총 6개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SimpleTrip 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json
- **TBL JSON 라인수**: Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ SimpleTrip`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 6개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SingleRaidInfo`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/SingleRaidInfo`
- **응답**: HTTP 200
- **바디**: 9341 bytes (바이너리 스트림)
- **데이터**: enterLimitCount, firstTitle, lastUseFormationIndex, lastUsePartyIndex, level, myRank, nickName, no, ... 등 총 17개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SingleRaidInfo 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Formation.json, Level.json, Rank.json, SingleRaid.json, Thumbnail.json
- **TBL JSON 라인수**: Formation.json (324줄), Level.json (9,004줄), Rank.json (88줄), SingleRaid.json (529줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ SingleRaidInfo`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 17개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SoulLinkBuffOpen`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SoulLinkBuffOpen`
- **응답**: HTTP 200
- **바디**: 2 bytes (바이너리 스트림)
- **데이터**: collectionNo... 등 총 1개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SoulLinkBuffOpen 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Soullink.json
- **TBL JSON 라인수**: Soullink.json (524줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ SoulLinkBuffOpen`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 1개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SpiritTreeList`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/SpiritTreeList`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SpiritTreeList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: SpiritTree.json
- **TBL JSON 라인수**: SpiritTree.json (504줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/SpiritTreeList` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/SpiritTreeSlotAdd`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SpiritTreeSlotAdd`
- **응답**: HTTP 200
- **바디**: 267 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, slotNo, spiritTree, type, value... 등 총 6개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SpiritTreeSlotAdd 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: SpiritTree.json
- **TBL JSON 라인수**: SpiritTree.json (504줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ SpiritTreeSlotAdd`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 6개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SpiritTreeSlotEquip`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SpiritTreeSlotEquip`
- **응답**: HTTP 200
- **바디**: 28 bytes (바이너리 스트림)
- **데이터**: enableDt, heroIdx, slotNo, spiritTree... 등 총 4개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SpiritTreeSlotEquip 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, SpiritTree.json
- **TBL JSON 라인수**: Hero.json (49,015줄), SpiritTree.json (504줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ SpiritTreeSlotEquip`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 4개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SpiritTreeSlotUnEquip`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SpiritTreeSlotUnEquip`
- **응답**: HTTP 200
- **바디**: 11 bytes (바이너리 스트림)
- **데이터**: enableDt, slotNo, spiritTree... 등 총 3개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SpiritTreeSlotUnEquip 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: SpiritTree.json
- **TBL JSON 라인수**: SpiritTree.json (504줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ SpiritTreeSlotUnEquip`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 3개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/StageClear`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/StageClear`
- **응답**: HTTP 200
- **바디**: 530 bytes (바이너리 스트림)
- **데이터**: allAutoHuntCurrency, allCurrency, autoHunt, autoHuntCurrency, autoHuntItemBox, cnt, currency, itemNo... 등 총 13개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: StageClear 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, ItemBox.json, Stage.json
- **TBL JSON 라인수**: Item.json (80,876줄), ItemBox.json (35,365줄), Stage.json (305,528줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ StageClear`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 13개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/StageEnter`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/StageEnter`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: StageEnter 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Stage.json
- **TBL JSON 라인수**: Stage.json (305,528줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/StageEnter` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/StoryClear`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/StoryClear`
- **응답**: HTTP 200
- **바디**: 289 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, story, storyNo, type, updateDt, value... 등 총 7개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ StoryClear`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 7개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/SyncArenaFormation`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/SyncArenaFormation`
- **응답**: HTTP 200
- **바디**: 0 bytes (Empty / 손실됨)
- **데이터**: 파싱 불가 (데이터 누락)
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: SyncArenaFormation 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Formation.json
- **TBL JSON 라인수**: Formation.json (324줄)
- **코멘트**: 
  - **누가**: 클라이언트 어플리케이션이
  - **언제**: 인게임 로비나 전투 결과창 진입 시점에
  - **어디서**: `/SyncArenaFormation` 라우터 엔드포인트에서
  - **무엇을**: 다음 상태 전이(State Mutation)를 위한 갱신된 데이터를
  - **어떻게**: 완전히 텅 빈 0바이트로 응답받아 픽스쳐 오염을 유발하였으며
  - **왜**: 덤프 시스템의 패킷 누락 결함 때문이므로, C++ 서버가 TBL을 룩업해 동적으로 Protobuf 바디를 재조립하지 않으면 소프트락(무한로딩)이 확정적으로 발생함.

## 엔드포인트: `/TaskList`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/TaskList`
- **응답**: HTTP 200
- **바디**: 74 bytes (바이너리 스트림)
- **데이터**: days, taskDaily, taskReceive, taskValue, taskWeekly, weeks... 등 총 6개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: TaskList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Task.json
- **TBL JSON 라인수**: Task.json (211줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TaskList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 6개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/TitleUpdate`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/TitleUpdate`
- **응답**: HTTP 200
- **바디**: 6 bytes (바이너리 스트림)
- **데이터**: firstTitle, secondTitle... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TitleUpdate`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/TownDevelopPointRefresh`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/TownDevelopPointRefresh`
- **응답**: HTTP 200
- **바디**: 6 bytes (바이너리 스트림)
- **데이터**: currentDevelopPoint, townInfo, townLevel... 등 총 3개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: TownDevelopPointRefresh 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Level.json, TownLevel.json
- **TBL JSON 라인수**: Level.json (9,004줄), TownLevel.json (379줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TownDevelopPointRefresh`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 3개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/TownEnemyDestroySkip`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/TownEnemyDestroySkip`
- **응답**: HTTP 200
- **바디**: 351 bytes (바이너리 스트림)
- **데이터**: allCurrency, cnt, currency, itemChangeAmount, itemNo, townEnemyDefeatCount, type, value... 등 총 8개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: TownEnemyDestroySkip 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, TownEnemy.json
- **TBL JSON 라인수**: Item.json (80,876줄), TownEnemy.json (364줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TownEnemyDestroySkip`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 8개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/TownEnemyList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/TownEnemyList`
- **응답**: HTTP 200
- **바디**: 72 bytes (바이너리 스트림)
- **데이터**: count, no, section, townEnemy, townEnemyDefeatCount, type... 등 총 6개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: TownEnemyList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: TownEnemy.json
- **TBL JSON 라인수**: TownEnemy.json (364줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TownEnemyList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 6개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/TownInfoData`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/TownInfoData`
- **응답**: HTTP 200
- **바디**: 36 bytes (바이너리 스트림)
- **데이터**: additionalRestSlotCount, castleMaxFloorNo, currentDevelopPoint, managerHeroNo, playerPosition, townI... 등 총 12개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: TownInfoData 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, Level.json, TownLevel.json
- **TBL JSON 라인수**: Hero.json (49,015줄), Level.json (9,004줄), TownLevel.json (379줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TownInfoData`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 12개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/TownLevelUpCheck`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/TownLevelUpCheck`
- **응답**: HTTP 200
- **바디**: 296 bytes (바이너리 스트림)
- **데이터**: allCurrency, cnt, currency, currentDevelopPoint, itemChangeAmount, itemEtc, itemNo, townInfo, townLe... 등 총 11개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: TownLevelUpCheck 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, Level.json, TownLevel.json
- **TBL JSON 라인수**: Item.json (80,876줄), Level.json (9,004줄), TownLevel.json (379줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TownLevelUpCheck`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 11개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/TownLocationList`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/TownLocationList`
- **응답**: HTTP 200
- **바디**: 284 bytes (바이너리 스트림)
- **데이터**: allCurrency, cnt, currency, itemEtc, itemNo, type, value... 등 총 7개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: TownLocationList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, TownLocation.json
- **TBL JSON 라인수**: Item.json (80,876줄), TownLocation.json (314줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TownLocationList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 7개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/TownMissionReward`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/TownMissionReward`
- **응답**: HTTP 200
- **바디**: 330 bytes (바이너리 스트림)
- **데이터**: allCurrency, cnt, currency, itemChangeAmount, itemNo, type, value... 등 총 7개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: TownMissionReward 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Item.json, TownMission.json
- **TBL JSON 라인수**: Item.json (80,876줄), TownMission.json (137줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TownMissionReward`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 7개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/TownTodayEnter`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/TownTodayEnter`
- **응답**: HTTP 200
- **바디**: 405 bytes (바이너리 스트림)
- **데이터**: allCurrency, count, currency, currentDevelopPoint, getTownCoin, no, section, townEnemy, townEnemyDef... 등 총 13개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: TownTodayEnter 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Level.json, TownEnemy.json, TownLevel.json
- **TBL JSON 라인수**: Level.json (9,004줄), TownEnemy.json (364줄), TownLevel.json (379줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TownTodayEnter`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 13개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/TownVisitHeroList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/TownVisitHeroList`
- **응답**: HTTP 200
- **바디**: 20 bytes (바이너리 스트림)
- **데이터**: heroNo, townVisitHero... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: TownVisitHeroList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json
- **TBL JSON 라인수**: Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TownVisitHeroList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/TripEnd`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/TripEnd`
- **응답**: HTTP 200
- **바디**: 44 bytes (바이너리 스트림)
- **데이터**: bonusLovePoint, heroNo, isReceive, keywordLovePoint, keywordNo, reputation, trip, tripKeyword, yymmd... 등 총 9개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: TripEnd 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, TripKeyword.json
- **TBL JSON 라인수**: Hero.json (49,015줄), TripKeyword.json (6,466줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TripEnd`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 9개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/TripKeyword`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/TripKeyword`
- **응답**: HTTP 200
- **바디**: 11 bytes (바이너리 스트림)
- **데이터**: tripKeyword_... 등 총 1개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: TripKeyword 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: TripKeyword.json
- **TBL JSON 라인수**: TripKeyword.json (6,466줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TripKeyword`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 1개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/TripStart`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/TripStart`
- **응답**: HTTP 200
- **바디**: 10 bytes (바이너리 스트림)
- **데이터**: heroNo, tripRemainCount, uid... 등 총 3개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: TripStart 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json
- **TBL JSON 라인수**: Hero.json (49,015줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TripStart`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 3개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/TutorialActive`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/TutorialActive`
- **응답**: HTTP 200
- **바디**: 4 bytes (바이너리 스트림)
- **데이터**: tutorial, tutorialNo... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: TutorialActive 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Tutorial.json
- **TBL JSON 라인수**: Tutorial.json (8,211줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TutorialActive`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/TutorialStoryClear`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/TutorialStoryClear`
- **응답**: HTTP 200
- **바디**: 9 bytes (바이너리 스트림)
- **데이터**: currency, storyNo, tutorialStory... 등 총 3개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: TutorialStoryClear 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Tutorial.json
- **TBL JSON 라인수**: Tutorial.json (8,211줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ TutorialStoryClear`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 3개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/UserAboutChange`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/UserAboutChange`
- **응답**: HTTP 200
- **바디**: 29 bytes (바이너리 스트림)
- **데이터**: ... 등 총 0개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ UserAboutChange`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 0개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/UserInfo`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/UserInfo`
- **응답**: HTTP 200
- **바디**: 926 bytes (바이너리 스트림)
- **데이터**: ahQuickCnt, allCurrency, arbeitOption, arenaCnt, arkOperator, autoHunt, backgroundId, battleAutoUlti... 등 총 66개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: UserInfo 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Background.json, BattleBGM.json, Dungeon.json, Formation.json, Hero.json, Illust.json, Item.json, Level.json, LobbyBGM.json, SpiritTree.json, Stage.json, Thumbnail.json
- **TBL JSON 라인수**: Background.json (274줄), BattleBGM.json (180줄), Dungeon.json (1,018줄), Formation.json (324줄), Hero.json (49,015줄), Illust.json (7,319줄), Item.json (80,876줄), Level.json (9,004줄), LobbyBGM.json (2,512줄), SpiritTree.json (504줄), Stage.json (305,528줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ UserInfo`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 66개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/UserNicknameChange`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/UserNicknameChange`
- **응답**: HTTP 200
- **바디**: 8 bytes (바이너리 스트림)
- **데이터**: ... 등 총 0개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: 매칭 없음 (클라이언트 렌더링 전용 정적 뷰 데이터로 추정)
- **TBL명**: 없음
- **TBL JSON 라인수**: 0줄
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ UserNicknameChange`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 0개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/VistaInfo`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/VistaInfo`
- **응답**: HTTP 200
- **바디**: 23 bytes (바이너리 스트림)
- **데이터**: vistaHero, vistaInfo_... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: VistaInfo 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, Vista.json
- **TBL JSON 라인수**: Hero.json (49,015줄), Vista.json (1,187줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ VistaInfo`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/VistaTreasure`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/VistaTreasure`
- **응답**: HTTP 200
- **바디**: 721 bytes (바이너리 스트림)
- **데이터**: allCurrency, cnt, currency, energyUpdateDt, expireDt, heroNo, isRandom, itemChangeAmount, itemCnt, i... 등 총 19개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: VistaTreasure 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Hero.json, Item.json, Level.json, Vista.json, VistaTreasure.json
- **TBL JSON 라인수**: Hero.json (49,015줄), Item.json (80,876줄), Level.json (9,004줄), Vista.json (1,187줄), VistaTreasure.json (85줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ VistaTreasure`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 19개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/WorldRaidInfo`
- **요청**: POST `https://live-kr.esoul.kakaogames.com:1739/WorldRaidInfo`
- **응답**: HTTP 200
- **바디**: 154 bytes (바이너리 스트림)
- **데이터**: adjustmentEndDt, endDt, firstRankingData, firstTitle, nextRaidStartDt, nickName, raidNo, rank, rewar... 등 총 19개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: WorldRaidInfo 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Rank.json, Thumbnail.json
- **TBL JSON 라인수**: Rank.json (88줄), Thumbnail.json (1,192줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ WorldRaidInfo`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 19개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ZodiacActive`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ZodiacActive`
- **응답**: HTTP 200
- **바디**: 4 bytes (바이너리 스트림)
- **데이터**: zodiac, zodiacNo... 등 총 2개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ZodiacActive 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Zodiac.json
- **TBL JSON 라인수**: Zodiac.json (1,670줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ZodiacActive`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 2개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ZodiacInit`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ZodiacInit`
- **응답**: HTTP 200
- **바디**: 322 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, type, value... 등 총 4개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ZodiacInit 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Zodiac.json
- **TBL JSON 라인수**: Zodiac.json (1,670줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ZodiacInit`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 4개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ZodiacMainActive`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ZodiacMainActive`
- **응답**: HTTP 200
- **바디**: 326 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, type, value, zodiac, zodiacNo... 등 총 6개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ZodiacMainActive 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Zodiac.json
- **TBL JSON 라인수**: Zodiac.json (1,670줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ZodiacMainActive`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 6개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ZodiacPresetActive`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ZodiacPresetActive`
- **응답**: HTTP 200
- **바디**: 750 bytes (바이너리 스트림)
- **데이터**: allCurrency, currency, type, value, zodiac, zodiacNo... 등 총 6개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ZodiacPresetActive 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Zodiac.json
- **TBL JSON 라인수**: Zodiac.json (1,670줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ZodiacPresetActive`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 6개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

## 엔드포인트: `/ZodiacPresetList`
- **요청**: POST `https://live-sea.esoul.kakaogames.com:1739/ZodiacPresetList`
- **응답**: HTTP 200
- **바디**: 1769 bytes (바이너리 스트림)
- **데이터**: presetIdx, presetName, presetOrder, zodiacNo, zodiacPreset... 등 총 5개 키 추출됨
- **디코드종류**: Google Protobuf (에버소울 커스텀 스키마 매핑)
- **복호화방식**: 클라이언트-서버 통신 시 Base64 디코딩 수행 후 앞 8바이트(패킷 헤더) 제거, 이후 순수 Protobuf Wire Format으로 역직렬화 (별도의 AES/RSA 암호화는 패킷 바디에 적용되지 않음)
- **TBL 과 연계된 데이터**: ZodiacPresetList 스키마의 획득 재화, 요구 경험치, 시스템 번호 등 핵심 식별자와 TBL 레코드의 1:1 결합 필요
- **TBL명**: Zodiac.json
- **TBL JSON 라인수**: Zodiac.json (1,670줄)
- **코멘트**: 
  - **누가**: 게임 클라이언트가
  - **언제**: 해당 컨텐츠(`/ ZodiacPresetList`) 상호작용 발생 시점에
  - **어디서**: 오프라인 가상 서버 C++ 라우터 모듈에서
  - **무엇을**: 추출된 5개의 구조체 파라미터를
  - **어떻게**: 연동된 TBL JSON의 방대한 레코드(최대 수만 줄)와 교차 검증하여 Protobuf로 인코딩한 뒤 반환해야 하며
  - **왜**: 데이터 위변조 방지 및 실제 계정(AccountDB) 상태와의 무결성(Integrity)을 100% 동기화하기 위함임.

