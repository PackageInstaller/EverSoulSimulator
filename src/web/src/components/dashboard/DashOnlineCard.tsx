import { Activity } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { StatusBadge } from '@/components/ui/StatusBadge'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { layout, stat } from '@/styles/tokens'

interface DashOnlineCardProps {
  port?: number
  dataDir?: string
  activeAccountId?: string
}

// home overview/status 공용 — 로컬 서버 온라인/포트/fixture 프로필 표시.
export function DashOnlineCard({ port, dataDir, activeAccountId }: DashOnlineCardProps) {
  const { t } = useI18n()
  return (
    <GlassCard>
      <GlassCardHeader icon={<Activity size={18} />} title={t('status.online')} />
      <div className={cn(layout.sectionGap, stat.statePills)}>
        <div className={stat.pill}>
          <span className={stat.dot} />
          <span className={stat.pillMono}>:{port ?? '…'}</span>
          <StatusBadge variant="ok">{t('admin.connected')}</StatusBadge>
        </div>
        <div className={stat.pill}>
          <span className={stat.pathPill}>{activeAccountId || '—'}</span>
        </div>
        <div className={stat.pill}>
          <span className={stat.pathPill}>{dataDir || '—'}</span>
        </div>
      </div>
    </GlassCard>
  )
}
