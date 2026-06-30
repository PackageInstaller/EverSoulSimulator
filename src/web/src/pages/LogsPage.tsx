import { useState, useEffect, useRef } from 'react'
import { Pause, Play, Trash2, Filter } from 'lucide-react'
import { GlassCard } from '@/components/ui/GlassCard'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'

interface ServerLogEntry {
  id: number
  timestamp: string
  tag: string
  text: string
  count?: number
}

interface AdbLogEntry {
  timestamp: string
  text: string
  count?: number
}

type LogChannel = 'all' | 'request' | 'headers' | 'adb'

const MAX_ENTRIES = 1000

function tagColor(tag: string): string {
  if (tag === 'ERROR')  return 'text-rose-500 dark:text-rose-400'
  if (tag === 'WARN')   return 'text-amber-500 dark:text-amber-400'
  if (tag === 'REQUEST') return 'text-sky-500 dark:text-sky-400'
  if (tag === 'WS')     return 'text-violet-500 dark:text-violet-400'
  if (tag === 'START' || tag === 'STOP') return 'text-emerald-500 dark:text-emerald-400'
  return 'text-slate-400 dark:text-slate-500'
}

function rowBg(tag: string): string {
  if (tag === 'ERROR')  return 'bg-rose-50/60 dark:bg-rose-950/30'
  if (tag === 'WARN')   return 'bg-amber-50/60 dark:bg-amber-950/30'
  if (tag === 'REQUEST') return 'bg-sky-50/40 dark:bg-sky-950/20'
  return ''
}

function adbLevelColor(text: string): string {
  const m = text.match(/^\S+\s+\S+\s+\d+\s+\d+\s+([VDIWEF])\s/)
  if (!m) return 'text-slate-400'
  const map: Record<string, string> = { E: 'text-rose-400', W: 'text-amber-400', F: 'text-red-600', I: 'text-sky-400', D: 'text-slate-400', V: 'text-slate-500' }
  return map[m[1]] ?? 'text-slate-400'
}

// 연속 중복(같은 tag+text) 압축 — 1줄로 합치고 count 로 횟수 표시.
function dedupServer(entries: ServerLogEntry[]): ServerLogEntry[] {
  const out: ServerLogEntry[] = []
  for (const e of entries) {
    const last = out[out.length - 1]
    if (last && last.tag === e.tag && last.text === e.text) { last.count = (last.count ?? 1) + 1; continue }
    out.push({ ...e, count: 1 })
  }
  return out
}

function dedupAdb(entries: AdbLogEntry[]): AdbLogEntry[] {
  const out: AdbLogEntry[] = []
  for (const e of entries) {
    const last = out[out.length - 1]
    if (last && last.text === e.text) { last.count = (last.count ?? 1) + 1; continue }
    out.push({ ...e, count: 1 })
  }
  return out
}

export function LogsPage() {
  const { t } = useI18n()
  const [channel, setChannel] = useState<LogChannel>('all')
  const [serverLogs, setServerLogs] = useState<ServerLogEntry[]>([])
  const [adbLogs, setAdbLogs] = useState<AdbLogEntry[]>([])
  const [paused, setPaused] = useState(false)
  const [filter, setFilter] = useState('')
  const serverPanelRef = useRef<HTMLDivElement>(null)
  const adbPanelRef = useRef<HTMLDivElement>(null)
  const pausedRef = useRef(false)

  useEffect(() => { pausedRef.current = paused }, [paused])

  function appendServer(entry: ServerLogEntry) {
    if (pausedRef.current) return
    setServerLogs(prev => {
      const last = prev[prev.length - 1]
      if (last && last.tag === entry.tag && last.text === entry.text) {
        const copy = prev.slice()
        copy[copy.length - 1] = { ...last, count: (last.count ?? 1) + 1 }
        return copy
      }
      const next = [...prev, { ...entry, count: 1 }]
      return next.length > MAX_ENTRIES ? next.slice(-MAX_ENTRIES) : next
    })
    requestAnimationFrame(() => {
      if (serverPanelRef.current) serverPanelRef.current.scrollTop = serverPanelRef.current.scrollHeight
    })
  }

  function appendAdb(entry: AdbLogEntry) {
    if (pausedRef.current) return
    setAdbLogs(prev => {
      const last = prev[prev.length - 1]
      if (last && last.text === entry.text) {
        const copy = prev.slice()
        copy[copy.length - 1] = { ...last, count: (last.count ?? 1) + 1 }
        return copy
      }
      const next = [...prev, { ...entry, count: 1 }]
      return next.length > MAX_ENTRIES ? next.slice(-MAX_ENTRIES) : next
    })
    requestAnimationFrame(() => {
      if (adbPanelRef.current) adbPanelRef.current.scrollTop = adbPanelRef.current.scrollHeight
    })
  }

  useEffect(() => {
    fetch('/web/api/logs/server/recent?n=200')
      .then(r => r.json())
      .then((entries: ServerLogEntry[]) => setServerLogs(dedupServer(entries).slice(-MAX_ENTRIES)))
      .catch(() => {})

    fetch('/web/api/logs/adb/recent?n=200')
      .then(r => r.json())
      .then((entries: AdbLogEntry[]) => setAdbLogs(dedupAdb(entries).slice(-MAX_ENTRIES)))
      .catch(() => {})
  }, [])

  useEffect(() => {
    let src: EventSource
    function connect() {
      src = new EventSource('/web/api/logs/server/stream')
      src.onmessage = e => {
        try { appendServer(JSON.parse(e.data)) } catch {}
      }
      src.onerror = () => { src.close(); setTimeout(connect, 3000) }
    }
    connect()
    return () => src?.close()
  }, [])

  useEffect(() => {
    let src: EventSource
    function connect() {
      src = new EventSource('/web/api/logs/adb/stream')
      src.onmessage = e => {
        try { appendAdb(JSON.parse(e.data)) } catch {}
      }
      src.onerror = () => { src.close(); setTimeout(connect, 3000) }
    }
    connect()
    return () => src?.close()
  }, [])

  function clearLogs() {
    if (channel === 'adb') {
      setAdbLogs([])
      fetch('/web/api/logs/adb/clear', { method: 'POST' }).catch(() => {})
    } else {
      setServerLogs([])
      fetch('/web/api/logs/clear', { method: 'POST' }).catch(() => {})
    }
  }

  const filterLower = filter.toLowerCase()

  const HEADER_TAGS = ['REQ_HEADER', 'REQ_BODY', 'RES_HEADER', 'RES_BODY']
  const visibleServer = serverLogs.filter(e => {
    if (channel === 'request' && e.tag !== 'REQUEST') return false
    if (channel === 'headers' && !HEADER_TAGS.includes(e.tag)) return false
    if (!filterLower) return true
    return e.text.toLowerCase().includes(filterLower) || e.tag.toLowerCase().includes(filterLower)
  })

  const visibleAdb = adbLogs.filter(e => {
    if (!filterLower) return true
    return e.text.toLowerCase().includes(filterLower)
  })

  const channels: { key: LogChannel; label: string }[] = [
    { key: 'all',     label: t('admin.logs_server') },
    { key: 'request', label: t('admin.requests') },
    { key: 'headers', label: t('admin.logs_headers') },
    { key: 'adb',     label: t('admin.logs_adb') },
  ]

  return (
    <div className="flex flex-col gap-4 h-full">
      <div className="flex items-center justify-between gap-4 flex-wrap shrink-0">
        <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white truncate">
          {t('admin.logs')}
        </h2>
        <div className="flex items-center gap-2 flex-wrap">
          <div className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-slate-100/80 dark:bg-white/8 border border-slate-200 dark:border-white/10">
            <Filter className="w-3.5 h-3.5 text-slate-400 shrink-0" />
            <input
              type="text"
              value={filter}
              onChange={e => setFilter(e.target.value)}
              placeholder={t('admin.log_filter_ph')}
              className="w-32 text-xs bg-transparent text-slate-800 dark:text-slate-200 placeholder:text-slate-400 focus:outline-none"
            />
          </div>
          <button
            onClick={() => setPaused(p => !p)}
            className={cn(
              'flex items-center gap-1.5 px-3 py-1.5 rounded-xl text-xs font-semibold transition-all active:scale-95',
              paused
                ? 'bg-amber-100 dark:bg-amber-900/40 text-amber-700 dark:text-amber-400'
                : 'bg-slate-100/80 dark:bg-white/8 text-slate-600 dark:text-slate-400 hover:bg-slate-200 dark:hover:bg-white/12'
            )}
          >
            {paused ? <Play className="w-3.5 h-3.5" /> : <Pause className="w-3.5 h-3.5" />}
            {paused ? t('admin.log_resume') : t('admin.log_pause')}
          </button>
          <button
            onClick={clearLogs}
            className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl text-xs font-semibold bg-slate-100/80 dark:bg-white/8 text-slate-600 dark:text-slate-400 hover:bg-rose-100 dark:hover:bg-rose-900/30 hover:text-rose-600 dark:hover:text-rose-400 transition-all active:scale-95"
          >
            <Trash2 className="w-3.5 h-3.5" />
            {t('admin.log_clear')}
          </button>
        </div>
      </div>

      <GlassCard className="flex-1 flex flex-col min-h-0">
        <div className="flex gap-1.5 shrink-0 mb-3">
          {channels.map(ch => (
            <button
              key={ch.key}
              onClick={() => setChannel(ch.key)}
              className={cn(
                'px-3 py-1.5 rounded-lg text-xs font-bold uppercase tracking-wider transition-all',
                channel === ch.key
                  ? 'bg-cyan-100 dark:bg-cyan-900/40 text-cyan-700 dark:text-cyan-400'
                  : 'text-slate-500 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/8'
              )}
            >
              {ch.label}
              <span className="ml-1.5 text-[10px] font-mono opacity-60">
                {ch.key === 'adb'
                ? adbLogs.length
                : ch.key === 'request'
                  ? serverLogs.filter(e => e.tag === 'REQUEST').length
                  : ch.key === 'headers'
                    ? serverLogs.filter(e => ['REQ_HEADER', 'REQ_BODY', 'RES_HEADER', 'RES_BODY'].includes(e.tag)).length
                    : serverLogs.length}
              </span>
            </button>
          ))}
        </div>

        {channel !== 'adb' ? (
          <div
            ref={serverPanelRef}
            className="flex-1 overflow-y-auto rounded-xl bg-slate-50/60 dark:bg-slate-900/60 border border-slate-200/60 dark:border-white/8 font-mono text-[11px] min-h-0"
          >
            {visibleServer.length === 0 ? (
              <div className="flex items-center justify-center h-20 text-slate-400 dark:text-slate-600 text-xs">—</div>
            ) : visibleServer.map((e, i) => (
              <div
                key={e.id ?? i}
                className={cn(
                  'flex items-baseline gap-2 px-3 py-1 border-b border-slate-100/60 dark:border-white/4 last:border-0',
                  rowBg(e.tag)
                )}
              >
                <span className="text-slate-300 dark:text-slate-700 shrink-0 tabular-nums">
                  {e.timestamp ? e.timestamp.slice(11, 19) : ''}
                </span>
                <span className="text-slate-300 dark:text-slate-700 shrink-0 tabular-nums text-[10px]">
                  #{e.id ?? ''}
                </span>
                <span className={cn('shrink-0 font-bold uppercase text-[10px] tracking-wider min-w-16', tagColor(e.tag))}>
                  [{e.tag}]
                </span>
                <span className="flex-1 text-slate-700 dark:text-slate-300 break-all">{e.text}</span>
                {(e.count ?? 1) > 1 && (
                  <span className="shrink-0 px-1.5 rounded-md bg-slate-200 dark:bg-white/10 text-[10px] font-bold tabular-nums text-slate-600 dark:text-slate-300">×{e.count}</span>
                )}
              </div>
            ))}
          </div>
        ) : (
          <div
            ref={adbPanelRef}
            className="flex-1 overflow-y-auto rounded-xl bg-slate-900/80 border border-white/8 font-mono text-[11px] min-h-0"
          >
            {visibleAdb.length === 0 ? (
              <div className="flex items-center justify-center h-20 text-slate-500 text-xs">—</div>
            ) : visibleAdb.map((e, i) => (
              <div
                key={i}
                className="flex items-baseline gap-2 px-3 py-0.5 border-b border-white/4 last:border-0"
              >
                <span className="text-slate-600 shrink-0 tabular-nums">
                  {e.timestamp ? e.timestamp.slice(11, 19) : ''}
                </span>
                <span className={cn('flex-1 break-all', adbLevelColor(e.text))}>{e.text}</span>
                {(e.count ?? 1) > 1 && (
                  <span className="shrink-0 px-1.5 rounded-md bg-white/10 text-[10px] font-bold tabular-nums text-slate-300">×{e.count}</span>
                )}
              </div>
            ))}
          </div>
        )}
      </GlassCard>
    </div>
  )
}
