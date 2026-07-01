import { Zap, RefreshCw } from 'lucide-react'
import { GlassCard } from '@/components/ui/GlassCard'
import { Input } from '@/components/ui/Input'
import { Button } from '@/components/ui/Button'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { cheatCard, typo, dataConsole as dc } from '@/styles/tokens'
import { type CurrencyCardConfig } from '@/types/cheat'

interface CurrencyCardProps {
  config: CurrencyCardConfig
  value: number | undefined
  inputValue: string
  onInputChange: (v: string) => void
  onApply: () => void
  loading: boolean
}

export function CurrencyCard({ config, value, inputValue, onInputChange, onApply, loading }: CurrencyCardProps) {
  const { t } = useI18n()
  const { icon: Icon, i18nKey } = config

  return (
    <GlassCard hover className={cheatCard.card}>
      <div className={cheatCard.head}>
        <div className={cheatCard.headLeft}>
          <span className={cheatCard.iconWrap}><Icon size={20} /></span>
          <div className={cheatCard.metaCol}>
            <p className={typo.label}>{t(i18nKey)}</p>
            <p className={cheatCard.value}>{value !== undefined ? value.toLocaleString() : '—'}</p>
          </div>
        </div>
        {loading && <RefreshCw size={16} className={cn(dc.spin, 'text-(--es-text-faint) shrink-0')} />}
      </div>

      <div className={cheatCard.inputRow}>
        <Input
          type="number"
          min={0}
          value={inputValue}
          onChange={e => onInputChange(e.target.value)}
          placeholder={t('cheat.input_amount')}
        />
        <Button variant="primary" onClick={onApply} disabled={!inputValue}>
          <Zap size={16} />
        </Button>
      </div>
    </GlassCard>
  )
}
