import { useEffect, useState } from 'react'
import { I18nProvider, LANGS, type Lang } from '@/lib/i18n'
import { ApkAccountSelectPage } from './ApkAccountSelectPage'

export function ApkAccountApp() {
  const [ready, setReady] = useState(false)

  useEffect(() => {
    fetch('/web/api/config')
      .then(r => r.json())
      .then((c: { lang?: string }) => {
        const lang = c.lang as Lang
        if (LANGS.includes(lang)) {
          localStorage.setItem('es-lang', lang)
        }
      })
      .catch(() => {})
      .finally(() => setReady(true))
  }, [])

  if (!ready) return null

  return (
    <I18nProvider>
      <ApkAccountSelectPage />
    </I18nProvider>
  )
}
