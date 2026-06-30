import {
  type SetupState,
  type SetupStepState,
  type SetupStatusResponse,
  type ApiResult,
  type ServerConfig,
  type AdbPortGetResponse,
  type AdbPortSetResponse,
} from '@/types/api'

export async function apiGetSetupStatus(): Promise<SetupStatusResponse> {
  const r = await fetch('/web/api/setup/status')
  return r.json()
}

export async function apiCompleteSetup(setup: Partial<SetupState>): Promise<ApiResult> {
  const r = await fetch('/web/api/setup/complete', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(setup),
  })
  return r.json()
}

export async function apiResetSetup(): Promise<ApiResult> {
  const r = await fetch('/web/api/setup/reset', { method: 'POST' })
  return r.json()
}

export async function apiSetSetupStep(
  step_key: string,
  state: SetupStepState['state'],
  value_json?: string,
): Promise<ApiResult> {
  const r = await fetch('/web/api/setup/step', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ step_key, state, value_json }),
  })
  return r.json()
}

export async function apiGetConfig(): Promise<ServerConfig> {
  const r = await fetch('/web/api/config')
  return r.json()
}

export async function apiSetConfig(config: Partial<ServerConfig>): Promise<ApiResult> {
  const r = await fetch('/web/api/config', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(config),
  })
  return r.json()
}

export async function apiCdnScan(): Promise<{ ok: boolean; saved: number; output: string }> {
  const r = await fetch('/web/api/setup/cdn-scan', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: '{}',
  })
  return r.json()
}

export async function apiGetAdbPort(): Promise<AdbPortGetResponse> {
  const r = await fetch('/web/api/adb/port')
  return r.json()
}

export async function apiSetAdbPort(port: string): Promise<AdbPortSetResponse> {
  const r = await fetch('/web/api/adb/port', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ port }),
  })
  return r.json()
}
