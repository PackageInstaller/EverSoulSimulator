import { type ButtonHTMLAttributes } from 'react'
import { cn } from '@/lib/utils'
import { button } from '@/styles/tokens'

export type ButtonVariant = 'primary' | 'secondary' | 'ghost' | 'danger'
export type ButtonSize = 'sm' | 'md' | 'lg'

interface ButtonProps extends ButtonHTMLAttributes<HTMLButtonElement> {
  variant?: ButtonVariant
  size?: ButtonSize
  loading?: boolean
}

const SIZE_CLS: Record<ButtonSize, string> = {
  sm: 'px-3 py-1.5 min-h-[34px] text-[12px]',
  md: '',
  lg: 'px-5 py-3 min-h-[46px] text-[14px]',
}

export function Button({
  variant = 'primary',
  size = 'md',
  loading = false,
  disabled,
  className,
  children,
  ...props
}: ButtonProps) {
  return (
    <button
      disabled={disabled || loading}
      className={cn(button[variant], SIZE_CLS[size], className)}
      {...props}
    >
      {loading && (
        <span className="w-3.5 h-3.5 rounded-full border-2 border-current border-t-transparent animate-spin shrink-0" />
      )}
      {children}
    </button>
  )
}
