import { usePolling } from './usePolling'
import { type Account } from '@/types/api'

export function useAccounts() {
  return usePolling<Account[]>({
    url: '/web/api/accounts',
    intervalMs: 5000,
  })
}
