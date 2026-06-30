// 계정 상세 보유 데이터(게임용 편집) 도메인 타입.
// 서버 GET /web/api/gamedata/* 조회 응답과 수정 요청을 정의한다.
// 표시 라벨(영웅/아이템/등급 이름)은 데이터에 중복 저장하지 않고 lib/tbl 의
// 웹 내부 TBL 데이터베이스에서 *_sno -> 다국어로 해석한다(정규화).

// ── 조회 행(서버 보유 데이터) ────────────────────────────────────────────
export interface AccountCurrencyRow {
  type: number   // E_CURRENCY 번호 (currency.type)
  value: number
}

export interface AccountHeroRow {
  idx: string
  heroNo: number
  level: number
  gradeSno: number
}

export interface AccountItemRow {
  itemNo: number
  cnt: number
}

// ── 수정 요청(정규화 도메인 API) ─────────────────────────────────────────
// 재화: 절대값 설정(set). 기존 cheat 의 증감(add)/5종 하드코딩을 대체.
export interface CurrencySetRequest {
  type: number
  value: number
}

// 영웅: grade_sno/race_sno 는 클라이언트가 lib/tbl(웹 TBL DB)에서 hero_no 로
// 해석해 전달한다(서버 하드코딩 메타 제거).
export interface HeroUpsertRequest {
  idx?: string
  heroNo: number
  level: number
  gradeSno: number
  raceSno: number
}

export interface HeroDeleteRequest {
  idx: string
}

export interface ItemSetRequest {
  itemNo: number
  cnt: number
}
