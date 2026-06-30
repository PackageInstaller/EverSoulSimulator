import { cn } from '@/lib/utils'

/**
 * 디자인 토큰 중앙 모듈.
 *
 * 페이지·컴포넌트는 Tailwind 클래스를 인라인으로 직접 나열하지 않고
 * 반드시 이 모듈의 상수만 조합해서 사용한다.
 * 색/그림자/유리 질감은 index.css 의 CSS 변수(--es-*)를 single source 로 참조한다.
 * 폰트 최소 크기는 12px 이며, 7~11px 사용은 금지한다.
 */

/* ── 폰트 크기 (최소 12px) ── */
export const fontSize = {
  xs: 'text-[12px]',
  sm: 'text-[13px]',
  base: 'text-[14px]',
  md: 'text-[15px]',
  lg: 'text-[17px]',
  xl: 'text-[20px]',
  xxl: 'text-[24px]',
  display: 'text-[30px]',
} as const

/* ── 텍스트 색 ── */
export const textColor = {
  strong: 'text-[var(--es-text-strong)]',
  base: 'text-[var(--es-text)]',
  soft: 'text-[var(--es-text-soft)]',
  faint: 'text-[var(--es-text-faint)]',
  accent: 'text-[var(--es-accent)]',
  danger: 'text-[var(--es-danger)]',
  success: 'text-[var(--es-success)]',
  warn: 'text-[var(--es-warn)]',
  onAccent: 'text-white dark:text-[#1c0f1a]',
} as const

/* ── 타이포 조합 (그림자·외곽선·패딩 포함) ── */
export const typo = {
  pageTitle: cn(
    'text-[24px] sm:text-[28px] font-extrabold tracking-tight leading-tight',
    'text-[var(--es-text-strong)] text-glow-strong text-outlined',
  ),
  pageSubtitle: cn('text-[13px] font-medium', 'text-[var(--es-text-soft)] text-glow'),
  sectionTitle: cn(
    'text-[15px] font-bold tracking-wide uppercase',
    'text-[var(--es-text-strong)] text-glow',
  ),
  cardTitle: cn('text-[14px] font-bold tracking-wide', 'text-[var(--es-text-strong)] text-glow text-outlined'),
  label: cn('text-[12px] font-semibold uppercase tracking-wider', 'text-[var(--es-text-soft)]'),
  body: cn('text-[13px] leading-relaxed', 'text-[var(--es-text)]'),
  mono: cn('text-[12px] font-mono', 'text-[var(--es-text)]'),
  value: cn('text-[15px] font-extrabold font-mono', 'text-[var(--es-text-strong)] text-glow text-outlined'),
  hint: cn('text-[12px]', 'text-[var(--es-text-faint)]'),
  modalTitle: cn('text-[15px] font-bold tracking-wide uppercase truncate', 'text-[var(--es-text-strong)] text-glow'),
  modalPath: cn('text-[12px] font-mono truncate', 'text-[var(--es-text)]'),
  flagDanger: cn('text-[12px] font-bold', 'text-[var(--es-danger)]'),
} as const

/* ── 유리 표면 (입체 카드) ── */
export const surface = {
  glass: cn(
    'es-glass-prism rounded-2xl border-2 backdrop-blur-2xl backdrop-saturate-150',
    'border-[var(--es-glass-border)] bg-[var(--es-glass-fill)]',
    'shadow-[var(--es-shadow-card)]',
    'ring-1 ring-inset ring-[var(--es-glass-inner)]',
    'transition-[transform,box-shadow] duration-300 ease-out',
  ),
  glassStrong: cn(
    'es-glass-prism rounded-2xl border-2 backdrop-blur-2xl backdrop-saturate-150',
    'border-[var(--es-glass-border)] bg-[var(--es-glass-fill-strong)]',
    'shadow-[var(--es-shadow-card)]',
    'ring-1 ring-inset ring-[var(--es-glass-inner)]',
  ),
  glassSoft: cn(
    'rounded-xl border-2 backdrop-blur-md',
    'border-[var(--es-glass-border)] bg-[var(--es-glass-fill-soft)]',
  ),
  hover: 'hover:-translate-y-0.5 hover:shadow-[var(--es-shadow-card-hover)]',
  float: 'shadow-[var(--es-shadow-float)]',
  divider: 'border-[var(--es-glass-border)]',
} as const

/* ── 패딩 ── */
export const pad = {
  page: 'p-3 sm:p-4 md:p-6',
  card: 'p-4 sm:p-5',
  cardLg: 'p-5 sm:p-7',
  cardSm: 'px-3.5 py-3 sm:px-4 sm:py-3.5',
} as const

/* ── 버튼 ── */
const btnBase = cn(
  'inline-flex items-center justify-center gap-2 select-none',
  'rounded-xl px-4 py-2.5 min-h-[40px]',
  'text-[13px] font-bold tracking-wide',
  'transition-all duration-200 active:scale-95',
  'focus:outline-none focus-visible:ring-2 focus-visible:ring-[var(--es-glass-edge)]',
  'disabled:opacity-40 disabled:pointer-events-none',
)
export const button = {
  primary: cn(
    btnBase,
    'bg-sky-400 text-black font-bold',
    'shadow-sm hover:bg-sky-500 active:scale-95',
  ),
  secondary: cn(
    btnBase,
    'bg-slate-200 text-black font-bold border border-slate-300',
    'shadow-sm hover:bg-slate-300 active:scale-95',
  ),
  ghost: cn(
    btnBase,
    'bg-transparent text-[var(--es-text-soft)] border-2 border-transparent',
    'hover:bg-[var(--es-glass-fill-soft)] hover:text-[var(--es-text-strong)] hover:border-[var(--es-glass-border)]',
  ),
  danger: cn(
    btnBase,
    'bg-rose-400 text-black font-bold',
    'shadow-sm hover:bg-rose-500 active:scale-95',
  ),
  icon: cn(
    'inline-flex items-center justify-center shrink-0',
    'w-10 h-10 rounded-xl',
    'text-[var(--es-text-soft)]',
    'transition-all duration-200 active:scale-90',
    'hover:bg-[var(--es-glass-fill-soft)] hover:text-[var(--es-text-strong)]',
    'focus:outline-none focus-visible:ring-2 focus-visible:ring-[var(--es-glass-edge)]',
  ),
  smIcon: cn(
    'inline-flex items-center justify-center shrink-0 w-8 h-8 rounded-lg',
    'text-[var(--es-text-soft)] transition-all duration-150 active:scale-90',
    'hover:bg-[var(--es-glass-fill-soft)] hover:text-[var(--es-accent)]',
  ),
  smIconDanger: cn(
    'inline-flex items-center justify-center shrink-0 w-8 h-8 rounded-lg',
    'text-[var(--es-text-soft)] transition-all duration-150 active:scale-90',
    'hover:bg-[var(--es-danger)]/14 hover:text-[var(--es-danger)]',
  ),
} as const

/* ── 입력 ── */
const fieldBase = cn(
  'w-full rounded-xl px-3.5 py-2.5 min-h-[40px]',
  'text-[13px] text-[var(--es-text-strong)]',
  'bg-[var(--es-glass-fill-soft)] border-2 border-[var(--es-glass-border)] backdrop-blur-md',
  'placeholder:text-[var(--es-text-faint)]',
  'transition-all duration-200',
  'focus:outline-none focus:border-[var(--es-glass-edge)] focus:ring-2 focus:ring-[var(--es-glass-edge)]',
)
export const field = {
  input: fieldBase,
  select: cn(fieldBase, 'cursor-pointer appearance-none pr-9'),
  textarea: cn(fieldBase, 'min-h-[120px] py-3 font-mono leading-relaxed resize-y'),
} as const

/* ── 배지 ── */
const badgeBase = cn(
  'inline-flex items-center gap-1.5 rounded-lg px-2.5 py-1',
  'text-[12px] font-bold tracking-wide',
  'border backdrop-blur-md',
)
export const badge = {
  neutral: cn(badgeBase, 'border-[var(--es-glass-border)] bg-[var(--es-glass-fill-soft)] text-[var(--es-text-soft)]'),
  accent: cn(badgeBase, 'border-[var(--es-glass-edge)] bg-[var(--es-glass-fill)] text-[var(--es-accent)]'),
  success: cn(badgeBase, 'border-[var(--es-success)]/40 bg-[var(--es-success)]/12 text-[var(--es-success)]'),
  danger: cn(badgeBase, 'border-[var(--es-danger)]/40 bg-[var(--es-danger)]/12 text-[var(--es-danger)]'),
  warn: cn(badgeBase, 'border-[var(--es-warn)]/40 bg-[var(--es-warn)]/12 text-[var(--es-warn)]'),
  typeTag: cn(badgeBase, 'lowercase border-[var(--es-glass-border)] bg-[var(--es-glass-fill-soft)] text-[var(--es-text-faint)]'),
} as const

/* ── 레이아웃 / 반응형 ── */
export const layout = {
  page: cn('flex flex-col gap-4 sm:gap-5 animate-rise'),
  rowBetween: 'flex flex-wrap items-center justify-between gap-3',
  grid2: 'grid grid-cols-1 lg:grid-cols-2 gap-4 sm:gap-5',
  grid3: 'grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-4',
  grid4: 'grid grid-cols-2 sm:grid-cols-3 xl:grid-cols-4 gap-3 sm:gap-4',
  stack: 'flex flex-col gap-3',
  stackLg: 'flex flex-col gap-4 sm:gap-5',
  infoCell: cn('flex flex-col gap-1 rounded-xl px-4 py-3 min-w-0', 'bg-[var(--es-glass-fill-soft)] border border-[var(--es-glass-border)]'),
  toggleRow: 'flex items-center justify-between gap-4 flex-wrap',
  sectionGap: 'mt-4',
} as const

/* ── 데이터 테이블 ── */
export const table = {
  base: 'w-full min-w-max',
  wrap: cn('w-full max-w-full min-w-0 overflow-auto overscroll-contain rounded-xl border max-h-[60vh]', 'border-[var(--es-glass-border)] bg-[var(--es-glass-fill-soft)]'),
  headRow: cn('sticky top-0 z-10 backdrop-blur-md', 'bg-[var(--es-glass-fill-strong)]'),
  th: cn('px-3 py-3 text-left whitespace-nowrap', 'text-[12px] font-bold uppercase tracking-wider', 'text-[var(--es-text-soft)]'),
  td: cn('px-3 py-2.5 whitespace-nowrap max-w-[18rem] truncate', 'text-[12px] font-mono', 'text-[var(--es-text)]'),
  tr: cn('border-t transition-colors', 'border-[var(--es-glass-border)]/50 hover:bg-[var(--es-glass-fill-soft)]'),
} as const

/* ── 오버레이 / 모달 ── */
export const overlay = {
  scrim: cn('fixed inset-0 z-50 flex items-center justify-center p-4', 'bg-black/40 backdrop-blur-sm animate-fade-in'),
  panel: cn(
    'w-full max-w-lg max-h-[88vh] overflow-y-auto animate-pop',
    'rounded-2xl border-2 backdrop-blur-2xl p-5 sm:p-6',
    'border-[var(--es-glass-border)] bg-[var(--es-glass-fill-strong)]',
    'shadow-[var(--es-shadow-card-hover)] ring-1 ring-inset ring-[var(--es-glass-inner)]',
  ),
} as const

/* ── 모달 / 폼 행 레이아웃 ── */
export const modal = {
  header: 'flex items-center justify-between gap-3 mb-4',
  titleBox: 'flex flex-col gap-0.5 min-w-0',
  body: 'flex flex-col gap-3',
  footer: 'flex items-center justify-end gap-2 mt-5',
  error: cn('mt-3', 'text-[12px] font-bold text-[var(--es-danger)]'),
} as const

export const formRow = {
  group: 'flex flex-col gap-1.5',
  labelRow: 'flex items-center gap-2 flex-wrap',
  readonly: 'opacity-60 pointer-events-none',
} as const

/* ── FlatBuffers TBL 데이터 콘솔 ── */
export const dataConsole = {
  toolbar: 'flex flex-wrap items-center justify-between gap-3',
  toolbarLeft: 'flex items-center gap-2 min-w-0',
  actions: 'flex items-center gap-2 shrink-0',
  searchBox: cn(
    'flex items-center gap-2 rounded-xl px-3 py-2',
    'bg-[var(--es-glass-fill-soft)] border border-[var(--es-glass-border)] backdrop-blur-md',
  ),
  searchInput: cn(
    'w-40 sm:w-56 bg-transparent text-[13px] focus:outline-none',
    'text-[var(--es-text-strong)] placeholder:text-[var(--es-text-faint)]',
  ),
  thAction: cn('px-3 py-3 text-right w-20', 'text-[12px] font-bold uppercase tracking-wider text-[var(--es-text-soft)]'),
  tdAction: 'px-3 py-2.5 text-right',
  rowActions: 'inline-flex items-center gap-1',
  cellNull: 'italic text-[var(--es-text-faint)]',
  cellLabel: 'text-[var(--es-accent)]',
  sortHead: cn('cursor-pointer select-none hover:text-[var(--es-text-strong)] transition-colors'),
  sortHeadInner: 'flex items-center gap-1',
  panelTab: cn(
    'inline-flex items-center gap-1.5 rounded-lg px-2.5 py-1.5 text-[12px] font-bold transition-all active:scale-95',
    'text-[var(--es-text-soft)] hover:text-[var(--es-text-strong)] hover:bg-[var(--es-glass-fill)]',
  ),
  panelTabActive: 'bg-[var(--es-accent)] text-white text-glow shadow-[var(--es-shadow-float)]',
  pager: 'flex items-center justify-between gap-3 flex-wrap',
  pagerInfo: cn('text-[12px] font-mono', 'text-[var(--es-text-soft)]'),
  pagerBtns: 'flex items-center gap-1.5',
  pagerPage: cn('min-w-16 text-center text-[12px] font-mono', 'text-[var(--es-text-soft)]'),
  empty: cn('flex flex-col items-center justify-center gap-3 py-16', 'text-[var(--es-text-faint)]'),
  countTag: cn('text-[12px] font-mono', 'text-[var(--es-text-faint)]'),
  tableSelect: 'flex items-center gap-2 flex-wrap',
  spin: 'animate-spin',
  langSelect: cn('rounded-xl px-2.5 py-1.5 text-[12px] cursor-pointer appearance-none', 'bg-[var(--es-glass-fill-soft)] border-2 border-[var(--es-glass-border)] text-[var(--es-text-strong)] backdrop-blur-md'),
  overridden: cn('text-[var(--es-warn)] font-bold'),
  overrideBadge: cn('inline-flex items-center gap-1 rounded-md px-1.5 py-0.5 text-[12px] font-bold', 'bg-[var(--es-warn)]/14 text-[var(--es-warn)] border border-[var(--es-warn)]/40'),
} as const

/* ── 관계형 DB 브라우저 (좌측 테이블 목록 + 본문 콘솔) ── */
export const dbBrowser = {
  shell: 'grid grid-cols-1 lg:grid-cols-[clamp(220px,22vw,300px)_minmax(0,1fr)] gap-4 sm:gap-5 items-start min-w-0',
  shellCollapsed: 'grid grid-cols-1 gap-4 sm:gap-5 items-start min-w-0',
  sidePanel: 'min-w-0 overflow-hidden lg:sticky lg:top-0',
  sidePanelCollapsed: cn(
    'flex items-center justify-between gap-3 rounded-xl border px-3 py-2.5',
    'border-[var(--es-glass-border)] bg-[var(--es-glass-fill-soft)] text-[var(--es-text-soft)]',
  ),
  contentPanel: 'min-w-0 overflow-hidden',
  sideHead: 'flex items-center justify-between gap-2 mb-3',
  sideTitle: 'min-w-0 flex items-center gap-2',
  sideToggle: cn(
    'inline-flex items-center justify-center rounded-lg w-8 h-8 shrink-0 transition-all active:scale-95',
    'border border-[var(--es-glass-border)] bg-[var(--es-glass-fill-soft)] text-[var(--es-text-soft)]',
    'hover:text-[var(--es-text-strong)] hover:bg-[var(--es-glass-fill)]',
  ),
  metricBox: cn(
    'min-w-0 rounded-xl border px-2.5 py-2',
    'border-[var(--es-glass-border)] bg-[var(--es-glass-fill-soft)]',
  ),
  metricValue: cn('block truncate text-[13px] font-mono font-bold', 'text-[var(--es-text-strong)]'),
  metricLabel: cn('block truncate text-[10px] font-bold uppercase', 'text-[var(--es-text-faint)]'),
  searchBox: cn(
    'flex items-center gap-2 rounded-xl px-3 py-2 mb-2',
    'bg-[var(--es-glass-fill-soft)] border border-[var(--es-glass-border)] backdrop-blur-md',
  ),
  searchInput: cn('w-full bg-transparent text-[13px] focus:outline-none', 'text-[var(--es-text-strong)] placeholder:text-[var(--es-text-faint)]'),
  scopeFilters: 'flex flex-wrap gap-1.5 mb-2',
  scopeButton: cn(
    'inline-flex items-center gap-1.5 rounded-lg px-2.5 py-1.5',
    'text-[12px] font-bold transition-all active:scale-95',
    'border border-[var(--es-glass-border)] bg-[var(--es-glass-fill-soft)] text-[var(--es-text-soft)]',
    'hover:text-[var(--es-text-strong)] hover:bg-[var(--es-glass-fill)]',
  ),
  scopeButtonActive: 'bg-[var(--es-accent)] text-white border-[var(--es-accent)] shadow-[var(--es-shadow-float)]',
  scopeCount: cn('font-mono opacity-75 rounded-md px-1', 'bg-[var(--es-glass-fill-soft)]'),
  scopeCountActive: 'bg-white/25 text-white opacity-100',
  list: 'flex flex-col gap-1 max-h-[64vh] overflow-y-auto pr-1',
  item: cn(
    'w-full flex items-center justify-between gap-2 rounded-xl px-3 py-2.5 text-left',
    'text-[13px] text-[var(--es-text-soft)] transition-all active:scale-[0.98]',
    'hover:bg-[var(--es-glass-fill-soft)] hover:text-[var(--es-text-strong)]',
  ),
  itemActive: cn('bg-[var(--es-accent)] text-white text-glow shadow-[var(--es-shadow-float)]'),
  itemText: 'min-w-0 flex flex-col gap-1',
  itemName: 'truncate font-semibold',
  itemMeta: 'shrink-0 flex items-center gap-1.5',
  itemColumn: cn('hidden sm:inline-flex text-[12px] font-mono px-1.5 py-0.5 rounded-md', 'bg-[var(--es-glass-fill-soft)] text-[var(--es-text-faint)]'),
  itemScopeActive: 'border-white/30 bg-white/20 text-white',
  itemCount: cn('shrink-0 text-[12px] font-mono px-1.5 py-0.5 rounded-md', 'bg-[var(--es-glass-fill-soft)] text-[var(--es-text-faint)]'),
  itemCountActive: 'bg-white/25 text-white',
  emptySel: cn('flex flex-col items-center justify-center gap-3 py-20', 'text-[var(--es-text-faint)]'),
} as const

/* ── 관리자 셸 / 내비 / 탭바 / 상단바 ── */
export const shell = {
  root: 'min-h-screen',
  frame: 'flex h-screen overflow-hidden',
  body: 'flex flex-col flex-1 min-w-0 overflow-hidden',
  main: 'flex-1 overflow-y-auto p-3 sm:p-4 md:p-6 pb-24 xl:pb-6',
} as const

export const nav = {
  rail: cn(
    'group hidden xl:flex flex-col w-16 hover:w-60 shrink-0',
    'transition-[width] duration-300 ease-out overflow-hidden',
    'rounded-r-3xl border-r backdrop-blur-2xl z-40',
    'border-[var(--es-glass-border)] bg-[var(--es-glass-fill-strong)] shadow-[var(--es-shadow-card)]',
  ),
  brand: 'flex items-center gap-3 px-3 pt-4 pb-3',
  brandText: 'flex flex-col opacity-0 group-hover:opacity-100 transition-opacity duration-200 whitespace-nowrap overflow-hidden',
  divider: 'mx-3 h-px bg-[var(--es-glass-border)]',
  list: 'flex-1 overflow-y-auto py-2 space-y-1 px-2 scrollbar-none',
  item: cn('relative w-full flex items-center gap-3 px-3 py-2.5 rounded-xl', 'transition-all duration-200 active:scale-95'),
  itemActive: 'text-white text-glow',
  itemIdle: cn('text-[var(--es-text-soft)] hover:bg-[var(--es-glass-fill-soft)] hover:text-[var(--es-text-strong)]'),
  indicator: cn('absolute inset-0 -z-10 rounded-xl bg-[var(--es-accent)] shadow-[var(--es-shadow-float)]'),
  barItemActive: cn('text-white text-glow bg-[var(--es-accent)] shadow-[var(--es-shadow-float)]'),
  itemLabel: cn('text-[13px] font-semibold whitespace-nowrap truncate', 'opacity-0 group-hover:opacity-100 transition-opacity duration-200'),
  footVer: cn('text-[12px] font-mono opacity-0 group-hover:opacity-100 transition-opacity duration-200', 'text-[var(--es-text-faint)]'),
  footStat: 'flex items-center gap-2',
  foot: 'px-3 py-3 flex items-center justify-between gap-2',
  footDot: 'w-2 h-2 rounded-full bg-[var(--es-success)] animate-glow-pulse shrink-0',
  footText: cn('text-[12px] font-mono', 'text-[var(--es-text-faint)]'),
  devWrap: 'px-2 py-3',
  devLink: cn('flex items-center gap-2.5 px-2 py-2 rounded-xl transition-all hover:bg-[var(--es-glass-fill-soft)]'),
  devBox: 'flex flex-col min-w-0 opacity-0 group-hover:opacity-100 transition-opacity duration-200 whitespace-nowrap overflow-hidden',
  devName: cn('text-[13px] font-bold truncate transition-colors text-[var(--es-text-strong)] hover:text-[var(--es-accent)]'),
  devRole: cn('text-[12px] font-mono truncate text-[var(--es-text-faint)]'),
  devMeta: 'opacity-0 group-hover:opacity-100 transition-opacity duration-200 mt-1 px-2 space-y-0.5',
  devMetaLink: cn('block text-[12px] font-mono truncate transition-colors text-[var(--es-text-faint)] hover:text-[var(--es-accent)]'),
  bar: cn(
    'xl:hidden fixed bottom-4 left-1/2 -translate-x-1/2 z-50',
    'flex items-center gap-1 px-3 py-2 rounded-2xl backdrop-blur-2xl border',
    'border-[var(--es-glass-border)] bg-[var(--es-glass-fill-strong)] shadow-[var(--es-shadow-card-hover)]',
    'overflow-x-auto max-w-[calc(100vw-2rem)] scrollbar-none',
  ),
  barItem: 'flex items-center justify-center p-2.5 rounded-xl shrink-0 transition-all duration-200 active:scale-90',
} as const

export const tabBar = {
  wrap: cn(
    'flex items-center gap-1.5 px-3 sm:px-4 py-2.5 overflow-x-auto scrollbar-none',
    'border-b-2 border-[var(--es-glass-border)]',
  ),
  tab: cn('relative px-4 py-2 rounded-xl text-[13px] font-bold whitespace-nowrap', 'transition-colors duration-200 active:scale-95'),
  tabActive: 'text-white text-glow',
  tabIdle: cn('text-[var(--es-text-soft)] border-2 border-[var(--es-glass-border)]/45 bg-[var(--es-glass-fill-soft)] backdrop-blur-md', 'hover:bg-[var(--es-glass-fill)] hover:text-[var(--es-text-strong)] hover:border-[var(--es-glass-border)]'),
  tabIndicator: 'absolute inset-0 -z-10 rounded-xl bg-[image:var(--es-btn-primary)] shadow-[var(--es-shadow-float)] ring-1 ring-inset ring-white/25',
} as const

export const topbar = {
  root: cn(
    'flex items-center justify-between shrink-0 gap-3 mx-3 mt-3 min-h-12 px-3 sm:px-4 py-2 rounded-2xl',
    'backdrop-blur-2xl border border-[var(--es-glass-border)] bg-[var(--es-glass-fill-strong)] shadow-[var(--es-shadow-card)]',
  ),
  title: cn('text-[15px] font-extrabold tracking-tight truncate', 'text-[var(--es-text-strong)] text-glow'),
  pill: cn('flex items-center gap-1.5 px-3 py-1.5 rounded-xl', 'bg-[var(--es-glass-fill-soft)] border border-[var(--es-glass-border)]'),
  pillDot: 'w-1.5 h-1.5 rounded-full bg-[var(--es-success)] animate-glow-pulse',
  pillText: cn('text-[12px] font-mono', 'text-[var(--es-text-soft)]'),
  menu: cn('z-[9999] w-44 rounded-2xl border py-1.5 overflow-hidden backdrop-blur-2xl', 'border-[var(--es-glass-border)] bg-[var(--es-glass-fill-strong)] shadow-[var(--es-shadow-card-hover)]'),
  menuItem: cn('w-full flex items-center gap-2.5 px-3 py-2 text-[13px] font-medium transition-colors'),
  menuItemActive: 'bg-[var(--es-accent)]/15 text-[var(--es-accent)]',
  menuItemIdle: 'text-[var(--es-text-soft)] hover:bg-[var(--es-glass-fill-soft)] hover:text-[var(--es-text-strong)]',
} as const

/* ── 대시보드 통계 / 상태 ── */
export const stat = {
  grid: 'grid grid-cols-2 sm:grid-cols-3 xl:grid-cols-5 gap-3 sm:gap-4',
  card: cn(surface.glass, surface.hover, 'p-4 flex flex-col gap-2'),
  head: 'flex items-center gap-2 min-w-0',
  iconWrap: cn('w-9 h-9 rounded-xl flex items-center justify-center shrink-0', 'bg-[var(--es-glass-fill-soft)] border border-[var(--es-glass-border)] text-[var(--es-accent)]'),
  label: cn('text-[12px] font-semibold uppercase tracking-wider truncate', 'text-[var(--es-text-soft)]'),
  value: cn('text-[22px] font-extrabold tabular-nums truncate', 'text-[var(--es-text-strong)] text-glow'),
  hero: cn(surface.glass, 'p-5 sm:p-6 flex flex-col sm:flex-row items-start sm:items-center gap-5'),
  heroBody: 'flex-1 min-w-0 flex flex-col gap-4',
  ctaRow: 'flex items-center gap-2 flex-wrap',
  statusRow: 'flex items-center gap-2 flex-wrap',
  pill: cn('flex items-center gap-2 px-3 py-2 rounded-xl', 'bg-[var(--es-glass-fill-soft)] border border-[var(--es-glass-border)]'),
  pillMono: cn('text-[13px] font-mono', 'text-[var(--es-text-soft)]'),
  metaCol: 'flex flex-col gap-0.5 min-w-0',
  metaLabel: cn('text-[12px] font-bold uppercase tracking-widest', 'text-[var(--es-text-faint)]'),
  metaVal: cn('text-[13px] font-mono break-all', 'text-[var(--es-text)]'),
  ctaMsg: (ok: boolean) => cn('text-[13px] font-semibold', ok ? 'text-[var(--es-success)]' : 'text-[var(--es-danger)]'),
  dot: 'w-2 h-2 rounded-full bg-[var(--es-success)] animate-glow-pulse shrink-0',
  heroImg: 'hidden sm:block w-28 h-28 object-contain rounded-2xl shrink-0 animate-float',
  metaGrid: 'grid grid-cols-1 sm:grid-cols-2 gap-3',
  statePills: 'flex flex-wrap gap-3',
  pathPill: cn('text-[13px] font-mono truncate max-w-[18rem]', 'text-[var(--es-text-soft)]'),
} as const

/* ── 상태 배지 ── */
export const statusBadge = {
  base: 'inline-flex items-center gap-1.5 px-2.5 py-0.5 rounded-full text-[12px] font-bold border-2 backdrop-blur-md',
  variant: {
    ok: 'bg-[var(--es-success)]/12 text-[var(--es-success)] border-[var(--es-success)]/40',
    warn: 'bg-[var(--es-warn)]/12 text-[var(--es-warn)] border-[var(--es-warn)]/40',
    fail: 'bg-[var(--es-danger)]/12 text-[var(--es-danger)] border-[var(--es-danger)]/40',
    info: 'bg-[var(--es-accent-2)]/12 text-[var(--es-accent-2)] border-[var(--es-accent-2)]/40',
    active: 'bg-[var(--es-accent-3)]/12 text-[var(--es-accent-3)] border-[var(--es-accent-3)]/40',
    idle: 'bg-[var(--es-glass-fill-soft)] text-[var(--es-text-faint)] border-[var(--es-glass-border)]',
  },
  dotBase: 'w-1.5 h-1.5 rounded-full shrink-0',
  dot: {
    ok: 'bg-[var(--es-success)]',
    warn: 'bg-[var(--es-warn)]',
    fail: 'bg-[var(--es-danger)]',
    info: 'bg-[var(--es-accent-2)]',
    active: 'bg-[var(--es-accent-3)]',
    idle: 'bg-[var(--es-text-faint)]',
  },
} as const

/* ── 치트(재화/정령) 카드 ── */
export const cheatCard = {
  card: 'flex flex-col gap-4',
  head: 'flex items-center justify-between gap-2',
  headLeft: 'flex items-center gap-3 min-w-0',
  iconWrap: cn('w-11 h-11 rounded-2xl flex items-center justify-center shrink-0', 'bg-[var(--es-glass-fill-soft)] border border-[var(--es-glass-border)] text-[var(--es-accent)] shadow-[var(--es-shadow-float)]'),
  metaCol: 'flex flex-col gap-0.5 min-w-0',
  value: cn('text-[22px] font-extrabold tabular-nums truncate', 'text-[var(--es-text-strong)] text-glow'),
  inputRow: 'flex gap-2',
  inputCol: 'flex flex-col gap-2',
} as const

/* ── APK/ADB 연결 패널 ── */
export const apkPanel = {
  cols: 'grid grid-cols-1 sm:grid-cols-2 gap-3',
  listCol: 'flex flex-col gap-1.5',
  listBox: cn('min-h-12 rounded-xl p-2 flex flex-col gap-1', 'bg-[var(--es-glass-fill-soft)] border border-[var(--es-glass-border)]'),
  deviceBtnBase: 'w-full text-left px-2 py-1.5 rounded-lg text-[12px] font-mono transition-all active:scale-95',
  deviceBtnActive: 'bg-[var(--es-accent)] text-white text-glow',
  deviceBtnIdle: 'text-[var(--es-text-soft)] hover:bg-[var(--es-glass-fill-soft)] hover:text-[var(--es-text-strong)]',
  reverseItem: cn('px-2 py-1.5 rounded-lg text-[12px] font-mono', 'text-[var(--es-text-soft)] bg-[var(--es-glass-fill-soft)]'),
  badgeGrid: 'grid grid-cols-2 gap-2',
  btnRow: 'flex flex-wrap gap-2',
  inputRow: 'flex gap-2',
  termWrap: cn('mt-3 max-h-60 overflow-y-auto rounded-xl p-3 font-mono text-[12px] space-y-2', 'bg-[var(--es-glass-fill-soft)] border border-[var(--es-glass-border)] text-[var(--es-text)]'),
  termLine: 'whitespace-pre-wrap break-all',
  ctrlMsg: (ok: boolean) => cn('px-3 py-2 rounded-xl text-[13px] font-semibold border', ok ? 'text-[var(--es-success)] bg-[var(--es-success)]/12 border-[var(--es-success)]/40' : 'text-[var(--es-danger)] bg-[var(--es-danger)]/12 border-[var(--es-danger)]/40'),
} as const
