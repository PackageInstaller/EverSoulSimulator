import { useState, useMemo } from 'react'
import { Loader2, Check } from 'lucide-react'
import { cn } from '@/lib/utils'
import { useI18n } from '@/lib/i18n'
import { tblCurrencyName, tblCurrencyEnumName, tblCurrencyKind, tblLangOf, tblItemIconUrl, TBL_CURRENCY_TYPES } from '@/lib/tbl'
import { apiSetAccountCurrency } from '@/api/accountData'
import { type AccountCurrencyRow } from '@/types/accountData'

interface CurrencyPanelProps {
  currencies: AccountCurrencyRow[]
  loading: boolean
  onChanged: () => Promise<void>
}

// 재화 53종(E_CURRENCY) 게임형 그리드. 이름 다국어는 lib/tbl(type==Item.no), 절대값 설정.
export function CurrencyPanel({ currencies, loading, onChanged }: CurrencyPanelProps) {
  const { t, lang } = useI18n()
  const tl = tblLangOf(lang)
  const valueByType = useMemo(() => new Map(currencies.map(c => [c.type, c.value])), [currencies])
  const [draft, setDraft] = useState<Record<number, string>>({})
  const [busyType, setBusyType] = useState<number | null>(null)

  async function apply(type: number) {
    const raw = draft[type]
    if (raw === undefined || raw === '') return
    const value = Number(raw)
    if (!Number.isFinite(value)) return
    setBusyType(type)
    try {
      await apiSetAccountCurrency({ type, value })
      await onChanged()
      setDraft(d => ({ ...d, [type]: '' }))
    } finally {
      setBusyType(null)
    }
  }

  if (loading && currencies.length === 0) {
    return <div className="flex justify-center py-10"><Loader2 className="w-6 h-6 animate-spin text-sky-500" /></div>
  }

  return (
    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
      {TBL_CURRENCY_TYPES.filter(type => tblCurrencyKind(type) !== 'total').map(type => {
        const current = valueByType.get(type) ?? 0
        const busy = busyType === type
        const kind = tblCurrencyKind(type)
        const name = kind === 'normal'
          ? tblCurrencyName(type, tl)
          : `${t('accdata.cur.' + kind)} ${tblCurrencyName(type, tl)}`
        const icon = tblItemIconUrl(type)
        return (
          <div
            key={type}
            className="rounded-2xl p-4 bg-white/60 dark:bg-white/5 border border-slate-200 dark:border-white/10 backdrop-blur-sm"
          >
            <div className="flex items-center justify-between gap-2">
              <div className="flex items-center gap-2 min-w-0">
                {icon && <img src={icon} alt="" loading="lazy" className="w-7 h-7 object-contain shrink-0" />}
                <span className="text-sm font-semibold text-slate-900 dark:text-white truncate" title={tblCurrencyEnumName(type)}>
                  {name}
                </span>
              </div>
              <span className="text-[10px] font-mono text-slate-400 shrink-0">#{type}</span>
            </div>
            <div className="mt-1 text-xs text-slate-500 dark:text-slate-400">
              {t('accdata.current')}: <span className="font-mono">{current.toLocaleString()}</span>
            </div>
            <div className="mt-2 flex gap-1.5">
              <input
                type="number"
                value={draft[type] ?? ''}
                onChange={e => setDraft(d => ({ ...d, [type]: e.target.value }))}
                placeholder={t('accdata.set_value')}
                className="flex-1 min-w-0 rounded-lg px-2.5 py-1.5 text-sm bg-slate-50 dark:bg-white/5 border border-slate-200 dark:border-white/10 focus:outline-none focus:border-sky-400"
              />
              <button
                onClick={() => apply(type)}
                disabled={busy}
                className={cn(
                  'px-3 rounded-lg text-white bg-sky-500 hover:bg-sky-600 transition-all active:scale-95 disabled:opacity-50',
                )}
                aria-label={t('accdata.apply')}
              >
                {busy ? <Loader2 className="w-4 h-4 animate-spin" /> : <Check className="w-4 h-4" />}
              </button>
            </div>
          </div>
        )
      })}
    </div>
  )
}
