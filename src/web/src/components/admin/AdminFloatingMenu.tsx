import { motion } from 'motion/react'
import logoUrl from '@/assets/logo.png'
import avatarUrl from '@/assets/GarnetRapture_Costume01_512.png'
import { cn } from '@/lib/utils'
import { useI18n } from '@/lib/i18n'
import { APP_VERSION } from '@/lib/version'
import { type AdminSurface } from '@/types/admin'
import { ADMIN_ROUTES } from '@/app/adminRoutes'
import { nav, typo } from '@/styles/tokens'
import { LAYOUT_ID, springSnappy } from '@/styles/motion'

interface AdminFloatingMenuProps {
  current: AdminSurface
  onNavigate: (surface: AdminSurface) => void
  serverPort?: number
  className?: string
}

export function AdminFloatingMenu({ current, onNavigate, serverPort, className }: AdminFloatingMenuProps) {
  const { t } = useI18n()

  return (
    <>
      {/* Rail: ≥1280px — hover 시 확장 */}
      <nav aria-label="Admin navigation rail" className={cn(nav.rail, className)}>
        <div className={nav.brand}>
          <img src={logoUrl} alt="Eversoul" className="w-10 h-10 rounded-xl object-contain shrink-0" />
          <div className={nav.brandText}>
            <span className={typo.cardTitle}>Eversoul</span>
            <span className={typo.hint}>Offline Admin</span>
          </div>
        </div>

        <div className={nav.divider} />

        <div className={nav.list}>
          {ADMIN_ROUTES.map(({ surface, i18nKey, icon: Icon, colorClass }) => {
            const isActive = current === surface
            return (
              <button
                key={surface}
                title={t(i18nKey)}
                onClick={() => onNavigate(surface)}
                className={cn(nav.item, isActive ? nav.itemActive : nav.itemIdle)}
              >
                {isActive && (
                  <motion.span layoutId={LAYOUT_ID.navActive} className={nav.indicator} transition={springSnappy} />
                )}
                <Icon size={20} className={cn('shrink-0', !isActive && colorClass)} />
                <span className={nav.itemLabel}>{t(i18nKey)}</span>
              </button>
            )
          })}
        </div>

        <div className={nav.divider} />

        <div className={nav.devWrap}>
          <a href="https://github.com/GarnetRapture" target="_blank" rel="noreferrer" className={nav.devLink}>
            <img src={avatarUrl} alt="Nekoi" className="w-8 h-8 rounded-xl object-cover shrink-0" />
            <div className={nav.devBox}>
              <span className={nav.devName}>Nekoi</span>
              <span className={nav.devRole}>Web UI Developer</span>
            </div>
          </a>
          <div className={nav.devMeta}>
            <a href="mailto:nekoi@everlib.pro" className={nav.devMetaLink}>nekoi@everlib.pro</a>
            <a
              href="https://github.com/PackageInstaller/EverSoulSimulator/issues"
              target="_blank"
              rel="noreferrer"
              className={nav.devMetaLink}
            >
              이슈 보고
            </a>
          </div>
        </div>

        <div className={nav.divider} />

        <div className={nav.foot}>
          <span className={nav.footStat}>
            <span className={nav.footDot} />
            <span className={nav.footText}>:{serverPort ?? '…'}</span>
          </span>
          <span className={nav.footVer}>{APP_VERSION}</span>
        </div>
      </nav>

      {/* Floating bar: <1280px */}
      <nav aria-label="Admin navigation bar" className={nav.bar}>
        {ADMIN_ROUTES.map(({ surface, i18nKey, icon: Icon, colorClass }) => {
          const isActive = current === surface
          return (
            <button
              key={surface}
              title={t(i18nKey)}
              onClick={() => onNavigate(surface)}
              className={cn(nav.barItem, isActive ? nav.barItemActive : nav.itemIdle)}
            >
              <Icon size={20} className={cn(!isActive && colorClass)} />
            </button>
          )
        })}
      </nav>
    </>
  )
}
