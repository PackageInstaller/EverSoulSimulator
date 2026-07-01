import { PageHeader } from '@/components/ui/PageHeader'
import { useI18n } from '@/lib/i18n'
import { layout, surface, typo, textColor } from '@/styles/tokens'
import { cn } from '@/lib/utils'
import { useAdbState } from '@/hooks/useAdbState'
import { Wifi, WifiOff, ShieldCheck, Repeat, Smartphone, Circle } from 'lucide-react'

function AdbStatusRow({ ok, icon: Icon, label, value }: { ok: boolean; icon: React.ComponentType<{ className?: string }>; label: string; value?: string }) {
  return (
    <div className="flex items-center justify-between gap-3 py-2">
      <div className="flex items-center gap-2">
        <Icon className={cn('w-4 h-4 shrink-0', ok ? 'text-emerald-500' : 'text-slate-400')} />
        <span className={cn(typo.body, ok ? 'text-emerald-600 dark:text-emerald-400' : textColor.faint)}>{label}</span>
      </div>
      {value && <span className={cn('font-mono text-sm', textColor.soft)}>{value}</span>}
    </div>
  )
}

export function ApkConnectPage() {
  const { t } = useI18n()
  const { data: adb } = useAdbState(2000)

  const connected = !!adb?.connected
  const rooted = !!adb?.adb_rooted
  const reversed = !!adb?.reverse
  const gameRunning = !!adb?.game_running
  const serial = adb?.serial ?? ''
  const reverseEntries = adb?.reverse_entries ?? []
  const hostPort = adb?.host_port ?? ''

  return (
    <div className={layout.page}>
      <PageHeader title={t('admin.adb_section_title')} subtitle={t('apk.subtitle')} />

      <div className={cn(surface.glass, 'p-4 flex flex-col divide-y divide-(--es-glass-border)')}>
        <AdbStatusRow
          ok={connected}
          icon={connected ? Wifi : WifiOff}
          label={connected ? t('adb.connected') : t('adb.disconnected')}
          value={serial || undefined}
        />
        <AdbStatusRow
          ok={rooted}
          icon={ShieldCheck}
          label={t('adb.rooted')}
        />
        <AdbStatusRow
          ok={reversed}
          icon={Repeat}
          label={t('adb.reverse_ok')}
          value={hostPort ? `tcp:${hostPort}` : undefined}
        />
        <AdbStatusRow
          ok={gameRunning}
          icon={Smartphone}
          label={gameRunning ? t('admin.apk_game_running') : t('admin.apk_game_stopped')}
        />
      </div>

      {reverseEntries.length > 0 && (
        <div className={cn(surface.glassSoft, 'p-4 flex flex-col gap-2')}>
          <p className={typo.label}>{t('adb.reverse_entries')}</p>
          {reverseEntries.map((e, i) => (
            <div key={i} className="flex items-center gap-2">
              <Circle className="w-2 h-2 shrink-0 fill-emerald-500 text-emerald-500" />
              <span className={cn('font-mono text-sm', textColor.soft)}>{e}</span>
            </div>
          ))}
        </div>
      )}

      {!connected && (
        <div className="rounded-xl bg-amber-50 dark:bg-amber-900/20 border border-amber-300 dark:border-amber-700 px-4 py-3 text-sm text-amber-700 dark:text-amber-300">
          {t('adb.reconnect_required')}
        </div>
      )}
    </div>
  )
}
