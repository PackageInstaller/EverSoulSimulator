import { cn } from '@/lib/utils'
import { type ReactNode } from 'react'

interface GlassCardProps {
  children: ReactNode
  className?: string
  size?: 'sm' | 'md' | 'lg'
}

const sizeMap = {
  sm: 'p-3',
  md: 'p-5',
  lg: 'p-6',
}

export function GlassCard({ children, className, size = 'md' }: GlassCardProps) {
  return (
    <div
      className={cn(
        'rounded-2xl border border-white/20 dark:border-white/10',
        'bg-white/70 dark:bg-white/5',
        'backdrop-blur-xl',
        'shadow-xl shadow-black/5 dark:shadow-black/30',
        sizeMap[size],
        className
      )}
    >
      {children}
    </div>
  )
}

interface GlassCardHeaderProps {
  icon?: ReactNode
  iconBg?: string
  title: string
  action?: ReactNode
  className?: string
}

export function GlassCardHeader({ icon, iconBg, title, action, className }: GlassCardHeaderProps) {
  return (
    <div className={cn('flex items-center justify-between', className)}>
      <div className="flex items-center gap-2.5 min-w-0">
        {icon && (
          <div className={cn('w-7 h-7 rounded-xl flex items-center justify-center shrink-0', iconBg ?? 'bg-slate-100 dark:bg-white/10')}>
            {icon}
          </div>
        )}
        <h2 className="text-sm font-semibold text-slate-700 dark:text-slate-200 tracking-wide uppercase truncate">
          {title}
        </h2>
      </div>
      {action && <div className="shrink-0 ml-2">{action}</div>}
    </div>
  )
}
