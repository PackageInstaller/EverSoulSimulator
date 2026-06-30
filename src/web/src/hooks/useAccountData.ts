import { useState, useEffect, useCallback } from 'react'
import {
  apiGetAccountCurrencies, apiGetAccountHeroes, apiGetAccountItems,
} from '@/api/accountData'
import {
  type AccountCurrencyRow, type AccountHeroRow, type AccountItemRow,
} from '@/types/accountData'

export interface AccountDataState {
  currencies: AccountCurrencyRow[]
  heroes: AccountHeroRow[]
  items: AccountItemRow[]
  loading: boolean
  refresh: () => Promise<void>
}

// 활성 계정의 보유 데이터(재화/영웅/아이템)를 조회하고 갱신한다.
// 표시 라벨은 컴포넌트가 lib/tbl 로 sno -> 다국어 해석한다(이 훅은 원시 보유값만 보유).
export function useAccountData(): AccountDataState {
  const [currencies, setCurrencies] = useState<AccountCurrencyRow[]>([])
  const [heroes, setHeroes] = useState<AccountHeroRow[]>([])
  const [items, setItems] = useState<AccountItemRow[]>([])
  const [loading, setLoading] = useState(true)

  const refresh = useCallback(async () => {
    setLoading(true)
    try {
      const [c, h, i] = await Promise.all([
        apiGetAccountCurrencies().catch(() => [] as AccountCurrencyRow[]),
        apiGetAccountHeroes().catch(() => [] as AccountHeroRow[]),
        apiGetAccountItems().catch(() => [] as AccountItemRow[]),
      ])
      setCurrencies(Array.isArray(c) ? c : [])
      setHeroes(Array.isArray(h) ? h : [])
      setItems(Array.isArray(i) ? i : [])
    } finally {
      setLoading(false)
    }
  }, [])

  useEffect(() => { void refresh() }, [refresh])

  return { currencies, heroes, items, loading, refresh }
}
