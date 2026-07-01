import {
  LayoutDashboard,
  Users,
  User,
  MonitorSmartphone,
  BookOpen,
} from 'lucide-react'
import { type AdminSurface, type AdminRouteConfig } from '@/types/admin'
import { INGAME_DOMAINS } from '@/lib/ingameDomains'

/**
 * 관리자 라우트 중앙 등록.
 * 모든 surface 는 서버 EXE 의 실제 /web/api/* 엔드포인트에 연동된다.
 * - home          : /web/api/status, /web/api/health, /web/api/gamedata/summary, /web/api/injector/status
 * - server-control: /web/api/status, /web/api/config, /web/api/logs/*, /web/api/files/*, /web/api/health
 * - accounts      : /web/api/accounts* fixture profile selection
 * - player-state  : /web/api/gamedata/*, /web/api/tbl_json*
 * - apk-connect   : /web/api/adb/*, /web/api/injector/*
 * - manual        : 로컬 서버 운영 매뉴얼
 */
export const ADMIN_ROUTES: AdminRouteConfig[] = [
  {
    surface: 'home',
    i18nKey: 'admin.home',
    icon: LayoutDashboard,
    colorClass: 'text-sky-500 dark:text-pink-400',
    activeGradient: 'from-sky-500 to-cyan-500',
    activeShadow: 'shadow-sky-500/30',
    tabs: [
      { key: 'config',     i18nKey: 'admin.sc_config' },
      { key: 'overview',   i18nKey: 'admin.home_overview' },
      { key: 'status',     i18nKey: 'admin.home_status' },
      { key: 'logs',       i18nKey: 'admin.sc_logs' },
      { key: 'health',     i18nKey: 'admin.sc_health' },
    ],
  },
  {
    surface: 'accounts',
    i18nKey: 'admin.accounts',
    icon: Users,
    colorClass: 'text-violet-500 dark:text-pink-400',
    activeGradient: 'from-violet-500 to-purple-500',
    activeShadow: 'shadow-violet-500/30',
    tabs: [
      { key: 'list',     i18nKey: 'admin.acct_list' },
      { key: 'gamedata', i18nKey: 'admin.acct_gamedata' },
    ],
  },
  {
    surface: 'player-state',
    i18nKey: 'admin.player_state',
    icon: User,
    colorClass: 'text-fuchsia-500 dark:text-rose-300',
    activeGradient: 'from-fuchsia-500 to-pink-500',
    activeShadow: 'shadow-fuchsia-500/30',
    tabs: INGAME_DOMAINS.map(d => ({ key: d.key, i18nKey: d.i18nKey })),
  },
  {
    surface: 'apk-connect',
    i18nKey: 'admin.apk_connect',
    icon: MonitorSmartphone,
    colorClass: 'text-lime-500 dark:text-pink-400',
    activeGradient: 'from-lime-500 to-green-500',
    activeShadow: 'shadow-lime-500/30',
    tabs: [],
  },
  {
    surface: 'manual',
    i18nKey: 'admin.manual',
    icon: BookOpen,
    colorClass: 'text-amber-500 dark:text-fuchsia-300',
    activeGradient: 'from-amber-400 to-orange-500',
    activeShadow: 'shadow-amber-500/30',
  },
]

export function getAdminRoute(surface: AdminSurface): AdminRouteConfig | undefined {
  return ADMIN_ROUTES.find(r => r.surface === surface)
}
