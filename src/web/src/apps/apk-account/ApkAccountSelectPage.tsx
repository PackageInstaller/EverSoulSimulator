import { useEffect, useState } from 'react'
import { CheckCircle, Loader2, AlertCircle, User, ShieldCheck } from 'lucide-react'
import { cn } from '@/lib/utils'
import { useI18n } from '@/lib/i18n'
import { surface, typo, textColor } from '@/styles/tokens'
import { apiListAccounts, apiSelectAccount } from '@/api/accounts'
import { type Account } from '@/types/api'

const AGREEMENT_OK_URL =
  'zinny://AgreementOk?E001=y&E002=y&E006=y&AN001=y&AN002=y&N002=y&N003=y&joinMemberShip=n&setAdAgreement=n'

function fixtureProfileLabel(account: Account): string {
  return account.id === 'responses_newbie' ? 'Guest fixture' : 'Full access fixture'
}

function fixtureProfileIcon(account: Account) {
  return account.id === 'responses_newbie' ? User : ShieldCheck
}

export function ApkAccountSelectPage() {
  const { t } = useI18n()
  const [accounts, setAccounts] = useState<Account[]>([])
  const [selectedId, setSelectedId] = useState<string | null>(null)
  const [loading, setLoading] = useState(true)
  const [selecting, setSelecting] = useState<string | null>(null)
  const [error, setError] = useState<string | null>(null)

  useEffect(() => {
    apiListAccounts()
      .then(list => {
        setAccounts(list)
        const active = list.find(account => account.active)
        if (active) setSelectedId(active.id)
      })
      .catch(() => setError(t('account.err.load')))
      .finally(() => setLoading(false))
  }, [t])

  async function handleSelect(id: string) {
    setSelecting(id)
    setError(null)
    try {
      const result = await apiSelectAccount(id)
      if (result.ok) {
        setSelectedId(id)
        setAccounts(prev => prev.map(account => ({ ...account, active: account.id === id })))
        window.location.href = AGREEMENT_OK_URL
      } else {
        setError(result.reason ?? t('account.err.select'))
      }
    } catch {
      setError(t('account.err.select_error'))
    } finally {
      setSelecting(null)
    }
  }

  if (loading) {
    return (
      <div className="min-h-dvh w-full bg-(--es-bg) flex items-center justify-center">
        <Loader2 className={cn('w-8 h-8 animate-spin', textColor.accent)} />
      </div>
    )
  }

  return (
    <div className="min-h-dvh w-full bg-(--es-bg) flex flex-col px-4 py-6 overflow-y-auto">
      <div className="mb-5">
        <h1 className={typo.pageTitle}>{t('account.title')}</h1>
        <p className={cn(typo.pageSubtitle, 'mt-1')}>{t('account.subtitle')}</p>
      </div>

      {error && (
        <div className={cn('flex items-start gap-2 text-sm mb-4', textColor.danger)}>
          <AlertCircle className="w-4 h-4 shrink-0 mt-0.5" />
          <span>{error}</span>
        </div>
      )}

      <div className="flex flex-col gap-2 mb-4">
        {accounts.map(account => {
          const Icon = fixtureProfileIcon(account)
          return (
            <button
              key={account.id}
              onClick={() => handleSelect(account.id)}
              disabled={selecting !== null}
              className={cn(
                'flex items-center gap-3 px-4 py-3 rounded-xl border-2 text-left transition-colors w-full',
                selectedId === account.id
                  ? 'bg-(--es-accent)/10 border-(--es-accent)/50'
                  : cn(surface.glassSoft, 'border-(--es-glass-border) active:border-(--es-accent)/30'),
              )}
            >
              <div className={cn(
                'w-9 h-9 rounded-full flex items-center justify-center shrink-0',
                'bg-(--es-glass-fill-strong)',
              )}>
                {selecting === account.id ? (
                  <Loader2 className={cn('w-4 h-4 animate-spin', textColor.accent)} />
                ) : selectedId === account.id ? (
                  <CheckCircle className={cn('w-4 h-4', textColor.accent)} />
                ) : (
                  <Icon className={cn('w-4 h-4', textColor.faint)} />
                )}
              </div>
              <div className="flex flex-col min-w-0">
                <span className={cn(typo.body, 'font-medium truncate', textColor.strong)}>{account.nickname}</span>
                <span className={cn('text-xs truncate', textColor.faint)}>
                  {fixtureProfileLabel(account)} · {account.hero_count}{t('account.suffix.heroes')}
                </span>
              </div>
            </button>
          )
        })}

        {accounts.length === 0 && (
          <div className={cn('text-center py-10', typo.hint)}>{t('account.empty')}</div>
        )}
      </div>

      {selectedId && (
        <div className={cn('mt-6 flex items-center gap-2 text-sm justify-center', textColor.success)}>
          <CheckCircle className="w-4 h-4" />
          <span>{t('account.selected')}</span>
        </div>
      )}
    </div>
  )
}
