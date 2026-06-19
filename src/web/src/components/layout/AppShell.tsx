import { useState, useEffect } from 'react'
import { cn } from '@/lib/utils'
import { I18nProvider, useI18n } from '@/lib/i18n'
import { type NavPage } from '@/types/nav'
import { useServerStatus } from '@/hooks/useServerStatus'
import { NavSidebar } from './NavSidebar'
import { TopBar } from './TopBar'

const PAGE_I18N_KEYS: Record<NavPage, string> = {
  dashboard: 'admin.dashboard',
  accounts:  'admin.accounts',
  cheat:     'admin.cheat',
  db:        'admin.db',
  health:    'admin.health',
  logs:      'admin.logs',
  fixtures:  'admin.fixtures',
  gamedata:  'admin.gamedata',
  files:     'admin.files',
  settings:  'admin.settings',
  injector:  'admin.injector',
}

interface AppShellProps {
  children: (page: NavPage) => React.ReactNode
}

export function AppShell({ children }: AppShellProps) {
  return (
    <I18nProvider>
      <AppShellInner>{children}</AppShellInner>
    </I18nProvider>
  )
}

function AppShellInner({ children }: AppShellProps) {
  const { t } = useI18n()
  const { data: serverStatus } = useServerStatus()
  const [page, setPage] = useState<NavPage>('dashboard')
  const [theme, setTheme] = useState<'light' | 'dark'>(() => {
    if (typeof window !== 'undefined') {
      return (localStorage.getItem('es-theme') as 'light' | 'dark') ??
        (window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light')
    }
    return 'light'
  })
  const [sidebarOpen, setSidebarOpen] = useState(false)

  useEffect(() => {
    const root = document.documentElement
    if (theme === 'dark') {
      root.classList.add('dark')
    } else {
      root.classList.remove('dark')
    }
    localStorage.setItem('es-theme', theme)
  }, [theme])

  function toggleTheme() {
    setTheme(prev => prev === 'dark' ? 'light' : 'dark')
  }

  function navigate(target: NavPage) {
    setPage(target)
    setSidebarOpen(false)
  }

  return (
    <div
      className="min-h-screen overflow-hidden bg-slate-50 dark:bg-slate-950"
      style={{
        backgroundImage: `
          radial-gradient(ellipse 80% 60% at 10% 0%, rgba(139,92,246,0.12) 0%, transparent 60%),
          radial-gradient(ellipse 60% 50% at 90% 10%, rgba(59,130,246,0.10) 0%, transparent 60%),
          radial-gradient(ellipse 50% 40% at 50% 100%, rgba(16,185,129,0.07) 0%, transparent 60%)
        `,
      }}
    >
      <div className="relative flex h-screen overflow-hidden">
        <NavSidebar
          current={page}
          onNavigate={navigate}
          serverPort={serverStatus?.port}
          className={cn(
            'fixed z-40 top-0 bottom-0 left-0 md:relative',
            sidebarOpen ? 'flex' : 'hidden md:flex'
          )}
        />

        {sidebarOpen && (
          <div
            className="fixed inset-0 z-30 bg-black/40 backdrop-blur-sm md:hidden"
            onClick={() => setSidebarOpen(false)}
          />
        )}

        <div className="flex flex-col flex-1 min-w-0 overflow-hidden">
          <TopBar
            title={t(PAGE_I18N_KEYS[page])}
            theme={theme}
            onToggleTheme={toggleTheme}
            onToggleSidebar={() => setSidebarOpen(prev => !prev)}
            serverPort={serverStatus?.port}
          />
          <main className="flex-1 overflow-y-auto p-3 sm:p-4 md:p-6">
            {children(page)}
          </main>
        </div>
      </div>
    </div>
  )
}
