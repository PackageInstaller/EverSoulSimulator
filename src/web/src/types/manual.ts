export interface ManualCommandItem {
  cmd: string
  desc: string
}

export interface ManualRouterEntry {
  name: string
  adminUrl: string
  steps: string[]
}

export interface ManualLangContent {
  versionLabel: string
  releaseNote: string

  sectionDownload: string
  downloadApkLabel: string
  downloadApkUrl: string
  downloadMumuLabel: string
  downloadMumuUrl: string

  sectionSetup: string
  setupSteps: string[]

  sectionMumuSettings: string
  mumuSettingsNote: string
  mumuSteps: string[]

  sectionAdbSetup: string
  adbNote: string
  adbReverseCmd: string
  adbReverseCmdDesc: string

  sectionRouter: string
  routerNote: string
  routerPortInfo: string
  routers: ManualRouterEntry[]

  sectionAdbCommands: string
  adbCommands: ManualCommandItem[]
}
