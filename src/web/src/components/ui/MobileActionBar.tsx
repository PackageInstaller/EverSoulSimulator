import { type ReactNode } from 'react'
import { cn } from '@/lib/utils'

interface MobileActionBarProps {
  className?: string
  children: ReactNode
}

export function MobileActionBar({ className, children }: MobileActionBarProps) {
  return (
    <div
      className={cn(
        'fixed bottom-0 inset-x-0 z-50',
        'flex items-center justify-around gap-2',
        'px-4 pb-[env(safe-area-inset-bottom)]',
        'min-h-[64px]',
        'bg-white/90 dark:bg-slate-900/90 backdrop-blur-xl',
        'border-t border-slate-200 dark:border-white/10',
        'shadow-[0_-4px_24px_-4px_rgba(0,0,0,0.08)] dark:shadow-[0_-4px_24px_-4px_rgba(0,0,0,0.4)]',
        className,
      )}
    >
      {children}
    </div>
  )
}
