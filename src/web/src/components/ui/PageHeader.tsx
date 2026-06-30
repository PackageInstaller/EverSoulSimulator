import { type ReactNode } from 'react'
import { cn } from '@/lib/utils'
import { typo } from '@/styles/tokens'

interface PageHeaderProps {
  title: string
  subtitle?: string
  actions?: ReactNode
  className?: string
}

export function PageHeader({ title, subtitle, actions, className }: PageHeaderProps) {
  return (
    <div className={cn('flex flex-wrap items-start justify-between gap-4', className)}>
      <div className="flex flex-col gap-1 min-w-0">
        <h1 className={cn(typo.pageTitle, 'truncate')}>{title}</h1>
        {subtitle && <p className={cn(typo.pageSubtitle, 'truncate')}>{subtitle}</p>}
      </div>
      {actions && <div className="flex items-center gap-2 shrink-0">{actions}</div>}
    </div>
  )
}
