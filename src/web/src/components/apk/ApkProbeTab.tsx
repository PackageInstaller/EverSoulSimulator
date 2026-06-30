import { ShieldCheck } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { Button } from '@/components/ui/Button'
import { Input } from '@/components/ui/Input'
import { StatusBadge } from '@/components/ui/StatusBadge'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { layout, apkPanel as ap } from '@/styles/tokens'
import { type ProbeResult } from '@/types/injector'

interface ApkProbeTabProps {
  target: string
  probeResult: ProbeResult | null
  onTargetChange: (value: string) => void
  onProbe: () => void
}

// apk-connect 'probe' 탭 — 대상 기기 연결/eversoul/root/reverse 상태 점검.
export function ApkProbeTab({ target, probeResult, onTargetChange, onProbe }: ApkProbeTabProps) {
  const { t } = useI18n()
  return (
    <GlassCard hover>
      <GlassCardHeader icon={<ShieldCheck size={18} />} title={t('admin.adb_probe_btn')} />
      <div className={cn(layout.sectionGap, layout.stackLg)}>
        <div className={ap.inputRow}>
          <Input value={target} onChange={e => onTargetChange(e.target.value)} placeholder={t('admin.adb_target_ph')} />
          <Button variant="primary" onClick={onProbe} disabled={!target.trim()}>
            <ShieldCheck size={14} />{t('admin.adb_probe_btn')}
          </Button>
        </div>

        {probeResult && (
          <div className={ap.badgeGrid}>
            <StatusBadge variant={probeResult.connected ? 'ok' : 'fail'}>
              {probeResult.connected ? t('admin.adb_connected_ok') : t('admin.adb_connected_fail')}
            </StatusBadge>
            <StatusBadge variant={probeResult.eversoul ? 'ok' : 'warn'}>
              {probeResult.eversoul ? t('admin.adb_eversoul_ok') : t('admin.adb_eversoul_fail')}
            </StatusBadge>
            <StatusBadge variant={probeResult.rooted ? 'ok' : 'warn'}>{probeResult.rooted ? 'su root ✓' : 'su root ✗'}</StatusBadge>
            <StatusBadge variant={probeResult.adb_root ? 'ok' : 'idle'}>{probeResult.adb_root ? 'adb root ✓' : 'adb root ✗'}</StatusBadge>
            <StatusBadge variant={probeResult.reverse ? 'ok' : 'fail'}>
              {probeResult.reverse ? t('admin.adb_reverse_ok') : t('admin.adb_reverse_fail')}
            </StatusBadge>
          </div>
        )}
      </div>
    </GlassCard>
  )
}
