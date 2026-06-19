import { type ReactNode } from 'react'
import { cn } from '@/lib/utils'

export type StatusVariant = 'ok' | 'warn' | 'fail' | 'info' | 'active' | 'idle'

interface StatusBadgeProps {
  variant: StatusVariant
  children: ReactNode
  className?: string
}

const variantStyles: Record<StatusVariant, string> = {
  ok:     'bg-emerald-100 text-emerald-700 dark:bg-emerald-900/40 dark:text-emerald-300 border-emerald-200 dark:border-emerald-700/50',
  warn:   'bg-amber-100 text-amber-700 dark:bg-amber-900/40 dark:text-amber-300 border-amber-200 dark:border-amber-700/50',
  fail:   'bg-red-100 text-red-700 dark:bg-red-900/40 dark:text-red-300 border-red-200 dark:border-red-700/50',
  info:   'bg-blue-100 text-blue-700 dark:bg-blue-900/40 dark:text-blue-300 border-blue-200 dark:border-blue-700/50',
  active: 'bg-violet-100 text-violet-700 dark:bg-violet-900/40 dark:text-violet-300 border-violet-200 dark:border-violet-700/50',
  idle:   'bg-slate-100 text-slate-500 dark:bg-slate-800 dark:text-slate-400 border-slate-200 dark:border-slate-700',
}

const dotStyles: Record<StatusVariant, string> = {
  ok:     'bg-emerald-500',
  warn:   'bg-amber-500',
  fail:   'bg-red-500',
  info:   'bg-blue-500',
  active: 'bg-violet-500',
  idle:   'bg-slate-400',
}

export function StatusBadge({ variant, children, className }: StatusBadgeProps) {
  return (
    <span
      className={cn(
        'inline-flex items-center gap-1 px-2 py-0.5 rounded-full text-xs font-medium border',
        variantStyles[variant],
        className
      )}
    >
      <span className={cn('w-1.5 h-1.5 rounded-full shrink-0', dotStyles[variant])} />
      {children}
    </span>
  )
}
