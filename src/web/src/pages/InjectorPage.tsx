import { useState, useRef } from 'react'
import { Play, Square, RefreshCw, Terminal, Gamepad2 } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { StatusBadge } from '@/components/ui/StatusBadge'
import { usePolling } from '@/hooks/usePolling'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'

const PACKAGE_NAME = 'com.kakaogames.eversoul'
const MAIN_ACTIVITY = 'com.kakaogames.eversoul.unity.UnityPlayerActivity'

interface InjectorStatus {
  running: boolean
}

export function InjectorPage() {
  const { t } = useI18n()

  const { data: injStatus, refresh: refreshStatus } = usePolling<InjectorStatus>({
    url: '/web/api/injector/status',
    intervalMs: 3000,
  })

  const [acting, setActing] = useState(false)
  const [actionMsg, setActionMsg] = useState<{ ok: boolean; msg: string } | null>(null)

  const [adbCmd, setAdbCmd] = useState('')
  const [adbRunning, setAdbRunning] = useState(false)
  const [adbOutput, setAdbOutput] = useState<string[]>([])
  const outputRef = useRef<HTMLDivElement>(null)

  async function runGame() {
    setActing(true)
    setActionMsg(null)
    try {
      const r = await fetch('/web/api/injector/run', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({}),
      })
      const d = await r.json()
      setActionMsg({ ok: !!d.ok, msg: d.ok ? t('admin.running') : (d.output ?? d.reason ?? t('admin.x_server_error')) })
      refreshStatus()
    } finally {
      setActing(false)
    }
  }

  async function stopGame() {
    setActing(true)
    setActionMsg(null)
    try {
      const r = await fetch('/web/api/injector/stop', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({}),
      })
      const d = await r.json()
      setActionMsg({ ok: !!d.ok, msg: d.ok ? t('admin.stopped') : (d.reason ?? t('admin.x_server_error')) })
      refreshStatus()
    } finally {
      setActing(false)
    }
  }

  async function runAdbCmd() {
    if (!adbCmd.trim()) return
    setAdbRunning(true)
    try {
      const r = await fetch('/web/api/injector/adb', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ cmd: adbCmd.trim() }),
      })
      const d = await r.json()
      setAdbOutput(prev => [...prev, `$ ${adbCmd.trim()}\n${d.output ?? d.error ?? ''}`])
      requestAnimationFrame(() => {
        if (outputRef.current) outputRef.current.scrollTop = outputRef.current.scrollHeight
      })
      setAdbCmd('')
    } finally {
      setAdbRunning(false)
    }
  }

  return (
    <div className="space-y-4">
      <div className="flex items-center justify-between gap-4">
        <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white truncate">
          {t('admin.injector')}
        </h2>
        <button
          onClick={refreshStatus}
          className="p-2 rounded-xl text-slate-400 hover:bg-white/40 dark:hover:bg-white/10 transition-all active:scale-95 shrink-0"
        >
          <RefreshCw className="w-4 h-4" />
        </button>
      </div>

      <GlassCard>
        <GlassCardHeader
          icon={<Gamepad2 className="w-4 h-4 text-green-600" />}
          title={t('admin.injector_control')}
          iconBg="bg-green-100 dark:bg-green-900/40"
        />
        <div className="mt-4 space-y-4">
          <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
            <div className="flex flex-col gap-1">
              <span className="text-[10px] font-bold text-slate-400 uppercase tracking-widest">Package</span>
              <span className="font-mono text-xs text-slate-700 dark:text-slate-300 break-all">{PACKAGE_NAME}</span>
            </div>
            <div className="flex flex-col gap-1">
              <span className="text-[10px] font-bold text-slate-400 uppercase tracking-widest">Activity</span>
              <span className="font-mono text-xs text-slate-700 dark:text-slate-300 break-all">{MAIN_ACTIVITY}</span>
            </div>
          </div>

          <div className="flex items-center gap-3">
            <span className="text-[10px] font-bold text-slate-400 uppercase tracking-widest">Status</span>
            {injStatus
              ? <StatusBadge variant={injStatus.running ? 'ok' : 'idle'}>
                  {injStatus.running ? t('admin.running') : t('admin.stopped')}
                </StatusBadge>
              : <StatusBadge variant="idle">—</StatusBadge>
            }
          </div>

          <div className="flex flex-wrap gap-2">
            <button
              onClick={runGame}
              disabled={acting || !!injStatus?.running}
              className="flex items-center gap-1.5 px-4 py-2 rounded-xl text-xs font-bold text-white bg-linear-to-r from-green-500 to-emerald-500 shadow-md shadow-green-500/30 disabled:opacity-50 transition-all active:scale-95"
            >
              <Play className="w-3.5 h-3.5" />
              {t('admin.injector_run')}
            </button>
            <button
              onClick={stopGame}
              disabled={acting || !injStatus?.running}
              className="flex items-center gap-1.5 px-4 py-2 rounded-xl text-xs font-bold text-white bg-linear-to-r from-rose-500 to-pink-500 shadow-md shadow-rose-500/30 disabled:opacity-50 transition-all active:scale-95"
            >
              <Square className="w-3.5 h-3.5" />
              {t('admin.injector_stop')}
            </button>
          </div>

          {actionMsg && (
            <div className={cn(
              'px-3 py-2 rounded-xl text-xs font-medium border',
              actionMsg.ok
                ? 'bg-emerald-50 dark:bg-emerald-900/20 text-emerald-600 dark:text-emerald-400 border-emerald-200 dark:border-emerald-700/50'
                : 'bg-rose-50 dark:bg-rose-900/20 text-rose-600 dark:text-rose-400 border-rose-200 dark:border-rose-700/50'
            )}>
              {actionMsg.msg}
            </div>
          )}
        </div>
      </GlassCard>

      <GlassCard>
        <GlassCardHeader
          icon={<Terminal className="w-4 h-4 text-slate-600" />}
          title={t('admin.injector_adb_cmd')}
          iconBg="bg-slate-100 dark:bg-slate-700/60"
        />
        <div className="mt-3 flex gap-2">
          <input
            type="text"
            value={adbCmd}
            onChange={e => setAdbCmd(e.target.value)}
            onKeyDown={e => e.key === 'Enter' && runAdbCmd()}
            placeholder="shell getprop ro.product.model"
            className="flex-1 px-3 py-2 text-xs font-mono text-slate-800 dark:text-slate-200 bg-slate-100/80 dark:bg-white/8 border border-slate-200 dark:border-white/10 rounded-xl focus:outline-none focus:ring-1 focus:ring-slate-400/50"
          />
          <button
            onClick={runAdbCmd}
            disabled={adbRunning || !adbCmd.trim()}
            className="flex items-center gap-1.5 px-3 py-2 rounded-xl text-xs font-bold text-slate-700 dark:text-slate-300 bg-slate-100 dark:bg-white/8 hover:bg-slate-200 dark:hover:bg-white/12 disabled:opacity-50 transition-all active:scale-95"
          >
            <Play className="w-3.5 h-3.5" />
          </button>
          {adbOutput.length > 0 && (
            <button
              onClick={() => setAdbOutput([])}
              className="px-3 py-2 rounded-xl text-xs text-slate-400 hover:bg-slate-100 dark:hover:bg-white/8 transition-all"
            >
              {t('admin.log_clear')}
            </button>
          )}
        </div>
        {adbOutput.length > 0 && (
          <div
            ref={outputRef}
            className="mt-3 max-h-60 overflow-y-auto rounded-xl bg-slate-900/80 border border-white/8 p-3 font-mono text-[11px] text-slate-300 space-y-2"
          >
            {adbOutput.map((o, i) => (
              <pre key={i} className="whitespace-pre-wrap break-all">{o}</pre>
            ))}
          </div>
        )}
      </GlassCard>
    </div>
  )
}
