import { type ReactNode } from 'react'
import { cn } from '@/lib/utils'
import { statusBadge } from '@/styles/tokens'

export type StatusVariant = 'ok' | 'warn' | 'fail' | 'info' | 'active' | 'idle'

interface StatusBadgeProps {
  variant: StatusVariant
  children: ReactNode
  className?: string
}

export function StatusBadge({ variant, children, className }: StatusBadgeProps) {
  return (
    <span className={cn(statusBadge.base, statusBadge.variant[variant], className)}>
      <span className={cn(statusBadge.dotBase, statusBadge.dot[variant])} />
      {children}
    </span>
  )
}
