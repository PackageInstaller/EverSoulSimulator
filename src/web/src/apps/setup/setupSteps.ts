export const SETUP_STEPS = [
  { key: 'server_port',      labelKey: 'setup.step.server_port',      descKey: 'setup.step.server_port_desc' },
  { key: 'server_url',       labelKey: 'setup.step.server_url',       descKey: 'setup.step.server_url_desc' },
  { key: 'adb_path',         labelKey: 'setup.step.adb_path',         descKey: 'setup.step.adb_path_desc' },
  { key: 'adb_reverse',      labelKey: 'setup.step.adb_reverse',      descKey: 'setup.step.adb_reverse_desc' },
  { key: 'cdn_scan',         labelKey: 'setup.step.cdn_scan',         descKey: 'setup.step.cdn_scan_desc' },
  { key: 'default_account',  labelKey: 'setup.step.default_account',  descKey: 'setup.step.default_account_desc' },
  { key: 'apk_account_page', labelKey: 'setup.step.apk_account_page', descKey: 'setup.step.apk_account_page_desc' },
  { key: 'admin_ready',      labelKey: 'setup.step.admin_ready',      descKey: 'setup.step.admin_ready_desc' },
] as const

export type SetupStepKey = typeof SETUP_STEPS[number]['key']
