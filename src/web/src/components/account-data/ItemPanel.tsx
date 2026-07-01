import { useState, useMemo } from 'react'
import { Loader2, Check, Plus } from 'lucide-react'
import { useI18n } from '@/lib/i18n'
import { tblItemName, tblItemGrade, tblGradeName, tblLangOf, tblIconUrl, tblItemIconUrl, TBL_ITEMS } from '@/lib/tbl'
import { apiSetAccountItem } from '@/api/accountData'
import { type AccountItemRow } from '@/types/accountData'
import { PickerModal, type PickerEntry } from './PickerModal'

interface ItemPanelProps {
  items: AccountItemRow[]
  loading: boolean
  onChanged: () => Promise<void>
}

// 보유 아이템(item_etc) 게임형 그리드 + 수량 설정/추가. 이름 다국어는 lib/tbl(Item.name_sno).
export function ItemPanel({ items, loading, onChanged }: ItemPanelProps) {
  const { t, lang } = useI18n()
  const tl = tblLangOf(lang)
  const [draft, setDraft] = useState<Record<number, string>>({})
  const [selectedNo, setSelectedNo] = useState<number | null>(null)
  const [pickerOpen, setPickerOpen] = useState(false)
  const [addCnt, setAddCnt] = useState('1')
  const [busy, setBusy] = useState<number | 'add' | null>(null)

  // 전체 아이템(Item)을 PickerEntry(이름/등급/등급색)로 구성.
  const itemEntries = useMemo<PickerEntry[]>(() => TBL_ITEMS.map(it => {
    const g = tblItemGrade(it.grade_sno)
    return {
      id: it.no,
      name: tblItemName(it.no, tl),
      sub: tblGradeName(it.grade_sno, tl),
      subColor: g ? '#' + g.grade_color : undefined,
      icon: tblIconUrl(it.icon_path),
    }
  }), [tl])

  async function applyCnt(itemNo: number) {
    const raw = draft[itemNo]
    if (raw === undefined || raw === '') return
    setBusy(itemNo)
    try {
      await apiSetAccountItem({ itemNo, cnt: Number(raw) })
      await onChanged()
      setDraft(d => ({ ...d, [itemNo]: '' }))
    } finally { setBusy(null) }
  }

  async function add() {
    if (selectedNo == null) return
    setBusy('add')
    try {
      await apiSetAccountItem({ itemNo: selectedNo, cnt: Number(addCnt) || 1 })
      await onChanged()
      setSelectedNo(null)
    } finally { setBusy(null) }
  }

  if (loading && items.length === 0) {
    return <div className="flex justify-center py-10"><Loader2 className="w-6 h-6 animate-spin text-sky-500" /></div>
  }

  return (
    <div className="space-y-4">
      <div className="rounded-2xl p-4 bg-white/60 dark:bg-white/5 border border-slate-200 dark:border-white/10 flex flex-wrap items-end gap-2">
        <div className="flex flex-col gap-1">
          <label className="text-xs text-slate-500">{t('accdata.item_no')}</label>
          <button type="button" onClick={() => setPickerOpen(true)}
            className="rounded-lg px-2.5 py-1.5 text-sm text-left bg-slate-50 dark:bg-white/5 border border-slate-200 dark:border-white/10 w-44 hover:border-sky-400 transition-all">
            {selectedNo != null ? tblItemName(selectedNo, tl) : <span className="text-slate-400">{t('accdata.item_no')}</span>}
          </button>
        </div>
        <div className="flex flex-col gap-1">
          <label className="text-xs text-slate-500">{t('accdata.count')}</label>
          <input value={addCnt} onChange={e => setAddCnt(e.target.value)} type="number"
            className="rounded-lg px-2.5 py-1.5 text-sm bg-slate-50 dark:bg-white/5 border border-slate-200 dark:border-white/10 w-24" />
        </div>
        <button onClick={add} disabled={busy === 'add' || selectedNo == null}
          className="ml-auto flex items-center gap-1.5 px-4 py-2 rounded-lg text-white bg-emerald-500 hover:bg-emerald-600 transition-all active:scale-95 disabled:opacity-50">
          {busy === 'add' ? <Loader2 className="w-4 h-4 animate-spin" /> : <Plus className="w-4 h-4" />}{t('accdata.item_set')}
        </button>
      </div>

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
        {items.map(it => {
          const busyThis = busy === it.itemNo
          const icon = tblItemIconUrl(it.itemNo)
          return (
            <div key={it.itemNo} className="rounded-2xl p-4 bg-white/60 dark:bg-white/5 border border-slate-200 dark:border-white/10">
              <div className="flex items-center justify-between gap-2">
                <div className="flex items-center gap-2 min-w-0">
                  {icon && <img src={icon} alt="" loading="lazy" className="w-7 h-7 object-contain shrink-0" />}
                  <span className="text-sm font-semibold text-slate-900 dark:text-white truncate">{tblItemName(it.itemNo, tl)}</span>
                </div>
                <span className="text-[10px] font-mono text-slate-400 shrink-0">#{it.itemNo}</span>
              </div>
              <div className="mt-1 text-xs text-slate-500 dark:text-slate-400">
                {t('accdata.count')}: <span className="font-mono">{it.cnt.toLocaleString()}</span>
              </div>
              <div className="mt-2 flex gap-1.5">
                <input type="number" value={draft[it.itemNo] ?? ''} onChange={e => setDraft(d => ({ ...d, [it.itemNo]: e.target.value }))}
                  placeholder={t('accdata.set_value')}
                  className="flex-1 min-w-0 rounded-lg px-2.5 py-1.5 text-sm bg-slate-50 dark:bg-white/5 border border-slate-200 dark:border-white/10 focus:outline-none focus:border-sky-400" />
                <button onClick={() => applyCnt(it.itemNo)} disabled={busyThis}
                  className="px-3 rounded-lg text-white bg-sky-500 hover:bg-sky-600 transition-all active:scale-95 disabled:opacity-50"
                  aria-label={t('accdata.apply')}>
                  {busyThis ? <Loader2 className="w-4 h-4 animate-spin" /> : <Check className="w-4 h-4" />}
                </button>
              </div>
            </div>
          )
        })}
        {items.length === 0 && !loading && (
          <p className="col-span-full text-center text-sm text-slate-400 py-8">{t('accdata.item_empty')}</p>
        )}
      </div>

      {pickerOpen && (
        <PickerModal
          entries={itemEntries}
          placeholder={t('accdata.item_no')}
          emptyText={t('accdata.item_empty')}
          onSelect={setSelectedNo}
          onClose={() => setPickerOpen(false)}
        />
      )}
    </div>
  )
}
