import { useState, useEffect } from 'react'
import { RefreshCw, Coins, Ghost, User, Settings2, Save } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'

type Section = 'userinfo' | 'currencies' | 'heroes' | 'settings'

interface SpiritEntry {
  idx: string
  heroNo: number
  level: number
  gradeSno: number
}

interface SectionMeta {
  key: Section
  label: string
  icon: React.ElementType
  color: string
  bg: string
}

const SECTIONS: SectionMeta[] = [
  { key: 'userinfo',   label: 'userinfo',   icon: User,     color: 'text-sky-600',    bg: 'bg-sky-100 dark:bg-sky-900/40' },
  { key: 'currencies', label: 'currencies', icon: Coins,    color: 'text-amber-600',  bg: 'bg-amber-100 dark:bg-amber-900/40' },
  { key: 'heroes',     label: 'heroes',     icon: Ghost,    color: 'text-purple-600', bg: 'bg-purple-100 dark:bg-purple-900/40' },
  { key: 'settings',   label: 'settings',   icon: Settings2, color: 'text-slate-600', bg: 'bg-slate-100 dark:bg-slate-700/60' },
]

function useSection(section: Section) {
  const [raw, setRaw] = useState<unknown>(null)
  const [loading, setLoading] = useState(false)

  async function load() {
    setLoading(true)
    try {
      const r = await fetch(`/web/api/gamedata/${section}`)
      setRaw(await r.json())
    } finally {
      setLoading(false)
    }
  }

  useEffect(() => { load() }, [section])
  return { raw, loading, reload: load }
}

function SpiritCard({ spirit }: { spirit: SpiritEntry }) {
  return (
    <div className="flex items-center gap-3 px-3 py-2.5 rounded-xl bg-slate-50/80 dark:bg-white/5 border border-slate-200/60 dark:border-white/8">
      <Ghost className="w-4 h-4 text-purple-400 shrink-0" />
      <div className="flex-1 min-w-0">
        <p className="text-xs font-semibold text-slate-800 dark:text-slate-200 truncate font-mono">#{spirit.heroNo}</p>
        <p className="text-[10px] text-slate-400 font-mono">Lv.{spirit.level} · {spirit.idx}</p>
      </div>
      <div className="flex shrink-0">
        {Array.from({ length: Math.min(spirit.gradeSno, 6) }).map((_, i) => (
          <span key={i} className="text-amber-400 text-[10px] leading-none">★</span>
        ))}
      </div>
    </div>
  )
}

function KVEditor({ data, onChange }: { data: Record<string, unknown>; onChange: (d: Record<string, unknown>) => void }) {
  return (
    <div className="space-y-2">
      {Object.entries(data).map(([k, v]) => (
        <div key={k} className="flex items-center gap-3">
          <span className="text-xs font-mono text-slate-500 dark:text-slate-400 w-32 shrink-0 truncate">{k}</span>
          <input
            type={typeof v === 'number' ? 'number' : 'text'}
            value={v === null || v === undefined ? '' : String(v)}
            onChange={e => {
              const val = typeof v === 'number' ? Number(e.target.value) : e.target.value
              onChange({ ...data, [k]: val })
            }}
            className="flex-1 px-3 py-1.5 text-xs font-mono text-slate-800 dark:text-slate-200 bg-slate-100/80 dark:bg-white/8 border border-slate-200 dark:border-white/10 rounded-lg focus:outline-none focus:ring-1 focus:ring-violet-400/50"
          />
        </div>
      ))}
    </div>
  )
}

export function GameDataPage() {
  const { t } = useI18n()
  const [section, setSection] = useState<Section>('userinfo')
  const { raw, loading, reload } = useSection(section)

  const [editData, setEditData] = useState<Record<string, unknown>>({})
  const [editJson, setEditJson] = useState('')
  const [saveState, setSaveState] = useState<'idle' | 'saving' | 'ok' | 'err'>('idle')
  const [saveMsg, setSaveMsg] = useState('')

  useEffect(() => {
    if (!raw) return
    if (section === 'heroes') return
    if (typeof raw === 'object' && raw !== null && !Array.isArray(raw)) {
      setEditData(raw as Record<string, unknown>)
      setEditJson(JSON.stringify(raw, null, 2))
    } else {
      setEditJson(JSON.stringify(raw, null, 2))
    }
    setSaveState('idle')
    setSaveMsg('')
  }, [raw, section])

  async function save() {
    setSaveState('saving')
    setSaveMsg('')
    let body: unknown
    if (section === 'settings') {
      try { body = JSON.parse(editJson) } catch {
        setSaveState('err'); setSaveMsg('Invalid JSON'); return
      }
    } else {
      body = editData
    }
    try {
      const r = await fetch(`/web/api/gamedata/${section}`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(body),
      })
      const d = await r.json()
      if (d.ok !== false) {
        setSaveState('ok'); setSaveMsg(t('admin.apply')); reload()
      } else {
        setSaveState('err'); setSaveMsg(d.reason ?? t('admin.x_server_error'))
      }
    } catch {
      setSaveState('err'); setSaveMsg(t('admin.x_server_error'))
    }
  }

  const heroes: SpiritEntry[] = Array.isArray(raw) ? (raw as SpiritEntry[]) : []
  const meta = SECTIONS.find(s => s.key === section)!

  return (
    <div className="space-y-4">
      <div className="flex items-center justify-between gap-4 flex-wrap">
        <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white truncate">
          {t('admin.gamedata')}
        </h2>
        <div className="flex items-center gap-2">
          {saveMsg && (section === 'userinfo' || section === 'settings') && (
            <span className={cn('text-sm font-medium', saveState === 'ok' ? 'text-emerald-500' : 'text-rose-500')}>
              {saveMsg}
            </span>
          )}
          {(section === 'userinfo' || section === 'settings') && (
            <button
              onClick={save}
              disabled={saveState === 'saving' || loading}
              className="flex items-center gap-1.5 px-3 py-2 rounded-xl text-sm font-bold text-white bg-linear-to-r from-violet-500 to-purple-500 shadow-lg shadow-violet-500/30 transition-all active:scale-95 disabled:opacity-50 disabled:cursor-not-allowed"
            >
              <Save className="w-4 h-4" />
              {saveState === 'saving' ? t('admin.save_ing') : t('admin.apply')}
            </button>
          )}
          <button
            onClick={reload}
            className="p-2 rounded-xl text-slate-400 hover:bg-white/40 dark:hover:bg-white/10 transition-all active:scale-95"
          >
            <RefreshCw className={cn('w-4 h-4', loading && 'animate-spin')} />
          </button>
        </div>
      </div>

      <div className="flex gap-1.5 flex-wrap">
        {SECTIONS.map(s => (
          <button
            key={s.key}
            onClick={() => setSection(s.key)}
            className={cn(
              'px-3 py-1.5 rounded-xl text-xs font-bold transition-all active:scale-95',
              section === s.key
                ? 'bg-linear-to-r from-violet-500 to-purple-500 text-white shadow-lg shadow-violet-500/30'
                : 'text-slate-500 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/8'
            )}
          >
            {s.key === 'heroes' ? t('admin.gamedata_section_heroes') : s.label}
          </button>
        ))}
      </div>

      <GlassCard>
        <GlassCardHeader
          icon={<meta.icon className={cn('w-4 h-4', meta.color)} />}
          title={section === 'heroes' ? t('admin.gamedata_section_heroes') : meta.label}
          iconBg={meta.bg}
        />

        {loading && (
          <div className="flex items-center justify-center py-12">
            <RefreshCw className="w-5 h-5 text-slate-400 animate-spin" />
          </div>
        )}

        {!loading && section === 'heroes' && (
          <div className="mt-3 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-2 max-h-120 overflow-y-auto">
            {heroes.length === 0
              ? <p className="col-span-3 text-xs text-slate-400 py-4 text-center">{t('admin.gamedata_no_heroes')}</p>
              : heroes.map((h, i) => <SpiritCard key={h.idx ?? i} spirit={h} />)
            }
          </div>
        )}

        {!loading && section === 'currencies' && (
          <div className="mt-3 space-y-1">
            {(Array.isArray(raw) ? raw as { type: number; value: number }[] : []).map(c => (
              <div key={c.type} className="flex items-center gap-3 px-3 py-2 rounded-xl bg-slate-50/80 dark:bg-white/5 border border-slate-200/60 dark:border-white/8">
                <span className="text-xs font-mono text-slate-500 dark:text-slate-400 w-16 shrink-0">type {c.type}</span>
                <span className="text-xs font-mono font-bold text-slate-800 dark:text-slate-200 tabular-nums">{c.value.toLocaleString()}</span>
              </div>
            ))}
          </div>
        )}

        {!loading && section === 'userinfo' && Object.keys(editData).length > 0 && (
          <div className="mt-3">
            <KVEditor data={editData} onChange={d => { setEditData(d); setSaveState('idle') }} />
          </div>
        )}

        {!loading && section === 'settings' && (
          <div className="mt-3">
            <textarea
              value={editJson}
              onChange={e => { setEditJson(e.target.value); setSaveState('idle') }}
              spellCheck={false}
              className="w-full h-80 font-mono text-[11px] text-slate-700 dark:text-slate-300 bg-slate-50/80 dark:bg-white/5 border border-slate-200/60 dark:border-white/8 rounded-xl p-3 focus:outline-none focus:ring-1 focus:ring-violet-400/50 resize-none"
            />
          </div>
        )}
      </GlassCard>
    </div>
  )
}
