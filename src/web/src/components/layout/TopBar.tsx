import { cn } from '@/lib/utils'
import { useI18n } from '@/lib/i18n'
import { Moon, Sun, Menu, Zap } from 'lucide-react'

interface TopBarProps {
  title: string
  theme: 'light' | 'dark'
  onToggleTheme: () => void
  onToggleSidebar: () => void
  serverPort?: number
  className?: string
}

export function TopBar({ title, theme, onToggleTheme, onToggleSidebar, serverPort, className }: TopBarProps) {
  const { t } = useI18n()

  return (
    <header
      className={cn(
        'flex items-center justify-between shrink-0 gap-3',
        'mx-3 mt-3 mb-0 min-h-12 px-3 sm:px-4 py-2 rounded-2xl',
        'bg-white/80 dark:bg-slate-900/80 backdrop-blur-2xl',
        'border border-white/40 dark:border-white/10',
        'shadow-lg shadow-black/5 dark:shadow-black/30',
        className
      )}
    >
      <div className="flex items-center gap-2 sm:gap-3 min-w-0">
        <button
          onClick={onToggleSidebar}
          className="md:hidden p-1.5 rounded-xl text-slate-400 hover:bg-slate-100 dark:hover:bg-white/10 transition-all active:scale-95 shrink-0"
          aria-label={t('ui.open_sidebar')}
        >
          <Menu className="w-5 h-5" />
        </button>

        <div className="flex items-center gap-2 min-w-0">
          <Zap className="w-4 h-4 text-violet-500 dark:text-violet-400 shrink-0" />
          <h1 className="text-sm font-bold text-slate-900 dark:text-white tracking-tight truncate">{title}</h1>
        </div>
      </div>

      <div className="flex items-center gap-2 shrink-0">
        <div className="hidden sm:flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-slate-100/80 dark:bg-white/8">
          <span className="w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse" />
          <span className="text-[11px] font-mono text-slate-500 dark:text-slate-400">:{serverPort ?? '…'}</span>
        </div>

        <button
          onClick={onToggleTheme}
          className="p-2 rounded-xl text-slate-400 hover:bg-slate-100 dark:hover:bg-white/10 transition-all active:scale-95"
          aria-label={t('ui.theme_toggle')}
        >
          {theme === 'dark' ? (
            <Sun className="w-4 h-4 text-amber-400" />
          ) : (
            <Moon className="w-4 h-4 text-indigo-500" />
          )}
        </button>
      </div>
    </header>
  )
}
