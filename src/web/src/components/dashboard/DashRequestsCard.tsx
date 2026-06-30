import { Zap } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { layout, stat } from '@/styles/tokens'

interface DashRequestsCardProps {
  requestCount?: number
  uptime: string
}

// home 'requests' 탭 — 누적 요청 수 + 가동 시간 기반 요약.
export function DashRequestsCard({ requestCount, uptime }: DashRequestsCardProps) {
  const { t } = useI18n()
  const rows: { label: string; value: string | number }[] = [
    { label: t('admin.requests'), value: requestCount ?? 0 },
    { label: t('admin.uptime'), value: uptime },
  ]
  return (
    <GlassCard>
      <GlassCardHeader icon={<Zap size={18} />} title={t('admin.home_requests')} />
      <div className={cn(layout.sectionGap, stat.statePills)}>
        {rows.map(row => (
          <div key={row.label} className={stat.pill}>
            <span className={stat.label}>{row.label}</span>
            <span className={stat.pillMono}>{row.value}</span>
          </div>
        ))}
      </div>
    </GlassCard>
  )
}
