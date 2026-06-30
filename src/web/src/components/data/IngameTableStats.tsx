import { useMemo } from 'react'
import { Hash, Link2, Rows3, Columns3, CircleSlash, BarChart3 } from 'lucide-react'
import { GlassCard } from '@/components/ui/GlassCard'
import { typo, badge } from '@/styles/tokens'
import { type JsonColumnMeta } from '@/types/api'
import { type TblLang, type TblRefKind } from '@/types/tbl'
import { dbColumnLabel } from '@/lib/dbColumnLabel'
import { useI18n } from '@/lib/i18n'
import { tblLangOf } from '@/lib/tbl'
import { tblRefKind, tblRefName } from '@/lib/tblRef'

type ColKind = 'ref' | 'numeric' | 'other'
interface TopEntry { value: unknown; count: number; name: string | null }
interface HistBucket { from: number; count: number }
interface ColStat {
  name: string
  kind: ColKind
  refKind: TblRefKind | null
  count: number
  nulls: number
  distinct: number
  min?: number
  max?: number
  avg?: number
  histogram?: HistBucket[]
  top?: TopEntry[]
}

const HIST_BUCKETS = 10
const TOP_N = 8

// 컬럼별 통계 산출 — 참조(빈도 Top)/수치(min·max·avg·히스토그램)/기타(고유·최빈)로 분기.
function computeStats(columns: JsonColumnMeta[], rows: Record<string, unknown>[], lang: TblLang): ColStat[] {
  return columns.map(c => {
    const vals = rows.map(r => r[c.name])
    const nonNull = vals.filter(v => v !== null && v !== undefined)
    const nulls = vals.length - nonNull.length
    const freq = new Map<unknown, number>()
    for (const v of nonNull) freq.set(v, (freq.get(v) ?? 0) + 1)
    const refKind = tblRefKind(c.name)

    if (refKind) {
      const top = [...freq.entries()].sort((a, b) => b[1] - a[1]).slice(0, TOP_N)
        .map(([value, count]) => ({ value, count, name: tblRefName(c.name, value, lang) }))
      return { name: c.name, kind: 'ref', refKind, count: nonNull.length, nulls, distinct: freq.size, top }
    }

    const nums = nonNull.filter((v): v is number => typeof v === 'number')
    if (nums.length > 0 && nums.length === nonNull.length) {
      let min = nums[0], max = nums[0], sum = 0
      for (const n of nums) { if (n < min) min = n; if (n > max) max = n; sum += n }
      const span = (max - min) || 1
      const buckets = Array.from({ length: HIST_BUCKETS }, () => 0)
      for (const n of nums) {
        let i = Math.floor(((n - min) / span) * HIST_BUCKETS)
        if (i >= HIST_BUCKETS) i = HIST_BUCKETS - 1
        if (i < 0) i = 0
        buckets[i]++
      }
      const histogram = buckets.map((count, i) => ({ from: min + (span * i) / HIST_BUCKETS, count }))
      return { name: c.name, kind: 'numeric', refKind, count: nonNull.length, nulls, distinct: freq.size, min, max, avg: sum / nums.length, histogram }
    }

    const top = [...freq.entries()].sort((a, b) => b[1] - a[1]).slice(0, TOP_N)
      .map(([value, count]) => ({ value, count, name: null }))
    return { name: c.name, kind: 'other', refKind, count: nonNull.length, nulls, distinct: freq.size, top }
  })
}

const KIND_ACCENT: Record<ColKind, string> = {
  ref: 'text-sky-500',
  numeric: 'text-emerald-500',
  other: 'text-slate-400',
}
const KIND_BAR: Record<ColKind, string> = {
  ref: 'bg-sky-500/70',
  numeric: 'bg-emerald-500/70',
  other: 'bg-slate-400/60',
}

interface IngameTableStatsProps {
  columns: JsonColumnMeta[]
  rows: Record<string, unknown>[]
}

// 인게임설정 테이블의 시각적 통계 — 참조/수치/기타 컬럼별 카드(빈도 막대·히스토그램).
export function IngameTableStats({ columns, rows }: IngameTableStatsProps) {
  const { t, lang } = useI18n()
  const tl = tblLangOf(lang)
  const stats = useMemo(() => computeStats(columns, rows, tl), [columns, rows, tl])

  const refCount = stats.filter(s => s.kind === 'ref').length
  const numCount = stats.filter(s => s.kind === 'numeric').length
  const nullTotal = stats.reduce((a, s) => a + s.nulls, 0)

  if (rows.length === 0 || columns.length === 0) {
    return (
      <div className="flex flex-col items-center justify-center gap-2 py-16 text-(--es-text-faint)">
        <BarChart3 size={32} />
        <p className={typo.hint}>{t('stats.empty')}</p>
      </div>
    )
  }

  const summary = [
    { icon: Rows3, label: t('stats.rows'), value: rows.length, cls: 'text-indigo-500' },
    { icon: Columns3, label: t('stats.columns'), value: columns.length, cls: 'text-violet-500' },
    { icon: Link2, label: t('stats.refs'), value: refCount, cls: 'text-sky-500' },
    { icon: Hash, label: t('stats.numeric'), value: numCount, cls: 'text-emerald-500' },
    { icon: CircleSlash, label: t('stats.nulls'), value: nullTotal, cls: 'text-rose-400' },
  ]

  return (
    <div className="flex flex-col gap-4">
      <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-5 gap-2.5">
        {summary.map(s => (
          <div key={s.label} className="flex items-center gap-2.5 rounded-2xl border border-(--es-glass-border) bg-(--es-glass-fill-soft) px-3.5 py-3">
            <s.icon size={18} className={s.cls} />
            <div className="flex flex-col">
              <span className="text-lg font-bold leading-none text-(--es-text-strong)">{s.value.toLocaleString()}</span>
              <span className={typo.label}>{s.label}</span>
            </div>
          </div>
        ))}
      </div>

      <div className="grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3 gap-3">
        {stats.map(s => {
          const Icon = s.kind === 'ref' ? Link2 : s.kind === 'numeric' ? Hash : BarChart3
          const topMax = s.top && s.top.length ? Math.max(...s.top.map(e => e.count)) : 1
          const histMax = s.histogram && s.histogram.length ? Math.max(...s.histogram.map(b => b.count)) : 1
          return (
            <GlassCard key={s.name}>
              <div className="flex flex-col gap-2.5">
                <div className="flex items-center gap-1.5 flex-wrap">
                  <Icon size={15} className={KIND_ACCENT[s.kind]} />
                  <span className={typo.label}>{dbColumnLabel(t, s.name)}</span>
                  <code className="text-[11px] text-(--es-text-faint)">{s.name}</code>
                  <span className="ml-auto text-[11px] text-(--es-text-faint)">
                    {t('stats.distinct')} {s.distinct.toLocaleString()}{s.nulls ? ` · ${t('stats.nulls')} ${s.nulls.toLocaleString()}` : ''}
                  </span>
                </div>

                {s.kind === 'numeric' && (
                  <>
                    <div className="flex gap-2 text-xs">
                      <span className={badge.neutral}>{t('stats.min')} {Math.round(s.min ?? 0).toLocaleString()}</span>
                      <span className={badge.neutral}>{t('stats.max')} {Math.round(s.max ?? 0).toLocaleString()}</span>
                      <span className={badge.accent}>{t('stats.avg')} {(s.avg ?? 0).toFixed(1)}</span>
                    </div>
                    <div className="flex items-end gap-0.5 h-16">
                      {(s.histogram ?? []).map((b, i) => (
                        <div key={i} className="flex-1 flex flex-col justify-end" title={`≥ ${Math.round(b.from)} · ${b.count}`}>
                          <div className={`${KIND_BAR.numeric} rounded-t`} style={{ height: `${Math.max(3, (b.count / histMax) * 100)}%` }} />
                        </div>
                      ))}
                    </div>
                  </>
                )}

                {(s.kind === 'ref' || s.kind === 'other') && s.top && (
                  <div className="flex flex-col gap-1.5">
                    {s.top.map((e, i) => (
                      <div key={i} className="flex items-center gap-2">
                        <span className="w-28 shrink-0 truncate text-xs text-(--es-text-strong)" title={e.name ?? String(e.value)}>
                          {e.name ?? String(e.value)}
                          {e.name && <span className="ml-1 text-(--es-text-faint)">#{String(e.value)}</span>}
                        </span>
                        <div className="flex-1 h-3 rounded bg-(--es-glass-fill-soft) overflow-hidden">
                          <div className={`h-full ${KIND_BAR[s.kind]}`} style={{ width: `${(e.count / topMax) * 100}%` }} />
                        </div>
                        <span className="w-10 shrink-0 text-right text-[11px] tabular-nums text-(--es-text-faint)">{e.count.toLocaleString()}</span>
                      </div>
                    ))}
                  </div>
                )}
              </div>
            </GlassCard>
          )
        })}
      </div>
    </div>
  )
}
