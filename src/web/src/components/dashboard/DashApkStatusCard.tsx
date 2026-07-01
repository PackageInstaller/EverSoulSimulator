import { Play, Square } from 'lucide-react'
import { motion } from 'motion/react'
import { GlassCardHeader } from '@/components/ui/GlassCard'
import { StatusBadge } from '@/components/ui/StatusBadge'
import { Button } from '@/components/ui/Button'
import loadingUrl from '@/assets/loading.png'
import { useI18n } from '@/lib/i18n'
import { stat } from '@/styles/tokens'
import { riseMotion } from '@/styles/motion'
import { type InjectorStatus } from '@/types/injector'

const PACKAGE_NAME = 'com.kakaogames.eversoul'
const MAIN_ACTIVITY = 'com.kakaogames.eversoul.unity.UnityPlayerActivity'

interface DashApkStatusCardProps {
  injStatus: InjectorStatus | null
  gameActing: boolean
  gameMsg: { ok: boolean; text: string } | null
  onStart: () => void
  onStop: () => void
}

// home 'apk-status' / overview 공용 — APK 패키지/연결(reverse)/게임 실행 상태 + 시작/중지.
export function DashApkStatusCard({ injStatus, gameActing, gameMsg, onStart, onStop }: DashApkStatusCardProps) {
  const { t } = useI18n()
  return (
    <motion.div className={stat.hero} {...riseMotion}>
      <div className={stat.heroBody}>
        <GlassCardHeader icon={<Play size={18} />} title={t('admin.game_start_title')} />
        <div className={stat.metaGrid}>
          <div className={stat.metaCol}>
            <span className={stat.metaLabel}>Package</span>
            <span className={stat.metaVal}>{PACKAGE_NAME}</span>
          </div>
          <div className={stat.metaCol}>
            <span className={stat.metaLabel}>Activity</span>
            <span className={stat.metaVal}>{MAIN_ACTIVITY}</span>
          </div>
        </div>
        <div className={stat.statusRow}>
          {injStatus
            ? <StatusBadge variant={injStatus.running ? 'ok' : 'idle'}>{injStatus.running ? t('admin.running') : t('admin.stopped')}</StatusBadge>
            : <StatusBadge variant="idle">—</StatusBadge>}
          {injStatus && (
            <StatusBadge variant={injStatus.reverse ? 'ok' : 'fail'}>
              {injStatus.reverse ? t('admin.adb_reverse_ok') : t('admin.adb_reverse_fail')}
            </StatusBadge>
          )}
        </div>
        <div className={stat.ctaRow}>
          <Button variant="primary" onClick={onStart} disabled={gameActing || !!injStatus?.running}>
            <Play size={16} />{t('admin.game_start_btn')}
          </Button>
          <Button variant="danger" onClick={onStop} disabled={gameActing || !injStatus?.running}>
            <Square size={16} />{t('admin.injector_stop')}
          </Button>
          {gameMsg && <span className={stat.ctaMsg(gameMsg.ok)}>{gameMsg.text}</span>}
        </div>
      </div>
      <img src={loadingUrl} alt="" className={stat.heroImg} />
    </motion.div>
  )
}
