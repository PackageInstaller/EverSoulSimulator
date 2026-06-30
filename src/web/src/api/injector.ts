import { type AdbCommandResult, type ApiResult } from '@/types/api'
import { type InjectorStatus, type InjectorRunResult, type ProbeResult, type AdbConnectResult, type AdbReverseResult, type AdbConnectionState } from '@/types/injector'

export async function apiListDevices(): Promise<string[]> {
  const r = await fetch('/web/api/injector/devices')
  const d = await r.json()
  return d.devices ?? []
}

export async function apiListReverseEntries(): Promise<string[]> {
  const r = await fetch('/web/api/injector/reverse-list')
  const d = await r.json()
  return d.entries ?? []
}

export async function apiConnectDevice(target: string): Promise<AdbConnectResult> {
  const r = await fetch('/web/api/injector/connect', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ target }),
  })
  return r.json()
}

export async function apiAdbProbe(target: string): Promise<ProbeResult> {
  const r = await fetch('/web/api/adb/probe', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ target }),
  })
  return r.json()
}

export async function apiRunAdbCommand(cmd: string, serial?: string): Promise<AdbCommandResult> {
  const r = await fetch('/web/api/injector/adb', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ cmd, serial }),
  })
  return r.json()
}

export async function apiSetupReverse(serial?: string): Promise<AdbReverseResult> {
  const r = await fetch('/web/api/injector/reverse', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ serial }),
  })
  return r.json()
}

export async function apiGetInjectorStatus(): Promise<InjectorStatus> {
  const r = await fetch('/web/api/injector/status')
  return r.json()
}

// ADB 연결 상태 영속본 조회 — 웹 재진입 시 마운트에서 복원하는 데 사용.
export async function apiGetAdbState(): Promise<AdbConnectionState> {
  const r = await fetch('/web/api/adb/state')
  return r.json()
}

export async function apiRunGame(serial?: string): Promise<InjectorRunResult> {
  const r = await fetch('/web/api/injector/run', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ serial }),
  })
  return r.json()
}

export async function apiStopGame(serial?: string): Promise<AdbCommandResult> {
  const r = await fetch('/web/api/injector/stop', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ serial }),
  })
  return r.json()
}

export async function apiClearAdbLog(): Promise<ApiResult> {
  const r = await fetch('/web/api/logs/adb/clear', { method: 'POST' })
  return r.json()
}
