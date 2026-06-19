import { usePolling } from './usePolling'
import { type DbTable } from '@/types/api'

export function useDbTables() {
  return usePolling<DbTable[]>({
    url: '/web/api/db/tables',
    intervalMs: 5000,
  })
}
