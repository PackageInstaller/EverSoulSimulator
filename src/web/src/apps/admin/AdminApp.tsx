import { useState } from 'react'
import { I18nProvider } from '@/lib/i18n'
import { type AdminSurface } from '@/types/admin'
import { getAdminRoute } from '@/app/adminRoutes'
import { useServerStatus } from '@/hooks/useServerStatus'
import { AdminWorkspaceShell } from './AdminWorkspaceShell'
import { DashboardPage } from '@/pages/DashboardPage'
import { AccountsPage } from '@/pages/AccountsPage'
import { IngameSettingsPage } from '@/pages/IngameSettingsPage'
import { ApkConnectPage } from '@/pages/ApkConnectPage'
import { ManualPage } from '@/pages/ManualPage'
import { apiShutdownServer } from '@/api/server'

function getDefaultTab(surface: AdminSurface): string {
  return getAdminRoute(surface)?.tabs?.[0]?.key ?? ''
}

function renderPage(surface: AdminSurface, activeTab: string) {
  switch (surface) {
    case 'home':           return <DashboardPage activeTab={activeTab} />
    case 'accounts':       return <AccountsPage activeTab={activeTab} />
    case 'player-state':   return <IngameSettingsPage activeTab={activeTab} />
    case 'apk-connect':    return <ApkConnectPage />
    case 'manual':         return <ManualPage />
  }
}

export function AdminApp() {
  return (
    <I18nProvider>
      <AdminAppInner />
    </I18nProvider>
  )
}

function AdminAppInner() {
  const { data: serverStatus } = useServerStatus()
  const [surface, setSurface] = useState<AdminSurface>('home')
  const [activeTab, setActiveTab] = useState<string>(() => getDefaultTab('home'))
  const [theme, setTheme] = useState<'light' | 'dark'>(() => {
    if (typeof window !== 'undefined') {
      return (localStorage.getItem('es-theme') as 'light' | 'dark') ??
        (window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light')
    }
    return 'light'
  })

  function navigate(next: AdminSurface) {
    setSurface(next)
    setActiveTab(getDefaultTab(next))
  }

  function toggleTheme() {
    setTheme(prev => prev === 'dark' ? 'light' : 'dark')
  }

  async function shutdownServer() {
    await apiShutdownServer()
  }

  return (
    <AdminWorkspaceShell
      surface={surface}
      activeTab={activeTab}
      onNavigate={navigate}
      onTabChange={setActiveTab}
      serverPort={serverStatus?.port}
      theme={theme}
      onToggleTheme={toggleTheme}
      onShutdownServer={shutdownServer}
    >
      {renderPage(surface, activeTab)}
    </AdminWorkspaceShell>
  )
}
