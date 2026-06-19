import { useState, useEffect } from 'react'
import { Settings, Globe, Network, Folder, Save } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { useServerStatus } from '@/hooks/useServerStatus'
import { useI18n, LANGS, type Lang } from '@/lib/i18n'
import { cn } from '@/lib/utils'

const LANG_LABELS: Record<Lang, string> = {
  ko: '한국어',
  en: 'English',
  zh: '中文',
  ru: 'Русский',
  de: 'Deutsch',
  fr: 'Français',
  vi: 'Tiếng Việt',
}

export function SettingsPage() {
  const { t, lang, setLang } = useI18n()
  const { data: status, refresh } = useServerStatus()

  const [proxyEnabled, setProxyEnabled] = useState(false)
  const [gameServerUrl, setGameServerUrl] = useState('')
  const [adbPort, setAdbPort] = useState('')
  const [saveState, setSaveState] = useState<'idle' | 'saving' | 'ok' | 'err'>('idle')
  const [saveMsg, setSaveMsg] = useState('')

  useEffect(() => {
    if (!status) return
    setProxyEnabled(status.proxy_enabled)
    setGameServerUrl(status.game_server_url ?? '')
  }, [status])

  useEffect(() => {
    fetch('/web/api/adb/port')
      .then(r => r.json())
      .then((d: { port: string }) => { if (d.port) setAdbPort(d.port) })
      .catch(() => {})
  }, [])

  async function saveConfig() {
    setSaveState('saving')
    setSaveMsg('')
    try {
      const [configRes, adbRes] = await Promise.all([
        fetch('/web/api/config', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ proxy_enabled: proxyEnabled, game_server_url: gameServerUrl }),
        }),
        fetch('/web/api/adb/port', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ port: adbPort }),
        }),
      ])
      const d = await configRes.json()
      if (d.ok !== false) {
        setSaveState('ok')
        setSaveMsg(t('admin.apply'))
        refresh()
      } else {
        setSaveState('err')
        setSaveMsg(d.reason ?? t('admin.x_server_error'))
      }
    } catch {
      setSaveState('err')
      setSaveMsg(t('admin.x_server_error'))
    }
  }

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between gap-4">
        <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white truncate">
          {t('admin.settings')}
        </h2>
        <div className="flex items-center gap-2">
          {saveMsg && (
            <span className={cn(
              'text-sm font-medium',
              saveState === 'ok' ? 'text-emerald-500' : 'text-rose-500'
            )}>
              {saveMsg}
            </span>
          )}
          <button
            onClick={saveConfig}
            disabled={saveState === 'saving'}
            className="flex items-center gap-2 px-4 py-2 rounded-xl text-sm font-bold text-white bg-linear-to-r from-indigo-500 to-violet-500 shadow-lg shadow-indigo-500/30 transition-all active:scale-95 disabled:opacity-50 disabled:cursor-not-allowed"
          >
            <Save className="w-4 h-4" />
            {saveState === 'saving' ? t('admin.save_ing') : t('admin.apply')}
          </button>
        </div>
      </div>

      <GlassCard>
        <GlassCardHeader
          icon={<Network className="w-4 h-4 text-violet-600" />}
          title={t('admin.proxy_on')}
          iconBg="bg-violet-100 dark:bg-violet-900/40"
        />
        <div className="mt-4 space-y-4">
          <label className="flex items-center justify-between gap-4 cursor-pointer">
            <span className="text-sm text-slate-700 dark:text-slate-300">{t('admin.proxy_on')}</span>
            <button
              role="switch"
              aria-checked={proxyEnabled}
              onClick={() => setProxyEnabled(v => !v)}
              className={cn(
                'relative w-11 h-6 rounded-full transition-colors duration-200 shrink-0',
                proxyEnabled ? 'bg-violet-500' : 'bg-slate-200 dark:bg-slate-700'
              )}
            >
              <span className={cn(
                'absolute top-0.5 left-0.5 w-5 h-5 rounded-full bg-white shadow-sm transition-transform duration-200',
                proxyEnabled && 'translate-x-5'
              )} />
            </button>
          </label>

          <div className="space-y-1.5">
            <label className="text-xs font-semibold text-slate-500 dark:text-slate-400 uppercase tracking-widest">
              {t('admin.game_url')}
            </label>
            <input
              type="text"
              value={gameServerUrl}
              onChange={e => { setGameServerUrl(e.target.value); setSaveState('idle') }}
              className="w-full px-3 py-2 text-sm font-mono text-slate-800 dark:text-slate-200 bg-slate-100/80 dark:bg-white/8 border border-slate-200 dark:border-white/10 rounded-xl focus:outline-none focus:ring-1 focus:ring-violet-400/50"
            />
          </div>
        </div>
      </GlassCard>

      <GlassCard>
        <GlassCardHeader
          icon={<Settings className="w-4 h-4 text-slate-600" />}
          title={t('admin.adb_port')}
          iconBg="bg-slate-100 dark:bg-slate-700/60"
        />
        <div className="mt-4 space-y-4">
          <div className="space-y-1.5">
            <label className="text-xs font-semibold text-slate-500 dark:text-slate-400 uppercase tracking-widest">
              {t('admin.adb_port')}
            </label>
            <input
              type="number"
              value={adbPort}
              onChange={e => { setAdbPort(e.target.value); setSaveState('idle') }}
              className="w-40 px-3 py-2 text-sm font-mono text-slate-800 dark:text-slate-200 bg-slate-100/80 dark:bg-white/8 border border-slate-200 dark:border-white/10 rounded-xl focus:outline-none focus:ring-1 focus:ring-slate-400/50"
            />
          </div>
          <div className="space-y-1.5">
            <label className="text-xs font-semibold text-slate-500 dark:text-slate-400 uppercase tracking-widest">
              {t('admin.data_dir')}
            </label>
            <div className="flex items-center gap-2 px-3 py-2 rounded-xl bg-slate-100/80 dark:bg-white/8 border border-slate-200 dark:border-white/10">
              <Folder className="w-3.5 h-3.5 text-slate-400 shrink-0" />
              <span className="text-sm font-mono text-slate-500 dark:text-slate-400 truncate">
                {status?.data_dir || '—'}
              </span>
            </div>
          </div>
        </div>
      </GlassCard>

      <GlassCard>
        <GlassCardHeader
          icon={<Globe className="w-4 h-4 text-sky-600" />}
          title={t('nav.offline_badge')}
          iconBg="bg-sky-100 dark:bg-sky-900/40"
        />
        <div className="mt-4 grid grid-cols-2 sm:grid-cols-4 gap-2">
          {LANGS.map(l => (
            <button
              key={l}
              onClick={() => setLang(l)}
              className={cn(
                'px-3 py-2.5 rounded-xl text-sm font-medium transition-all active:scale-95',
                lang === l
                  ? 'bg-linear-to-r from-sky-500 to-blue-500 text-white shadow-lg shadow-sky-500/30'
                  : 'text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/8'
              )}
            >
              {LANG_LABELS[l]}
            </button>
          ))}
        </div>
      </GlassCard>
    </div>
  )
}
