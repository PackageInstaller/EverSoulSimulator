// 계정 상세 보유 데이터(게임용 편집) API 레이어.
// 정규화 도메인 엔드포인트(/web/api/gamedata/*)만 호출한다(인라인 fetch·치트 하드코딩 금지).
import {
  type AccountCurrencyRow, type AccountHeroRow, type AccountItemRow,
  type CurrencySetRequest, type HeroUpsertRequest, type HeroDeleteRequest, type ItemSetRequest,
} from '@/types/accountData'
import { type ApiResult } from '@/types/api'

const asJson = (r: Response) => r.json()

function postJson<T>(url: string, body: unknown): Promise<T> {
  return fetch(url, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body),
  }).then(asJson)
}

function sendJson<T>(method: string, url: string, body: unknown): Promise<T> {
  return fetch(url, {
    method,
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body),
  }).then(asJson)
}

// ── 조회 ─────────────────────────────────────────────────────────────────
export function apiGetAccountCurrencies(): Promise<AccountCurrencyRow[]> {
  return fetch('/web/api/gamedata/currencies').then(asJson)
}
export function apiGetAccountHeroes(): Promise<AccountHeroRow[]> {
  return fetch('/web/api/gamedata/heroes').then(asJson)
}
export function apiGetAccountItems(): Promise<AccountItemRow[]> {
  return fetch('/web/api/gamedata/items').then(asJson)
}

// ── 수정 ─────────────────────────────────────────────────────────────────
export function apiSetAccountCurrency(req: CurrencySetRequest): Promise<ApiResult> {
  return postJson('/web/api/gamedata/currencies', req)
}
export function apiUpsertAccountHero(req: HeroUpsertRequest): Promise<ApiResult> {
  return postJson('/web/api/gamedata/heroes', req)
}
export function apiDeleteAccountHero(req: HeroDeleteRequest): Promise<ApiResult> {
  return sendJson('DELETE', '/web/api/gamedata/heroes', req)
}
export function apiSetAccountItem(req: ItemSetRequest): Promise<ApiResult> {
  return postJson('/web/api/gamedata/items', req)
}
