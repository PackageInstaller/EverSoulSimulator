import { useState, useMemo } from 'react'
import { Loader2, Plus, Trash2 } from 'lucide-react'
import { useI18n } from '@/lib/i18n'
import { tblHeroName, tblGradeName, tblHero, tblHeroGrade, tblString, tblLangOf, tblSpiritIconUrl, TBL_COLLECTIBLE_HEROES } from '@/lib/tbl'
import { apiUpsertAccountHero, apiDeleteAccountHero } from '@/api/accountData'
import { type AccountHeroRow } from '@/types/accountData'
import { PickerModal, type PickerEntry } from './PickerModal'

interface HeroPanelProps {
  heroes: AccountHeroRow[]
  loading: boolean
  onChanged: () => Promise<void>
}

// 보유 영웅 게임형 그리드 + 추가/레벨/삭제. grade_sno·race_sno 는 lib/tbl(웹 TBL DB)에서
// hero_no 로 해석해 서버에 전달한다(서버 하드코딩 메타 제거).
export function HeroPanel({ heroes, loading, onChanged }: HeroPanelProps) {
  const { t, lang } = useI18n()
  const tl = tblLangOf(lang)
  const [selectedNo, setSelectedNo] = useState<number | null>(null)
  const [pickerOpen, setPickerOpen] = useState(false)
  const [addLv, setAddLv] = useState('1')
  const [busy, setBusy] = useState(false)
  const [err, setErr] = useState<string | null>(null)

  // 플레이어블 정령(is_collectable)만 PickerEntry(이름/등급·종족/등급색)로 구성.
  const spiritEntries = useMemo<PickerEntry[]>(() => TBL_COLLECTIBLE_HEROES.map(h => {
    const g = tblHeroGrade(h.grade_sno)
    return {
      id: h.no,
      name: tblHeroName(h.no, tl),
      sub: `${tblGradeName(h.grade_sno, tl)} · ${tblString(h.race_sno, tl)}`,
      subColor: g ? '#' + g.grade_color : undefined,
      icon: tblSpiritIconUrl(h.no),
      iconCover: true,
    }
  }), [tl])

  async function add() {
    const meta = selectedNo != null ? tblHero(selectedNo) : undefined
    if (selectedNo == null || !meta) { setErr(t('accdata.hero_invalid')); return }
    setBusy(true); setErr(null)
    try {
      await apiUpsertAccountHero({ heroNo: selectedNo, level: Number(addLv) || 1, gradeSno: meta.grade_sno, raceSno: meta.race_sno })
      await onChanged()
      setSelectedNo(null)
    } finally { setBusy(false) }
  }

  async function changeLevel(h: AccountHeroRow, level: number) {
    const meta = tblHero(h.heroNo)
    setBusy(true)
    try {
      await apiUpsertAccountHero({ idx: h.idx, heroNo: h.heroNo, level, gradeSno: h.gradeSno, raceSno: meta?.race_sno ?? 0 })
      await onChanged()
    } finally { setBusy(false) }
  }

  async function remove(idx: string) {
    setBusy(true)
    try { await apiDeleteAccountHero({ idx }); await onChanged() } finally { setBusy(false) }
  }

  return (
    <div className="space-y-4">
      <div className="rounded-2xl p-4 bg-white/60 dark:bg-white/5 border border-slate-200 dark:border-white/10 flex flex-wrap items-end gap-2">
        <div className="flex flex-col gap-1">
          <label className="text-xs text-slate-500">{t('accdata.hero_no')}</label>
          <button type="button" onClick={() => setPickerOpen(true)}
            className="rounded-lg px-2.5 py-1.5 text-sm text-left bg-slate-50 dark:bg-white/5 border border-slate-200 dark:border-white/10 w-44 hover:border-sky-400 transition-all">
            {selectedNo != null ? tblHeroName(selectedNo, tl) : <span className="text-slate-400">{t('accdata.hero_no')}</span>}
          </button>
        </div>
        <div className="flex flex-col gap-1">
          <label className="text-xs text-slate-500">{t('accdata.level')}</label>
          <input value={addLv} onChange={e => setAddLv(e.target.value)} type="number"
            className="rounded-lg px-2.5 py-1.5 text-sm bg-slate-50 dark:bg-white/5 border border-slate-200 dark:border-white/10 w-20" />
        </div>
        <button onClick={add} disabled={busy || selectedNo == null}
          className="ml-auto flex items-center gap-1.5 px-4 py-2 rounded-lg text-white bg-emerald-500 hover:bg-emerald-600 transition-all active:scale-95 disabled:opacity-50">
          {busy ? <Loader2 className="w-4 h-4 animate-spin" /> : <Plus className="w-4 h-4" />}{t('accdata.hero_add')}
        </button>
      </div>
      {err && <p className="text-xs text-rose-500">{err}</p>}

      {pickerOpen && (
        <PickerModal
          entries={spiritEntries}
          placeholder={t('accdata.hero_no')}
          emptyText={t('accdata.hero_invalid')}
          onSelect={setSelectedNo}
          onClose={() => setPickerOpen(false)}
        />
      )}

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
        {heroes.map(h => {
          const grade = tblHeroGrade(h.gradeSno)
          return (
            <div key={h.idx} className="rounded-2xl p-4 bg-white/60 dark:bg-white/5 border border-slate-200 dark:border-white/10">
              <div className="flex items-center justify-between gap-2">
                <div className="min-w-0">
                  <div className="text-sm font-semibold text-slate-900 dark:text-white truncate">{tblHeroName(h.heroNo, tl)}</div>
                  <div className="text-xs font-medium" style={grade ? { color: '#' + grade.grade_color } : undefined}>
                    {tblGradeName(h.gradeSno, tl)} · Lv {h.level}
                  </div>
                </div>
                <button onClick={() => remove(h.idx)} disabled={busy}
                  className="p-1.5 rounded-lg text-rose-400 hover:bg-rose-50 dark:hover:bg-rose-900/20 transition-all active:scale-95"
                  aria-label={t('accdata.hero_delete')}>
                  <Trash2 className="w-4 h-4" />
                </button>
              </div>
              <div className="mt-2 flex items-center gap-1.5">
                <input type="number" defaultValue={h.level}
                  onBlur={e => { const v = Number(e.target.value); if (v && v !== h.level) void changeLevel(h, v) }}
                  className="w-20 rounded-lg px-2 py-1 text-sm bg-slate-50 dark:bg-white/5 border border-slate-200 dark:border-white/10 focus:outline-none focus:border-sky-400" />
                <span className="text-xs text-slate-400">{t('accdata.level')}</span>
              </div>
            </div>
          )
        })}
        {heroes.length === 0 && !loading && (
          <p className="col-span-full text-center text-sm text-slate-400 py-8">{t('accdata.hero_empty')}</p>
        )}
      </div>
    </div>
  )
}
