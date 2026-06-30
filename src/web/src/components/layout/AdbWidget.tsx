import { useState, useCallback, useEffect } from 'react'
import { createPortal } from 'react-dom'
import { Smartphone, RefreshCw, Wifi, Check, Loader2, ShieldCheck, Repeat } from 'lucide-react'
import { cn } from '@/lib/utils'
import { useI18n } from '@/lib/i18n'
import { topbar } from '@/styles/tokens'
import { useAdbState } from '@/hooks/useAdbState'
import { apiListDevices, apiAdbProbe } from '@/api/injector'
import { apiSetAdbPort } from '@/api/setup'
import { type ProbeResult } from '@/types/injector'

// 최상단 ADB 위젯 — adb devices 목록에서 사용자가 직접 선택해 연결한다.
// 연결은 probe(connect + root + reverse + persist)로 수행하므로 셋업과 동일하게 루트·리버스까지
// 완료되고, adb_connection_state 영속본을 통해 셋업/대시보드가 동일 상태를 공유한다.
function StatusBadge({ ok, icon: Icon, label }: { ok: boolean; icon: React.ComponentType<{ size?: number }>; label: string }) {
  return (
    <span className={cn(
      'inline-flex items-center gap-1 px-2 py-0.5 rounded-full text-[11px] font-semibold',
      ok ? 'bg-emerald-500/15 text-emerald-600 dark:text-emerald-400' : 'bg-slate-400/15 text-slate-400',
    )}>
      <Icon size={11} />{label}
    </span>
  )
}

export function AdbWidget() {
  const { t } = useI18n()
  const { data: adb } = useAdbState()
  const [open, setOpen] = useState(false)
  const [devices, setDevices] = useState<string[]>([])
  const [loading, setLoading] = useState(false)
  const [busy, setBusy] = useState<string | null>(null)
  const [manualPort, setManualPort] = useState('')
  const [lastProbe, setLastProbe] = useState<ProbeResult | null>(null)
  const [probeError, setProbeError] = useState<string | null>(null)

  const refresh = useCallback(async () => {
    setLoading(true)
    try { setDevices(await apiListDevices()) }
    finally { setLoading(false) }
  }, [])

  const probeAllOk = (r: ProbeResult) =>
    r.connected &&
    (r.adb_root || r.rooted || r.adb_rooted) &&
    (r.reverse || r.reversed)

  const connect = useCallback(async (target: string) => {
    if (!target) return
    setBusy(target)
    setProbeError(null)
    try {
      const r = await apiAdbProbe(target)
      setLastProbe(r)
      if (probeAllOk(r)) {
        setOpen(false)
      } else {
        setProbeError(r.output || t('setup.err.connect_fail'))
      }
    } finally {
      setBusy(null)
      void refresh()
    }
  }, [refresh, t])

  const scanPort = useCallback(async () => {
    if (!manualPort) return
    const key = 'port:' + manualPort
    setBusy(key)
    setProbeError(null)
    try {
      const r = await apiSetAdbPort(manualPort)
      setDevices(r.devices ?? await apiListDevices())
      setLastProbe(r)
      if (!probeAllOk(r)) {
        setProbeError(r.output || t('setup.err.connect_fail'))
      }
    } finally {
      setBusy(null)
    }
  }, [manualPort, t])

  useEffect(() => {
    if (!manualPort && adb?.port) setManualPort(adb.port)
  }, [adb?.port, manualPort])

  useEffect(() => {
    if (adb && !adb.connected) {
      setOpen(true)
      void refresh()
    }
  }, [adb?.connected, refresh])

  const connected = !!adb?.connected
  const rooted = lastProbe
    ? !!(lastProbe.adb_root || lastProbe.rooted || lastProbe.adb_rooted)
    : !!adb?.adb_rooted
  const reverse = lastProbe
    ? !!(lastProbe.reverse || lastProbe.reversed)
    : !!adb?.reverse
  const gameRunning = !!adb?.game_running

  return (
    <>
      <button
        onClick={() => { if (!open) void refresh(); setOpen(o => !o) }}
        className={cn(topbar.pill, 'hidden sm:flex cursor-pointer', connected ? 'text-emerald-600 dark:text-emerald-400' : 'text-slate-400')}
        title={t('adb.widget')}
      >
        <Smartphone size={14} />
        <span className={topbar.pillText}>
          {connected ? (adb?.serial || t('adb.connected')) : t('adb.disconnected')}{rooted ? ' · ROOT' : ''}{reverse ? ' · R' : ''}{gameRunning ? ' · RUN' : ''}
        </span>
      </button>

      {open && createPortal(
        <>
          <div className="fixed inset-0 z-999" onClick={() => { if (connected) setOpen(false) }} />
          <div className="fixed top-14 right-3 z-1000 w-80 max-w-[92vw] rounded-2xl bg-white dark:bg-slate-900 shadow-2xl border border-slate-200 dark:border-white/10 p-3 flex flex-col gap-3">
            <div className="flex items-center justify-between">
              <span className="text-sm font-semibold text-slate-900 dark:text-white">{t('adb.widget')}</span>
              <button onClick={refresh} className="p-1.5 rounded-lg text-slate-400 hover:bg-slate-100 dark:hover:bg-white/10 transition-all" aria-label={t('adb.refresh')}>
                <RefreshCw size={14} className={loading ? 'animate-spin' : undefined} />
              </button>
            </div>

            {!connected && (
              <div className="rounded-lg bg-amber-50 dark:bg-amber-900/20 border border-amber-300 dark:border-amber-700 px-3 py-2 text-xs text-amber-700 dark:text-amber-300 font-medium">
                {t('adb.reconnect_required')}
              </div>
            )}

            <div className="flex gap-1.5 flex-wrap">
              <StatusBadge ok={connected} icon={Wifi} label={connected ? t('adb.connected') : t('adb.disconnected')} />
              <StatusBadge ok={rooted} icon={ShieldCheck} label={t('adb.rooted')} />
              <StatusBadge ok={reverse} icon={Repeat} label={t('adb.reverse_ok')} />
              <StatusBadge ok={gameRunning} icon={Smartphone} label={gameRunning ? 'RUN' : 'STOP'} />
            </div>

            {probeError && (
              <div className="rounded-lg bg-red-50 dark:bg-red-900/20 border border-red-300 dark:border-red-700 px-3 py-2 text-xs text-red-700 dark:text-red-300 font-mono break-all">
                {probeError}
              </div>
            )}

            <div className="flex flex-col gap-1">
              <span className="text-xs text-slate-500 dark:text-slate-400">{t('adb.devices')}</span>
              {devices.length === 0 ? (
                <p className="text-sm text-slate-400 py-2 text-center">{loading ? '…' : t('adb.no_devices')}</p>
              ) : (
                devices.map(d => {
                  const active = adb?.serial === d && connected
                  return (
                    <button
                      key={d}
                      onClick={() => connect(d)}
                      disabled={busy !== null}
                      className={cn(
                        'flex items-center justify-between gap-2 px-2.5 py-1.5 rounded-lg text-sm transition-all disabled:opacity-50',
                        active ? 'bg-emerald-50 dark:bg-emerald-900/20 text-emerald-700 dark:text-emerald-300' : 'hover:bg-slate-50 dark:hover:bg-white/5 text-slate-700 dark:text-slate-200',
                      )}
                    >
                      <span className="font-mono truncate">{d}</span>
                      {busy === d ? <Loader2 size={14} className="animate-spin shrink-0" /> : active ? <Check size={14} className="shrink-0" /> : <Wifi size={14} className="opacity-40 shrink-0" />}
                    </button>
                  )
                })
              )}
            </div>

            <div className="flex flex-col gap-1.5">
              <span className="text-xs text-slate-500 dark:text-slate-400">{t('adb.manual_connect')}</span>
              <div className="flex gap-1.5">
                <input
                  value={manualPort}
                  onChange={e => setManualPort(e.target.value.replace(/[^0-9]/g, ''))}
                  placeholder="5557"
                  className="flex-1 min-w-0 rounded-lg px-2.5 py-1.5 text-sm font-mono bg-slate-50 dark:bg-white/5 border border-slate-200 dark:border-white/10 focus:outline-none focus:border-sky-400"
                />
                <button
                  onClick={scanPort}
                  disabled={busy !== null || !manualPort}
                  className="px-3 rounded-lg text-white bg-sky-500 hover:bg-sky-600 transition-all active:scale-95 disabled:opacity-50 text-sm font-semibold"
                >
                  {busy === 'port:' + manualPort ? <Loader2 size={14} className="animate-spin" /> : t('adb.connect')}
                </button>
              </div>
            </div>
          </div>
        </>,
        document.body,
      )}
    </>
  )
}
