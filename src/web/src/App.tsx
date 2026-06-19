import { AppShell } from '@/components/layout/AppShell'
import { DashboardPage } from '@/pages/DashboardPage'
import { AccountsPage } from '@/pages/AccountsPage'
import { CheatPage } from '@/pages/CheatPage'
import { DbPage } from '@/pages/DbPage'
import { HealthPage } from '@/pages/HealthPage'
import { FixturesPage } from '@/pages/FixturesPage'
import { GameDataPage } from '@/pages/GameDataPage'
import { FilesPage } from '@/pages/FilesPage'
import { SettingsPage } from '@/pages/SettingsPage'
import { LogsPage } from '@/pages/LogsPage'
import { type NavPage } from '@/types/nav'

function renderPage(page: NavPage) {
  switch (page) {
    case 'dashboard': return <DashboardPage />
    case 'accounts':  return <AccountsPage />
    case 'cheat':     return <CheatPage />
    case 'db':        return <DbPage />
    case 'health':    return <HealthPage />
    case 'logs':      return <LogsPage />
    case 'fixtures':  return <FixturesPage />
    case 'gamedata':  return <GameDataPage />
    case 'files':     return <FilesPage />
    case 'settings':  return <SettingsPage />
  }
}

export default function App() {
  return <AppShell>{renderPage}</AppShell>
}
