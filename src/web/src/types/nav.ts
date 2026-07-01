import type { LucideIcon } from 'lucide-react'

export type NavPage =
  | 'dashboard'
  | 'accounts'
  | 'cheat'
  | 'db'
  | 'health'
  | 'logs'
  | 'fixtures'
  | 'gamedata'
  | 'schedule'
  | 'files'
  | 'injector'
  | 'manual'

export interface NavItemConfig {
  page: NavPage
  i18nKey: string
  icon: LucideIcon
  colorClass: string
  activeGradient: string
  activeShadow: string
}
