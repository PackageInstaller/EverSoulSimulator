import type { LucideIcon } from 'lucide-react'

export const E_CURRENCY = {
  None: 0,
  Gold: 1,
  FreeDia: 2,
  ManaDust: 3,
  ManaCrystal: 4,
  Exp: 5,
  Heart: 6,
  LifeEssence: 8,
  ArenaTicket: 9,
  Dungeon: 10,
  Guild: 11,
  Release: 12,
  Arena: 13,
  Relics: 14,
  Silver: 16,
  SingleRaidCoin: 18,
  PickupGachaTicket: 19,
  Sign1: 20,
  Sign2: 21,
  SignHuman: 22,
  SignFurry: 23,
  SignElf: 24,
  SignUndead: 25,
  SignAngel: 26,
  SignDemon: 27,
  NormalTicket: 28,
  RaceTicket: 29,
  RareSoulstone: 30,
  EpicSoulstone: 31,
  EquipExp: 32,
  CollaborationSummonTicket: 33,
  PayDia: 42,
  TeamarenaTicket: 44,
  SignatureGachaTicket: 45,
  PremiumGachaTicket: 46,
  MonthlyHeroResetTicket: 47,
  EquipExpMiddle: 48,
  EquipExpHigh: 49,
  ZodiacExp: 50,
  LabyrinthTicket: 51,
  TranscendentStone: 52,
  SingleRaidTicket: 53,
  SetItemEngrave: 54,
  RotationDungeonTicket: 55,
  EdenCoin: 57,
  TypeBarrierGateTicket: 58,
  OriginTowerTicket: 59,
  DoubleGateNormalTicket: 60,
  DoubleGateNormalTicketCharge: 62,
  SignatureEnhanceStone: 64,
  HeroOptionChangeStone: 65,
  WishGachaTicket: 66,
  TotalDia: 100,
} as const
export type ECurrencyValue = typeof E_CURRENCY[keyof typeof E_CURRENCY]

export const HERO_GRADE_SNO = {
  N: 110011,
  R: 110012,
  SR: 110013,
  SSR: 110014,
} as const
export type HeroGradeSno = typeof HERO_GRADE_SNO[keyof typeof HERO_GRADE_SNO]

export const HERO_RACE_SNO = {
  Human: 110052,
  Furry: 110053,
  Elf: 110054,
  Undead: 110055,
  Angel: 110056,
  Demon: 110057,
  Special: 110058,
} as const
export type HeroRaceSno = typeof HERO_RACE_SNO[keyof typeof HERO_RACE_SNO]

export interface CurrencyCardConfig {
  type: 'gold' | 'crystal' | 'stone' | 'mana_crystal' | 'pay_dia'
  currencyType: ECurrencyValue
  i18nKey: string
  gradient: string
  iconBg: string
  icon: LucideIcon
  iconColor: string
}

export interface HeroCardConfig {
  i18nKey: string
  gradient: string
  iconBg: string
  icon: LucideIcon
  iconColor: string
}

export interface CheatApplyResult {
  ok: boolean
  reason?: string
}

export interface HeroAddCardProps {
  config: HeroCardConfig
  heroCount: number | undefined
  heroNoValue: string
  heroLevelValue: string
  onHeroNoChange: (v: string) => void
  onHeroLevelChange: (v: string) => void
  onApply: () => void
  loading: boolean
}
