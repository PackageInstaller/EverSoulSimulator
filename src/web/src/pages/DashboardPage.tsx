import { useState, useEffect } from 'react'
import { RefreshCw } from 'lucide-react'
import { PageHeader } from '@/components/ui/PageHeader'
import { Button } from '@/components/ui/Button'
import { useServerStatus } from '@/hooks/useServerStatus'
import { usePolling } from '@/hooks/usePolling'
import { useI18n } from '@/lib/i18n'
import { layout, dataConsole as dc } from '@/styles/tokens'
import { type GameDataSummary } from '@/types/api'
import { type InjectorStatus } from '@/types/injector'
import { apiRunGame, apiStopGame } from '@/api/injector'
import { DashApkStatusCard } from '@/components/dashboard/DashApkStatusCard'
import { DashStatGrid } from '@/components/dashboard/DashStatGrid'
import { DashOnlineCard } from '@/components/dashboard/DashOnlineCard'
import { ServerConfigView } from '@/components/server/ServerConfigView'
import { LogsPage } from '@/pages/LogsPage'
import { HealthPage } from '@/pages/HealthPage'

function useUptime(startedAt: number | undefined): string {
  const [, setTick] = useState(0)
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

export function DashboardPage({ activeTab = 'overview' }: { activeTab?: string }) {
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
      const d = await apiRunGame()
      setGameMsg({
        ok: !!d.ok,
        text: d.ok
          ? t('admin.game_start_done')
          : d.reverse === false
            ? t('admin.adb_reverse_fail')
            : (d.output ?? t('admin.server_error')),
      })
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
      const d = await apiStopGame()
      setGameMsg({ ok: !!d.ok, text: d.ok ? t('admin.stopped') : t('admin.server_error') })
      refreshInj()
    } catch {
      setGameMsg({ ok: false, text: t('admin.server_error') })
    } finally {
      setGameActing(false)
    }
  }

  const apkCard = (
    <DashApkStatusCard
      injStatus={injStatus ?? null}
      gameActing={gameActing}
      gameMsg={gameMsg}
      onStart={startGame}
      onStop={stopGame}
    />
  )
  const statGrid = (
    <DashStatGrid
      port={status?.port}
      requestCount={status?.request_count}
      uptime={uptime}
      tblTables={status?.tbl_tables}
      lang={status?.lang}
      gold={summary?.gold}
      crystal={summary?.crystal}
      heroCount={summary?.hero_count}
    />
  )
  const onlineCard = (
    <DashOnlineCard
      port={status?.port}
      dataDir={status?.data_dir}
      activeAccountId={status?.active_account_id}
    />
  )

  return (
    <div className={layout.page}>
      <PageHeader
        title={t('admin.dashboard')}
        subtitle={t('status.online')}
        actions={
          <Button variant="ghost" onClick={refresh}>
            <RefreshCw size={16} className={loading ? dc.spin : undefined} />
          </Button>
        }
      />

      {activeTab === 'overview' && <>{apkCard}{statGrid}{onlineCard}</>}
      {activeTab === 'status' && <>{statGrid}{onlineCard}</>}
      {activeTab === 'config' && <ServerConfigView />}
      {activeTab === 'logs' && <LogsPage />}
      {activeTab === 'health' && <HealthPage />}
    </div>
  )
}
