import { useState } from 'react'
import { FolderOpen, RefreshCw, FileText, Save, ChevronLeft } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { usePolling } from '@/hooks/usePolling'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'

interface FileEntry {
  path: string
  bytes: number
}

type DirTab = 'responses' | 'responses_newbie' | 'schema'

const DIR_TABS: { key: DirTab; prefix: string; label: string }[] = [
  { key: 'responses',        prefix: 'responses/',        label: 'responses/' },
  { key: 'responses_newbie', prefix: 'responses_newbie/', label: 'responses_newbie/' },
  { key: 'schema',           prefix: 'schema/',           label: 'schema/' },
]

function fmtSize(bytes: number): string {
  if (bytes < 1024) return `${bytes}B`
  if (bytes < 1024 * 1024) return `${(bytes / 1024).toFixed(1)}KB`
  return `${(bytes / 1024 / 1024).toFixed(1)}MB`
}

export function FilesPage() {
  const { t } = useI18n()
  const [dir, setDir] = useState<DirTab>('responses')
  const prefix = DIR_TABS.find(d => d.key === dir)!.prefix

  const { data: files, loading, refresh } = usePolling<FileEntry[]>({
    url: `/web/api/files/list?prefix=${encodeURIComponent(prefix)}`,
    intervalMs: 15000,
  })

  const [editPath, setEditPath] = useState<string | null>(null)
  const [editName, setEditName] = useState('')
  const [editContent, setEditContent] = useState('')
  const [editLoading, setEditLoading] = useState(false)
  const [savingState, setSavingState] = useState<'idle' | 'saving' | 'ok' | 'err'>('idle')
  const [saveMsg, setSaveMsg] = useState('')

  async function openFile(f: FileEntry) {
    setEditPath(f.path)
    setEditName(f.path.split('/').pop() ?? f.path)
    setEditContent('')
    setSavingState('idle')
    setSaveMsg('')
    setEditLoading(true)
    try {
      const res = await fetch(`/web/api/files?path=${encodeURIComponent(f.path)}`)
      const text = await res.text()
      setEditContent(text)
    } finally {
      setEditLoading(false)
    }
  }

  async function saveFile() {
    if (!editPath) return
    setSavingState('saving')
    setSaveMsg('')
    try {
      const res = await fetch(`/web/api/files?path=${encodeURIComponent(editPath)}`, {
        method: 'POST',
        headers: { 'Content-Type': 'text/plain' },
        body: editContent,
      })
      const d = await res.json()
      if (d.ok) {
        setSavingState('ok')
        setSaveMsg(t('admin.file_edit'))
      } else {
        setSavingState('err')
        setSaveMsg(d.reason ?? t('admin.server_error'))
      }
    } catch {
      setSavingState('err')
      setSaveMsg(t('admin.server_error'))
    }
  }

  function switchDir(tab: DirTab) {
    setDir(tab)
    setEditPath(null)
    setSavingState('idle')
  }

  return (
    <div className="space-y-4">
      <div className="flex items-center justify-between gap-4">
        <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white truncate">
          {t('admin.files')}
        </h2>
        <button
          onClick={refresh}
          className="p-2 rounded-xl text-slate-400 hover:bg-white/40 dark:hover:bg-white/10 transition-all active:scale-95 shrink-0"
        >
          <RefreshCw className={cn('w-4 h-4', loading && 'animate-spin')} />
        </button>
      </div>

      <div className="flex gap-1.5 flex-wrap">
        {DIR_TABS.map(d => (
          <button
            key={d.key}
            onClick={() => switchDir(d.key)}
            className={cn(
              'px-3 py-1.5 rounded-xl text-xs font-bold font-mono transition-all active:scale-95',
              dir === d.key
                ? 'bg-linear-to-r from-yellow-400 to-amber-500 text-white shadow-lg shadow-amber-500/30'
                : 'text-slate-500 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/8'
            )}
          >
            {d.label}
          </button>
        ))}
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-5 gap-4 items-start">
        <GlassCard className="lg:col-span-2">
          <GlassCardHeader
            icon={<FolderOpen className="w-4 h-4 text-yellow-600" />}
            title={prefix}
            iconBg="bg-yellow-100 dark:bg-yellow-900/40"
          />
          <div className="mt-3 space-y-0.5">
            {loading && !files && (
              <p className="text-xs text-slate-400 py-4 text-center">{t('admin.loading')}</p>
            )}
            {files?.length === 0 && (
              <p className="text-xs text-slate-400 py-4 text-center">{t('admin.file_none')}</p>
            )}
            {files?.map((f, i) => (
              <button
                key={i}
                onClick={() => openFile(f)}
                className={cn(
                  'w-full flex items-center gap-2 px-3 py-2 rounded-xl text-xs transition-all active:scale-95 text-left',
                  editPath === f.path
                    ? 'bg-yellow-100 dark:bg-yellow-900/30 text-yellow-800 dark:text-yellow-300'
                    : 'text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/8'
                )}
              >
                <FileText className="w-3.5 h-3.5 shrink-0 text-yellow-500" />
                <span className="flex-1 min-w-0 font-mono truncate">{f.path.split('/').pop() ?? f.path}</span>
                <span className="shrink-0 text-[10px] font-mono text-slate-400">{fmtSize(f.bytes)}</span>
              </button>
            ))}
          </div>
        </GlassCard>

        <GlassCard className="lg:col-span-3 min-h-80">
          {!editPath ? (
            <div className="flex flex-col items-center justify-center py-16 gap-3">
              <FileText className="w-8 h-8 text-slate-300 dark:text-slate-600" />
              <p className="text-sm text-slate-400 dark:text-slate-500">{t('admin.files_select_dir')}</p>
            </div>
          ) : (
            <>
              <div className="flex items-center justify-between gap-3 mb-3 flex-wrap">
                <div className="flex items-center gap-2 min-w-0">
                  <button
                    onClick={() => setEditPath(null)}
                    className="p-1.5 rounded-lg text-slate-400 hover:bg-slate-100 dark:hover:bg-white/10 transition-all active:scale-95"
                  >
                    <ChevronLeft className="w-4 h-4" />
                  </button>
                  <span className="text-xs font-mono text-slate-700 dark:text-slate-300 truncate">{editName}</span>
                </div>
                <div className="flex items-center gap-2">
                  {saveMsg && (
                    <span className={cn(
                      'text-xs font-medium',
                      savingState === 'ok' ? 'text-emerald-500' : 'text-rose-500'
                    )}>
                      {saveMsg}
                    </span>
                  )}
                  <button
                    onClick={saveFile}
                    disabled={savingState === 'saving' || editLoading}
                    className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl text-xs font-bold text-white bg-linear-to-r from-yellow-400 to-amber-500 shadow-md shadow-amber-500/30 transition-all active:scale-95 disabled:opacity-50 disabled:cursor-not-allowed"
                  >
                    <Save className="w-3.5 h-3.5" />
                    {savingState === 'saving' ? t('admin.save_ing') : t('admin.file_edit')}
                  </button>
                </div>
              </div>
              {editLoading ? (
                <div className="flex items-center justify-center py-12">
                  <RefreshCw className="w-5 h-5 text-slate-400 animate-spin" />
                </div>
              ) : (
                <textarea
                  value={editContent}
                  onChange={e => { setEditContent(e.target.value); setSavingState('idle'); setSaveMsg('') }}
                  spellCheck={false}
                  className="w-full h-96 font-mono text-[11px] text-slate-700 dark:text-slate-300 bg-slate-50/80 dark:bg-white/5 border border-slate-200/60 dark:border-white/8 rounded-xl p-3 focus:outline-none focus:ring-1 focus:ring-yellow-400/50 resize-none"
                />
              )}
            </>
          )}
        </GlassCard>
      </div>
    </div>
  )
}
