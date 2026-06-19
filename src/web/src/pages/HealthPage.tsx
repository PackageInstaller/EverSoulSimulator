import { Activity, RefreshCw } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { StatusBadge } from '@/components/ui/StatusBadge'
import { usePolling } from '@/hooks/usePolling'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { type HealthCheck } from '@/types/api'

export function HealthPage() {
  const { t } = useI18n()
  const { data, loading, refresh } = usePolling<HealthCheck[]>({ url: '/web/api/health', intervalMs: 5000 })

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between gap-4">
        <div className="min-w-0">
          <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white truncate">
            {t('admin.health')}
          </h2>
        </div>
        <button
          onClick={refresh}
          className="p-2 rounded-xl text-slate-400 hover:bg-white/40 dark:hover:bg-white/10 transition-all active:scale-95 shrink-0"
        >
          <RefreshCw className={cn('w-4 h-4', loading && 'animate-spin')} />
        </button>
      </div>

      {loading && !data && (
        <p className="text-sm text-slate-400 text-center py-8">{t('admin.loading')}</p>
      )}

      {data && data.length === 0 && (
        <p className="text-sm text-slate-400 text-center py-8">{t('admin.health_load_fail')}</p>
      )}

      <div className="grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3 gap-4">
        {data?.map(check => (
          <GlassCard key={check.name}>
            <GlassCardHeader
              icon={<Activity className={cn('w-4 h-4', check.status === 'ok' ? 'text-emerald-600' : check.status === 'warn' ? 'text-amber-500' : 'text-rose-600')} />}
              title={check.name}
              iconBg={check.status === 'ok' ? 'bg-emerald-100 dark:bg-emerald-900/40' : check.status === 'warn' ? 'bg-amber-100 dark:bg-amber-900/40' : 'bg-rose-100 dark:bg-rose-900/40'}
            />
            <div className="mt-3 flex items-center gap-2">
              <StatusBadge variant={check.status === 'ok' ? 'ok' : check.status === 'warn' ? 'warn' : 'fail'}>
                {check.status.toUpperCase()}
              </StatusBadge>
              {check.detail && (
                <span className="text-xs text-slate-500 dark:text-slate-400 truncate">{check.detail}</span>
              )}
            </div>
          </GlassCard>
        ))}
      </div>
    </div>
  )
}
