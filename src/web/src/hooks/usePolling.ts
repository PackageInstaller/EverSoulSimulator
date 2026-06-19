import { useState, useEffect, useCallback, useRef } from 'react'

interface UsePollingOptions<T> {
  url: string
  intervalMs: number
  enabled?: boolean
  transform?: (raw: unknown) => T
}

interface UsePollingResult<T> {
  data: T | null
  loading: boolean
  error: string | null
  refresh: () => void
}

export function usePolling<T>({
  url,
  intervalMs,
  enabled = true,
  transform,
}: UsePollingOptions<T>): UsePollingResult<T> {
  const [data, setData] = useState<T | null>(null)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const abortRef = useRef<AbortController | null>(null)

  const fetch_ = useCallback(async () => {
    abortRef.current?.abort()
    const ctrl = new AbortController()
    abortRef.current = ctrl

    try {
      const res = await fetch(url, { signal: ctrl.signal })
      if (!res.ok) throw new Error(`HTTP ${res.status}`)
      const raw = await res.json()
      setData(transform ? transform(raw) : (raw as T))
      setError(null)
    } catch (e) {
      if ((e as Error).name === 'AbortError') return
      setError((e as Error).message)
    } finally {
      setLoading(false)
    }
  }, [url, transform])

  useEffect(() => {
    if (!enabled) return
    fetch_()
    const iv = setInterval(fetch_, intervalMs)
    return () => {
      clearInterval(iv)
      abortRef.current?.abort()
    }
  }, [fetch_, intervalMs, enabled])

  return { data, loading, error, refresh: fetch_ }
}
