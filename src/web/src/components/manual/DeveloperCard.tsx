import { ExternalLink, Mail, AlertCircle } from 'lucide-react'
import avatarUrl from '@/assets/GarnetRapture_Costume01_512.png'
import { GlassCard } from '@/components/ui/GlassCard'

// 제작자(Nekoi) 프로필 카드 — 매뉴얼과 초기 셋업이 공용으로 사용한다(중앙화).
// GitHub·메일·이슈 문의처(GarnetRapture/EverSoul) 포함.
export function DeveloperCard() {
  return (
    <GlassCard>
      <div className="flex items-center gap-4">
        <div className="relative shrink-0">
          <img
            src={avatarUrl}
            alt="Nekoi"
            className="w-20 h-20 rounded-2xl object-cover ring-2 ring-violet-400/40 shadow-xl shadow-violet-500/20"
          />
          <span className="absolute -bottom-1 -right-1 w-3 h-3 rounded-full bg-emerald-400 ring-2 ring-white dark:ring-slate-900" />
        </div>
        <div className="flex-1 min-w-0">
          <div className="flex items-baseline gap-2 flex-wrap">
            <span className="text-base font-bold text-slate-900 dark:text-white tracking-tight">Nekoi</span>
            <span className="text-[11px] text-slate-400 dark:text-slate-500 font-mono">Web UI Developer</span>
          </div>
          <div className="mt-2.5 flex flex-col gap-1.5">
            <a
              href="https://github.com/GarnetRapture"
              target="_blank"
              rel="noreferrer"
              className="flex items-center gap-2 text-xs text-slate-600 dark:text-slate-300 hover:text-violet-600 dark:hover:text-violet-400 transition-colors group"
            >
              <ExternalLink className="w-3.5 h-3.5 shrink-0 text-slate-400 group-hover:text-violet-500 transition-colors" />
              <span className="font-mono">github.com/GarnetRapture</span>
            </a>
            <a
              href="mailto:nekoi@everlib.pro"
              className="flex items-center gap-2 text-xs text-slate-600 dark:text-slate-300 hover:text-sky-600 dark:hover:text-sky-400 transition-colors group"
            >
              <Mail className="w-3.5 h-3.5 shrink-0 text-slate-400 group-hover:text-sky-500 transition-colors" />
              <span className="font-mono">nekoi@everlib.pro</span>
            </a>
            <a
              href="https://github.com/GarnetRapture/EverSoul/issues"
              target="_blank"
              rel="noreferrer"
              className="flex items-center gap-2 text-xs text-slate-600 dark:text-slate-300 hover:text-rose-600 dark:hover:text-rose-400 transition-colors group"
            >
              <AlertCircle className="w-3.5 h-3.5 shrink-0 text-slate-400 group-hover:text-rose-500 transition-colors" />
              <span className="font-mono">이슈 보고 / Bug Report</span>
            </a>
          </div>
        </div>
      </div>
    </GlassCard>
  )
}
