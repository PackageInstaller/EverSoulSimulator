import { type InputHTMLAttributes, forwardRef } from 'react'
import { cn } from '@/lib/utils'
import { field } from '@/styles/tokens'

export type InputSize = 'sm' | 'md'

interface InputProps extends InputHTMLAttributes<HTMLInputElement> {
  inputSize?: InputSize
  error?: string
}

const SIZE_CLS: Record<InputSize, string> = {
  sm: 'px-3 py-1.5 min-h-[34px] text-[12px]',
  md: '',
}

export const Input = forwardRef<HTMLInputElement, InputProps>(
  ({ inputSize = 'md', error, className, ...props }, ref) => (
    <input
      ref={ref}
      className={cn(
        field.input,
        error && 'border-(--es-danger) focus:border-(--es-danger) focus:ring-(--es-danger)/40',
        SIZE_CLS[inputSize],
        className,
      )}
      {...props}
    />
  ),
)

Input.displayName = 'Input'
