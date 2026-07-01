import { useEffect, useState } from 'react'
import { I18nProvider } from '@/lib/i18n'
import { apiGetSetupStatus } from '@/api/setup'
import { SetupPage } from './SetupPage'

function SetupAppInner() {
  const [ready, setReady] = useState(false)

  useEffect(() => {
    apiGetSetupStatus().then(res => {
      if (res.complete) {
        window.location.replace('/web/')
      } else {
        setReady(true)
      }
    }).catch(() => setReady(true))
  }, [])

  if (!ready) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-(--es-bg)">
        <div className="w-8 h-8 rounded-full border-2 border-(--es-accent) border-t-transparent animate-spin" />
      </div>
    )
  }

  return <SetupPage />
}

export function SetupApp() {
  return (
    <I18nProvider>
      <SetupAppInner />
    </I18nProvider>
  )
}
