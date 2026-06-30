import { useState } from 'react'
import { Coins, Users, Package, Gem, ShieldCheck, UserRound, RefreshCw } from 'lucide-react'
import { cn } from '@/lib/utils'
import { useI18n } from '@/lib/i18n'
import { tblCurrencyName, tblCurrencyKind, tblLangOf } from '@/lib/tbl'
import { fixtureProfileKind, fixtureProfileLabel } from '@/lib/accountProfiles'
import { useAccounts } from '@/hooks/useAccounts'
import { useAccountData } from '@/hooks/useAccountData'
import { apiSelectAccount } from '@/api/accounts'
import { CurrencyPanel } from './CurrencyPanel'
import { HeroPanel } from './HeroPanel'
import { ItemPanel } from './ItemPanel'

type AccountDataTab = 'currency' | 'hero' | 'item'

const TABS: { id: AccountDataTab; i18nKey: string; icon: typeof Coins }[] = [
  { id: 'currency', i18nKey: 'accdata.tab.currency', icon: Coins },
  { id: 'hero', i18nKey: 'accdata.tab.hero', icon: Users },
  { id: 'item', i18nKey: 'accdata.tab.item', icon: Package },
]

/**
 * 계정 상세 보유 데이터 게임용 편집 컨테이너.
 * 데이터 조회/갱신은 useAccountData(훅), 표시 라벨은 lib/tbl(웹 TBL DB, 다국어),
 * 수정은 api/accountData(정규화 도메인 API)로 역할이 분리된다. 패널은 표시·편집만 담당한다.
 */
export function AccountDataEditor() {
  const { t, lang } = useI18n()
  const [tab, setTab] = useState<AccountDataTab>('currency')
  const { currencies, heroes, items, loading, refresh } = useAccountData()
  const { data: accounts, loading: accountsLoading, refresh: refreshAccounts } = useAccounts()
  const [switchingAccountId, setSwitchingAccountId] = useState('')
  const profiles = accounts ?? []
  const activeAccount = profiles.find(account => account.active) ?? null

  // 총합 에버스톤 = 무료(FreeDia) + 유료(PayDia). 재화 그리드가 아니라 상단에 강조 표시.
  const everstoneTotal = currencies.reduce((sum, c) => {
    const k = tblCurrencyKind(c.type)
    return k === 'free' || k === 'paid' ? sum + c.value : sum
  }, 0)

  async function selectAccount(id: string) {
    if (activeAccount?.id === id || switchingAccountId) return
    setSwitchingAccountId(id)
    try {
      const result = await apiSelectAccount(id)
      if (result.ok) {
        await refreshAccounts()
        await refresh()
      }
    } finally {
      setSwitchingAccountId('')
    }
  }

  return (
    <div className="space-y-4">
      <div className="flex flex-col gap-3 rounded-2xl border border-slate-200 bg-white/55 p-3 shadow-sm dark:border-white/10 dark:bg-white/5 lg:flex-row lg:items-center lg:justify-between">
        <div className="min-w-0">
          <div className="flex items-center gap-2">
            <span className="text-sm font-bold text-slate-900 dark:text-white">{activeAccount ? activeAccount.nickname : t('admin.accounts')}</span>
            {activeAccount && (
              <span className="rounded-md bg-sky-100 px-1.5 py-0.5 text-[10px] font-semibold text-sky-600 dark:bg-sky-900/30 dark:text-sky-400">
                {fixtureProfileLabel(activeAccount)}
              </span>
            )}
          </div>
          {activeAccount && <p className="mt-0.5 truncate font-mono text-xs text-slate-400">{activeAccount.id} / {activeAccount.player_id}</p>}
        </div>
        <div className="flex flex-wrap items-center gap-2">
          {profiles.map(account => {
            const active = account.active
            const busy = switchingAccountId === account.id
            const Icon = fixtureProfileKind(account.id) === 'guest' ? UserRound : ShieldCheck
            return (
              <button
                key={account.id}
                onClick={() => selectAccount(account.id)}
                disabled={active || busy}
                className={cn(
                  'flex h-9 items-center gap-2 rounded-xl px-3 text-xs font-semibold transition-all active:scale-95 disabled:cursor-default',
                  active
                    ? 'bg-sky-500 text-white shadow-lg shadow-sky-500/25'
                    : 'bg-white/70 text-slate-600 hover:bg-sky-50 hover:text-sky-600 dark:bg-white/5 dark:text-slate-300 dark:hover:bg-white/10',
                )}
              >
                {busy ? <RefreshCw className="h-3.5 w-3.5 animate-spin" /> : <Icon className="h-3.5 w-3.5" />}
                <span>{account.nickname}</span>
              </button>
            )
          })}
          {accountsLoading && profiles.length === 0 && <RefreshCw className="h-4 w-4 animate-spin text-sky-500" />}
        </div>
      </div>
      <nav className="flex items-center gap-2">
        {TABS.map(tb => {
          const Icon = tb.icon
          const active = tab === tb.id
          return (
            <button
              key={tb.id}
              onClick={() => setTab(tb.id)}
              className={cn(
                'flex items-center gap-2 px-4 py-2 rounded-xl text-sm font-semibold transition-all active:scale-95',
                active
                  ? 'bg-linear-to-r from-sky-500 to-blue-500 text-white shadow-lg shadow-sky-500/30'
                  : 'text-slate-500 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/10',
              )}
            >
              <Icon className="w-4 h-4" />
              {t(tb.i18nKey)}
            </button>
          )
        })}
        <div className="ml-auto flex items-center gap-2 px-4 py-2 rounded-xl bg-rose-50 dark:bg-rose-900/20 border border-rose-200 dark:border-rose-700/40">
          <Gem className="w-4 h-4 text-rose-500" />
          <span className="text-xs text-slate-500 dark:text-slate-400">
            {tblCurrencyName(100, tblLangOf(lang))} ({t('accdata.cur.total')})
          </span>
          <span className="text-sm font-bold font-mono text-rose-600 dark:text-rose-400">{everstoneTotal.toLocaleString()}</span>
        </div>
      </nav>

      {tab === 'currency' && <CurrencyPanel currencies={currencies} loading={loading} onChanged={refresh} />}
      {tab === 'hero' && <HeroPanel heroes={heroes} loading={loading} onChanged={refresh} />}
      {tab === 'item' && <ItemPanel items={items} loading={loading} onChanged={refresh} />}
    </div>
  )
}
