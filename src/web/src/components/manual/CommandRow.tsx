import { type CommandRowProps } from '@/types/manual-props'

export function CommandRow({ item }: CommandRowProps) {
  return (
    <div className="rounded-xl border border-slate-200 dark:border-white/10 bg-slate-50 dark:bg-white/5 px-4 py-3 space-y-1">
      <code className="block text-xs font-mono text-emerald-700 dark:text-emerald-400 break-all">
        {item.cmd}
      </code>
      <p className="text-xs text-slate-500 dark:text-slate-400 leading-snug">{item.desc}</p>
    </div>
  )
}
