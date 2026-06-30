import { useCallback, useEffect, useState } from 'react'
import { type CheatStatus } from '@/types/api'
import { apiGetCheatStatus } from '@/api/cheat'

export function useCheatStatus() {
  const [data, setData] = useState<CheatStatus | null>(null)
  const [loading, setLoading] = useState(true)

  const refresh = useCallback(async () => {
    setLoading(true)
    try {
      setData(await apiGetCheatStatus())
    } finally {
      setLoading(false)
    }
  }, [])

  useEffect(() => {
    void refresh()
    const timer = window.setInterval(() => void refresh(), 3000)
    return () => window.clearInterval(timer)
  }, [refresh])

  return { data, loading, refresh }
}
