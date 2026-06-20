import { type ComponentType } from 'react'

export type NavPage =
  | 'dashboard'
  | 'accounts'
  | 'cheat'
  | 'db'
  | 'health'
  | 'logs'
  | 'fixtures'
  | 'gamedata'
  | 'files'
  | 'injector'
  | 'manual'

export interface NavItemConfig {
  page: NavPage
  i18nKey: string
  icon: ComponentType<{ className?: string }>
  colorClass: string
  activeGradient: string
  activeShadow: string
}
