import { type CheatStatus, type ApiResult, type CurrencySetRequest, type HeroAddRequest } from '@/types/api'
import { type AccountCurrencyRow, type AccountHeroRow } from '@/types/accountData'

const CURRENCY_TYPE_BY_FIELD: Record<keyof CurrencySetRequest, number> = {
  gold: 1,
  crystal: 2,
  stone: 3,
  mana_crystal: 4,
  pay_dia: 42,
}

export async function apiGetCheatStatus(): Promise<CheatStatus> {
  const [currenciesRes, heroesRes] = await Promise.all([
    fetch('/web/api/gamedata/currencies'),
    fetch('/web/api/gamedata/heroes'),
  ])
  const currencies = (await currenciesRes.json()) as AccountCurrencyRow[]
  const heroes = (await heroesRes.json()) as AccountHeroRow[]
  const valueOf = (type: number) => currencies.find(row => row.type === type)?.value ?? 0
  return {
    gold: valueOf(1),
    crystal: valueOf(2),
    stone: valueOf(3),
    mana_crystal: valueOf(4),
    pay_dia: valueOf(42),
    heroes: Array.isArray(heroes) ? heroes.length : 0,
  }
}

export async function apiSetCurrency(req: CurrencySetRequest): Promise<ApiResult> {
  const entry = Object.entries(req).find(([, value]) => typeof value === 'number')
  if (!entry) return { ok: false, reason: 'missing currency value' }
  const [field, value] = entry as [keyof CurrencySetRequest, number]
  const r = await fetch('/web/api/gamedata/currencies', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ type: CURRENCY_TYPE_BY_FIELD[field], value }),
  })
  return r.json()
}

export async function apiAddHero(req: HeroAddRequest): Promise<ApiResult> {
  const r = await fetch('/web/api/gamedata/heroes', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(req),
  })
  return r.json()
}
