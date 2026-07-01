import { cn } from '@/lib/utils'
import { useI18n } from '@/lib/i18n'
import { Moon, Sun, Menu, Zap, PowerOff } from 'lucide-react'
import { topbar, button, textColor } from '@/styles/tokens'
import { LanguageSwitcher } from './LanguageSwitcher'
import { AdbWidget } from './AdbWidget'
import { ExternalDataWidget } from './ExternalDataWidget'

interface TopBarProps {
  title: string
  theme: 'light' | 'dark'
  onToggleTheme: () => void
  onToggleSidebar: () => void
  onShutdownServer?: () => void
  serverPort?: number
  className?: string
}

export function TopBar({ title, theme, onToggleTheme, onToggleSidebar, onShutdownServer, serverPort, className }: TopBarProps) {
  const { t } = useI18n()

  return (
    <header className={cn(topbar.root, className)}>
      <div className="flex items-center gap-2 sm:gap-3 min-w-0">
        <button onClick={onToggleSidebar} className={cn(button.icon, 'md:hidden')} aria-label={t('ui.open_sidebar')}>
          <Menu size={20} />
        </button>
        <div className="flex items-center gap-2 min-w-0">
          <Zap size={16} className={cn(textColor.accent, 'shrink-0')} />
          <h1 className={topbar.title}>{title}</h1>
        </div>
      </div>

      <div className="flex items-center gap-2 shrink-0">
        <div className={cn(topbar.pill, 'hidden sm:flex')}>
          <span className={topbar.pillDot} />
          <span className={topbar.pillText}>:{serverPort ?? '…'}</span>
        </div>

        {onShutdownServer && (
          <button
            onClick={onShutdownServer}
            className={cn(button.icon, 'text-(--es-danger)')}
            aria-label={t('server.shutdown')}
            title={t('server.shutdown')}
          >
            <PowerOff size={16} />
          </button>
        )}

        <ExternalDataWidget />
        <AdbWidget />

        <LanguageSwitcher />

        <button onClick={onToggleTheme} className={button.icon} aria-label={t('ui.theme_toggle')}>
          {theme === 'dark' ? <Sun size={16} className={textColor.warn} /> : <Moon size={16} className={textColor.accent} />}
        </button>
      </div>
    </header>
  )
}
