import { useState } from 'react'
import { Database, RefreshCw, Search, ChevronUp, ChevronDown, ChevronLeft, ChevronRight } from 'lucide-react'
import { GlassCard, GlassCardHeader } from '@/components/ui/GlassCard'
import { useDbTables } from '@/hooks/useDbTables'
import { useI18n } from '@/lib/i18n'
import { cn } from '@/lib/utils'
import { type DbSchema } from '@/types/api'

const PAGE_SIZE = 100

interface TableRow extends Record<string, unknown> {}
interface TableState {
  columns: string[]
  allRows: TableRow[]
}

export function DbPage() {
  const { t } = useI18n()
  const { data: tables, loading, refresh: refreshTables } = useDbTables()
  const [selected, setSelected] = useState<string | null>(null)
  const [tableState, setTableState] = useState<TableState | null>(null)
  const [tableLoading, setTableLoading] = useState(false)
  const [search, setSearch] = useState('')
  const [tab, setTab] = useState<'data' | 'schema'>('data')
  const [sortCol, setSortCol] = useState<string | null>(null)
  const [sortAsc, setSortAsc] = useState(true)
  const [page, setPage] = useState(0)
  const [schema, setSchema] = useState<DbSchema | null>(null)
  const [schemaLoading, setSchemaLoading] = useState(false)

  async function loadTable(name: string) {
    setSelected(name)
    setTableState(null)
    setSchema(null)
    setSearch('')
    setSortCol(null)
    setSortAsc(true)
    setPage(0)
    setTab('data')
    setTableLoading(true)
    try {
      const res = await fetch(`/web/api/db/table/${encodeURIComponent(name)}?limit=5000`)
      const d = await res.json()
      setTableState({ columns: d.columns ?? [], allRows: d.rows ?? [] })
    } finally {
      setTableLoading(false)
    }
  }

  async function reloadCurrentTable() {
    if (!selected) return
    try {
      const res = await fetch(`/web/api/db/table/${encodeURIComponent(selected)}?limit=5000`)
      const d = await res.json()
      setTableState(prev => prev ? { ...prev, allRows: d.rows ?? [] } : null)
    } catch {}
  }

  async function loadSchema(name: string) {
    setSchema(null)
    setSchemaLoading(true)
    try {
      const res = await fetch(`/web/api/db/schema/${encodeURIComponent(name)}`)
      const d = await res.json()
      setSchema(d)
    } finally {
      setSchemaLoading(false)
    }
  }

  function switchTab(tb: 'data' | 'schema') {
    setTab(tb)
    if (tb === 'schema' && selected && !schema) loadSchema(selected)
  }

  function handleSort(col: string) {
    if (sortCol === col) setSortAsc(a => !a)
    else { setSortCol(col); setSortAsc(true) }
    setPage(0)
  }

  const filtered = tableState
    ? (search
        ? tableState.allRows.filter(row =>
            Object.values(row).some(v => v !== null && v !== undefined && String(v).toLowerCase().includes(search.toLowerCase()))
          )
        : tableState.allRows)
    : []

  const sorted = sortCol
    ? [...filtered].sort((a, b) => {
        const va = a[sortCol], vb = b[sortCol]
        if (va === null || va === undefined) return 1
        if (vb === null || vb === undefined) return -1
        return (va < vb ? -1 : va > vb ? 1 : 0) * (sortAsc ? 1 : -1)
      })
    : filtered

  const totalPages = Math.max(1, Math.ceil(sorted.length / PAGE_SIZE))
  const pageRows = sorted.slice(page * PAGE_SIZE, (page + 1) * PAGE_SIZE)
  const rangeStart = sorted.length === 0 ? 0 : page * PAGE_SIZE + 1
  const rangeEnd = Math.min((page + 1) * PAGE_SIZE, sorted.length)

  return (
    <div className="space-y-4">
      <div className="flex items-center justify-between gap-4">
        <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white truncate">
          {t('admin.db')}
        </h2>
        <button
          onClick={() => { refreshTables(); reloadCurrentTable() }}
          className="p-2 rounded-xl text-slate-400 hover:bg-white/40 dark:hover:bg-white/10 transition-all active:scale-95 shrink-0"
        >
          <RefreshCw className={cn('w-4 h-4', loading && 'animate-spin')} />
        </button>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-4 gap-4 items-start">
        <GlassCard className="lg:col-span-1">
          <GlassCardHeader
            icon={<Database className="w-4 h-4 text-emerald-600" />}
            title={t('admin.db_tables')}
            iconBg="bg-emerald-100 dark:bg-emerald-900/40"
          />
          <div className="mt-3 space-y-0.5">
            {loading && !tables && (
              <p className="text-xs text-slate-400 py-4 text-center">{t('admin.loading')}</p>
            )}
            {tables?.map(tbl => (
              <button
                key={tbl.name}
                onClick={() => loadTable(tbl.name)}
                className={cn(
                  'w-full flex items-center justify-between px-3 py-2 rounded-xl text-xs transition-all active:scale-95',
                  selected === tbl.name
                    ? 'bg-linear-to-r from-emerald-500 to-teal-500 text-white shadow-lg shadow-emerald-500/30'
                    : 'text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/8'
                )}
              >
                <span className="truncate font-medium">{tbl.name}</span>
                <span className={cn(
                  'text-[10px] font-mono shrink-0 ml-2 px-1.5 py-0.5 rounded-md',
                  selected === tbl.name
                    ? 'bg-white/20 text-white'
                    : 'bg-slate-100 dark:bg-white/8 text-slate-400'
                )}>
                  {tbl.rows}
                </span>
              </button>
            ))}
          </div>
        </GlassCard>

        <GlassCard className="lg:col-span-3 min-h-100">
          {!selected ? (
            <div className="flex flex-col items-center justify-center py-20 gap-3">
              <Database className="w-10 h-10 text-slate-300 dark:text-slate-600" />
              <p className="text-sm text-slate-400 dark:text-slate-500">{t('admin.db_select_table')}</p>
            </div>
          ) : (
            <>
              <div className="flex flex-wrap items-center justify-between gap-3">
                <div className="flex gap-1.5">
                  {(['data', 'schema'] as const).map(tb => (
                    <button
                      key={tb}
                      onClick={() => switchTab(tb)}
                      className={cn(
                        'px-3 py-1.5 rounded-lg text-xs font-bold uppercase tracking-wider transition-all',
                        tab === tb
                          ? 'bg-emerald-100 dark:bg-emerald-900/40 text-emerald-700 dark:text-emerald-400'
                          : 'text-slate-500 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/8'
                      )}
                    >
                      {tb === 'data' ? t('admin.db_tab_data') : t('admin.db_tab_schema')}
                    </button>
                  ))}
                </div>

                {tab === 'data' && (
                  <div className="flex items-center gap-2">
                    <div className="flex items-center gap-2 px-3 py-1.5 rounded-xl bg-slate-100/80 dark:bg-white/8 border border-slate-200 dark:border-white/10">
                      <Search className="w-3.5 h-3.5 text-slate-400 shrink-0" />
                      <input
                        type="text"
                        value={search}
                        onChange={e => { setSearch(e.target.value); setPage(0) }}
                        placeholder={t('admin.db_search_ph')}
                        className="w-36 sm:w-48 text-xs bg-transparent text-slate-800 dark:text-slate-200 placeholder:text-slate-400 focus:outline-none"
                      />
                    </div>
                    <span className="text-[10px] font-mono text-slate-400 dark:text-slate-500 shrink-0">
                      {search && sorted.length !== tableState?.allRows.length
                        ? `${sorted.length} / ${tableState?.allRows.length}`
                        : `${tableState?.allRows.length ?? 0}`}
                    </span>
                  </div>
                )}
              </div>

              {tableLoading && (
                <div className="flex items-center justify-center py-16">
                  <RefreshCw className="w-5 h-5 text-slate-400 animate-spin" />
                </div>
              )}

              {!tableLoading && tab === 'data' && tableState && (
                <>
                  <div className="mt-3 overflow-auto rounded-xl border border-slate-200/60 dark:border-white/8 max-h-120">
                    {pageRows.length === 0 ? (
                      <div className="flex items-center justify-center py-12 text-sm text-slate-400 dark:text-slate-500">
                        {t('admin.db_no_rows')}
                      </div>
                    ) : (
                      <table className="w-full text-xs">
                        <thead className="sticky top-0 z-10">
                          <tr className="bg-slate-50/95 dark:bg-slate-800/95 backdrop-blur-sm">
                            {tableState.columns.map(col => (
                              <th
                                key={col}
                                onClick={() => handleSort(col)}
                                className="px-3 py-2.5 text-left font-semibold text-slate-500 dark:text-slate-400 uppercase tracking-wider whitespace-nowrap cursor-pointer select-none hover:text-slate-700 dark:hover:text-slate-200 transition-colors"
                              >
                                <div className="flex items-center gap-1">
                                  <span>{col}</span>
                                  {sortCol === col ? (
                                    sortAsc
                                      ? <ChevronUp className="w-3 h-3 text-emerald-500" />
                                      : <ChevronDown className="w-3 h-3 text-emerald-500" />
                                  ) : (
                                    <ChevronUp className="w-3 h-3 text-slate-300 dark:text-slate-600" />
                                  )}
                                </div>
                              </th>
                            ))}
                          </tr>
                        </thead>
                        <tbody>
                          {pageRows.map((row, i) => (
                            <tr
                              key={i}
                              className="border-t border-slate-100 dark:border-white/5 hover:bg-slate-50/80 dark:hover:bg-white/4 transition-colors"
                            >
                              {tableState.columns.map(col => {
                                const v = row[col]
                                const isNull = v === null || v === undefined
                                return (
                                  <td
                                    key={col}
                                    title={isNull ? 'NULL' : String(v)}
                                    className={cn(
                                      'px-3 py-2 font-mono whitespace-nowrap max-w-50 truncate',
                                      isNull
                                        ? 'text-slate-300 dark:text-slate-600 italic'
                                        : 'text-slate-700 dark:text-slate-300'
                                    )}
                                  >
                                    {isNull ? 'NULL' : String(v)}
                                  </td>
                                )
                              })}
                            </tr>
                          ))}
                        </tbody>
                      </table>
                    )}
                  </div>

                  {totalPages > 1 && (
                    <div className="mt-3 flex items-center justify-between gap-3 flex-wrap">
                      <span className="text-xs font-mono text-slate-400 dark:text-slate-500">
                        {rangeStart}–{rangeEnd} / {sorted.length}
                      </span>
                      <div className="flex items-center gap-1.5">
                        <button
                          onClick={() => setPage(p => Math.max(0, p - 1))}
                          disabled={page === 0}
                          className="p-1.5 rounded-lg text-slate-400 hover:bg-slate-100 dark:hover:bg-white/10 disabled:opacity-30 disabled:cursor-not-allowed transition-all active:scale-95"
                        >
                          <ChevronLeft className="w-4 h-4" />
                        </button>
                        <span className="text-xs font-mono text-slate-500 dark:text-slate-400 min-w-15 text-center">
                          {page + 1} / {totalPages}
                        </span>
                        <button
                          onClick={() => setPage(p => Math.min(totalPages - 1, p + 1))}
                          disabled={page >= totalPages - 1}
                          className="p-1.5 rounded-lg text-slate-400 hover:bg-slate-100 dark:hover:bg-white/10 disabled:opacity-30 disabled:cursor-not-allowed transition-all active:scale-95"
                        >
                          <ChevronRight className="w-4 h-4" />
                        </button>
                      </div>
                    </div>
                  )}
                </>
              )}

              {!tableLoading && tab === 'schema' && (
                <div className="mt-3 space-y-4">
                  {schemaLoading && (
                    <div className="flex items-center justify-center py-8">
                      <RefreshCw className="w-4 h-4 text-slate-400 animate-spin" />
                    </div>
                  )}
                  {!schemaLoading && schema && (
                    <>
                      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-2">
                        {schema.columns.map(col => (
                          <div
                            key={col.name}
                            className="flex flex-col gap-1 px-3 py-2.5 rounded-xl bg-slate-50/80 dark:bg-white/5 border border-slate-200/60 dark:border-white/8"
                          >
                            <div className="flex items-center gap-1.5 flex-wrap">
                              <span className="text-xs font-bold text-slate-800 dark:text-slate-200 font-mono">{col.name}</span>
                              {col.pk && (
                                <span className="px-1.5 py-0.5 rounded-md text-[10px] font-bold bg-amber-100 dark:bg-amber-900/40 text-amber-700 dark:text-amber-400 uppercase">PK</span>
                              )}
                              {col.notnull && (
                                <span className="px-1.5 py-0.5 rounded-md text-[10px] font-bold bg-rose-100 dark:bg-rose-900/40 text-rose-600 dark:text-rose-400 uppercase">NN</span>
                              )}
                            </div>
                            <span className="text-[10px] font-mono text-slate-400 dark:text-slate-500 uppercase tracking-wider">
                              {col.type || 'TEXT'}
                            </span>
                          </div>
                        ))}
                      </div>
                      {schema.ddl && (
                        <div>
                          <p className="text-[10px] font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest mb-1.5">{t('admin.db_ddl')}</p>
                          <pre className="text-[11px] font-mono text-slate-600 dark:text-slate-400 bg-slate-50/80 dark:bg-white/5 border border-slate-200/60 dark:border-white/8 rounded-xl p-3 overflow-auto whitespace-pre-wrap break-all">
                            {schema.ddl}
                          </pre>
                        </div>
                      )}
                    </>
                  )}
                </div>
              )}
            </>
          )}
        </GlassCard>
      </div>
    </div>
  )
}
