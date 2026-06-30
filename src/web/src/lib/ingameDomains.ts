// 인게임 설정 컨텐츠 도메인 to TBL 파일명(CamelCase) 접두사 중앙 매핑.
// database/tbl_json/ 디렉토리의 실제 파일명 기반.
export interface IngameDomain { key: string; i18nKey: string; prefixes: string[] }

const PREFIXES: Record<string, string[]> = {
  spirit:  ['Hero', 'Signature', 'LoveLevel', 'Rental', 'Zodiac', 'SpiritTree', 'Ark', 'Promotion', 'Level', 'UserLevel'],
  item:    ['Item'],
  battle:  ['Stage', 'Skill', 'Barrier', 'Immune', 'RaceBuff', 'RaceCounter', 'Formation', 'Arena'],
  dungeon: ['Dungeon', 'Tower', 'Vista', 'Challenge', 'DoubleGate', 'Monster'],
  event:   ['Event', 'Attendance', 'EverLive', 'Evermatch', 'Anniversary'],
  guild:   ['Guild', 'SingleRaid', 'WorldRaid', 'EdenUnion'],
  shop:    ['Shop', 'CashShop'],
  town:    ['Town', 'Arbeit', 'Trip'],
  gacha:   ['Gacha', 'HeroWish', 'Alchemist'],
  story:   ['Story', 'Talk', 'EverTalk', 'Soullink', 'Illust', 'Tutorial', 'Sound', 'Sticker'],
  reward:  ['Task', 'Achievement', 'GuideQuest', 'MissionPass', 'Rank', 'MessageMail'],
  system:  ['String', 'Localization', 'Contents', 'Lobby', 'Background', 'Loading', 'Behavior', 'BanWord', 'KeyValues', 'HelpGuide', 'LoginPage', 'DefaultProfile', 'Profile', 'Thumbnail', 'Shortcut', 'ChatEmoticon', 'BattleBGM'],
}

export const INGAME_DOMAINS: IngameDomain[] = Object.keys(PREFIXES).map(key => ({ key, i18nKey: `ig.${key}`, prefixes: PREFIXES[key] }))

export function tableMatchesDomain(fileName: string, domain: IngameDomain): boolean {
  return domain.prefixes.some(p => fileName === p || fileName.startsWith(p))
}
