export interface Account {
  id: string
  nickname: string
  idp_code: string
  player_id: string
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
  heroes: number
}

export interface DbTable {
  name: string
  rows: number
}

export interface DbTableData {
  columns: string[]
  rows: Record<string, unknown>[]
}

export interface DbSchemaColumn {
  name: string
  type: string
  pk: number
  notnull: number
}

export interface DbSchema {
  columns: DbSchemaColumn[]
  ddl: string
}

export interface HealthCheck {
  name: string
  status: 'ok' | 'warn' | 'fail'
  detail?: string
}

export interface ServerStatus {
  port: number
  request_count: number
  fixture_count: number
  fixture_errors: number
  db_tables: number
  db_path: string
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

