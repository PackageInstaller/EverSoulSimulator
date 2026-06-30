import { type Account, type ApiResult, type AccountEditRequest } from '@/types/api'

export async function apiListAccounts(): Promise<Account[]> {
  const r = await fetch('/web/api/accounts')
  return r.json()
}

export async function apiSelectAccount(id: string): Promise<ApiResult> {
  const r = await fetch(`/web/api/accounts/${id}/select`, { method: 'POST' })
  return r.json()
}

export async function apiEditAccount(id: string, req: AccountEditRequest): Promise<ApiResult> {
  const r = await fetch(`/web/api/accounts/${id}`, {
    method: 'PATCH',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(req),
  })
  return r.json()
}
