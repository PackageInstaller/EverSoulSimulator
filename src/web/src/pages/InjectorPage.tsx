import { useState, useRef } from 'react'
import { Play, RefreshCw, Terminal, Smartphone, RotateCcw, ShieldCheck } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { StatusBadge } from '@/components/ui/StatusBadge'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { type ProbeResult } from '@/types/injector'

export function InjectorPage() {
  const { t } = useI18n()

  const [adbCmd, setAdbCmd] = useState('')
  const [adbRunning, setAdbRunning] = useState(false)
  const [adbOutput, setAdbOutput] = useState<string[]>([])
  const outputRef = useRef<HTMLDivElement>(null)

  const [adbDevices, setAdbDevices] = useState<string[]>([])
  const [reverseEntries, setReverseEntries] = useState<string[]>([])
  const [adbScanning, setAdbScanning] = useState(false)
  const [adbTarget, setAdbTarget] = useState('')
  const [probeResult, setProbeResult] = useState<ProbeResult | null>(null)
  const [adbCtrlMsg, setAdbCtrlMsg] = useState<{ ok: boolean; msg: string } | null>(null)

  async function scanDevices() {
    setAdbScanning(true)
    try {
      const [devRes, revRes] = await Promise.all([
        fetch('/web/api/injector/devices'),
        fetch('/web/api/injector/reverse-list'),
      ])
      const devData = await devRes.json()
      const revData = await revRes.json()
      setAdbDevices(devData.devices ?? [])
      setReverseEntries(revData.entries ?? [])
    } finally {
      setAdbScanning(false)
    }
  }

  async function connectDevice(target: string) {
    setAdbTarget(target)
    setAdbCtrlMsg(null)
    const r = await fetch('/web/api/injector/connect', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ target }),
    })
    const d = await r.json()
    setAdbCtrlMsg({ ok: !!d.ok, msg: d.ok ? t('admin.adb_connected_ok') : (d.output ?? t('admin.adb_connected_fail')) })
    if (d.ok) scanDevices()
  }

  async function probeDevice() {
    setAdbCtrlMsg(null)
    const target = adbTarget.trim()
    const r = await fetch('/web/api/adb/probe', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ target }),
    })
    const d = await r.json()
    setProbeResult(d)
    setAdbCtrlMsg({ ok: !!d.connected, msg: d.connected ? t('admin.adb_connected_ok') : t('admin.adb_connected_fail') })
  }

  async function runAdbCtrl(cmd: string, okCheck: (out: string) => boolean, okMsg: string, failMsg: string) {
    setAdbCtrlMsg(null)
    const r = await fetch('/web/api/injector/adb', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ cmd }),
    })
    const d = await r.json()
    const out: string = d.output ?? d.error ?? ''
    const ok = okCheck(out)
    setAdbCtrlMsg({ ok, msg: ok ? okMsg : out || failMsg })
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
      <div className="flex items-center gap-4">
        <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white truncate">
          {t('admin.adb_section_title')}
        </h2>
      </div>

      <GlassCard>
        <GlassCardHeader
          icon={<Smartphone className="w-4 h-4 text-blue-600" />}
          title={t('admin.adb_section_title')}
          iconBg="bg-blue-100 dark:bg-blue-900/40"
        />
        <div className="mt-4 space-y-4">
          <div className="flex items-center gap-2">
            <button
              onClick={scanDevices}
              disabled={adbScanning}
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl text-xs font-bold text-slate-700 dark:text-slate-300 bg-slate-100 dark:bg-white/8 hover:bg-slate-200 dark:hover:bg-white/12 disabled:opacity-50 transition-all active:scale-95"
            >
              <RefreshCw className={cn('w-3.5 h-3.5', adbScanning && 'animate-spin')} />
              {t('admin.adb_scan_btn')}
            </button>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
            <div className="space-y-1.5">
              <span className="text-[10px] font-bold text-slate-400 uppercase tracking-widest">{t('admin.adb_connected_list')}</span>
              <div className="min-h-12 rounded-xl bg-slate-100/80 dark:bg-white/5 border border-slate-200 dark:border-white/8 p-2 space-y-1">
                {adbDevices.length === 0
                  ? <span className="text-xs text-slate-400">{t('admin.injector_no_devices')}</span>
                  : adbDevices.map(dev => (
                    <button
                      key={dev}
                      onClick={() => connectDevice(dev)}
                      className={cn(
                        'w-full text-left px-2 py-1.5 rounded-lg text-xs font-mono transition-all active:scale-95',
                        adbTarget === dev
                          ? 'bg-blue-500 text-white'
                          : 'text-slate-700 dark:text-slate-300 hover:bg-slate-200 dark:hover:bg-white/10'
                      )}
                    >
                      {dev}
                    </button>
                  ))
                }
              </div>
            </div>

            <div className="space-y-1.5">
              <span className="text-[10px] font-bold text-slate-400 uppercase tracking-widest">{t('admin.adb_reverse_list')}</span>
              <div className="min-h-12 rounded-xl bg-slate-100/80 dark:bg-white/5 border border-slate-200 dark:border-white/8 p-2 space-y-1">
                {reverseEntries.length === 0
                  ? <span className="text-xs text-slate-400">{t('admin.adb_reverse_empty')}</span>
                  : reverseEntries.map((e, i) => (
                    <div key={i} className="px-2 py-1.5 rounded-lg text-xs font-mono text-slate-600 dark:text-slate-400 bg-slate-50 dark:bg-white/5">
                      {e}
                    </div>
                  ))
                }
              </div>
            </div>
          </div>

          <div className="flex gap-2">
            <input
              type="text"
              value={adbTarget}
              onChange={e => setAdbTarget(e.target.value)}
              placeholder={t('admin.adb_target_ph')}
              className="flex-1 px-3 py-2 text-xs font-mono text-slate-800 dark:text-slate-200 bg-slate-100/80 dark:bg-white/8 border border-slate-200 dark:border-white/10 rounded-xl focus:outline-none focus:ring-1 focus:ring-blue-400/50"
            />
            <button
              onClick={probeDevice}
              disabled={!adbTarget.trim()}
              className="flex items-center gap-1.5 px-3 py-2 rounded-xl text-xs font-bold text-white bg-linear-to-r from-blue-500 to-blue-600 shadow-md shadow-blue-500/30 disabled:opacity-50 transition-all active:scale-95"
            >
              <ShieldCheck className="w-3.5 h-3.5" />
              {t('admin.adb_probe_btn')}
            </button>
          </div>

          {probeResult && (
            <div className="grid grid-cols-2 gap-2">
              <StatusBadge variant={probeResult.connected ? 'ok' : 'fail'}>
                {probeResult.connected ? t('admin.adb_connected_ok') : t('admin.adb_connected_fail')}
              </StatusBadge>
              <StatusBadge variant={probeResult.eversoul ? 'ok' : 'warn'}>
                {probeResult.eversoul ? t('admin.adb_eversoul_ok') : t('admin.adb_eversoul_fail')}
              </StatusBadge>
              <StatusBadge variant={probeResult.rooted ? 'ok' : 'warn'}>
                {probeResult.rooted ? 'su root ✓' : 'su root ✗'}
              </StatusBadge>
              <StatusBadge variant={probeResult.adb_root ? 'ok' : 'idle'}>
                {probeResult.adb_root ? 'adb root ✓' : 'adb root ✗'}
              </StatusBadge>
            </div>
          )}

          <div className="flex flex-wrap gap-2">
            <button
              onClick={() => runAdbCtrl(
                'reverse tcp:9991 tcp:9991',
                out => !out.includes('error') && !out.includes('failed') && !out.includes('cannot'),
                t('admin.adb_reverse_ok'),
                t('admin.adb_reverse_fail'),
              )}
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl text-xs font-bold text-white bg-linear-to-r from-indigo-500 to-violet-500 shadow-md shadow-indigo-500/30 transition-all active:scale-95"
            >
              <RotateCcw className="w-3.5 h-3.5" />
              {t('admin.adb_reverse_btn')}
            </button>
            <button
              onClick={() => runAdbCtrl(
                'root',
                out => out.includes('restarting') || out.includes('already running as root'),
                t('admin.adb_root_ok'),
                t('admin.adb_root_fail'),
              )}
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl text-xs font-bold text-white bg-linear-to-r from-amber-500 to-orange-500 shadow-md shadow-amber-500/30 transition-all active:scale-95"
            >
              <ShieldCheck className="w-3.5 h-3.5" />
              {t('admin.adb_root_btn')}
            </button>
            <button
              onClick={async () => {
                setAdbCtrlMsg(null)
                await fetch('/web/api/logs/adb/clear', { method: 'POST' })
                setAdbCtrlMsg({ ok: true, msg: t('admin.adb_logcat_clear_btn') + ' ✓' })
              }}
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl text-xs font-bold text-slate-700 dark:text-slate-300 bg-slate-100 dark:bg-white/8 hover:bg-slate-200 dark:hover:bg-white/12 transition-all active:scale-95"
            >
              {t('admin.adb_logcat_clear_btn')}
            </button>
          </div>

          {adbCtrlMsg && (
            <div className={cn(
              'px-3 py-2 rounded-xl text-xs font-medium border',
              adbCtrlMsg.ok
                ? 'bg-emerald-50 dark:bg-emerald-900/20 text-emerald-600 dark:text-emerald-400 border-emerald-200 dark:border-emerald-700/50'
                : 'bg-rose-50 dark:bg-rose-900/20 text-rose-600 dark:text-rose-400 border-rose-200 dark:border-rose-700/50'
            )}>
              {adbCtrlMsg.msg}
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
