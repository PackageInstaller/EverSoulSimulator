import { useEffect, useState } from 'react'
import { CheckCircle, Circle, Loader2, AlertCircle, ArrowRight, Wifi, WifiOff, RefreshCw, ShieldCheck, Repeat } from 'lucide-react'
import { cn } from '@/lib/utils'
import { useI18n } from '@/lib/i18n'
import { surface, typo, button as btn, textColor, pad } from '@/styles/tokens'
import {
  apiGetSetupStatus,
  apiSetSetupStep,
  apiCompleteSetup,
  apiGetAdbPort,
  apiSetAdbPort,
  apiCdnScan,
} from '@/api/setup'
import { apiListDevices, apiAdbProbe } from '@/api/injector'
import { apiGetTblEnabled, apiSetTblEnabled } from '@/api/tbl'
import { type SetupStatusResponse, type SetupStepState } from '@/types/api'
import { type ProbeResult } from '@/types/injector'
import { SETUP_STEPS, type SetupStepKey } from './setupSteps'
import { LanguageSwitcher } from '@/components/layout/LanguageSwitcher'
import { BuilderCredit } from '@/components/layout/BuilderCredit'
import { DeveloperCard } from '@/components/manual/DeveloperCard'

function resolveInitialIndex(status: SetupStatusResponse): number {
  const doneKeys = new Set(
    status.steps.filter(s => s.state === 'done').map(s => s.step_key),
  )
  const firstPending = SETUP_STEPS.findIndex(s => !doneKeys.has(s.key))
  return firstPending === -1 ? SETUP_STEPS.length - 1 : firstPending
}

export function SetupPage() {
  const { t } = useI18n()
  const [stepIndex, setStepIndex] = useState(0)
  const [stepStates, setStepStates] = useState<Record<SetupStepKey, SetupStepState['state']>>(() =>
    Object.fromEntries(SETUP_STEPS.map(s => [s.key, 'pending'])) as Record<SetupStepKey, SetupStepState['state']>,
  )
  const [serverPortValue, setServerPortValue] = useState('9991')
  const [serverUrlValue, setServerUrlValue] = useState('')
  const [cdnOutput, setCdnOutput] = useState('')
  const [adbPort, setAdbPort] = useState('')
  const [devices, setDevices] = useState<string[]>([])
  const [adbResult, setAdbResult] = useState<ProbeResult | null>(null)
  const [tblHookEnabled, setTblHookEnabled] = useState(true)
  const [tblHookStatus, setTblHookStatus] = useState('')
  const [tblHookLoading, setTblHookLoading] = useState(false)
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)

  useEffect(() => {
    apiGetSetupStatus().then(res => {
      setServerPortValue(String(res.setup?.server_port ?? 9991))
      setServerUrlValue(res.setup?.game_server_url ?? '')
      const restored = Object.fromEntries(
        SETUP_STEPS.map(s => {
          const found = res.steps.find(rs => rs.step_key === s.key)
          return [s.key, (found?.state ?? 'pending') as SetupStepState['state']]
        }),
      ) as Record<SetupStepKey, SetupStepState['state']>
      setStepStates(restored)
      setStepIndex(resolveInitialIndex(res))
    })
    apiGetAdbPort().then(res => setAdbPort(res.port ?? ''))
    apiListDevices().then(setDevices)
    apiGetTblEnabled().then(res => {
      setTblHookEnabled(res.enabled)
      setTblHookStatus(`${res.tables ?? 0} / ${res.rows ?? 0}`)
    })
  }, [])

  const currentStep = SETUP_STEPS[stepIndex]

  async function markDone(key: SetupStepKey, valueJson: string) {
    setLoading(true)
    setError(null)
    try {
      await apiSetSetupStep(key, 'done', valueJson)
      setStepStates(prev => ({ ...prev, [key]: 'done' }))
      if (stepIndex < SETUP_STEPS.length - 1) {
        setStepIndex(stepIndex + 1)
      }
    } catch {
      setError(t('setup.err.step_save'))
    } finally {
      setLoading(false)
    }
  }

  async function handleComplete() {
    setLoading(true)
    setError(null)
    try {
      await apiSetSetupStep('admin_ready', 'done', '{}')
      await apiCompleteSetup({})
      window.location.replace('/web/')
    } catch {
      setError(t('setup.err.complete'))
      setLoading(false)
    }
  }

  async function handleAdbConnect(target: string) {
    if (!target) {
      setError(t('setup.err.adb_port_empty'))
      return
    }
    setLoading(true)
    setError(null)
    try {
      // probe = connect + root + reverse + persist. 셋업에서 루트·리버스까지 완료하고
      // adb_connection_state 영속본으로 대시보드(최상단 ADB 위젯)와 동일 상태를 공유한다.
      const res = await apiAdbProbe(target)
      setAdbResult(res)
      if (res.connected && (res.adb_root || res.rooted || res.adb_rooted) && (res.reverse || res.reversed)) {
        await apiSetSetupStep('adb_path', 'done', JSON.stringify({ target }))
        await apiSetSetupStep('adb_reverse', 'done', JSON.stringify({ connected: res.connected, reverse: res.reverse, rooted: res.adb_root || res.rooted, serial: res.serial }))
        setStepStates(prev => ({ ...prev, adb_path: 'done', adb_reverse: 'done' }))
        setStepIndex(SETUP_STEPS.findIndex(s => s.key === 'cdn_scan'))
      } else {
        setError(res.output || t('setup.err.connect_fail'))
      }
    } catch {
      setError(t('setup.err.connect_fail'))
    } finally {
      setLoading(false)
    }
  }

  async function handleCdnScan() {
    setLoading(true)
    setError(null)
    setCdnOutput('')
    try {
      const res = await apiCdnScan()
      setCdnOutput(res.output)
      if (res.ok) {
        await apiSetSetupStep('cdn_scan', 'done', JSON.stringify({ saved: res.saved }))
        setStepStates(prev => ({ ...prev, cdn_scan: 'done' }))
        setStepIndex(SETUP_STEPS.findIndex(s => s.key === 'default_account'))
      } else {
        setError(res.output || t('setup.err.cdn_scan_fail'))
      }
    } catch {
      setError(t('setup.err.cdn_scan_fail'))
    } finally {
      setLoading(false)
    }
  }

  async function toggleTblHook() {
    setTblHookLoading(true)
    setError(null)
    try {
      const res = await apiSetTblEnabled(!tblHookEnabled)
      setTblHookEnabled(res.enabled)
      setTblHookStatus(`${res.tables ?? 0} / ${res.rows ?? 0}`)
    } catch {
      setError(t('setup.err.tbl_hook'))
    } finally {
      setTblHookLoading(false)
    }
  }

  async function handleAdbPortScan(port: string) {
    if (!port.trim()) {
      setError(t('setup.err.adb_port_empty'))
      return
    }
    setLoading(true)
    setError(null)
    try {
      const res = await apiSetAdbPort(port)
      setDevices(res.devices ?? [])
      if (!res.connected) {
        setError(res.output || t('setup.err.connect_fail'))
      }
    } catch {
      setError(t('setup.err.connect_fail'))
    } finally {
      setLoading(false)
    }
  }

  return (
    <div className={cn('min-h-screen flex flex-col items-center justify-center px-4 py-12', 'bg-(--es-bg)')}>
      <div className="fixed top-3 right-3 z-40">
        <LanguageSwitcher />
      </div>
      <BuilderCredit />
      <div className="w-full max-w-lg">
        <div className="mb-8 text-center">
          <h1 className={typo.pageTitle}>{t('setup.title')}</h1>
          <p className={cn(typo.pageSubtitle, 'mt-1')}>
            {t('setup.step_of').replace('{n}', String(stepIndex + 1)).replace('{total}', String(SETUP_STEPS.length))}
          </p>
        </div>

        <div className="flex gap-1.5 mb-8">
          {SETUP_STEPS.map((s, i) => (
            <div
              key={s.key}
              className={cn(
                'h-1 flex-1 rounded-full transition-all duration-300',
                stepStates[s.key] === 'done'
                  ? 'bg-(--es-accent)'
                  : i === stepIndex
                    ? 'bg-(--es-accent)/60'
                    : 'bg-(--es-glass-fill-strong)',
              )}
            />
          ))}
        </div>

        <div className={cn(surface.glass, pad.card)}>
          <div className="flex items-center gap-3 mb-4">
            {stepStates[currentStep.key] === 'done' ? (
              <CheckCircle className={cn('w-5 h-5 shrink-0', textColor.success)} />
            ) : (
              <Circle className={cn('w-5 h-5 shrink-0', textColor.faint)} />
            )}
            <div>
              <p className={cn(typo.label, 'mb-0.5')}>{stepIndex + 1} / {SETUP_STEPS.length}</p>
              <h2 className={typo.cardTitle}>{t(currentStep.labelKey)}</h2>
            </div>
          </div>
          <p className={cn(typo.hint, 'mb-6')}>{t(currentStep.descKey)}</p>

          {currentStep.key === 'server_port' && (
            <StepServerPort
              portValue={serverPortValue}
              onPortChange={setServerPortValue}
              tblHookEnabled={tblHookEnabled}
              tblHookStatus={tblHookStatus}
              tblHookLoading={tblHookLoading}
              loading={loading}
              onToggleTblHook={toggleTblHook}
              onNext={port => markDone('server_port', JSON.stringify({ port }))}
            />
          )}

          {currentStep.key === 'server_url' && (
            <StepServerUrl
              urlValue={serverUrlValue}
              onUrlChange={setServerUrlValue}
              loading={loading}
              onNext={url => markDone('server_url', JSON.stringify({ url }))}
            />
          )}

          {(currentStep.key === 'adb_path' || currentStep.key === 'adb_reverse') && (
            <StepAdbConnect
              port={adbPort}
              onPortChange={setAdbPort}
              devices={devices}
              result={adbResult}
              loading={loading}
              onConnect={handleAdbConnect}
              onScanPort={handleAdbPortScan}
              onRefresh={() => { apiListDevices().then(setDevices) }}
            />
          )}

          {currentStep.key === 'cdn_scan' && (
            <StepCdnScan
              output={cdnOutput}
              loading={loading}
              onScan={handleCdnScan}
            />
          )}

          {currentStep.key === 'default_account' && (
            <StepSkippable
              noticeKey="setup.notice.account"
              loading={loading}
              onNext={() => markDone('default_account', '{}')}
            />
          )}

          {currentStep.key === 'apk_account_page' && (
            <StepSkippable
              noticeKey="setup.notice.apk"
              loading={loading}
              onNext={() => markDone('apk_account_page', '{}')}
            />
          )}

          {currentStep.key === 'admin_ready' && (
            <StepComplete loading={loading} onFinish={handleComplete} />
          )}

          {error && (
            <div className={cn('mt-4 flex items-start gap-2 text-sm', textColor.danger)}>
              <AlertCircle className="w-4 h-4 shrink-0 mt-0.5" />
              <span>{error}</span>
            </div>
          )}
        </div>

        <div className="mt-6 flex flex-col gap-2">
          {SETUP_STEPS.map((s, i) => (
            <div key={s.key} className="flex items-center gap-2.5 text-sm">
              {stepStates[s.key] === 'done' ? (
                <CheckCircle className={cn('w-4 h-4 shrink-0', textColor.success)} />
              ) : i === stepIndex ? (
                <div className="w-4 h-4 rounded-full border-2 border-(--es-accent) shrink-0" />
              ) : (
                <Circle className={cn('w-4 h-4 shrink-0', textColor.faint)} />
              )}
              <span className={cn(
                i === stepIndex
                  ? cn(typo.body, 'font-medium', textColor.strong)
                  : stepStates[s.key] === 'done'
                    ? textColor.success
                    : textColor.faint
              )}>
                {t(s.labelKey)}
              </span>
            </div>
          ))}
        </div>

        <div className="mt-6">
          <DeveloperCard />
        </div>
      </div>
    </div>
  )
}

function StepServerPort({
  portValue,
  onPortChange,
  tblHookEnabled,
  tblHookStatus,
  tblHookLoading,
  loading,
  onToggleTblHook,
  onNext,
}: {
  portValue: string
  onPortChange: (v: string) => void
  tblHookEnabled: boolean
  tblHookStatus: string
  tblHookLoading: boolean
  loading: boolean
  onToggleTblHook: () => void
  onNext: (port: number) => void
}) {
  const { t } = useI18n()
  const numericPort = Number(portValue)
  const validPort = Number.isInteger(numericPort) && numericPort > 0 && numericPort <= 65535
  return (
    <div className="flex flex-col gap-4">
      <div className={cn(surface.glassSoft, 'flex flex-col gap-2 px-4 py-3')}>
        <label className={typo.hint} htmlFor="setup-server-port">{t('setup.label.port')}</label>
        <input
          id="setup-server-port"
          type="text"
          inputMode="numeric"
          value={portValue}
          onChange={e => onPortChange(e.target.value.replace(/[^0-9]/g, ''))}
          className={cn(
            'w-full rounded-xl px-4 py-2.5 font-mono text-lg',
            'bg-(--es-glass-fill-strong) border-2 border-(--es-glass-border)',
            textColor.accent,
            'focus:outline-none focus:border-(--es-accent)',
          )}
        />
      </div>
      <div className={cn(surface.glassSoft, 'flex items-center justify-between gap-3 px-4 py-3')}>
        <div className="min-w-0">
          <p className={cn(typo.label, 'mb-1')}>{t('setup.label.tbl_hook')}</p>
          <p className={cn(typo.hint, 'truncate')}>{tblHookStatus || t('setup.tbl_hook.loading')}</p>
        </div>
        <button
          type="button"
          onClick={onToggleTblHook}
          disabled={tblHookLoading}
          className={cn(tblHookEnabled ? btn.primary : btn.secondary, 'shrink-0 min-w-20')}
        >
          {tblHookLoading ? <Loader2 className="w-4 h-4 animate-spin" /> : <span>{tblHookEnabled ? 'ON' : 'OFF'}</span>}
        </button>
      </div>
      <button onClick={() => onNext(numericPort)} disabled={loading || !validPort} className={cn(btn.primary, 'w-full')}>
        {loading ? <Loader2 className="w-4 h-4 animate-spin" /> : <><span>{t('setup.btn.confirm')}</span><ArrowRight className="w-4 h-4" /></>}
      </button>
    </div>
  )
}

function StepServerUrl({ urlValue, onUrlChange, loading, onNext }: { urlValue: string; onUrlChange: (v: string) => void; loading: boolean; onNext: (url: string) => void }) {
  const { t } = useI18n()
  const trimmed = urlValue.trim()
  return (
    <div className="flex flex-col gap-4">
      <div className={cn(surface.glassSoft, 'flex flex-col gap-1 px-4 py-3')}>
        <label className={typo.hint} htmlFor="setup-server-url">{t('setup.label.url')}</label>
        <input
          id="setup-server-url"
          type="text"
          value={urlValue}
          onChange={e => onUrlChange(e.target.value)}
          className={cn(
            'w-full rounded-xl px-4 py-2.5 font-mono text-sm',
            'bg-(--es-glass-fill-strong) border-2 border-(--es-glass-border)',
            textColor.accent,
            'focus:outline-none focus:border-(--es-accent)',
          )}
        />
      </div>
      <button onClick={() => onNext(trimmed)} disabled={loading || !trimmed} className={cn(btn.primary, 'w-full')}>
        {loading ? <Loader2 className="w-4 h-4 animate-spin" /> : <><span>{t('setup.btn.confirm')}</span><ArrowRight className="w-4 h-4" /></>}
      </button>
    </div>
  )
}

function StepAdbConnect({
  port,
  onPortChange,
  devices,
  result,
  loading,
  onConnect,
  onScanPort,
  onRefresh,
}: {
  port: string
  onPortChange: (v: string) => void
  devices: string[]
  result: ProbeResult | null
  loading: boolean
  onConnect: (target: string) => void
  onScanPort: (port: string) => void
  onRefresh: () => void
}) {
  const { t } = useI18n()
  return (
    <div className="flex flex-col gap-4">
      <div className="flex flex-col gap-1.5">
        <div className="flex items-center justify-between">
          <label className={typo.label}>{t('adb.devices')}</label>
          <button onClick={onRefresh} className={cn(btn.ghost, 'px-2 py-1')} aria-label={t('adb.refresh')}>
            <RefreshCw className={cn('w-3.5 h-3.5', loading && 'animate-spin')} />
          </button>
        </div>
        {devices.length === 0 ? (
          <p className={cn(typo.hint, 'py-2 text-center')}>{t('adb.no_devices')}</p>
        ) : (
          devices.map(d => (
            <button
              key={d}
              onClick={() => onConnect(d)}
              disabled={loading}
              className={cn(
                'flex items-center justify-between gap-2 rounded-xl px-3 py-2 text-sm transition-all disabled:opacity-50',
                'bg-(--es-glass-fill-strong) border-2 border-(--es-glass-border) hover:border-(--es-accent)',
              )}
            >
              <span className={cn('font-mono', textColor.strong)}>{d}</span>
              <Wifi className="w-4 h-4 opacity-50" />
            </button>
          ))
        )}
      </div>

      <div className="flex flex-col gap-1.5">
        <label className={typo.label}>{t('adb.manual_port')}</label>
        <div className="flex gap-2">
          <input
            type="text"
            value={port}
            onChange={e => onPortChange(e.target.value.replace(/[^0-9]/g, ''))}
            placeholder="5557"
            className={cn(
              'flex-1 min-w-0 rounded-xl px-4 py-2.5 font-mono text-sm',
              'bg-(--es-glass-fill-strong) border-2 border-(--es-glass-border)',
              textColor.strong,
              'placeholder:text-(--es-text-faint)',
              'focus:outline-none focus:border-(--es-accent)',
            )}
          />
          <button onClick={() => onScanPort(port)} disabled={loading || !port.trim()} className={cn(btn.primary, 'shrink-0')}>
            {loading ? <Loader2 className="w-4 h-4 animate-spin" /> : <><Wifi className="w-4 h-4" /><span>{t('setup.btn.connect')}</span></>}
          </button>
        </div>
      </div>

      {result && (() => {
        const rooted = result.adb_root || result.rooted || result.adb_rooted
        const reversed = result.reverse || result.reversed
        const allOk = result.connected && rooted && reversed
        return (
          <div className={cn(
            'flex flex-col gap-2 rounded-xl px-4 py-3 text-sm border-2',
            allOk
              ? 'bg-(--es-success)/10 border-(--es-success)/30 text-(--es-success)'
              : result.connected
                ? 'bg-amber-500/10 border-amber-500/30 text-amber-600 dark:text-amber-400'
                : 'bg-(--es-danger)/10 border-(--es-danger)/30 text-(--es-danger)',
          )}>
            <span className="font-medium flex items-center gap-2">
              {result.connected ? <Wifi className="w-4 h-4" /> : <WifiOff className="w-4 h-4" />}
              {result.connected ? `${t('setup.connected')}: ${result.serial}` : t('setup.connect_fail')}
            </span>
            {result.connected && (
              <div className="flex gap-1.5 flex-wrap">
                <span className={cn('inline-flex items-center gap-1 px-2 py-0.5 rounded-full text-[11px] font-semibold', rooted ? 'bg-emerald-500/15 text-emerald-600 dark:text-emerald-400' : 'bg-slate-400/15 text-slate-400')}>
                  <ShieldCheck className="w-3 h-3" />{t('adb.rooted')}
                </span>
                <span className={cn('inline-flex items-center gap-1 px-2 py-0.5 rounded-full text-[11px] font-semibold', reversed ? 'bg-emerald-500/15 text-emerald-600 dark:text-emerald-400' : 'bg-slate-400/15 text-slate-400')}>
                  <Repeat className="w-3 h-3" />{t('adb.reverse_ok')}
                </span>
              </div>
            )}
            {result.output && <span className="text-xs opacity-70 font-mono break-all">{result.output}</span>}
          </div>
        )
      })()}
    </div>
  )
}

function StepSkippable({ noticeKey, loading, onNext }: { noticeKey: string; loading: boolean; onNext: () => void }) {
  const { t } = useI18n()
  return (
    <div className="flex flex-col gap-4">
      <div className={cn(surface.glassSoft, 'px-4 py-3', typo.body)}>{t(noticeKey)}</div>
      <button onClick={onNext} disabled={loading} className={cn(btn.primary, 'w-full')}>
        {loading ? <Loader2 className="w-4 h-4 animate-spin" /> : <><span>{t('setup.btn.next')}</span><ArrowRight className="w-4 h-4" /></>}
      </button>
    </div>
  )
}

function StepCdnScan({
  output,
  loading,
  onScan,
}: {
  output: string
  loading: boolean
  onScan: () => void
}) {
  const { t } = useI18n()
  const done = !loading && output.includes('saved')
  return (
    <div className="flex flex-col gap-4">
      {loading && (
        <div className="flex flex-col gap-2">
          <div className="h-2 w-full rounded-full bg-(--es-glass-fill-strong) overflow-hidden">
            <div className="h-full rounded-full bg-(--es-accent) animate-[progress-indeterminate_1.4s_ease-in-out_infinite]" style={{ width: '40%' }} />
          </div>
          <p className={cn(typo.hint, 'text-center')}>{t('setup.cdn_scan_progress')}</p>
        </div>
      )}
      {output && (
        <pre className={cn(
          surface.glassSoft, 'px-4 py-3 text-xs font-mono whitespace-pre-wrap break-all',
          done ? textColor.success : textColor.faint,
        )}>
          {output}
        </pre>
      )}
      {!done && (
        <button onClick={onScan} disabled={loading} className={cn(btn.primary, 'w-full')}>
          {loading ? <Loader2 className="w-4 h-4 animate-spin" /> : <span>{t('setup.btn.cdn_scan')}</span>}
        </button>
      )}
    </div>
  )
}

function StepComplete({ loading, onFinish }: { loading: boolean; onFinish: () => void }) {
  const { t } = useI18n()
  return (
    <div className="flex flex-col gap-4">
      <div className="flex flex-col items-center gap-2 py-4">
        <CheckCircle className={cn('w-12 h-12', textColor.success)} />
        <p className={typo.cardTitle}>{t('setup.complete.title')}</p>
        <p className={cn(typo.hint, 'text-center')}>{t('setup.complete.desc')}</p>
      </div>
      <button onClick={onFinish} disabled={loading} className={cn(btn.primary, 'w-full')}>
        {loading ? <Loader2 className="w-4 h-4 animate-spin" /> : <><span>{t('setup.btn.dashboard')}</span><ArrowRight className="w-4 h-4" /></>}
      </button>
    </div>
  )
}
