import { type ReactNode } from 'react'
import { cn } from '@/lib/utils'

interface ScrollablePageProps {
  className?: string
  innerClassName?: string
  children: ReactNode
}

export function ScrollablePage({ className, innerClassName, children }: ScrollablePageProps) {
  return (
    <div className={cn('flex-1 overflow-y-auto min-h-0', className)}>
      <div className={cn('px-6 py-5 max-w-screen-xl mx-auto', innerClassName)}>
        {children}
      </div>
    </div>
  )
}
