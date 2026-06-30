// JSON/TBL 컬럼명(account_id, region, created_at_ms 등) → 다국어 라벨 변환.
// i18n DICT 에 'db.col.<컬럼명>' 키가 있으면 해당 언어 라벨을, 없으면 원본 식별자를 그대로 노출(폴백).
// 원장 계열 컬럼이 많으므로 공통/핵심 컬럼만 매핑하고 나머지는 원본을 보존한다.
export function dbColumnLabel(t: (key: string) => string, col: string): string {
  const key = `db.col.${col}`
  const label = t(key)
  return label === key ? col : label
}
