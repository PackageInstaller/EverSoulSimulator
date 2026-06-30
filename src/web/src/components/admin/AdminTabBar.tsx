import { motion } from 'motion/react'
import { cn } from '@/lib/utils'
import { useI18n } from '@/lib/i18n'
import { type AdminSurface, type AdminTabConfig } from '@/types/admin'
import { getAdminRoute } from '@/app/adminRoutes'
import { tabBar } from '@/styles/tokens'
import { LAYOUT_ID, springSnappy } from '@/styles/motion'

interface AdminTabBarProps {
  surface: AdminSurface
  activeTab: string
  onTabChange: (tabKey: string) => void
  className?: string
}

export function AdminTabBar({ surface, activeTab, onTabChange, className }: AdminTabBarProps) {
  const { t } = useI18n()
  const route = getAdminRoute(surface)
  const tabs: AdminTabConfig[] = route?.tabs ?? []

  if (tabs.length === 0) return null

  return (
    <div role="tablist" aria-label={`${surface} tabs`} className={cn(tabBar.wrap, className)}>
      {tabs.map(({ key, i18nKey }) => {
        const isActive = activeTab === key
        return (
          <button
            key={key}
            role="tab"
            aria-selected={isActive}
            onClick={() => onTabChange(key)}
            className={cn(tabBar.tab, isActive ? tabBar.tabActive : tabBar.tabIdle)}
          >
            {isActive && (
              <motion.span
                layoutId={`${LAYOUT_ID.tabActive}-${surface}`}
                className={tabBar.tabIndicator}
                transition={springSnappy}
              />
            )}
            {t(i18nKey)}
          </button>
        )
      })}
    </div>
  )
}
