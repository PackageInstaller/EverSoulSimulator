import { useRef } from 'react'
import { Play, Terminal, Power, Square } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { Button } from '@/components/ui/Button'
import { Input } from '@/components/ui/Input'
import { StatusBadge } from '@/components/ui/StatusBadge'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { layout, apkPanel as ap } from '@/styles/tokens'

interface ApkGameTabProps {
  gameRunning: boolean
  reverseReady: boolean
  gameBusy: boolean
  onStart: () => void
  onStop: () => void
  adbCmd: string
  adbRunning: boolean
  adbOutput: string[]
  onCmdChange: (value: string) => void
  onRunCmd: () => void
  onClearOutput: () => void
}

// apk-connect 'game' 탭 — 게임 시작(am start)/중지(force-stop) + adb 명령 콘솔.
export function ApkGameTab({
  gameRunning, reverseReady, gameBusy, onStart, onStop,
  adbCmd, adbRunning, adbOutput, onCmdChange, onRunCmd, onClearOutput,
}: ApkGameTabProps) {
  const { t } = useI18n()
  const outputRef = useRef<HTMLDivElement>(null)
  return (
    <>
      <GlassCard hover>
        <GlassCardHeader icon={<Power size={18} />} title={t('admin.apk_game')} />
        <div className={cn(layout.sectionGap, layout.stackLg)}>
          <div className={ap.badgeGrid}>
            <StatusBadge variant={gameRunning ? 'ok' : 'idle'}>
              {gameRunning ? t('admin.apk_game_running') : t('admin.apk_game_stopped')}
            </StatusBadge>
            <StatusBadge variant={reverseReady ? 'ok' : 'fail'}>
              {reverseReady ? t('admin.adb_reverse_ok') : t('admin.adb_reverse_fail')}
            </StatusBadge>
          </div>
          <div className={ap.btnRow}>
            <Button variant="primary" onClick={onStart} disabled={gameBusy}>
              <Power size={14} />{t('admin.apk_game_start_btn')}
            </Button>
            <Button variant="secondary" onClick={onStop} disabled={gameBusy}>
              <Square size={14} />{t('admin.apk_game_stop_btn')}
            </Button>
          </div>
        </div>
      </GlassCard>

      <GlassCard>
        <GlassCardHeader icon={<Terminal size={18} />} title={t('admin.injector_adb_cmd')} />
        <div className={cn(layout.sectionGap, ap.inputRow)}>
          <Input
            value={adbCmd}
            onChange={e => onCmdChange(e.target.value)}
            onKeyDown={e => e.key === 'Enter' && onRunCmd()}
            placeholder="shell getprop ro.product.model"
          />
          <Button variant="secondary" onClick={onRunCmd} disabled={adbRunning || !adbCmd.trim()}>
            <Play size={14} />
          </Button>
          {adbOutput.length > 0 && (
            <Button variant="ghost" onClick={onClearOutput}>{t('admin.log_clear')}</Button>
          )}
        </div>
        {adbOutput.length > 0 && (
          <div ref={outputRef} className={ap.termWrap}>
            {adbOutput.map((o, i) => <pre key={i} className={ap.termLine}>{o}</pre>)}
          </div>
        )}
      </GlassCard>
    </>
  )
}
