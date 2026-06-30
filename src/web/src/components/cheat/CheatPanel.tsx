import { useState } from 'react'
import { Coins, Gem, Sparkles, Users, Diamond } from 'lucide-react'
import { CurrencyCard } from '@/components/cheat/CurrencyCard'
import { HeroAddCard } from '@/components/cheat/HeroAddCard'
import { useCheatStatus } from '@/hooks/useCheatStatus'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { type CurrencyCardConfig, type HeroCardConfig } from '@/types/cheat'
import { type CurrencySetRequest } from '@/types/api'
import { apiSetCurrency, apiAddHero } from '@/api/cheat'

type CurrencyType = CurrencyCardConfig['type']

const CURRENCY_CONFIGS: CurrencyCardConfig[] = [
  { type: 'gold',         currencyType: 1,  i18nKey: 'cheat.gold',         gradient: 'from-amber-400 to-orange-500', iconBg: 'bg-amber-100 dark:bg-amber-900/40',   icon: Coins,    iconColor: 'text-amber-600' },
  { type: 'crystal',      currencyType: 2,  i18nKey: 'cheat.crystal',      gradient: 'from-sky-400 to-blue-500',     iconBg: 'bg-sky-100 dark:bg-sky-900/40',       icon: Gem,      iconColor: 'text-sky-600' },
  { type: 'stone',        currencyType: 3,  i18nKey: 'cheat.stone',        gradient: 'from-violet-400 to-purple-500', iconBg: 'bg-violet-100 dark:bg-violet-900/40', icon: Sparkles, iconColor: 'text-violet-600' },
  { type: 'mana_crystal', currencyType: 4,  i18nKey: 'cheat.mana_crystal', gradient: 'from-teal-400 to-cyan-500',     iconBg: 'bg-teal-100 dark:bg-teal-900/40',     icon: Gem,      iconColor: 'text-teal-600' },
  { type: 'pay_dia',      currencyType: 42, i18nKey: 'cheat.pay_dia',      gradient: 'from-rose-400 to-pink-500',     iconBg: 'bg-rose-100 dark:bg-rose-900/40',     icon: Diamond,  iconColor: 'text-rose-600' },
]

const HERO_CONFIG: HeroCardConfig = {
  i18nKey: 'cheat.hero_count',
  gradient: 'from-emerald-400 to-teal-500',
  iconBg: 'bg-emerald-100 dark:bg-emerald-900/40',
  icon: Users,
  iconColor: 'text-emerald-600',
}

// 활성 계정의 게임 보유 데이터(재화 5종 + 영웅) 실시간 시각화 + 수정.
// CheatPage 와 AccountsPage 'gamedata' 탭에서 공용. 모든 변경은 중앙 api/cheat 경유.
export function CheatPanel() {
  const { t } = useI18n()
  const { data, refresh } = useCheatStatus()

  const [inputs, setInputs] = useState({ gold: '', crystal: '', stone: '', mana_crystal: '', pay_dia: '', heroNo: '', heroLevel: '1' })
  const [applying, setApplying] = useState(false)
  const [feedback, setFeedback] = useState<{ ok: boolean; msg: string } | null>(null)

  function setInput(key: keyof typeof inputs, val: string) {
    setInputs(prev => ({ ...prev, [key]: val }))
  }

  async function applyCurrency(type: CurrencyType, value: string) {
    if (!value) return
    setApplying(true); setFeedback(null)
    try {
      const req: CurrencySetRequest = { [type]: Number(value) }
      const d = await apiSetCurrency(req)
      setFeedback({ ok: !!d.ok, msg: d.ok ? t('cheat.applied') : (d.reason ?? t('cheat.failed')) })
      if (d.ok) refresh()
    } finally { setApplying(false) }
  }

  async function applyHero(heroNo: string, heroLevel: string) {
    if (!heroNo || !heroLevel) return
    setApplying(true); setFeedback(null)
    try {
      const d = await apiAddHero({ hero_no: Number(heroNo), level: Number(heroLevel) })
      setFeedback({ ok: !!d.ok, msg: d.ok ? t('cheat.hero_applied') : (d.reason ?? t('cheat.failed')) })
      if (d.ok) refresh()
    } finally { setApplying(false) }
  }

  const currencyValues: Record<CurrencyType, number | undefined> = {
    gold: data?.gold,
    crystal: data?.crystal,
    stone: data?.stone,
    mana_crystal: data?.mana_crystal,
    pay_dia: data?.pay_dia,
  }

  return (
    <div className="space-y-4">
      {feedback && (
        <div className={cn(
          'px-4 py-3 rounded-2xl text-sm font-medium border',
          feedback.ok
            ? 'bg-emerald-50 dark:bg-emerald-900/20 text-emerald-600 dark:text-emerald-400 border-emerald-200 dark:border-emerald-700/50'
            : 'bg-red-50 dark:bg-red-900/20 text-red-600 dark:text-red-400 border-red-200 dark:border-red-700/50'
        )}>
          {feedback.msg}
        </div>
      )}
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        {CURRENCY_CONFIGS.map(config => (
          <CurrencyCard
            key={config.type}
            config={config}
            value={currencyValues[config.type]}
            inputValue={inputs[config.type]}
            onInputChange={val => setInput(config.type, val)}
            onApply={() => applyCurrency(config.type, inputs[config.type])}
            loading={applying}
          />
        ))}
        <HeroAddCard
          config={HERO_CONFIG}
          heroCount={data?.heroes}
          heroNoValue={inputs.heroNo}
          heroLevelValue={inputs.heroLevel}
          onHeroNoChange={val => setInput('heroNo', val)}
          onHeroLevelChange={val => setInput('heroLevel', val)}
          onApply={() => applyHero(inputs.heroNo, inputs.heroLevel)}
          loading={applying}
        />
      </div>
    </div>
  )
}
