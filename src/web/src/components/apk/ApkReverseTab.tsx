import { RotateCcw, ShieldCheck } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { Button } from '@/components/ui/Button'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { layout, typo, apkPanel as ap } from '@/styles/tokens'

interface ApkReverseTabProps {
  reverseEntries: string[]
  onReverse: () => void
  onRoot: () => void
  onClearLog: () => void
}

// apk-connect 'reverse' 탭 — adb reverse(tcp:9991) 설정 + adb root + logcat clear.
export function ApkReverseTab({ reverseEntries, onReverse, onRoot, onClearLog }: ApkReverseTabProps) {
  const { t } = useI18n()
  return (
    <GlassCard hover>
      <GlassCardHeader icon={<RotateCcw size={18} />} title={t('admin.adb_reverse_list')} />
      <div className={cn(layout.sectionGap, layout.stackLg)}>
        <div className={ap.btnRow}>
          <Button variant="primary" onClick={onReverse}>
            <RotateCcw size={14} />{t('admin.adb_reverse_btn')}
          </Button>
          <Button variant="secondary" onClick={onRoot}>
            <ShieldCheck size={14} />{t('admin.adb_root_btn')}
          </Button>
          <Button variant="ghost" onClick={onClearLog}>{t('admin.adb_logcat_clear_btn')}</Button>
        </div>
        <div className={ap.listBox}>
          {reverseEntries.length === 0
            ? <span className={typo.hint}>{t('admin.adb_reverse_empty')}</span>
            : reverseEntries.map((entry, i) => <div key={i} className={ap.reverseItem}>{entry}</div>)}
        </div>
      </div>
    </GlassCard>
  )
}
