import { RefreshCw, Smartphone } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { Button } from '@/components/ui/Button'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { layout, typo, apkPanel as ap, dataConsole as dc } from '@/styles/tokens'

interface ApkDevicesTabProps {
  devices: string[]
  reverseEntries: string[]
  scanning: boolean
  target: string
  onScan: () => void
  onConnect: (device: string) => void
}

// apk-connect 'devices' 탭 — adb devices / reverse 목록 조회 + 기기 선택(connect).
export function ApkDevicesTab({ devices, reverseEntries, scanning, target, onScan, onConnect }: ApkDevicesTabProps) {
  const { t } = useI18n()
  return (
    <GlassCard hover>
      <GlassCardHeader icon={<Smartphone size={18} />} title={t('admin.adb_connected_list')} />
      <div className={cn(layout.sectionGap, layout.stackLg)}>
        <div>
          <Button variant="secondary" onClick={onScan} disabled={scanning}>
            <RefreshCw size={14} className={scanning ? dc.spin : undefined} />{t('admin.adb_scan_btn')}
          </Button>
        </div>

        <div className={ap.cols}>
          <div className={ap.listCol}>
            <span className={typo.label}>{t('admin.adb_connected_list')}</span>
            <div className={ap.listBox}>
              {devices.length === 0
                ? <span className={typo.hint}>{t('admin.injector_no_devices')}</span>
                : devices.map(device => (
                  <button
                    key={device}
                    onClick={() => onConnect(device)}
                    className={cn(ap.deviceBtnBase, target === device ? ap.deviceBtnActive : ap.deviceBtnIdle)}
                  >
                    {device}
                  </button>
                ))}
            </div>
          </div>
          <div className={ap.listCol}>
            <span className={typo.label}>{t('admin.adb_reverse_list')}</span>
            <div className={ap.listBox}>
              {reverseEntries.length === 0
                ? <span className={typo.hint}>{t('admin.adb_reverse_empty')}</span>
                : reverseEntries.map((entry, i) => <div key={i} className={ap.reverseItem}>{entry}</div>)}
            </div>
          </div>
        </div>
      </div>
    </GlassCard>
  )
}
