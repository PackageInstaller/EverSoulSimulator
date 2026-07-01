import { User, Layers, Terminal } from 'lucide-react'
import { cn } from '@/lib/utils'

interface AdminContextHeaderProps {
  accountName?: string
  domain?: string
  endpoint?: string
  className?: string
}

export function AdminContextHeader({ accountName, domain, endpoint, className }: AdminContextHeaderProps) {
  if (!accountName && !domain && !endpoint) return null

  return (
    <div
      className={cn(
        'flex items-center gap-4 px-4 py-2',
        'text-xs font-mono',
        'bg-slate-50/80 dark:bg-slate-950/60 backdrop-blur-sm',
        'border-b border-slate-200 dark:border-white/6',
        'overflow-x-auto scrollbar-none',
        className,
      )}
    >
      {accountName && (
        <span className="flex items-center gap-1.5 text-slate-500 dark:text-slate-400 whitespace-nowrap">
          <User className="w-3 h-3 shrink-0 text-violet-500" />
          <span className="text-slate-700 dark:text-slate-200 font-semibold">{accountName}</span>
        </span>
      )}
      {domain && (
        <span className="flex items-center gap-1.5 text-slate-500 dark:text-slate-400 whitespace-nowrap">
          <Layers className="w-3 h-3 shrink-0 text-sky-500" />
          <span className="text-slate-700 dark:text-slate-200">{domain}</span>
        </span>
      )}
      {endpoint && (
        <span className="flex items-center gap-1.5 text-slate-500 dark:text-slate-400 whitespace-nowrap">
          <Terminal className="w-3 h-3 shrink-0 text-amber-500" />
          <code className="text-slate-600 dark:text-slate-300">{endpoint}</code>
        </span>
      )}
    </div>
  )
}
