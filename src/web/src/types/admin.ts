import type { LucideIcon } from 'lucide-react'

export type AdminSurface =
  | 'home'
  | 'accounts'
  | 'player-state'
  | 'apk-connect'
  | 'manual'

export interface AdminTabConfig {
  key: string
  i18nKey: string
}

export interface AdminRouteConfig {
  surface: AdminSurface
  i18nKey: string
  icon: LucideIcon
  colorClass: string
  activeGradient: string
  activeShadow: string
  tabs?: AdminTabConfig[]
}
