import { Globe } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { useI18n, LANGS, type Lang } from '@/lib/i18n'
import { cn } from '@/lib/utils'

const LANG_LABELS: Record<Lang, string> = {
  ko: '한국어',
  en: 'English',
  zh: '中文',
  ru: 'Русский',
  de: 'Deutsch',
  fr: 'Français',
  vi: 'Tiếng Việt',
}

export function SettingsPage() {
  const { t, lang, setLang } = useI18n()

  return (
    <div className="space-y-6">
      <div className="flex items-center gap-4">
        <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white truncate">
          {t('admin.settings')}
        </h2>
      </div>

      <GlassCard>
        <GlassCardHeader
          icon={<Globe className="w-4 h-4 text-sky-600" />}
          title={t('nav.offline_badge')}
          iconBg="bg-sky-100 dark:bg-sky-900/40"
        />
        <div className="mt-4 grid grid-cols-2 sm:grid-cols-4 gap-2">
          {LANGS.map(l => (
            <button
              key={l}
              onClick={() => setLang(l)}
              className={cn(
                'px-3 py-2.5 rounded-xl text-sm font-medium transition-all active:scale-95',
                lang === l
                  ? 'bg-linear-to-r from-sky-500 to-blue-500 text-white shadow-lg shadow-sky-500/30'
                  : 'text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/8'
              )}
            >
              {LANG_LABELS[l]}
            </button>
          ))}
        </div>
      </GlassCard>
    </div>
  )
}
