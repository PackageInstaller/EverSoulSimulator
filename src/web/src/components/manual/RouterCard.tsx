import { Router, ChevronRight } from 'lucide-react'
import { type RouterCardProps } from '@/types/manual-props'

export function RouterCard({ entry }: RouterCardProps) {
  return (
    <div className="rounded-xl border border-slate-200 dark:border-white/10 bg-slate-50 dark:bg-white/5 p-4 space-y-3">
      <div className="flex items-center gap-2">
        <Router className="w-4 h-4 text-orange-500 shrink-0" />
        <span className="text-sm font-semibold text-slate-800 dark:text-slate-100">{entry.name}</span>
        <span className="text-xs text-slate-400 dark:text-slate-500 font-mono">{entry.adminUrl}</span>
      </div>
      <ol className="space-y-1.5 pl-1">
        {entry.steps.map((step, i) => (
          <li key={i} className="flex gap-2 text-sm text-slate-600 dark:text-slate-300">
            <ChevronRight className="w-3.5 h-3.5 mt-0.5 text-orange-400 shrink-0" />
            <span className="leading-snug">{step}</span>
          </li>
        ))}
      </ol>
    </div>
  )
}
