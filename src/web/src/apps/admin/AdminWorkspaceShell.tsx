import { type ReactNode, useEffect } from 'react'
import { motion } from 'motion/react'
import { type AdminSurface } from '@/types/admin'
import { AdminFloatingMenu } from '@/components/admin/AdminFloatingMenu'
import { AdminTabBar } from '@/components/admin/AdminTabBar'
import { TopBar } from '@/components/layout/TopBar'
import { useI18n } from '@/lib/i18n'
import { getAdminRoute } from '@/app/adminRoutes'
import { shell } from '@/styles/tokens'
import { riseMotion } from '@/styles/motion'

interface AdminWorkspaceShellProps {
  surface: AdminSurface
  activeTab: string
  onNavigate: (surface: AdminSurface) => void
  onTabChange: (tabKey: string) => void
  serverPort?: number
  theme: 'light' | 'dark'
  onToggleTheme: () => void
  onShutdownServer?: () => void
  children: ReactNode
}

export function AdminWorkspaceShell({
  surface,
  activeTab,
  onNavigate,
  onTabChange,
  serverPort,
  theme,
  onToggleTheme,
  onShutdownServer,
  children,
}: AdminWorkspaceShellProps) {
  const { t } = useI18n()
  const route = getAdminRoute(surface)

  useEffect(() => {
    const root = document.documentElement
    if (theme === 'dark') {
      root.classList.add('dark')
    } else {
      root.classList.remove('dark')
    }
    localStorage.setItem('es-theme', theme)
  }, [theme])

  return (
    <div className={shell.root}>
      <div className={shell.frame}>
        <AdminFloatingMenu current={surface} onNavigate={onNavigate} serverPort={serverPort} />

        <div className={shell.body}>
          <TopBar
            title={route ? t(route.i18nKey) : ''}
            theme={theme}
            onToggleTheme={onToggleTheme}
            onToggleSidebar={() => {}}
            onShutdownServer={onShutdownServer}
            serverPort={serverPort}
          />
          <AdminTabBar
            surface={surface}
            activeTab={activeTab}
            onTabChange={onTabChange}
          />
          <motion.main key={`${surface}-${activeTab}`} className={shell.main} {...riseMotion}>
            {children}
          </motion.main>
        </div>
      </div>
    </div>
  )
}
