import { CheatPanel } from '@/components/cheat/CheatPanel'
import { useI18n } from '@/lib/i18n'

export function CheatPage() {
  const { t } = useI18n()
  return (
    <div className="space-y-6">
      <div className="min-w-0">
        <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white truncate">
          {t('admin.cheat')}
        </h2>
        <p className="text-xs sm:text-sm text-slate-400 dark:text-slate-500 mt-0.5">
          {t('cheat.polling_hint')}
        </p>
      </div>
      <CheatPanel />
    </div>
  )
}
