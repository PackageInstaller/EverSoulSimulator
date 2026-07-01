import { type GameDataSummary, type ApiResult, type ScheduleRow, type TuningRow } from '@/types/api'

export async function apiGetGameDataSummary(): Promise<GameDataSummary> {
  const r = await fetch('/web/api/gamedata/summary')
  return r.json()
}

export async function apiGetGameData(section: string): Promise<unknown> {
  const r = await fetch(`/web/api/gamedata/${section}`)
  return r.json()
}

export async function apiSetGameData(section: string, data: unknown): Promise<ApiResult> {
  const r = await fetch(`/web/api/gamedata/${section}`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(data),
  })
  return r.json()
}

export async function apiListSchedule(): Promise<ScheduleRow[]> {
  const r = await fetch('/web/api/gamedata/schedule')
  return r.json()
}

export async function apiUpsertSchedule(row: ScheduleRow): Promise<ApiResult> {
  const r = await fetch('/web/api/gamedata/schedule', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(row),
  })
  return r.json()
}

export async function apiDeleteSchedule(key: string): Promise<ApiResult> {
  const r = await fetch('/web/api/gamedata/schedule', {
    method: 'DELETE',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ schedule_key: key }),
  })
  return r.json()
}

export async function apiListTuning(): Promise<TuningRow[]> {
  const r = await fetch('/web/api/gamedata/tuning')
  return r.json()
}

export async function apiUpsertTuning(row: TuningRow): Promise<ApiResult> {
  const r = await fetch('/web/api/gamedata/tuning', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(row),
  })
  return r.json()
}

export async function apiDeleteTuning(scope: string, param_key: string): Promise<ApiResult> {
  const r = await fetch('/web/api/gamedata/tuning', {
    method: 'DELETE',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ scope, param_key }),
  })
  return r.json()
}

export async function apiGetProbability(): Promise<unknown> {
  const r = await fetch('/web/api/gamedata/probability')
  return r.json()
}

export async function apiSetProbability(data: unknown): Promise<ApiResult> {
  const r = await fetch('/web/api/gamedata/probability', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(data),
  })
  return r.json()
}
