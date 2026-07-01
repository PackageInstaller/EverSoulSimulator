import { Plus, RefreshCw } from 'lucide-react'
import { GlassCard } from '@/components/ui/GlassCard'
import { Input } from '@/components/ui/Input'
import { Button } from '@/components/ui/Button'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { cheatCard, typo, dataConsole as dc } from '@/styles/tokens'
import { type HeroAddCardProps } from '@/types/cheat'

export function HeroAddCard({
  config,
  heroCount,
  heroNoValue,
  heroLevelValue,
  onHeroNoChange,
  onHeroLevelChange,
  onApply,
  loading,
}: HeroAddCardProps) {
  const { t } = useI18n()
  const { icon: Icon, i18nKey } = config
  const canApply = !!heroNoValue && !!heroLevelValue

  return (
    <GlassCard hover className={cheatCard.card}>
      <div className={cheatCard.head}>
        <div className={cheatCard.headLeft}>
          <span className={cheatCard.iconWrap}><Icon size={20} /></span>
          <div className={cheatCard.metaCol}>
            <p className={typo.label}>{t(i18nKey)}</p>
            <p className={cheatCard.value}>{heroCount !== undefined ? heroCount.toLocaleString() : '—'}</p>
          </div>
        </div>
        {loading && <RefreshCw size={16} className={cn(dc.spin, 'text-(--es-text-faint) shrink-0')} />}
      </div>

      <div className={cheatCard.inputCol}>
        <Input
          type="number"
          min={1}
          value={heroNoValue}
          onChange={e => onHeroNoChange(e.target.value)}
          placeholder={t('cheat.hero_no')}
        />
        <div className={cheatCard.inputRow}>
          <Input
            type="number"
            min={1}
            max={200}
            value={heroLevelValue}
            onChange={e => onHeroLevelChange(e.target.value)}
            placeholder={t('cheat.hero_level')}
          />
          <Button variant="primary" onClick={onApply} disabled={!canApply}>
            <Plus size={16} />
          </Button>
        </div>
      </div>
    </GlassCard>
  )
}
