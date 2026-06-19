import { useState, useEffect } from 'react'
import { Activity, Zap, RefreshCw, Package, Database, Globe, Coins, Gem, Ghost, Play, Square, Server } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { StatusBadge } from '@/components/ui/StatusBadge'
import { useServerStatus } from '@/hooks/useServerStatus'
import { usePolling } from '@/hooks/usePolling'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { type GameDataSummary } from '@/types/api'

const PACKAGE_NAME = 'com.kakaogames.eversoul'
const MAIN_ACTIVITY = 'com.kakaogames.eversoul.unity.UnityPlayerActivity'

interface InjectorStatus { running: boolean }

function useUptime(startedAt: number | undefined): string {
  const [tick, setTick] = useState(0)
  useEffect(() => {
    if (!startedAt) return
    const iv = setInterval(() => setTick(t => t + 1), 1000)
    return () => clearInterval(iv)
  }, [startedAt])
  if (!startedAt) return '—'
  const sec = Math.max(0, Math.floor(Date.now() / 1000 - startedAt))
  const h = Math.floor(sec / 3600)
  const m = Math.floor((sec % 3600) / 60)
  const s = sec % 60
  return h > 0 ? `${h}h ${m}m ${s}s` : `${m}m ${s}s`
}

function fmt(n: number): string {
  if (n >= 1_000_000) return (n / 1_000_000).toFixed(1) + 'M'
  if (n >= 1_000) return (n / 1_000).toFixed(1) + 'K'
  return String(n)
}

export function DashboardPage() {
  const { t } = useI18n()
  const { data: status, loading, refresh } = useServerStatus()
  const { data: summary } = usePolling<GameDataSummary>({ url: '/web/api/gamedata/summary', intervalMs: 5000 })
  const { data: injStatus, refresh: refreshInj } = usePolling<InjectorStatus>({ url: '/web/api/injector/status', intervalMs: 3000 })
  const uptime = useUptime(status?.started_at)

  const [gameActing, setGameActing] = useState(false)
  const [gameMsg, setGameMsg] = useState<{ ok: boolean; text: string } | null>(null)

  async function startGame() {
    setGameActing(true)
    setGameMsg(null)
    try {
      const r = await fetch('/web/api/injector/run', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({}),
      })
      const d = await r.json()
      setGameMsg({ ok: !!d.ok, text: d.ok ? t('admin.game_start_done') : (d.output ?? d.reason ?? t('admin.server_error')) })
      refreshInj()
    } catch {
      setGameMsg({ ok: false, text: t('admin.server_error') })
    } finally {
      setGameActing(false)
    }
  }

  async function stopGame() {
    setGameActing(true)
    setGameMsg(null)
    try {
      const r = await fetch('/web/api/injector/stop', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({}),
      })
      const d = await r.json()
      setGameMsg({ ok: !!d.ok, text: d.ok ? t('admin.stopped') : (d.reason ?? t('admin.server_error')) })
      refreshInj()
    } catch {
      setGameMsg({ ok: false, text: t('admin.server_error') })
    } finally {
      setGameActing(false)
    }
  }

  const statCards = [
    { label: t('server.port'),      value: status?.port ?? '—',                                icon: Server,   color: 'text-cyan-600',    bg: 'bg-cyan-100 dark:bg-cyan-900/40' },
    { label: t('admin.requests'),   value: fmt(status?.request_count ?? 0),                    icon: Zap,      color: 'text-amber-600',   bg: 'bg-amber-100 dark:bg-amber-900/40' },
    { label: t('admin.uptime'),     value: uptime,                                             icon: Activity, color: 'text-violet-600',  bg: 'bg-violet-100 dark:bg-violet-900/40' },
    { label: t('admin.fixtures'),   value: status?.fixture_count ?? '—',                       icon: Package,  color: 'text-violet-600',  bg: 'bg-violet-100 dark:bg-violet-900/40' },
    { label: 'DB',                  value: status?.db_tables ?? '—',                           icon: Database, color: 'text-emerald-600', bg: 'bg-emerald-100 dark:bg-emerald-900/40' },
    { label: t('admin.lang'),       value: status?.lang ?? '—',                               icon: Globe,    color: 'text-sky-600',     bg: 'bg-sky-100 dark:bg-sky-900/40' },
    { label: t('cheat.gold'),       value: fmt(summary?.gold ?? 0),                            icon: Coins,    color: 'text-yellow-600',  bg: 'bg-yellow-100 dark:bg-yellow-900/40' },
    { label: t('cheat.crystal'),    value: fmt(summary?.crystal ?? 0),                         icon: Gem,      color: 'text-blue-600',    bg: 'bg-blue-100 dark:bg-blue-900/40' },
    { label: t('cheat.hero_count'), value: String(summary?.hero_count ?? '—'),                 icon: Ghost,    color: 'text-purple-600',  bg: 'bg-purple-100 dark:bg-purple-900/40' },
  ] as const

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between gap-4">
        <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white truncate">
          {t('admin.dashboard')}
        </h2>
        <button
          onClick={refresh}
          className="p-2 rounded-xl text-slate-400 hover:bg-white/40 dark:hover:bg-white/10 transition-all active:scale-95 shrink-0"
        >
          <RefreshCw className={cn('w-4 h-4', loading && 'animate-spin')} />
        </button>
      </div>

      <GlassCard>
        <GlassCardHeader
          icon={<Play className="w-4 h-4 text-green-600" />}
          title={t('admin.game_start_title')}
          iconBg="bg-green-100 dark:bg-green-900/40"
        />
        <div className="mt-4 space-y-3">
          <div className="grid grid-cols-1 sm:grid-cols-2 gap-2">
            <div className="flex flex-col gap-0.5">
              <span className="text-[10px] font-bold text-slate-400 uppercase tracking-widest">Package</span>
              <span className="font-mono text-xs text-slate-700 dark:text-slate-300 break-all">{PACKAGE_NAME}</span>
            </div>
            <div className="flex flex-col gap-0.5">
              <span className="text-[10px] font-bold text-slate-400 uppercase tracking-widest">Activity</span>
              <span className="font-mono text-xs text-slate-700 dark:text-slate-300 break-all">{MAIN_ACTIVITY}</span>
            </div>
          </div>
          <div className="flex items-center gap-3">
            <span className="text-[10px] font-bold text-slate-400 uppercase tracking-widest">Status</span>
            {injStatus
              ? <StatusBadge variant={injStatus.running ? 'ok' : 'idle'}>{injStatus.running ? t('admin.running') : t('admin.stopped')}</StatusBadge>
              : <StatusBadge variant="idle">—</StatusBadge>
            }
          </div>
          <div className="flex items-center gap-2 flex-wrap">
            <button
              onClick={startGame}
              disabled={gameActing || !!injStatus?.running}
              className="flex items-center gap-2 px-4 py-2 rounded-xl text-sm font-bold text-white bg-linear-to-r from-green-500 to-emerald-500 shadow-lg shadow-green-500/30 transition-all active:scale-95 disabled:opacity-60 disabled:cursor-not-allowed"
            >
              <Play className="w-4 h-4" />
              {t('admin.game_start_btn')}
            </button>
            <button
              onClick={stopGame}
              disabled={gameActing || !injStatus?.running}
              className="flex items-center gap-2 px-4 py-2 rounded-xl text-sm font-bold text-white bg-linear-to-r from-rose-500 to-pink-500 shadow-lg shadow-rose-500/30 transition-all active:scale-95 disabled:opacity-60 disabled:cursor-not-allowed"
            >
              <Square className="w-4 h-4" />
              {t('admin.injector_stop')}
            </button>
            {gameMsg && (
              <span className={cn('text-xs font-medium', gameMsg.ok ? 'text-emerald-500' : 'text-rose-500')}>
                {gameMsg.text}
              </span>
            )}
          </div>
        </div>
      </GlassCard>

      <div className="grid grid-cols-2 sm:grid-cols-3 xl:grid-cols-5 gap-3">
        {statCards.map(({ label, value, icon: Icon, color, bg }) => (
          <GlassCard key={label} size="sm">
            <div className="flex items-center gap-2 mb-2">
              <span className={cn('p-1.5 rounded-lg', bg)}>
                <Icon className={cn('w-3.5 h-3.5', color)} />
              </span>
              <span className="text-[10px] font-semibold text-slate-500 dark:text-slate-400 uppercase tracking-widest truncate">{label}</span>
            </div>
            <p className="text-base sm:text-lg font-bold tabular-nums text-slate-900 dark:text-white truncate">
              {value}
            </p>
          </GlassCard>
        ))}
      </div>

      <GlassCard>
        <GlassCardHeader
          icon={<Activity className="w-4 h-4 text-rose-600" />}
          title={t('status.online')}
          iconBg="bg-rose-100 dark:bg-rose-900/40"
        />
        <div className="mt-4 flex flex-wrap gap-3">
          <div className="flex items-center gap-2 px-3 py-2 rounded-xl bg-slate-100/80 dark:bg-white/8">
            <span className="w-2 h-2 rounded-full bg-emerald-400 animate-pulse shrink-0" />
            <span className="text-slate-600 dark:text-slate-300 font-mono text-xs">:{status?.port ?? '…'}</span>
            <StatusBadge variant="ok">{t('admin.connected')}</StatusBadge>
          </div>
          <div className="flex items-center gap-2 px-3 py-2 rounded-xl bg-slate-100/80 dark:bg-white/8">
            <span className="text-xs text-slate-500 dark:text-slate-400 font-mono truncate max-w-48">{status?.db_path || '—'}</span>
          </div>
        </div>
      </GlassCard>
    </div>
  )
}
