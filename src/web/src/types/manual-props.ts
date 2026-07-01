import { type ReactNode } from 'react'
import { type ManualRouterEntry, type ManualCommandItem } from '@/types/manual'

export interface SectionCardProps {
  icon: ReactNode
  iconBg: string
  title: string
  children: ReactNode
}

export interface StepListProps {
  steps: string[]
}

export interface RouterCardProps {
  entry: ManualRouterEntry
}

export interface CommandRowProps {
  item: ManualCommandItem
}
