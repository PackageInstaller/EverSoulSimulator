export interface InjectorStatus {
  running: boolean
  reverse: boolean
  serial?: string
  entries?: string[]
  device_ports?: number[]
  host_port?: number
  reverse_outputs?: string[]
  output?: string
}

export interface ProbeResult {
  ok: boolean
  connected: boolean
  eversoul: boolean
  rooted: boolean
  adb_root: boolean
  adb_rooted: boolean
  reverse: boolean
  reversed: boolean
  serial?: string
  entries?: string[]
  reverse_entries?: string[]
  device_ports?: number[]
  devices?: string[]
  host_port?: number
  reverse_outputs?: string[]
  output?: string
}

// 게임 시작(am start) 결과 — /web/api/injector/run 응답 정합.
export interface InjectorRunResult {
  ok: boolean
  started: boolean
  reverse: boolean
  serial?: string
  output?: string
}

// adb connect 결과 — /web/api/injector/connect 응답 정합.
export interface AdbConnectResult {
  ok: boolean
  connected: boolean
  reverse: boolean
  adb_rooted?: boolean
  serial?: string
  output?: string
  entries?: string[]
}

// adb reverse 설정 결과 — /web/api/injector/reverse 응답 정합.
export interface AdbReverseResult {
  ok: boolean
  reverse: boolean
  serial?: string
  entries?: string[]
}

// ADB 연결 상태 — /web/api/adb/state 응답 정합.
// 서버 런타임과 INI에 기록된 연결 상태를 함께 반영한다.
export interface AdbConnectionState {
  port: string
  serial: string
  connected: boolean
  reverse: boolean
  adb_rooted: boolean
  host_port: number
  device_ports: number[]
  reverse_entries: string[]
  device_count: number
  game_running: boolean
  game_package: string
  game_updated_at_ms: number
  updated_at_ms: number
}
