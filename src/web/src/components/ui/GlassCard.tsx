import { cn } from '@/lib/utils'
import { type ReactNode } from 'react'
import { surface, pad, typo } from '@/styles/tokens'

interface GlassCardProps {
  children: ReactNode
  className?: string
  size?: 'sm' | 'md' | 'lg'
  hover?: boolean
}

const sizeMap = {
  sm: pad.cardSm,
  md: pad.card,
  lg: pad.cardLg,
}

export function GlassCard({ children, className, size = 'md', hover = false }: GlassCardProps) {
  return (
    <div className={cn(surface.glass, hover && surface.hover, sizeMap[size], className)}>
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
    <div className={cn('flex items-center justify-between gap-3', className)}>
      <div className="flex items-center gap-2.5 min-w-0">
        {icon && (
          <div className={cn('w-9 h-9 rounded-xl flex items-center justify-center shrink-0', iconBg ?? 'bg-(--es-glass-fill-soft) border border-(--es-glass-border)')}>
            {icon}
          </div>
        )}
        <h2 className={cn(typo.cardTitle, 'truncate uppercase')}>{title}</h2>
      </div>
      {action && <div className="shrink-0 ml-2">{action}</div>}
    </div>
  )
}
