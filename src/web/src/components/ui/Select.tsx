import { type SelectHTMLAttributes, forwardRef } from 'react'
import { cn } from '@/lib/utils'
import { field } from '@/styles/tokens'

interface SelectProps extends SelectHTMLAttributes<HTMLSelectElement> {
  error?: string
}

export const Select = forwardRef<HTMLSelectElement, SelectProps>(
  ({ error, className, children, ...props }, ref) => (
    <select
      ref={ref}
      className={cn(
        field.select,
        error && 'border-(--es-danger) focus:border-(--es-danger) focus:ring-(--es-danger)/40',
        className,
      )}
      {...props}
    >
      {children}
    </select>
  ),
)

Select.displayName = 'Select'
