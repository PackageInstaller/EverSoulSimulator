export interface Account {
  id: string
  nickname: string
  idp_code: string
  player_id: string
  region: string
  profile_source: string
  active: boolean
  hero_count: number
  created_at: number
  updated_at: number
  last_login: number | null
}

export interface CheatStatus {
  gold: number
  crystal: number
  stone: number
  mana_crystal: number
  pay_dia: number
  heroes: number
}

export interface HealthCheck {
  name: string
  status: 'ok' | 'warn' | 'fail'
  detail?: string
  hint?: string
}

export interface ServerStatus {
  port: number
  request_count: number
  fixture_count: number
  fixture_errors: number
  tbl_tables: number
  tbl_rows: number
  active_account_id: string
  setup_complete: boolean
  local_backend: boolean
  lang: string
  proxy_enabled: boolean
  started_at: number
  game_server_url: string
  data_dir: string
}

export interface GameDataSummary {
  gold: number
  crystal: number
  hero_count: number
}

export interface ApiResult<T = void> {
  ok: boolean
  reason?: string
  data?: T
}

export interface AccountCreateRequest {
  nickname: string
  idp_code: string
  region?: string
  player_id?: string
  profile_source?: string
}

export interface AccountEditRequest {
  nickname?: string
  idp_code?: string
  region?: string
  player_id?: string
}

export type CurrencyType = 'gold' | 'crystal' | 'stone' | 'mana_crystal' | 'pay_dia'

export interface CurrencySetRequest {
  gold?: number
  crystal?: number
  stone?: number
  mana_crystal?: number
  pay_dia?: number
}

export interface HeroAddRequest {
  hero_no: number
  level?: number
  grade?: number
}

export interface ScheduleRow {
  schedule_key: string
  schedule_kind: string
  enabled: number
  start_at_ms: number
  end_at_ms: number
  repeat_type: string
  repeat_interval: number
  duration_ms: number
  unlock_stage_no: number
  unlock_story_no: number
  updated_ms: number
  open_now: boolean
}

export interface TuningRow {
  scope: string
  param_key: string
  int_value: number
  real_value: number
  enabled: number
  updated_ms: number
}

export interface FileEntry {
  path: string
  name: string
  size: number
  modified: number
  is_dir: boolean
}

export interface AdbDevice {
  serial: string
  state: string
}

export interface ReverseEntry {
  remote: string
  local: string
}

export interface AdbCommandResult {
  ok: boolean
  output: string
  error?: string
}

export interface ServerLogEntry {
  id: number
  ts: number
  level: string
  path: string
  message: string
}

export interface AdbLogEntry {
  id: number
  ts: number
  level: string
  tag: string
  message: string
}

export interface JsonColumnMeta {
  cid: number
  name: string
  type: string
  pk: boolean
  notnull: boolean
  dflt_value: string | null
}

export interface ServerConfig {
  lang: string
  client_region: string
  server_port: number
  game_server_url: string
  local_backend: boolean
  adb_path: string
}

export interface TblHookStatus {
  enabled: boolean
  tables?: number
  rows?: number
  source?: string
}

export interface TblSyncResult {
  ok: boolean
  name: string
  restored: boolean
  local_path: string
  device_path: string
  output: string
}

export interface TblSyncAllResult {
  ok: boolean
  restore_default: boolean
  applied_count: number
  failed_count: number
  results: TblSyncResult[]
}

// /web/api/tbl_status — 외부데이터(.tbl/.fbs/tbl_json) 존재·완전성.
export interface TblStatus {
  tbl_count: number
  json_count: number
  fbs_count: number
  default_count: number
  default_json_count: number
  flatc: boolean
  complete: boolean
  missing_count: number
  missing: string[]
}

// /web/api/tbl_precheck — 서버 EXE 가 adb(root)로 검증한 에뮬레이터 내부 에셋번들 상태.
// ready=true 일 때만 인게임설정뷰 OPEN.
export interface TblPrecheck {
  adb: boolean
  connected: boolean
  rooted: boolean
  package: boolean
  unitycache: boolean
  bundle_count: number
  ready: boolean
}

export interface AdbPortGetResponse {
  port: string
}

export interface AdbPortSetResponse {
  ok: boolean
  connected: boolean
  rooted: boolean
  adb_root: boolean
  reverse: boolean
  reversed: boolean
  serial: string
  adb_rooted: boolean
  eversoul: boolean
  devices: string[]
  entries: string[]
  output: string
}

export interface SetupState {
  setup_id: string
  completed: number
  completed_at_ms: number
  first_started_at_ms: number
  last_seen_at_ms: number
  server_port: number
  game_server_url: string
  adb_path: string
  adb_host_port: number
  apk_package_name: string
  active_account_id: string
  setup_version: number
}

export interface SetupStepState {
  setup_id: string
  step_key: string
  state: 'pending' | 'done' | 'error'
  value_json: string
  updated_at_ms: number
}

export interface SetupStatusResponse {
  complete: boolean
  setup: SetupState | null
  steps: SetupStepState[]
}

export interface TblJsonListResult {
  files: string[]
}

export interface TblEditingCell {
  filteredRowIdx: number
  col: string
}
