import { type StepListProps } from '@/types/manual-props'

export function StepList({ steps }: StepListProps) {
  return (
    <ol className="space-y-2">
      {steps.map((step, i) => (
        <li key={i} className="flex gap-3">
          <span className="mt-0.5 w-5 h-5 rounded-full bg-violet-100 dark:bg-violet-900/40 text-violet-600 dark:text-violet-400 text-xs font-bold flex items-center justify-center shrink-0">
            {i + 1}
          </span>
          <span className="text-sm text-slate-600 dark:text-slate-300 leading-snug">{step}</span>
        </li>
      ))}
    </ol>
  )
}
