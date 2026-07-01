import { useState, useEffect } from 'react'
import { ServerCog, RefreshCw, Save, Globe } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { PageHeader } from '@/components/ui/PageHeader'
import { Button } from '@/components/ui/Button'
import { Select } from '@/components/ui/Select'
import { useServerStatus } from '@/hooks/useServerStatus'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { layout, typo, modal, dataConsole as dc } from '@/styles/tokens'
import { type ServerConfig } from '@/types/api'

export function ServerConfigView() {
  const { t } = useI18n()
  const { data: status, refresh, loading } = useServerStatus()
  const [clientRegion, setClientRegion] = useState('LiveSEA')
  const [serverPort, setServerPort] = useState('9991')
  const [gameServerUrl, setGameServerUrl] = useState('')
  const [localBackend, setLocalBackend] = useState(true)
  const [msg, setMsg] = useState('')
  const [saving, setSaving] = useState(false)

  useEffect(() => {
    fetch('/web/api/config')
      .then(r => r.json())
      .then((c: ServerConfig) => {
        setClientRegion(c.client_region ?? 'LiveSEA')
        setServerPort(String(c.server_port ?? 9991))
        setGameServerUrl(c.game_server_url ?? '')
        setLocalBackend(c.local_backend ?? true)
      })
      .catch(() => {})
  }, [])

  async function save() {
    setSaving(true)
    setMsg('')
    try {
      const r = await fetch('/web/api/config', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          client_region: clientRegion,
          server_port: Number(serverPort),
          game_server_url: gameServerUrl,
          local_backend: localBackend,
        }),
      })
      const d = await r.json()
      setMsg(d.ok !== false ? t('admin.save_ok') : t('admin.save_fail'))
    } catch {
      setMsg(t('admin.save_fail'))
    } finally {
      setSaving(false)
    }
  }

  const info: [string, string | number | undefined][] = [
    [t('server.port'), status?.port],
    [t('sc.proxy'), status?.proxy_enabled ? t('admin.state_on') : t('admin.state_off')],
    [t('sc.tbl_tables'), status?.tbl_tables],
    [t('sc.tbl_rows'), status?.tbl_rows],
    [t('admin.lang'), status?.lang],
    [t('sc.active_account'), status?.active_account_id],
    [t('admin.data_dir'), status?.data_dir],
    [t('admin.game_url'), status?.game_server_url],
  ]

  return (
    <div className={layout.page}>
      <PageHeader
        title={t('sc.title')}
        subtitle={t('sc.subtitle')}
        actions={
          <Button variant="ghost" onClick={refresh}>
            <RefreshCw size={16} className={loading ? dc.spin : undefined} />
          </Button>
        }
      />

      <GlassCard hover>
        <GlassCardHeader icon={<ServerCog size={18} />} title={t('sc.runtime_info')} />
        <div className={cn(layout.sectionGap, layout.grid3)}>
          {info.map(([k, v]) => (
            <div key={k} className={layout.infoCell}>
              <span className={typo.label}>{k}</span>
              <span className={cn(typo.value, 'truncate')} title={String(v ?? '—')}>{v ?? '—'}</span>
            </div>
          ))}
        </div>
      </GlassCard>

      <GlassCard>
        <GlassCardHeader icon={<Globe size={18} />} title={t('sc.client_region')} />
        <div className={cn(layout.sectionGap, 'grid grid-cols-1 lg:grid-cols-2 gap-4')}>
          <div className={modal.titleBox}>
            <label className={typo.label} htmlFor="server-config-port">{t('server.port')}</label>
            <input
              id="server-config-port"
              value={serverPort}
              inputMode="numeric"
              onChange={e => setServerPort(e.target.value.replace(/[^0-9]/g, ''))}
              className="rounded-xl border border-(--es-glass-border) bg-(--es-glass-fill-soft) px-3 py-2 font-mono text-sm text-(--es-text-strong) outline-none focus:border-(--es-accent)"
            />
          </div>
          <div className={modal.titleBox}>
            <label className={typo.label} htmlFor="server-config-url">{t('admin.game_url')}</label>
            <input
              id="server-config-url"
              value={gameServerUrl}
              onChange={e => setGameServerUrl(e.target.value)}
              className="rounded-xl border border-(--es-glass-border) bg-(--es-glass-fill-soft) px-3 py-2 font-mono text-sm text-(--es-text-strong) outline-none focus:border-(--es-accent)"
            />
          </div>
          <div className={modal.titleBox}>
            <label className={typo.label} htmlFor="server-config-region">{t('sc.client_region')}</label>
            <span className={typo.hint}>{t('sc.client_region_desc')}</span>
            <Select id="server-config-region" value={clientRegion} onChange={e => setClientRegion(e.target.value)}>
              <option value="LiveKR">{t('sc.region_kr_option')}</option>
              <option value="LiveSEA">{t('sc.region_sea_option')}</option>
            </Select>
          </div>
          <div className={cn(modal.titleBox, 'justify-end')}>
            <label className="flex items-center gap-2 text-sm font-medium text-(--es-text-strong)">
              <input
                type="checkbox"
                checked={localBackend}
                onChange={e => setLocalBackend(e.target.checked)}
              />
              {t('sc.local_backend')}
            </label>
          </div>
          <div className={cn(dc.actions, 'lg:col-span-2 justify-end')}>
            {msg && <span className={typo.hint}>{msg}</span>}
            <Button variant="primary" onClick={save} loading={saving} disabled={!serverPort || !gameServerUrl.trim()}>
              <Save size={16} />{t('admin.save')}
            </Button>
          </div>
        </div>
      </GlassCard>
    </div>
  )
}
