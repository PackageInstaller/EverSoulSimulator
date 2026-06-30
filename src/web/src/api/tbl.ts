import { type TblJsonListResult, type TblHookStatus, type TblStatus, type TblPrecheck, type TblSyncResult, type TblSyncAllResult } from '@/types/api'

const WEB_API_TBL_JSON = '/web/api/tbl_json'

interface FileListEntry {
  path: string
  bytes: number
}

function tblJsonPath(name: string): string {
  return `tbl_json/${name}`
}

export async function apiTblList(): Promise<TblJsonListResult> {
  const r = await fetch('/web/api/files/list?prefix=tbl_json')
  if (!r.ok) {
    const fallback = await fetch(WEB_API_TBL_JSON)
    if (!fallback.ok) return { files: [] }
    return (await fallback.json()) as TblJsonListResult
  }
  const rows = (await r.json()) as FileListEntry[]
  return {
    files: rows
      .map(row => row.path.replace(/^tbl_json\//, ''))
      .filter(name => name.endsWith('.json'))
      .sort((a, b) => a.localeCompare(b)),
  }
}

export async function apiTblGet(name: string): Promise<Record<string, unknown>[]> {
  const r = await fetch(`/web/api/files?path=${encodeURIComponent(tblJsonPath(name))}`)
  if (!r.ok) return []
  const j = (await r.json()) as { json?: unknown[] }
  return (j.json ?? []) as Record<string, unknown>[]
}

export interface TblSaveResult {
  ok: boolean
  error?: string
  changed?: boolean
  built?: boolean
  schema?: boolean
  flatc?: boolean
  tbl_bytes?: number
}

export async function apiTblSave(
  name: string,
  rows: Record<string, unknown>[],
): Promise<TblSaveResult> {
  const r = await fetch(`/web/api/files?path=${encodeURIComponent(tblJsonPath(name))}`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ json: rows }, null, 2),
  })
  if (!r.ok) return { ok: false, error: `http ${r.status}` }
  const result = (await r.json()) as { ok?: boolean }
  return { ok: result.ok === true, changed: true }
}

export async function apiTblReset(
  name: string,
): Promise<{ ok: boolean; reset?: boolean; error?: string }> {
  return { ok: false, error: `${name}: default tbl_json reset endpoint is not implemented by this JSON fixture server` }
}

// TBL 훅 On/Off — 서버 DB의 tbl_hook_enabled. On 이면 게임 GetDecryptData 가 우리 .tbl 로 교체된다.
export async function apiGetTblEnabled(): Promise<TblHookStatus> {
  const r = await fetch('/web/api/tbl_enabled')
  return r.json()
}

export async function apiSetTblEnabled(enabled: boolean): Promise<TblHookStatus> {
  const r = await fetch('/web/api/tbl_enabled', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ enabled }),
  })
  return r.json()
}

export async function apiTblSync(name: string, restoreDefault = false): Promise<TblSyncResult> {
  const r = await fetch('/web/api/tbl_sync', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ name, restore_default: restoreDefault }),
  })
  return r.json()
}

export async function apiTblSyncAll(restoreDefault = false): Promise<TblSyncAllResult> {
  const r = await fetch('/web/api/tbl_sync_all', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ restore_default: restoreDefault }),
  })
  return r.json()
}

// 외부데이터(.tbl/.fbs/tbl_json) 존재·완전성 — 인게임설정 적용 가능 여부 판정.
export async function apiTblStatus(): Promise<TblStatus> {
  const [tblJson, tblStatus] = await Promise.all([
    apiTblList(),
    fetch('/web/api/tbl/status').then(r => r.ok ? r.json() : null).catch(() => null),
  ])
  const jsonCount = tblJson.files.length
  return {
    tbl_count: Number(tblStatus?.tables ?? 0),
    json_count: jsonCount,
    fbs_count: 0,
    default_count: 0,
    default_json_count: jsonCount,
    flatc: false,
    complete: jsonCount > 0,
    missing_count: 0,
    missing: [],
  }
}

// 서버 EXE 가 adb(root)로 에뮬레이터 내부 에셋번들을 검증 — 인게임설정뷰 OPEN 게이트.
export async function apiTblPrecheck(): Promise<TblPrecheck> {
  const r = await fetch('/web/api/tbl_precheck')
  return r.json()
}
