import { usePolling } from './usePolling'
import { type CheatStatus } from '@/types/api'

export function useCheatStatus() {
  return usePolling<CheatStatus>({
    url: '/web/api/cheat/status',
    intervalMs: 3000,
  })
}
