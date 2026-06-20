import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { type SectionCardProps } from '@/types/manual-props'

export function SectionCard({ icon, iconBg, title, children }: SectionCardProps) {
  return (
    <GlassCard>
      <GlassCardHeader icon={icon} iconBg={iconBg} title={title} />
      <div className="mt-4 space-y-2">{children}</div>
    </GlassCard>
  )
}
