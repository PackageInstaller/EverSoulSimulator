import { type ServerLogEntry, type AdbLogEntry, type ApiResult } from '@/types/api'

export async function apiGetServerLogsRecent(n = 200): Promise<ServerLogEntry[]> {
  const r = await fetch(`/web/api/logs/server/recent?n=${n}`)
  return r.json()
}

export async function apiGetAdbLogsRecent(n = 200): Promise<AdbLogEntry[]> {
  const r = await fetch(`/web/api/logs/adb/recent?n=${n}`)
  return r.json()
}

export async function apiClearServerLogs(): Promise<ApiResult> {
  const r = await fetch('/web/api/logs/clear', { method: 'POST' })
  return r.json()
}

export async function apiClearAdbLogs(): Promise<ApiResult> {
  const r = await fetch('/web/api/logs/adb/clear', { method: 'POST' })
  return r.json()
}
