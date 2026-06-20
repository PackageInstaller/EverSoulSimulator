import logoUrl from '@/assets/logo.png'
import avatarUrl from '@/assets/GarnetRapture_Costume01_512.png'
import { cn } from '@/lib/utils'
import { useI18n } from '@/lib/i18n'
import { APP_VERSION } from '@/lib/version'
import { type NavPage, type NavItemConfig } from '@/types/nav'
import {
  LayoutDashboard,
  Users,
  Sword,
  Database,
  Activity,
  Package,
  BookOpen,
  FolderOpen,
  ScrollText,
  MonitorSmartphone,
  BookMarked,
} from 'lucide-react'

const NAV_ITEMS: NavItemConfig[] = [
  { page: 'dashboard', i18nKey: 'admin.dashboard', icon: LayoutDashboard,   colorClass: 'text-indigo-500 dark:text-indigo-400',   activeGradient: 'from-indigo-500 to-violet-500',  activeShadow: 'shadow-indigo-500/30' },
  { page: 'accounts',  i18nKey: 'admin.accounts',  icon: Users,             colorClass: 'text-sky-500 dark:text-sky-400',         activeGradient: 'from-sky-500 to-blue-500',       activeShadow: 'shadow-sky-500/30' },
  { page: 'cheat',     i18nKey: 'admin.cheat',     icon: Sword,             colorClass: 'text-amber-500 dark:text-amber-400',     activeGradient: 'from-amber-400 to-orange-500',   activeShadow: 'shadow-amber-500/30' },
  { page: 'db',        i18nKey: 'admin.db',        icon: Database,          colorClass: 'text-emerald-500 dark:text-emerald-400', activeGradient: 'from-emerald-500 to-teal-500',   activeShadow: 'shadow-emerald-500/30' },
  { page: 'health',    i18nKey: 'admin.health',    icon: Activity,          colorClass: 'text-rose-500 dark:text-rose-400',       activeGradient: 'from-rose-500 to-pink-500',      activeShadow: 'shadow-rose-500/30' },
  { page: 'logs',      i18nKey: 'admin.logs',      icon: ScrollText,        colorClass: 'text-cyan-500 dark:text-cyan-400',       activeGradient: 'from-cyan-500 to-sky-500',       activeShadow: 'shadow-cyan-500/30' },
  { page: 'fixtures',  i18nKey: 'admin.fixtures',  icon: Package,           colorClass: 'text-violet-500 dark:text-violet-400',   activeGradient: 'from-violet-500 to-purple-500',  activeShadow: 'shadow-violet-500/30' },
  { page: 'gamedata',  i18nKey: 'admin.gamedata',  icon: BookOpen,          colorClass: 'text-fuchsia-500 dark:text-fuchsia-400', activeGradient: 'from-fuchsia-500 to-pink-500',   activeShadow: 'shadow-fuchsia-500/30' },
  { page: 'files',     i18nKey: 'admin.files',     icon: FolderOpen,        colorClass: 'text-yellow-500 dark:text-yellow-400',   activeGradient: 'from-yellow-400 to-amber-500',   activeShadow: 'shadow-yellow-500/30' },
  { page: 'injector',  i18nKey: 'admin.injector',  icon: MonitorSmartphone, colorClass: 'text-lime-500 dark:text-lime-400',       activeGradient: 'from-lime-500 to-green-500',     activeShadow: 'shadow-lime-500/30' },
  { page: 'manual',    i18nKey: 'admin.manual',    icon: BookMarked,        colorClass: 'text-orange-500 dark:text-orange-400',   activeGradient: 'from-orange-500 to-red-500',     activeShadow: 'shadow-orange-500/30' },
]

interface NavSidebarProps {
  current: NavPage
  onNavigate: (page: NavPage) => void
  serverPort?: number
  className?: string
}

export function NavSidebar({ current, onNavigate, serverPort, className }: NavSidebarProps) {
  const { t } = useI18n()

  return (
    <aside
      className={cn(
        'flex flex-col w-64 sm:w-56 shrink-0',
        'my-3 ml-3 rounded-2xl',
        'bg-white/80 dark:bg-slate-900/80 backdrop-blur-2xl',
        'border border-white/40 dark:border-white/10',
        'shadow-2xl shadow-black/10 dark:shadow-black/50',
        className
      )}
    >
      <div className="flex items-center gap-3 px-4 pt-5 pb-4">
        <div className="relative">
          <img
            src={logoUrl}
            alt="Eversoul"
            className="w-9 h-9 rounded-xl object-contain ring-2 ring-violet-500/20 shadow-lg shadow-violet-500/20"
          />
          <span className="absolute -bottom-0.5 -right-0.5 w-2.5 h-2.5 rounded-full bg-emerald-400 ring-2 ring-white dark:ring-slate-900" />
        </div>
        <div className="flex flex-col">
          <span className="text-sm font-bold text-slate-900 dark:text-white leading-tight tracking-tight">
            Eversoul
          </span>
          <span className="text-[10px] text-slate-400 dark:text-slate-500 font-medium uppercase tracking-widest">
            Offline
          </span>
        </div>
      </div>

      <div className="mx-3 h-px bg-linear-to-r from-transparent via-slate-200 dark:via-white/10 to-transparent" />

      <nav className="flex-1 overflow-y-auto py-2 px-2 space-y-0.5">
        {NAV_ITEMS.map(({ page, i18nKey, icon: Icon, colorClass, activeGradient, activeShadow }) => {
          const isActive = current === page
          return (
            <button
              key={page}
              onClick={() => onNavigate(page)}
              className={cn(
                'w-full flex items-center gap-3 px-3 py-2.5 rounded-xl text-sm font-medium',
                'transition-all duration-200 active:scale-95',
                isActive
                  ? cn('bg-linear-to-r text-white shadow-lg', activeGradient, activeShadow)
                  : 'text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/8 hover:text-slate-900 dark:hover:text-slate-100'
              )}
            >
              <Icon
                className={cn(
                  'w-4 h-4 shrink-0 transition-colors',
                  isActive ? 'text-white' : colorClass
                )}
              />
              <span className="truncate">{t(i18nKey)}</span>
            </button>
          )
        })}
      </nav>

      <div className="mx-3 h-px bg-linear-to-r from-transparent via-slate-200 dark:via-white/10 to-transparent" />

      <div className="px-3 py-3">
        <a
          href="https://github.com/GarnetRapture"
          target="_blank"
          rel="noreferrer"
          className="flex items-center gap-2.5 px-2 py-2 rounded-xl hover:bg-slate-100 dark:hover:bg-white/8 transition-all group"
        >
          <div className="relative shrink-0">
            <img
              src={avatarUrl}
              alt="Nekoi"
              className="w-8 h-8 rounded-xl object-cover ring-1 ring-violet-400/30 shadow-md"
            />
            <span className="absolute -bottom-0.5 -right-0.5 w-2 h-2 rounded-full bg-emerald-400 ring-1 ring-white dark:ring-slate-900" />
          </div>
          <div className="flex flex-col min-w-0">
            <span className="text-[11px] font-bold text-slate-700 dark:text-slate-200 leading-tight tracking-tight truncate group-hover:text-violet-600 dark:group-hover:text-violet-400 transition-colors">Nekoi</span>
            <span className="text-[9px] text-slate-400 dark:text-slate-500 font-mono truncate">Web UI Developer</span>
          </div>
        </a>
        <div className="mt-1 flex flex-col gap-0.5 px-2">
          <a
            href="mailto:nekoi@everlib.pro"
            className="text-[9px] font-mono text-slate-400 dark:text-slate-500 hover:text-sky-500 dark:hover:text-sky-400 transition-colors truncate"
          >
            nekoi@everlib.pro
          </a>
          <a
            href="https://github.com/PackageInstaller/EverSoulSimulator/issues"
            target="_blank"
            rel="noreferrer"
            className="text-[9px] font-mono text-slate-400 dark:text-slate-500 hover:text-rose-500 dark:hover:text-rose-400 transition-colors truncate"
          >
            이슈 보고
          </a>
        </div>
      </div>

      <div className="mx-3 h-px bg-linear-to-r from-transparent via-slate-200 dark:via-white/10 to-transparent" />

      <div className="px-4 py-3 flex items-center justify-between gap-2">
        <div className="flex items-center gap-2">
          <span className="w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse shrink-0" />
          <span className="text-[10px] text-slate-400 dark:text-slate-500 font-mono tracking-wider">
            :{serverPort ?? '…'}
          </span>
        </div>
        <span className="text-[9px] text-slate-300 dark:text-slate-600 font-mono tracking-wider shrink-0">
          {APP_VERSION}
        </span>
      </div>
    </aside>
  )
}
