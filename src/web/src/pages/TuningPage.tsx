import { useState, useEffect } from 'react'
import { RefreshCw, SlidersHorizontal, Save, Trash2 } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { cn } from '@/lib/utils'

interface TuningRow {
  scope: string
  param_key: string
  int_value: number
  real_value: number
  enabled: number
  updated_ms: number
}

interface Preset {
  scope: string
  param_key: string
  label: string
  kind: 'real' | 'int'
}

const PRESETS: Preset[] = [
  { scope: 'reward',         param_key: 'item_amount_scale', label: '전역 보상량 배율',          kind: 'real' },
  { scope: 'arbeit',         param_key: 'time_scale',        label: '아르바이트 소요시간 배율',  kind: 'real' },
  { scope: 'daily_reset',    param_key: 'reset_hour',        label: '일일 리셋 시각 (시)',       kind: 'int' },
  { scope: 'arena_weekly',   param_key: 'reward_scale',      label: '주간 아레나 보상 배율',     kind: 'real' },
  { scope: 'champion_arena', param_key: 'reward_scale',      label: '챔피언스 아레나 보상 배율', kind: 'real' },
]

const EMPTY: TuningRow = {
  scope: '',
  param_key: '',
  int_value: 0,
  real_value: 1,
  enabled: 1,
  updated_ms: 0,
}

const inputCls =
  'px-3 py-1.5 text-xs font-mono text-slate-800 dark:text-slate-200 bg-slate-100/80 dark:bg-white/8 border border-slate-200 dark:border-white/10 rounded-lg focus:outline-none focus:ring-1 focus:ring-violet-400/50'

export function TuningPage() {
  const [rows, setRows] = useState<TuningRow[]>([])
  const [loading, setLoading] = useState(false)
  const [draft, setDraft] = useState<TuningRow>(EMPTY)
  const [msg, setMsg] = useState('')

  async function load() {
    setLoading(true)
    try {
      const r = await fetch('/web/api/gamedata/tuning')
      const d = await r.json()
      setRows(Array.isArray(d) ? (d as TuningRow[]) : [])
    } finally {
      setLoading(false)
    }
  }

  useEffect(() => {
    load()
  }, [])

  function setField<K extends keyof TuningRow>(k: K, v: TuningRow[K]) {
    setDraft(prev => ({ ...prev, [k]: v }))
  }

  function applyPreset(p: Preset) {
    setDraft({ scope: p.scope, param_key: p.param_key, int_value: 0, real_value: 1, enabled: 1, updated_ms: 0 })
  }

  async function save() {
    if (!draft.scope.trim() || !draft.param_key.trim()) {
      setMsg('scope / param_key 필수')
      return
    }
    setMsg('')
    const r = await fetch('/web/api/gamedata/tuning', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ ...draft, real_value: String(draft.real_value) }),
    })
    const d = await r.json()
    if (d.ok) {
      setMsg('저장됨')
      setDraft(EMPTY)
      load()
    } else {
      setMsg(d.error ?? '오류')
    }
  }

  async function remove(scope: string, param_key: string) {
    await fetch('/web/api/gamedata/tuning', {
      method: 'DELETE',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ scope, param_key }),
    })
    load()
  }

  return (
    <div className="space-y-4">
      <div className="flex items-center justify-between gap-4 flex-wrap">
        <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white">
          컨텐츠 튜닝 (시간 · 리셋 · 보상량 · 배율)
        </h2>
        <div className="flex items-center gap-2">
          {msg && <span className="text-sm font-medium text-violet-500">{msg}</span>}
          <button
            onClick={load}
            className="p-2 rounded-xl text-slate-400 hover:bg-white/40 dark:hover:bg-white/10 transition-all active:scale-95"
          >
            <RefreshCw className={cn('w-4 h-4', loading && 'animate-spin')} />
          </button>
        </div>
      </div>

      <GlassCard>
        <GlassCardHeader
          icon={<SlidersHorizontal className="w-4 h-4 text-emerald-500" />}
          title="빠른 추가 (프리셋)"
          iconBg="bg-emerald-100 dark:bg-emerald-900/40"
        />
        <div className="mt-3 flex flex-wrap gap-1.5">
          {PRESETS.map(p => (
            <button
              key={`${p.scope}:${p.param_key}`}
              onClick={() => applyPreset(p)}
              className="px-3 py-1.5 rounded-xl text-xs font-bold text-slate-600 dark:text-slate-300 bg-slate-100 dark:bg-white/8 hover:bg-emerald-100 dark:hover:bg-emerald-900/30 transition-all active:scale-95"
            >
              {p.label}
            </button>
          ))}
        </div>
      </GlassCard>

      <GlassCard>
        <GlassCardHeader
          icon={<SlidersHorizontal className="w-4 h-4 text-violet-500" />}
          title="튜닝 추가 / 편집"
          iconBg="bg-violet-100 dark:bg-violet-900/40"
        />
        <div className="mt-3 grid grid-cols-1 sm:grid-cols-2 gap-3">
          <label className="flex flex-col gap-1">
            <span className="text-[10px] font-bold text-slate-400">scope (컨텐츠 영역)</span>
            <input className={inputCls} value={draft.scope} onChange={e => setField('scope', e.target.value)} />
          </label>
          <label className="flex flex-col gap-1">
            <span className="text-[10px] font-bold text-slate-400">param_key (파라미터)</span>
            <input className={inputCls} value={draft.param_key} onChange={e => setField('param_key', e.target.value)} />
          </label>
          <label className="flex flex-col gap-1">
            <span className="text-[10px] font-bold text-slate-400">정수값 (시각/수량/초)</span>
            <input type="number" className={inputCls} value={draft.int_value} onChange={e => setField('int_value', Number(e.target.value))} />
          </label>
          <label className="flex flex-col gap-1">
            <span className="text-[10px] font-bold text-slate-400">배율 (1.0 = 원본)</span>
            <input type="number" step="0.1" className={inputCls} value={draft.real_value} onChange={e => setField('real_value', Number(e.target.value))} />
          </label>
          <label className="flex items-center gap-2 mt-5">
            <input type="checkbox" checked={draft.enabled === 1} onChange={e => setField('enabled', e.target.checked ? 1 : 0)} />
            <span className="text-xs font-bold text-slate-500 dark:text-slate-400">적용 (해제 시 원본값 사용)</span>
          </label>
        </div>
        <div className="mt-3 flex justify-end">
          <button
            onClick={save}
            className="flex items-center gap-1.5 px-3 py-2 rounded-xl text-sm font-bold text-white bg-linear-to-r from-violet-500 to-purple-500 shadow-lg shadow-violet-500/30 transition-all active:scale-95"
          >
            <Save className="w-4 h-4" />
            저장
          </button>
        </div>
      </GlassCard>

      <GlassCard>
        <GlassCardHeader
          icon={<SlidersHorizontal className="w-4 h-4 text-fuchsia-500" />}
          title={`등록된 튜닝 (${rows.length})`}
          iconBg="bg-fuchsia-100 dark:bg-fuchsia-900/40"
        />
        <div className="mt-3 space-y-1.5">
          {rows.length === 0 && (
            <p className="text-xs text-slate-400 py-4 text-center">등록된 튜닝이 없습니다 (모든 컨텐츠 원본값 사용)</p>
          )}
          {rows.map(row => (
            <div
              key={`${row.scope}:${row.param_key}`}
              className="flex items-center gap-3 px-3 py-2 rounded-xl bg-slate-50/80 dark:bg-white/5 border border-slate-200/60 dark:border-white/8"
            >
              <span className={cn('w-2 h-2 rounded-full shrink-0', row.enabled ? 'bg-emerald-400' : 'bg-slate-300 dark:bg-slate-600')} />
              <div className="flex-1 min-w-0">
                <p className="text-xs font-bold text-slate-800 dark:text-slate-200 font-mono truncate">{row.scope} / {row.param_key}</p>
                <p className="text-[10px] text-slate-400 font-mono">int={row.int_value} · ×{row.real_value} · {row.enabled ? 'on' : 'off'}</p>
              </div>
              <button
                onClick={() => setDraft({ ...row })}
                className="px-2 py-1 text-[10px] font-bold rounded-lg text-violet-600 dark:text-violet-400 hover:bg-violet-100 dark:hover:bg-violet-900/30 transition-all active:scale-95"
              >
                편집
              </button>
              <button
                onClick={() => remove(row.scope, row.param_key)}
                className="p-1.5 rounded-lg text-rose-400 hover:bg-rose-100 dark:hover:bg-rose-900/30 transition-all active:scale-95"
              >
                <Trash2 className="w-3.5 h-3.5" />
              </button>
            </div>
          ))}
        </div>
      </GlassCard>
    </div>
  )
}
