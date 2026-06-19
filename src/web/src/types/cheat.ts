import { type ComponentType } from 'react'

export interface CurrencyCardConfig {
  type: 'gold' | 'crystal' | 'stone'
  i18nKey: string
  gradient: string
  iconBg: string
  icon: ComponentType<{ className?: string }>
  iconColor: string
}

export interface HeroCardConfig {
  i18nKey: string
  gradient: string
  iconBg: string
  icon: ComponentType<{ className?: string }>
  iconColor: string
}

export interface CheatApplyResult {
  ok: boolean
  reason?: string
}
