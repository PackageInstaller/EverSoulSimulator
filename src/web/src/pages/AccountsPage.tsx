import { useState } from 'react'
import { Check, Pencil, RefreshCw, ShieldCheck, UserRound, X } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { StatusBadge } from '@/components/ui/StatusBadge'
import { Input } from '@/components/ui/Input'
import { Button } from '@/components/ui/Button'
import { useAccounts } from '@/hooks/useAccounts'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { fixtureProfileKind, fixtureProfileLabel } from '@/lib/accountProfiles'
import { type Account, type AccountEditRequest } from '@/types/api'
import { apiEditAccount, apiSelectAccount } from '@/api/accounts'
import { AccountDataEditor } from '@/components/account-data/AccountDataEditor'

type FixtureProfileForm = AccountEditRequest

function profileIcon(account: Account) {
  return fixtureProfileKind(account.id) === 'guest' ? UserRound : ShieldCheck
}

export function AccountsPage({ activeTab }: { activeTab: string }) {
  const { t } = useI18n()
  const { data: accounts, loading, refresh } = useAccounts()
  const [editing, setEditing] = useState<Account | null>(null)
  const [form, setForm] = useState<FixtureProfileForm>({})
  const [saving, setSaving] = useState(false)
  const [message, setMessage] = useState<{ ok: boolean; text: string } | null>(null)

  function openEditor(account: Account) {
    setEditing(account)
    setForm({ nickname: account.nickname, player_id: account.player_id })
    setMessage(null)
  }

  async function selectProfile(id: string) {
    setMessage(null)
    const result = await apiSelectAccount(id)
    setMessage({
      ok: result.ok,
      text: result.ok ? t('admin.acct_selected') : (result.reason ?? t('admin.x_server_error')),
    })
    await refresh()
  }

  async function saveProfile() {
    if (!editing) return
    setSaving(true)
    setMessage(null)
    try {
      const result = await apiEditAccount(editing.id, form)
      setMessage({
        ok: result.ok,
        text: result.ok ? t('admin.save_ok') : (result.reason ?? t('admin.x_server_error')),
      })
      if (result.ok) {
        setEditing(null)
        await refresh()
      }
    } finally {
      setSaving(false)
    }
  }

  if (activeTab === 'gamedata') {
    return <AccountDataEditor />
  }

  const profiles = accounts ?? []

  return (
    <div className="space-y-4">
      <div className="flex items-center justify-between gap-4">
        <div className="min-w-0">
          <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white truncate">
            {t('admin.accounts')}
          </h2>
          <p className="text-sm text-slate-500 dark:text-slate-400">
            Full access fixture / Guest fixture
          </p>
        </div>
        <button onClick={refresh} className="p-2 rounded-xl text-slate-400 hover:bg-white/40 dark:hover:bg-white/10 transition-all active:scale-95" aria-label={t('ui.refresh')}>
          <RefreshCw className={cn('w-4 h-4', loading && 'animate-spin')} />
        </button>
      </div>

      {message && (
        <div className={cn(
          'px-4 py-3 rounded-2xl text-sm font-medium border',
          message.ok
            ? 'bg-emerald-50 dark:bg-emerald-900/20 text-emerald-600 dark:text-emerald-400 border-emerald-200 dark:border-emerald-700/50'
            : 'bg-red-50 dark:bg-red-900/20 text-red-600 dark:text-red-400 border-red-200 dark:border-red-700/50',
        )}>
          {message.text}
        </div>
      )}

      <div className="grid grid-cols-1 lg:grid-cols-5 gap-4 items-start">
        <div className="lg:col-span-3 space-y-2">
          {loading && !accounts && <p className="text-sm text-slate-400 text-center py-8">{t('admin.loading')}</p>}
          {profiles.map(account => {
            const Icon = profileIcon(account)
            return (
              <GlassCard key={account.id} size="sm">
                <div className="flex items-center gap-3">
                  <div className="w-9 h-9 rounded-xl bg-linear-to-br from-sky-400 to-blue-500 flex items-center justify-center shrink-0 shadow-md shadow-sky-500/20">
                    <Icon className="w-4 h-4 text-white" />
                  </div>
                  <div className="flex-1 min-w-0">
                    <div className="flex items-center gap-2 flex-wrap">
                      <span className="text-sm font-semibold text-slate-900 dark:text-white truncate">{account.nickname}</span>
                      {account.active && <StatusBadge variant="active">{t('admin.acct_badge_current')}</StatusBadge>}
                      <span className="text-[10px] font-semibold px-1.5 py-0.5 rounded-md bg-sky-100 text-sky-600 dark:bg-sky-900/30 dark:text-sky-400">
                        {fixtureProfileLabel(account)}
                      </span>
                    </div>
                    <p className="text-xs text-slate-400 font-mono truncate">{account.id}</p>
                    <p className="text-xs text-slate-400 font-mono truncate">{account.player_id}</p>
                  </div>
                  <div className="flex items-center gap-0.5 shrink-0">
                    <button onClick={() => openEditor(account)} className="p-2 rounded-xl text-slate-400 hover:bg-sky-50 dark:hover:bg-sky-900/20 hover:text-sky-500 transition-all active:scale-95" aria-label={t('admin.file_edit')}>
                      <Pencil className="w-4 h-4" />
                    </button>
                    {!account.active && (
                      <button onClick={() => selectProfile(account.id)} className="p-2 rounded-xl text-emerald-500 hover:bg-emerald-50 dark:hover:bg-emerald-900/20 transition-all active:scale-95" aria-label={t('admin.acct_select_btn')}>
                        <Check className="w-4 h-4" />
                      </button>
                    )}
                  </div>
                </div>
              </GlassCard>
            )
          })}
        </div>

        <div className="lg:col-span-2">
          {editing ? (
            <GlassCard>
              <div className="flex items-center justify-between mb-3">
                <GlassCardHeader icon={<Pencil className="w-4 h-4 text-sky-600" />} title={fixtureProfileLabel(editing)} iconBg="bg-sky-100 dark:bg-sky-900/40" />
                <button onClick={() => setEditing(null)} className="p-1.5 rounded-lg text-slate-400 hover:bg-slate-100 dark:hover:bg-white/10 transition-all" aria-label={t('admin.cancel')}>
                  <X className="w-4 h-4" />
                </button>
              </div>
              <div className="space-y-3">
                <label className="flex flex-col gap-1.5">
                  <span className="text-xs font-semibold text-slate-500 dark:text-slate-400 uppercase tracking-widest">{t('admin.acct_nick_label')}</span>
                  <Input value={form.nickname ?? ''} onChange={event => setForm(prev => ({ ...prev, nickname: event.target.value }))} />
                </label>
                <label className="flex flex-col gap-1.5">
                  <span className="text-xs font-semibold text-slate-500 dark:text-slate-400 uppercase tracking-widest">{t('admin.acct_pid_label')}</span>
                  <Input value={form.player_id ?? ''} onChange={event => setForm(prev => ({ ...prev, player_id: event.target.value }))} />
                </label>
                <Button variant="primary" onClick={saveProfile} loading={saving}>
                  {t('admin.save')}
                </Button>
              </div>
            </GlassCard>
          ) : (
            <p className="text-sm text-slate-400 text-center py-8">{t('admin.acct_edit_hint')}</p>
          )}
        </div>
      </div>
    </div>
  )
}
