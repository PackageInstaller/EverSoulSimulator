import { useState } from 'react'
import { createPortal } from 'react-dom'
import { Layers, RefreshCw, CheckCircle2, AlertTriangle, Loader2 } from 'lucide-react'
import { cn } from '@/lib/utils'
import { useI18n } from '@/lib/i18n'
import { topbar } from '@/styles/tokens'
import { apiTblStatus } from '@/api/tbl'
import { type TblStatus } from '@/types/api'

// 최상단 외부데이터 위젯 — FlatBuffers TBL 외부데이터(.tbl 바이너리 / .fbs 스키마 / tbl_json 중간 표현) 완전성 체크.
// 인게임설정 적용 전제(tbl_json 중간 표현이 .tbl 바이너리로 빌드되어 게임이 받을 수 있는 상태)를 한눈에 확인한다.
function Stat({ label, value, danger }: { label: string; value: number; danger?: boolean }) {
  return (
    <div className="flex items-center justify-between rounded-lg bg-slate-50 dark:bg-white/5 px-2.5 py-1.5">
      <span className="text-slate-500 dark:text-slate-400">{label}</span>
      <span className={cn('font-mono font-semibold', danger ? 'text-amber-500' : 'text-slate-700 dark:text-slate-200')}>{value.toLocaleString()}</span>
    </div>
  )
}

export function ExternalDataWidget() {
  const { t } = useI18n()
  const [open, setOpen] = useState(false)
  const [status, setStatus] = useState<TblStatus | null>(null)
  const [loading, setLoading] = useState(false)

  async function check() {
    setLoading(true)
    try { setStatus(await apiTblStatus()) }
    finally { setLoading(false) }
  }

  const complete = status?.complete
  return (
    <>
      <button
        onClick={() => { setOpen(o => !o); if (!status) void check() }}
        className={cn(topbar.pill, 'hidden md:flex cursor-pointer', status == null ? 'text-slate-400' : complete ? 'text-emerald-600 dark:text-emerald-400' : 'text-amber-500')}
        title={t('extdata.title')}
      >
        <Layers size={14} />
        <span className={topbar.pillText}>{t('extdata.title')}</span>
      </button>

      {open && createPortal(
        <>
          <div className="fixed inset-0 z-999" onClick={() => setOpen(false)} />
          <div className="fixed top-14 right-3 z-1000 w-72 max-w-[92vw] rounded-2xl bg-white dark:bg-slate-900 shadow-2xl border border-slate-200 dark:border-white/10 p-3 flex flex-col gap-3">
            <div className="flex items-center justify-between">
              <span className="text-sm font-semibold text-slate-900 dark:text-white">{t('extdata.title')}</span>
              <button onClick={check} className="p-1.5 rounded-lg text-slate-400 hover:bg-slate-100 dark:hover:bg-white/10 transition-all" aria-label={t('extdata.check')}>
                <RefreshCw size={14} className={loading ? 'animate-spin' : undefined} />
              </button>
            </div>

            {status == null ? (
              <p className="text-sm text-slate-400 py-2 text-center">{loading ? t('extdata.checking') : t('extdata.check')}</p>
            ) : (
              <>
                <div className="flex items-center gap-2">
                  {complete
                    ? <CheckCircle2 size={18} className="text-emerald-500" />
                    : <AlertTriangle size={18} className="text-amber-500" />}
                  <span className={cn('text-sm font-semibold', complete ? 'text-emerald-600 dark:text-emerald-400' : 'text-amber-500')}>
                    {complete ? t('extdata.complete') : t('extdata.incomplete')}
                  </span>
                  {loading && <Loader2 size={14} className="animate-spin text-slate-400 ml-auto" />}
                </div>
                <div className="grid grid-cols-2 gap-1.5 text-xs">
                  <Stat label={t('extdata.tbl_built')} value={status.tbl_count} />
                  <Stat label="JSON" value={status.json_count} />
                  <Stat label="FBS" value={status.fbs_count} />
                  <Stat label={t('extdata.tbl_missing')} value={status.missing_count} danger={status.missing_count > 0} />
                </div>
                {status.missing && status.missing.length > 0 && (
                  <div className="text-[11px] text-amber-500 break-words max-h-20 overflow-y-auto">
                    {status.missing.slice(0, 12).join(', ')}{status.missing.length > 12 ? ` +${status.missing.length - 12}` : ''}
                  </div>
                )}
              </>
            )}
          </div>
        </>,
        document.body,
      )}
    </>
  )
}
