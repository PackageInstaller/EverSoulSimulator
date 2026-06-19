import { useState, useRef } from 'react'
import { Users, Plus, Trash2, Check, RefreshCw, Pencil, Upload, X } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { StatusBadge } from '@/components/ui/StatusBadge'
import { useAccounts } from '@/hooks/useAccounts'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { type Account } from '@/types/api'

interface AccountForm {
  nickname: string
  idp_code: string
}

const EMPTY_FORM: AccountForm = { nickname: '', idp_code: 'guest' }

const INPUT_CLS = 'w-full px-3 py-2 rounded-xl text-sm bg-slate-100/80 dark:bg-white/8 border border-slate-200 dark:border-white/10 text-slate-800 dark:text-slate-200 placeholder:text-slate-400 focus:outline-none focus:ring-2 focus:ring-sky-500/40'
const SELECT_CLS = 'w-full px-3 py-2 rounded-xl text-sm bg-slate-100/80 dark:bg-white/8 border border-slate-200 dark:border-white/10 text-slate-800 dark:text-slate-200 focus:outline-none focus:ring-2 focus:ring-sky-500/40'

export function AccountsPage() {
  const { t } = useI18n()
  const { data: accounts, loading, refresh } = useAccounts()

  const [showCreate, setShowCreate] = useState(false)
  const [createForm, setCreateForm] = useState<AccountForm>(EMPTY_FORM)
  const [creating, setCreating] = useState(false)

  const [editAcc, setEditAcc] = useState<Account | null>(null)
  const [editForm, setEditForm] = useState<AccountForm>(EMPTY_FORM)
  const [editing, setEditing] = useState(false)
  const [editMsg, setEditMsg] = useState<{ ok: boolean; msg: string } | null>(null)

  const [importAcc, setImportAcc] = useState<Account | null>(null)
  const [importing, setImporting] = useState(false)
  const [importMsg, setImportMsg] = useState<{ ok: boolean; msg: string } | null>(null)
  const importFileRef = useRef<HTMLInputElement>(null)

  const [feedback, setFeedback] = useState<{ ok: boolean; msg: string } | null>(null)

  async function createAccount() {
    if (!createForm.nickname.trim()) { setFeedback({ ok: false, msg: t('admin.acct_nick_required') }); return }
    setCreating(true); setFeedback(null)
    try {
      const r = await fetch('/web/api/accounts', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(createForm),
      })
      const d = await r.json()
      if (d.ok) {
        setFeedback({ ok: true, msg: t('admin.acct_created') })
        setCreateForm(EMPTY_FORM); setShowCreate(false); refresh()
      } else {
        setFeedback({ ok: false, msg: d.reason ?? t('admin.acct_create_fail') })
      }
    } finally { setCreating(false) }
  }

  async function selectAccount(id: string) {
    await fetch(`/web/api/accounts/${id}/select`, { method: 'POST' })
    refresh()
  }

  async function deleteAccount(acc: Account) {
    if (!window.confirm(t('admin.acct_delete_confirm'))) return
    await fetch(`/web/api/accounts/${acc.id}`, { method: 'DELETE' })
    refresh()
  }

  function openEdit(acc: Account) {
    setEditAcc(acc)
    setEditForm({ nickname: acc.nickname ?? '', idp_code: acc.idp_code ?? 'guest' })
    setEditMsg(null)
  }

  async function saveEdit() {
    if (!editAcc) return
    setEditing(true); setEditMsg(null)
    try {
      const r = await fetch(`/web/api/accounts/${editAcc.id}`, {
        method: 'PATCH', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(editForm),
      })
      const d = await r.json()
      if (d.ok) { setEditMsg({ ok: true, msg: t('admin.apply') }); refresh() }
      else setEditMsg({ ok: false, msg: d.reason ?? t('admin.x_server_error') })
    } finally { setEditing(false) }
  }

  async function handleImportFile(e: React.ChangeEvent<HTMLInputElement>) {
    const file = e.target.files?.[0]
    if (!file || !importAcc) return
    setImporting(true); setImportMsg(null)
    try {
      const text = await file.text()
      const r = await fetch(`/web/api/accounts/${importAcc.id}/import`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: text,
      })
      const d = await r.json()
      setImportMsg({ ok: !!d.ok, msg: d.ok ? t('admin.import_ok') : (d.reason ?? t('admin.x_server_error')) })
      if (d.ok) refresh()
    } finally { setImporting(false); e.target.value = '' }
  }

  return (
    <div className="space-y-4">
      <div className="flex items-center justify-between gap-4">
        <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white truncate">
          {t('admin.accounts')}
        </h2>
        <div className="flex items-center gap-2 shrink-0">
          <button onClick={refresh} className="p-2 rounded-xl text-slate-400 hover:bg-white/40 dark:hover:bg-white/10 transition-all active:scale-95">
            <RefreshCw className={cn('w-4 h-4', loading && 'animate-spin')} />
          </button>
          <button
            onClick={() => setShowCreate(v => !v)}
            className="flex items-center gap-2 px-3 py-2 rounded-xl text-sm font-semibold text-white bg-linear-to-r from-sky-500 to-blue-500 shadow-lg shadow-sky-500/30 transition-all active:scale-95"
          >
            <Plus className="w-4 h-4" />
            <span className="hidden sm:inline">{t('admin.acct_new')}</span>
          </button>
        </div>
      </div>

      {feedback && (
        <div className={cn(
          'px-4 py-3 rounded-2xl text-sm font-medium border',
          feedback.ok
            ? 'bg-emerald-50 dark:bg-emerald-900/20 text-emerald-600 dark:text-emerald-400 border-emerald-200 dark:border-emerald-700/50'
            : 'bg-red-50 dark:bg-red-900/20 text-red-600 dark:text-red-400 border-red-200 dark:border-red-700/50'
        )}>
          {feedback.msg}
        </div>
      )}

      {showCreate && (
        <GlassCard>
          <GlassCardHeader icon={<Plus className="w-4 h-4 text-sky-600" />} title={t('admin.acct_new')} iconBg="bg-sky-100 dark:bg-sky-900/40" />
          <div className="mt-4 grid grid-cols-1 sm:grid-cols-2 gap-3">
            <div className="flex flex-col gap-1.5">
              <label className="text-xs font-semibold text-slate-500 dark:text-slate-400 uppercase tracking-widest">{t('admin.acct_nick_label')}</label>
              <input type="text" value={createForm.nickname} onChange={e => setCreateForm(f => ({ ...f, nickname: e.target.value }))} placeholder={t('admin.acct_nick')} className={INPUT_CLS} />
            </div>
            <div className="flex flex-col gap-1.5">
              <label className="text-xs font-semibold text-slate-500 dark:text-slate-400 uppercase tracking-widest">{t('admin.acct_login')}</label>
              <select value={createForm.idp_code} onChange={e => setCreateForm(f => ({ ...f, idp_code: e.target.value }))} className={SELECT_CLS}>
                <option value="guest">{t('admin.acct_idp_guest')}</option>
                <option value="kakao">{t('admin.acct_idp_kakao')}</option>
                <option value="google">{t('admin.acct_idp_google')}</option>
              </select>
            </div>
          </div>
          <div className="mt-4 flex gap-2 justify-end">
            <button onClick={() => { setShowCreate(false); setCreateForm(EMPTY_FORM) }} className="px-4 py-2 rounded-xl text-sm font-medium text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/10 transition-all">
              {t('admin.cancel')}
            </button>
            <button onClick={createAccount} disabled={creating} className="px-4 py-2 rounded-xl text-sm font-semibold text-white bg-linear-to-r from-sky-500 to-blue-500 shadow-lg transition-all active:scale-95 disabled:opacity-50">
              {creating ? t('admin.acct_creating') : t('admin.acct_create')}
            </button>
          </div>
        </GlassCard>
      )}

      <div className="grid grid-cols-1 lg:grid-cols-5 gap-4 items-start">
        <div className="lg:col-span-3 space-y-2">
          {loading && !accounts && <p className="text-sm text-slate-400 text-center py-8">{t('admin.loading')}</p>}
          {accounts?.length === 0 && <p className="text-sm text-slate-400 text-center py-8">{t('admin.acct_empty')}</p>}
          {accounts?.map(acc => (
            <GlassCard key={acc.id} size="sm">
              <div className="flex items-center gap-3">
                <div className="w-9 h-9 rounded-xl bg-linear-to-br from-sky-400 to-blue-500 flex items-center justify-center shrink-0 shadow-md shadow-sky-500/20">
                  <Users className="w-4 h-4 text-white" />
                </div>
                <div className="flex-1 min-w-0">
                  <div className="flex items-center gap-2 flex-wrap">
                    <span className="text-sm font-semibold text-slate-900 dark:text-white truncate">{acc.nickname}</span>
                    {acc.active && <StatusBadge variant="active">{t('admin.acct_badge_current')}</StatusBadge>}
                    {acc.player_id && (
                      <span className="text-[10px] font-mono text-slate-400">{t('admin.acct_pid_label')} {acc.player_id}</span>
                    )}
                  </div>
                  <p className="text-xs text-slate-400 font-mono truncate">{acc.id}</p>
                </div>
                <div className="flex items-center gap-0.5 shrink-0">
                  <button onClick={() => { setImportAcc(acc); setImportMsg(null) }} className="p-2 rounded-xl text-slate-400 hover:bg-amber-50 dark:hover:bg-amber-900/20 hover:text-amber-500 transition-all active:scale-95" aria-label={t('admin.import_btn')}>
                    <Upload className="w-4 h-4" />
                  </button>
                  <button onClick={() => openEdit(acc)} className="p-2 rounded-xl text-slate-400 hover:bg-sky-50 dark:hover:bg-sky-900/20 hover:text-sky-500 transition-all active:scale-95" aria-label={t('admin.file_edit')}>
                    <Pencil className="w-4 h-4" />
                  </button>
                  {!acc.active && (
                    <button onClick={() => selectAccount(acc.id)} className="p-2 rounded-xl text-emerald-500 hover:bg-emerald-50 dark:hover:bg-emerald-900/20 transition-all active:scale-95" aria-label={t('admin.acct_select_btn')}>
                      <Check className="w-4 h-4" />
                    </button>
                  )}
                  <button onClick={() => deleteAccount(acc)} className="p-2 rounded-xl text-rose-400 hover:bg-rose-50 dark:hover:bg-rose-900/20 transition-all active:scale-95" aria-label={t('admin.acct_delete_btn')}>
                    <Trash2 className="w-4 h-4" />
                  </button>
                </div>
              </div>
            </GlassCard>
          ))}
        </div>

        <div className="lg:col-span-2 space-y-4">
          {editAcc && (
            <GlassCard>
              <div className="flex items-center justify-between mb-3">
                <GlassCardHeader icon={<Pencil className="w-4 h-4 text-sky-600" />} title={editAcc.nickname} iconBg="bg-sky-100 dark:bg-sky-900/40" />
                <button onClick={() => setEditAcc(null)} className="p-1.5 rounded-lg text-slate-400 hover:bg-slate-100 dark:hover:bg-white/10 transition-all">
                  <X className="w-4 h-4" />
                </button>
              </div>
              <div className="space-y-3">
                <div className="flex flex-col gap-1.5">
                  <label className="text-xs font-semibold text-slate-500 dark:text-slate-400 uppercase tracking-widest">{t('admin.acct_nick_label')}</label>
                  <input type="text" value={editForm.nickname} onChange={e => setEditForm(f => ({ ...f, nickname: e.target.value }))} className={INPUT_CLS} />
                </div>
                <div className="flex flex-col gap-1.5">
                  <label className="text-xs font-semibold text-slate-500 dark:text-slate-400 uppercase tracking-widest">{t('admin.acct_login')}</label>
                  <select value={editForm.idp_code} onChange={e => setEditForm(f => ({ ...f, idp_code: e.target.value }))} className={SELECT_CLS}>
                    <option value="guest">{t('admin.acct_idp_guest')}</option>
                    <option value="kakao">{t('admin.acct_idp_kakao')}</option>
                    <option value="google">{t('admin.acct_idp_google')}</option>
                  </select>
                </div>
              </div>
              {editMsg && (
                <p className={cn('mt-2 text-xs font-medium', editMsg.ok ? 'text-emerald-500' : 'text-rose-500')}>{editMsg.msg}</p>
              )}
              <button onClick={saveEdit} disabled={editing} className="mt-3 w-full py-2 rounded-xl text-sm font-bold text-white bg-linear-to-r from-sky-500 to-blue-500 shadow-lg shadow-sky-500/30 transition-all active:scale-95 disabled:opacity-50">
                {editing ? t('admin.save_ing') : t('admin.apply')}
              </button>
            </GlassCard>
          )}

          {importAcc && (
            <GlassCard>
              <div className="flex items-center justify-between mb-3">
                <GlassCardHeader icon={<Upload className="w-4 h-4 text-amber-600" />} title={t('admin.import_btn')} iconBg="bg-amber-100 dark:bg-amber-900/40" />
                <button onClick={() => setImportAcc(null)} className="p-1.5 rounded-lg text-slate-400 hover:bg-slate-100 dark:hover:bg-white/10 transition-all">
                  <X className="w-4 h-4" />
                </button>
              </div>
              <p className="text-xs text-slate-500 dark:text-slate-400 mb-3 font-mono truncate">{importAcc.id}</p>
              <label className={cn(
                'flex items-center justify-center gap-2 w-full py-3 rounded-xl text-sm font-semibold cursor-pointer border-2 border-dashed transition-all',
                importing
                  ? 'border-slate-200 dark:border-white/10 text-slate-400 pointer-events-none'
                  : 'border-amber-300 dark:border-amber-700/50 text-amber-600 dark:text-amber-400 hover:bg-amber-50 dark:hover:bg-amber-900/20'
              )}>
                <Upload className="w-4 h-4" />
                {importing ? t('admin.save_ing') : t('admin.import_btn')} (.json)
                <input ref={importFileRef} type="file" accept=".json" className="hidden" onChange={handleImportFile} />
              </label>
              {importMsg && (
                <p className={cn('mt-2 text-xs font-medium', importMsg.ok ? 'text-emerald-500' : 'text-rose-500')}>{importMsg.msg}</p>
              )}
            </GlassCard>
          )}
        </div>
      </div>
    </div>
  )
}
