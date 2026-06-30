import { type ReactNode } from 'react'
import { cn } from '@/lib/utils'
import { typo, textColor } from '@/styles/tokens'

interface FormFieldProps {
  label: string
  error?: string
  required?: boolean
  hint?: string
  className?: string
  children: ReactNode
}

export function FormField({ label, error, required, hint, className, children }: FormFieldProps) {
  return (
    <div className={cn('flex flex-col gap-1.5', className)}>
      <label className={typo.label}>
        {label}
        {required && <span className={cn('ml-1', textColor.danger)}>*</span>}
      </label>
      {children}
      {hint && !error && <p className={typo.hint}>{hint}</p>}
      {error && <p className={cn('text-[12px] font-semibold', textColor.danger)}>{error}</p>}
    </div>
  )
}
