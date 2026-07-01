import { usePolling } from './usePolling'
import { type ServerStatus } from '@/types/api'

export function useServerStatus() {
  return usePolling<ServerStatus>({
    url: '/web/api/status',
    intervalMs: 5000,
  })
}
