import { useState, useEffect } from 'react'
import { RefreshCw, CalendarClock, Save, Trash2 } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { cn } from '@/lib/utils'

interface ScheduleRow {
  schedule_key: string
  schedule_kind: string
  enabled: number
  start_at_ms: number
  end_at_ms: number
  repeat_type: string
  repeat_interval: number
  duration_ms: number
  unlock_stage_no: number
  unlock_story_no: number
  updated_ms: number
  open_now: boolean
}

const EMPTY: ScheduleRow = {
  schedule_key: '',
  schedule_kind: 'event',
  enabled: 1,
  start_at_ms: 0,
  end_at_ms: 0,
  repeat_type: 'none',
  repeat_interval: 0,
  duration_ms: 0,
  unlock_stage_no: 0,
  unlock_story_no: 0,
  updated_ms: 0,
  open_now: true,
}

const REPEAT_TYPES = ['none', 'daily', 'weekly', 'monthly']
const KINDS = ['event', 'gacha', 'content', 'banner']
const DAY_MS = 86_400_000

function msToLocal(ms: number): string {
  if (!ms) return ''
  const d = new Date(ms)
  const p = (n: number) => String(n).padStart(2, '0')
  return `${d.getFullYear()}-${p(d.getMonth() + 1)}-${p(d.getDate())}T${p(d.getHours())}:${p(d.getMinutes())}`
}

function localToMs(v: string): number {
  if (!v) return 0
  const t = new Date(v).getTime()
  return Number.isFinite(t) ? t : 0
}

const inputCls =
  'px-3 py-1.5 text-xs font-mono text-slate-800 dark:text-slate-200 bg-slate-100/80 dark:bg-white/8 border border-slate-200 dark:border-white/10 rounded-lg focus:outline-none focus:ring-1 focus:ring-violet-400/50'

export function SchedulePage() {
  const [rows, setRows] = useState<ScheduleRow[]>([])
  const [loading, setLoading] = useState(false)
  const [draft, setDraft] = useState<ScheduleRow>(EMPTY)
  const [msg, setMsg] = useState('')

  async function load() {
    setLoading(true)
    try {
      const r = await fetch('/web/api/gamedata/schedule')
      const d = await r.json()
      setRows(Array.isArray(d) ? (d as ScheduleRow[]) : [])
    } finally {
      setLoading(false)
    }
  }

  useEffect(() => {
    load()
  }, [])

  function setField<K extends keyof ScheduleRow>(k: K, v: ScheduleRow[K]) {
    setDraft(prev => ({ ...prev, [k]: v }))
  }

  async function save() {
    if (!draft.schedule_key.trim()) {
      setMsg('schedule_key 필수')
      return
    }
    setMsg('')
    const r = await fetch('/web/api/gamedata/schedule', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(draft),
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

  async function remove(key: string) {
    await fetch('/web/api/gamedata/schedule', {
      method: 'DELETE',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ schedule_key: key }),
    })
    load()
  }

  return (
    <div className="space-y-4">
      <div className="flex items-center justify-between gap-4 flex-wrap">
        <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white">
          이벤트·가챠 오픈 스케줄
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
          icon={<CalendarClock className="w-4 h-4 text-fuchsia-500" />}
          title="스케줄 추가 / 편집"
          iconBg="bg-fuchsia-100 dark:bg-fuchsia-900/40"
        />
        <div className="mt-3 grid grid-cols-1 sm:grid-cols-2 gap-3">
          <label className="flex flex-col gap-1">
            <span className="text-[10px] font-bold text-slate-400">schedule_key (tbl_event_info / tbl_gacha)</span>
            <input className={inputCls} value={draft.schedule_key} onChange={e => setField('schedule_key', e.target.value)} />
          </label>
          <label className="flex flex-col gap-1">
            <span className="text-[10px] font-bold text-slate-400">종류</span>
            <select className={inputCls} value={draft.schedule_kind} onChange={e => setField('schedule_kind', e.target.value)}>
              {KINDS.map(k => <option key={k} value={k}>{k}</option>)}
            </select>
          </label>
          <label className="flex flex-col gap-1">
            <span className="text-[10px] font-bold text-slate-400">오픈 시작</span>
            <input type="datetime-local" className={inputCls} value={msToLocal(draft.start_at_ms)} onChange={e => setField('start_at_ms', localToMs(e.target.value))} />
          </label>
          <label className="flex flex-col gap-1">
            <span className="text-[10px] font-bold text-slate-400">종료 (비우면 무기한)</span>
            <input type="datetime-local" className={inputCls} value={msToLocal(draft.end_at_ms)} onChange={e => setField('end_at_ms', localToMs(e.target.value))} />
          </label>
          <label className="flex flex-col gap-1">
            <span className="text-[10px] font-bold text-slate-400">반복 주기</span>
            <select className={inputCls} value={draft.repeat_type} onChange={e => setField('repeat_type', e.target.value)}>
              {REPEAT_TYPES.map(k => <option key={k} value={k}>{k}</option>)}
            </select>
          </label>
          <label className="flex flex-col gap-1">
            <span className="text-[10px] font-bold text-slate-400">반복 간격</span>
            <input type="number" min={0} className={inputCls} value={draft.repeat_interval} onChange={e => setField('repeat_interval', Number(e.target.value))} />
          </label>
          <label className="flex flex-col gap-1">
            <span className="text-[10px] font-bold text-slate-400">1회 지속 (일)</span>
            <input type="number" min={0} className={inputCls} value={draft.duration_ms ? draft.duration_ms / DAY_MS : 0} onChange={e => setField('duration_ms', Number(e.target.value) * DAY_MS)} />
          </label>
          <label className="flex flex-col gap-1">
            <span className="text-[10px] font-bold text-slate-400">선행 스테이지 클리어 (no_value)</span>
            <input type="number" min={0} className={inputCls} value={draft.unlock_stage_no} onChange={e => setField('unlock_stage_no', Number(e.target.value))} />
          </label>
          <label className="flex flex-col gap-1">
            <span className="text-[10px] font-bold text-slate-400">선행 스토리 클리어 (no_value)</span>
            <input type="number" min={0} className={inputCls} value={draft.unlock_story_no} onChange={e => setField('unlock_story_no', Number(e.target.value))} />
          </label>
          <label className="flex items-center gap-2 mt-5">
            <input type="checkbox" checked={draft.enabled === 1} onChange={e => setField('enabled', e.target.checked ? 1 : 0)} />
            <span className="text-xs font-bold text-slate-500 dark:text-slate-400">활성화</span>
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
          icon={<CalendarClock className="w-4 h-4 text-violet-500" />}
          title={`등록된 스케줄 (${rows.length})`}
          iconBg="bg-violet-100 dark:bg-violet-900/40"
        />
        <div className="mt-3 space-y-1.5">
          {rows.length === 0 && (
            <p className="text-xs text-slate-400 py-4 text-center">등록된 스케줄이 없습니다</p>
          )}
          {rows.map(row => (
            <div
              key={row.schedule_key}
              className="flex items-center gap-3 px-3 py-2 rounded-xl bg-slate-50/80 dark:bg-white/5 border border-slate-200/60 dark:border-white/8"
            >
              <span className={cn('w-2 h-2 rounded-full shrink-0', row.open_now ? 'bg-emerald-400' : 'bg-slate-300 dark:bg-slate-600')} />
              <div className="flex-1 min-w-0">
                <p className="text-xs font-bold text-slate-800 dark:text-slate-200 font-mono truncate">{row.schedule_key}</p>
                <p className="text-[10px] text-slate-400 font-mono truncate">
                  {row.schedule_kind} · {row.enabled ? 'on' : 'off'} · {row.repeat_type}{row.repeat_interval > 0 ? `×${row.repeat_interval}` : ''} · {row.start_at_ms ? new Date(row.start_at_ms).toLocaleDateString() : '—'} ~ {row.end_at_ms ? new Date(row.end_at_ms).toLocaleDateString() : '∞'}
                </p>
              </div>
              <button
                onClick={() => setDraft({ ...row })}
                className="px-2 py-1 text-[10px] font-bold rounded-lg text-violet-600 dark:text-violet-400 hover:bg-violet-100 dark:hover:bg-violet-900/30 transition-all active:scale-95"
              >
                편집
              </button>
              <button
                onClick={() => remove(row.schedule_key)}
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
