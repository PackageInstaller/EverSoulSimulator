import { CheatPage } from './CheatPage'
import { GameDataPage } from './GameDataPage'
import { SchedulePage } from './SchedulePage'
import { TuningPage } from './TuningPage'

interface PlayerStatePageProps {
  activeTab: string
}

/** 플레이어 상태/콘텐츠 운영 — currency·heroes(치트), userinfo(게임데이터), schedule, tuning 탭. */
export function PlayerStatePage({ activeTab }: PlayerStatePageProps) {
  switch (activeTab) {
    case 'currency':
    case 'heroes':   return <CheatPage />
    case 'userinfo': return <GameDataPage />
    case 'schedule': return <SchedulePage />
    case 'tuning':   return <TuningPage />
    default:         return <CheatPage />
  }
}
