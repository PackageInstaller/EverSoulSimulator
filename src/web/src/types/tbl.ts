// TBL 추출 데이터(database/tbl_json + flatc 디코드본)에서 tools/gen_web_tbl_database.py 로
// 생성되는 웹 내부 정규화 데이터베이스의 타입 정의.
// 모든 표시 텍스트는 *_sno -> strings(sno) -> [kr,en,ja,zh_tw,zh_cn] 단일 경로로 해석된다.

export type TblLang = 'kr' | 'en' | 'ja' | 'zh_tw' | 'zh_cn'

// strings.json 의 값: 언어 인덱스 [kr, en, ja, zh_tw, zh_cn].
export type TblStringRow = [string, string, string, string, string]

// strings.json: { "<sno>": TblStringRow }
export type TblStringTable = Record<string, TblStringRow>

export interface TblHero {
  no: number
  hero_id: number
  name_sno: number
  race_sno: number
  class_sno: number
  sub_class_sno: number
  stat_sno: number
  grade_sno: number
  max_grade_sno: number
  is_collectable: number
}

export interface TblHeroDesc {
  hero_no: number
  name_sno: number
  nick_name_sno: number
  constellation_sno: number
}

export interface TblHeroGrade {
  name_sno: number
  hero_grade_value: number
  hero_max_level: number
  grade_color: string
  collection_point: number
}

export interface TblItem {
  no: number
  category_sno: number
  grade_sno: number
  name_sno: number
  desc_sno: number
  icon_path: string
  item_sort_no: number
}

export interface TblItemGrade {
  name_sno: number
  grade_color: string
  grade_bg_color: string
}

// catalogRefs.json: 참조테이블의 no -> name_sno. { "<table>": { "<no>": name_sno } }.
// 인게임설정 전 TBL 의 <entity>_no 외래키를 이름(strings)으로 해석할 때 join 키로 쓴다.
export type TblCatalogRefs = Record<string, Record<string, number>>

// 셀 숫자가 가리키는 참조 종류. null 이면 단순 수치(레벨/비율/슬롯 등 참조 아님).
export type TblRefKind = 'string' | 'grade' | 'hero' | 'item' | 'skill' | 'stage' | 'dungeon' | 'event' | 'actor' | 'arbeit'
