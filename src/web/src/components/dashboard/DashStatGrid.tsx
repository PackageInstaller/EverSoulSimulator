import { type ElementType } from 'react'
import { motion } from 'motion/react'
import { Activity, Zap, Layers, Globe, Coins, Gem, Ghost, Server } from 'lucide-react'
import { useI18n } from '@/lib/i18n'
import { stat } from '@/styles/tokens'
import { listContainer, listItem } from '@/styles/motion'

interface DashStatGridProps {
  port?: number
  requestCount?: number
  uptime: string
  tblTables?: number
  lang?: string
  gold?: number
  crystal?: number
  heroCount?: number
}

function fmt(n: number): string {
  if (n >= 1_000_000) return (n / 1_000_000).toFixed(1) + 'M'
  if (n >= 1_000) return (n / 1_000).toFixed(1) + 'K'
  return String(n)
}

// home overview/status 공용 — 서버·게임데이터 지표 카드 그리드.
export function DashStatGrid({ port, requestCount, uptime, tblTables, lang, gold, crystal, heroCount }: DashStatGridProps) {
  const { t } = useI18n()
  const cards: { label: string; value: string | number; icon: ElementType }[] = [
    { label: t('server.port'),      value: port ?? '—',                 icon: Server },
    { label: t('admin.requests'),   value: fmt(requestCount ?? 0),      icon: Zap },
    { label: t('admin.uptime'),     value: uptime,                      icon: Activity },
    { label: 'TBL',                 value: tblTables ?? '—',            icon: Layers },
    { label: t('admin.lang'),       value: lang ?? '—',                 icon: Globe },
    { label: t('cheat.gold'),       value: fmt(gold ?? 0),              icon: Coins },
    { label: t('cheat.crystal'),    value: fmt(crystal ?? 0),           icon: Gem },
    { label: t('cheat.hero_count'), value: String(heroCount ?? '—'),    icon: Ghost },
  ]
  return (
    <motion.div className={stat.grid} variants={listContainer} initial="hidden" animate="show">
      {cards.map(({ label, value, icon: Icon }) => (
        <motion.div key={label} className={stat.card} variants={listItem}>
          <div className={stat.head}>
            <span className={stat.iconWrap}><Icon size={16} /></span>
            <span className={stat.label}>{label}</span>
          </div>
          <p className={stat.value}>{value}</p>
        </motion.div>
      ))}
    </motion.div>
  )
}
