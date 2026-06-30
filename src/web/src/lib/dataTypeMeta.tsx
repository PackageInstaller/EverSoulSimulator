import { Type, Hash, Binary, ToggleLeft, Sigma } from 'lucide-react'
import type { LucideIcon } from 'lucide-react'

export interface DataTypeMeta {
  icon: LucideIcon
  label: string
  colorClass: string
}

/**
 * 데이터 타입 → 상세/수정 페이지의 시각 메타(아이콘·색·라벨).
 * FlatBuffers TBL 행 타입(INTEGER/REAL/TEXT/BLOB/BOOL)을 동일한 시각 규칙으로 표현한다.
 */
export function dataTypeMeta(rawType: string): DataTypeMeta {
  const t = (rawType || '').toUpperCase()
  if (t.includes('INT'))
    return { icon: Hash, label: 'INTEGER', colorClass: 'text-sky-500 dark:text-sky-400' }
  if (t.includes('REAL') || t.includes('FLOA') || t.includes('DOUB') || t.includes('NUM'))
    return { icon: Sigma, label: 'REAL', colorClass: 'text-violet-500 dark:text-violet-400' }
  if (t.includes('BLOB'))
    return { icon: Binary, label: 'BLOB', colorClass: 'text-amber-500 dark:text-amber-400' }
  if (t.includes('BOOL'))
    return { icon: ToggleLeft, label: 'BOOL', colorClass: 'text-emerald-500 dark:text-emerald-400' }
  return { icon: Type, label: 'TEXT', colorClass: 'text-slate-500 dark:text-slate-400' }
}

/** tbl_json 중간 표현 값 → dataTypeMeta 입력용 타입 문자열. */
export function jsonValueType(v: unknown): string {
  if (typeof v === 'number') return Number.isInteger(v) ? 'INTEGER' : 'REAL'
  if (typeof v === 'boolean') return 'BOOL'
  return 'TEXT'
}
