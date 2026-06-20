import { Plus, RefreshCw } from 'lucide-react'
import { GlassCard } from '@/components/ui/GlassCard'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { type HeroAddCardProps } from '@/types/cheat'

export function HeroAddCard({
  config,
  heroCount,
  heroNoValue,
  heroLevelValue,
  onHeroNoChange,
  onHeroLevelChange,
  onApply,
  loading,
}: HeroAddCardProps) {
  const { t } = useI18n()
  const { icon: Icon, iconColor, iconBg, gradient, i18nKey } = config
  const canApply = !!heroNoValue && !!heroLevelValue

  return (
    <GlassCard className="flex flex-col gap-4">
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-3 min-w-0">
          <div className={cn('w-10 h-10 rounded-2xl flex items-center justify-center shadow-lg shrink-0', iconBg)}>
            <Icon className={cn('w-5 h-5', iconColor)} />
          </div>
          <div className="min-w-0">
            <p className="text-xs font-medium text-slate-400 dark:text-slate-500 uppercase tracking-wider">
              {t(i18nKey)}
            </p>
            <p className={cn(
              'text-xl sm:text-2xl font-bold tabular-nums bg-clip-text text-transparent bg-linear-to-r truncate',
              gradient
            )}>
              {heroCount !== undefined ? heroCount.toLocaleString() : '—'}
            </p>
          </div>
        </div>
        {loading && <RefreshCw className="w-4 h-4 text-slate-400 animate-spin shrink-0" />}
      </div>

      <div className="flex flex-col gap-2">
        <input
          type="number"
          min={1}
          value={heroNoValue}
          onChange={e => onHeroNoChange(e.target.value)}
          placeholder={t('cheat.hero_no')}
          className={cn(
            'w-full px-3 py-2 rounded-xl text-sm font-medium',
            'bg-slate-100/80 dark:bg-white/8',
            'border border-slate-200 dark:border-white/10',
            'text-slate-800 dark:text-slate-200',
            'placeholder:text-slate-400 dark:placeholder:text-slate-600',
            'focus:outline-none focus:ring-2 focus:ring-emerald-500/40',
            'transition-all'
          )}
        />
        <div className="flex gap-2">
          <input
            type="number"
            min={1}
            max={200}
            value={heroLevelValue}
            onChange={e => onHeroLevelChange(e.target.value)}
            placeholder={t('cheat.hero_level')}
            className={cn(
              'flex-1 min-w-0 px-3 py-2 rounded-xl text-sm font-medium',
              'bg-slate-100/80 dark:bg-white/8',
              'border border-slate-200 dark:border-white/10',
              'text-slate-800 dark:text-slate-200',
              'placeholder:text-slate-400 dark:placeholder:text-slate-600',
              'focus:outline-none focus:ring-2 focus:ring-emerald-500/40',
              'transition-all'
            )}
          />
          <button
            onClick={onApply}
            disabled={!canApply}
            className={cn(
              'px-3 sm:px-4 py-2 rounded-xl text-sm font-semibold text-white shrink-0',
              'bg-linear-to-r shadow-lg transition-all active:scale-95',
              gradient,
              !canApply && 'opacity-40 cursor-not-allowed'
            )}
          >
            <Plus className="w-4 h-4" />
          </button>
        </div>
      </div>
    </GlassCard>
  )
}
