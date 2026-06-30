import { Activity, RefreshCw } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { StatusBadge } from '@/components/ui/StatusBadge'
import { PageHeader } from '@/components/ui/PageHeader'
import { Button } from '@/components/ui/Button'
import { usePolling } from '@/hooks/usePolling'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { layout, typo, badge, dataConsole as dc } from '@/styles/tokens'
import { type HealthCheck } from '@/types/api'

export function HealthPage() {
  const { t } = useI18n()
  const { data, loading, refresh } = usePolling<HealthCheck[]>({ url: '/web/api/health', intervalMs: 5000 })

  return (
    <div className={layout.page}>
      <PageHeader
        title={t('admin.health')}
        actions={
          <Button variant="ghost" onClick={refresh}>
            <RefreshCw size={16} className={loading ? dc.spin : undefined} />
          </Button>
        }
      />

      {loading && !data && <p className={typo.hint}>{t('admin.loading')}</p>}
      {data && data.length === 0 && <p className={typo.hint}>{t('admin.health_load_fail')}</p>}

      <div className={layout.grid3}>
        {data?.map(check => (
          <GlassCard key={check.name} hover>
            <GlassCardHeader icon={<Activity size={18} />} title={check.name} />
            <div className={cn(layout.sectionGap, 'flex items-center gap-2 flex-wrap')}>
              <StatusBadge variant={check.status === 'ok' ? 'ok' : check.status === 'warn' ? 'warn' : 'fail'}>
                {check.status.toUpperCase()}
              </StatusBadge>
              {check.detail && <span className={typo.hint}>{check.detail}</span>}
            </div>
            {check.hint && <p className={cn('mt-2', badge.warn)}>{check.hint}</p>}
          </GlassCard>
        ))}
      </div>
    </div>
  )
}
