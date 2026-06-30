import { type ApiResult } from '@/types/api'

export async function apiShutdownServer(): Promise<ApiResult<{ output?: string }>> {
  const r = await fetch('/web/api/server/shutdown', { method: 'POST' })
  return r.json()
}
