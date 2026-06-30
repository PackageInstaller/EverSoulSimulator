// 웹 UI 내부 정규화 TBL 데이터베이스 공용 접근 계층.
// src/web/src/data/tbl/*.json (tools/gen_web_tbl_database.py 생성) 을 로드해
// sno -> 다국어, hero/item/grade 조회를 모든 컴포넌트에 공용 제공한다.
// 이름 문자열은 strings 단일 사전에만 존재하고 catalog 는 *_sno 로 참조한다(정규화).
import stringsData from '@/data/tbl/strings.json'
import heroesData from '@/data/tbl/heroes.json'
import heroDescsData from '@/data/tbl/heroDescs.json'
import heroGradesData from '@/data/tbl/heroGrades.json'
import itemsData from '@/data/tbl/items.json'
import itemGradesData from '@/data/tbl/itemGrades.json'
import currencyEnumData from '@/data/tbl/currencyEnum.json'
import iconManifestData from '@/data/tbl/iconManifest.json'
import spiritManifestData from '@/data/tbl/spiritManifest.json'
import {
  type TblLang, type TblStringTable, type TblStringRow,
  type TblHero, type TblHeroDesc, type TblHeroGrade, type TblItem, type TblItemGrade,
} from '@/types/tbl'

// JSON import 는 각 행을 string[](가변길이)로 추론하나, gen_web_tbl_database.py 가 항상
// 5개 언어(kr,en,ja,zh_tw,zh_cn)를 채우므로 5-튜플 TblStringRow 로 단언한다(unknown 경유).
const STRINGS = stringsData as unknown as TblStringTable
const LANG_INDEX: Record<TblLang, number> = { kr: 0, en: 1, ja: 2, zh_tw: 3, zh_cn: 4 }

// i18n 언어코드 -> TBL 언어(kr/en/ja/zh_tw/zh_cn). 미지원 언어는 en 폴백.
const I18N_TO_TBL: Record<string, TblLang> = {
  ko: 'kr', en: 'en', ja: 'ja', zh: 'zh_cn', 'zh-tw': 'zh_tw', 'zh-cn': 'zh_cn',
}
export function tblLangOf(i18nLang: string): TblLang {
  return I18N_TO_TBL[i18nLang] ?? 'en'
}
// 계정 region(LiveKR/LiveSEA) -> 표시 언어. LiveSEA 는 en(글로벌) 기본.
export function tblLangOfRegion(region: string | null | undefined): TblLang {
  return region === 'LiveKR' ? 'kr' : 'en'
}

// sno -> 다국어 문자열. 미존재 sno 는 '#<sno>' 로 표시(누락 가시화).
export function tblString(sno: number | null | undefined, lang: TblLang = 'kr'): string {
  if (sno == null) return ''
  const row: TblStringRow | undefined = STRINGS[String(sno)]
  if (!row) return `#${sno}`
  // 선택 언어 값이 비면 en(기본값)으로, 그래도 비면 ko 로 폴백한다.
  return row[LANG_INDEX[lang]] || row[1] || row[0] || `#${sno}`
}

// 범용 sno 선택용 전체 String 목록({id,name}). *_sno 컬럼 PickerModal 에서 사용한다.
// 33k+ 규모라 호출부에서 useMemo + 검색 필터를 전제로 한다.
export function tblStringList(lang: TblLang = 'kr'): { id: number; name: string }[] {
  const out: { id: number; name: string }[] = []
  for (const k in STRINGS) out.push({ id: Number(k), name: tblString(Number(k), lang) })
  return out
}

// ── 영웅(게임 용어: 정령) ─────────────────────────────────────────────────
export const TBL_HEROES = heroesData as TblHero[]
// 인게임 미출시 정령(is_collectable 이나 실제 게임에 없음) — 메릴/이나/브리기트.
const UNRELEASED_HERO_NOS = new Set([2060, 3020, 5050])
// 실제 플레이어블 정령만. is_collectable 중 (1) no!==hero_id 는 +20000 별칭 중복(니아/캐서린광휘/
// 메피스토여명/유리아아폴리온)이라 제외, (2) 미출시 정령 제외. 나머지는 NPC/스토리 엔트리.
export const TBL_COLLECTIBLE_HEROES: TblHero[] = TBL_HEROES.filter(
  h => !!h.is_collectable && h.no === h.hero_id && !UNRELEASED_HERO_NOS.has(h.no),
)
const heroByNo = new Map(TBL_HEROES.map(h => [h.no, h]))
export function tblHero(heroNo: number): TblHero | undefined {
  return heroByNo.get(heroNo)
}
export function tblHeroName(heroNo: number, lang: TblLang = 'kr'): string {
  const h = heroByNo.get(heroNo)
  return h ? tblString(h.name_sno, lang) : `#${heroNo}`
}

const heroDescByNo = new Map((heroDescsData as TblHeroDesc[]).map(d => [d.hero_no, d]))
export function tblHeroDesc(heroNo: number): TblHeroDesc | undefined {
  return heroDescByNo.get(heroNo)
}

// ── 등급 (Hero.grade_sno == HeroGrade.name_sno) ──────────────────────────
const heroGradeBySno = new Map((heroGradesData as TblHeroGrade[]).map(g => [g.name_sno, g]))
export function tblHeroGrade(gradeSno: number): TblHeroGrade | undefined {
  return heroGradeBySno.get(gradeSno)
}
export function tblGradeName(gradeSno: number, lang: TblLang = 'kr'): string {
  return tblString(gradeSno, lang)
}

// ── 아이템 / 재화 (재화 이름도 Item.name_sno -> StringItem) ───────────────
export const TBL_ITEMS = itemsData as TblItem[]
const itemByNo = new Map(TBL_ITEMS.map(i => [i.no, i]))
export function tblItem(itemNo: number): TblItem | undefined {
  return itemByNo.get(itemNo)
}
export function tblItemName(itemNo: number, lang: TblLang = 'kr'): string {
  const it = itemByNo.get(itemNo)
  return it ? tblString(it.name_sno, lang) : `#${itemNo}`
}

// ── 게임 아이콘 (sss/img 번들 추출본 -> public/game-icons) ─────────────────
// iconManifest 에 실제 복사된 icon_path 만 등록 — 없는 아이콘은 null(폴백 표시).
const ICON_SET = new Set(iconManifestData as string[])
// vite base('/web/') 를 포함해야 한다(BASE_URL 끝에 '/' 포함). public/item-icons -> /web/item-icons.
// 아이템 아이콘은 ui/prefabs·entities·ui/textures 의 sprite stem 직접 매칭본(예장/보물 포함 988).
export function tblIconUrl(iconPath: string | null | undefined): string | null {
  return iconPath && ICON_SET.has(iconPath) ? `${import.meta.env.BASE_URL}item-icons/${iconPath}.png` : null
}
export function tblItemIconUrl(itemNo: number): string | null {
  const it = itemByNo.get(itemNo)
  return it ? tblIconUrl(it.icon_path) : null
}

// 정령 base 512 이미지 (sss src-assets/spirits -> public/spirit-icons/<hero_no>.png).
// spiritManifest 에 cp된 hero_no 만 등록 — 없으면 null(폴백). vite base('/web/') 포함.
const SPIRIT_ICON_SET = new Set(spiritManifestData as number[])
export function tblSpiritIconUrl(heroNo: number): string | null {
  return SPIRIT_ICON_SET.has(heroNo) ? `${import.meta.env.BASE_URL}spirit-icons/${heroNo}.png` : null
}

const itemGradeBySno = new Map((itemGradesData as TblItemGrade[]).map(g => [g.name_sno, g]))
export function tblItemGrade(gradeSno: number): TblItemGrade | undefined {
  return itemGradeBySno.get(gradeSno)
}

// ── 재화 (E_CURRENCY) ─────────────────────────────────────────────────────
// 재화 type 은 재화 아이템 Item.no 와 동일하다(currency.type == Item.no, 전수 검증 52/52).
// 따라서 재화 이름 다국어는 Item.name_sno -> StringItem 경로로 해석한다(enum_name 은 식별자).
const CURRENCY_ENUM = currencyEnumData as Record<string, string>
export function tblCurrencyEnumName(type: number): string {
  return CURRENCY_ENUM[String(type)] ?? `type#${type}`
}
export function tblCurrencyName(type: number, lang: TblLang = 'kr'): string {
  return tblItemName(type, lang)
}
// 에버스톤(다이아) 계열은 Item 이름이 모두 동일("에버스톤")하므로 enum 으로 구분한다.
//   FreeDia=무료 / PayDia=유료 / TotalDia=총합. UI 텍스트는 i18n('accdata.cur.<kind>').
export type TblCurrencyKind = 'free' | 'paid' | 'total' | 'normal'
const CURRENCY_KIND_BY_ENUM: Record<string, TblCurrencyKind> = {
  FreeDia: 'free', PayDia: 'paid', TotalDia: 'total',
}
export function tblCurrencyKind(type: number): TblCurrencyKind {
  return CURRENCY_KIND_BY_ENUM[CURRENCY_ENUM[String(type)] ?? ''] ?? 'normal'
}
export const TBL_CURRENCY_TYPES: number[] =
  Object.keys(CURRENCY_ENUM).map(Number).sort((a, b) => a - b)
