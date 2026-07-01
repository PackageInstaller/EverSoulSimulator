import { useState, useEffect } from 'react'
import { cn } from '@/lib/utils'
import { I18nProvider, useI18n } from '@/lib/i18n'
import { type AdminSurface } from '@/types/admin'
import { ADMIN_ROUTES } from '@/app/adminRoutes'
import { useServerStatus } from '@/hooks/useServerStatus'
import { NavSidebar } from './NavSidebar'
import { TopBar } from './TopBar'
import { BuilderCredit } from './BuilderCredit'
import { apiShutdownServer } from '@/api/server'
import styles from '@/styles/shell.module.css'

interface AppShellProps {
  children: (surface: AdminSurface) => React.ReactNode
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
  const [page, setPage] = useState<AdminSurface>('home')
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

  function navigate(target: AdminSurface) {
    setPage(target)
    setSidebarOpen(false)
  }

  async function shutdownServer() {
    await apiShutdownServer()
  }

  return (
    <div className={cn('min-h-screen overflow-hidden bg-slate-50 dark:bg-slate-950', styles.shellBackground)}>
      <BuilderCredit />
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
            title={t(ADMIN_ROUTES.find(r => r.surface === page)?.i18nKey ?? page)}
            theme={theme}
            onToggleTheme={toggleTheme}
            onToggleSidebar={() => setSidebarOpen(prev => !prev)}
            onShutdownServer={shutdownServer}
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
