import { Package, RefreshCw, FolderOpen } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { usePolling } from '@/hooks/usePolling'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'

interface FixtureEntry {
  path: string
  bytes: number
}

export function FixturesPage() {
  const { t } = useI18n()
  const { data, loading, refresh } = usePolling<FixtureEntry[]>({ url: '/web/api/fixtures', intervalMs: 10000 })

  function formatSize(bytes: number): string {
    if (bytes < 1024) return `${bytes}B`
    if (bytes < 1024 * 1024) return `${(bytes / 1024).toFixed(1)}KB`
    return `${(bytes / 1024 / 1024).toFixed(1)}MB`
  }

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between gap-4">
        <div className="min-w-0">
          <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white truncate">
            {t('admin.fixtures')}
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
        <div className="flex flex-col items-center justify-center py-16 gap-3">
          <FolderOpen className="w-8 h-8 text-slate-300 dark:text-slate-600" />
          <p className="text-sm text-slate-400 dark:text-slate-500">{t('admin.file_none')}</p>
        </div>
      )}

      {data && data.length > 0 && (
        <GlassCard>
          <GlassCardHeader
            icon={<Package className="w-4 h-4 text-violet-600" />}
            title={t('admin.fixtures')}
            iconBg="bg-violet-100 dark:bg-violet-900/40"
          />
          <div className="mt-3 space-y-1">
            {data.map((f, i) => (
              <div key={i} className="flex items-center gap-3 px-3 py-2 rounded-xl hover:bg-slate-50 dark:hover:bg-white/4 transition-colors">
                <span className="flex-1 min-w-0 text-xs font-mono text-slate-600 dark:text-slate-300 truncate">{f.path}</span>
                <span className="text-xs text-slate-400 font-mono shrink-0">{formatSize(f.bytes)}</span>
              </div>
            ))}
          </div>
        </GlassCard>
      )}
    </div>
  )
}
