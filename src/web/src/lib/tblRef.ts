// 인게임설정 전 TBL 셀 숫자의 참조 의미 중앙 해석 계층.
// 컬럼명 의미어(hero/item/skill/stage/dungeon/event/actor/arbeit) + _no 규칙으로 참조테이블을
// 가려 catalogRefs(no -> name_sno) 를 join 하고, *_sno·grade 는 strings 사전으로 직접 해석한다.
// 순수 순서값(slot_no/team_no/sort_no 등)은 의미어가 없어 null 을 반환한다 — no=1.. 연속 테이블이
// 작은 정수를 흡수하는 자동매핑 거짓양성을 구조적으로 배제한다(추측 금지).
import catalogRefsData from '@/data/tbl/catalogRefs.json'
import { type TblLang, type TblRefKind, type TblCatalogRefs } from '@/types/tbl'
import { tblString } from './tbl'

const REFS = catalogRefsData as TblCatalogRefs

// 참조 종류 -> catalogRefs 테이블명(strings 계열 제외).
const KIND_TABLE: Record<Exclude<TblRefKind, 'string' | 'grade'>, string> = {
  hero: 'Hero', item: 'Item', skill: 'Skill', stage: 'Stage',
  dungeon: 'Dungeon', event: 'EventInfo', actor: 'TalkActor', arbeit: 'ArbeitList',
}

// 참조테이블 no -> name_sno -> 다국어. 매핑 없으면 '#<no>'(누락 가시화).
function refName(table: string, no: number, lang: TblLang): string {
  const sno = REFS[table]?.[String(no)]
  return sno != null ? tblString(sno, lang) : `#${no}`
}

// 컬럼명 -> 참조 종류. 검증된 의미어 규칙만(추측 배제). null = 참조 아닌 단순 수치.
export function tblRefKind(col: string): TblRefKind | null {
  // hero_no_1 / hero_grade_2 / level_3 처럼 슬롯 번호 접미(_숫자)를 떼고 어근으로 판정한다.
  const c = col.toLowerCase().replace(/_\d+$/, '')
  if (c === 'sno' || c.endsWith('_sno')) return 'string'
  if (c.includes('grade') && !c.includes('color')) return 'grade'
  if (!c.endsWith('_no')) return null
  if (c.includes('hero')) return 'hero'
  if (c.includes('item')) return 'item'
  if (c.includes('skill') || c.includes('signature')) return 'skill'
  if (c.includes('stage') || c.includes('challenge')) return 'stage'
  if (c.includes('dungeon')) return 'dungeon'
  if (c === 'event_no') return 'event'
  if (c.includes('actor') || c.includes('speaker')) return 'actor'
  if (c.includes('arbeit')) return 'arbeit'
  return null
}

// 셀 (컬럼, 값) -> 사람이 읽는 참조 이름. null = 단순 수치라 이름 병기 없음.
// strings/catalogRefs 에서 못 찾은 값('#..')도 null 로 흘려 잘못된 표시를 막는다.
export function tblRefName(col: string, value: unknown, lang: TblLang): string | null {
  if (typeof value !== 'number') return null
  const kind = tblRefKind(col)
  if (!kind) return null
  const name = kind === 'string' || kind === 'grade'
    ? tblString(value, lang)
    : refName(KIND_TABLE[kind], value, lang)
  return name.startsWith('#') ? null : name
}
