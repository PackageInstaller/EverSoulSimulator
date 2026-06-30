import { useState, useEffect, useMemo, useCallback } from 'react'
import { Boxes, Search, Table2, RefreshCw, ChevronLeft, ChevronRight, FileText, AlertTriangle, Plus, Save, BarChart3, PanelLeftClose, PanelLeftOpen, Power } from 'lucide-react'
import { GlassCard } from '@/components/ui/GlassCard'
import { cn } from '@/lib/utils'
import { useI18n } from '@/lib/i18n'
import { typo, dbBrowser, badge, layout, table as tbl, dataConsole as dc, button } from '@/styles/tokens'
import { type JsonColumnMeta } from '@/types/api'
import { apiTblList, apiTblGet, apiTblSave, apiGetTblEnabled, apiSetTblEnabled } from '@/api/tbl'
import { INGAME_DOMAINS, tableMatchesDomain } from '@/lib/ingameDomains'
import { jsonValueType } from '@/lib/dataTypeMeta'
import { tblLangOf } from '@/lib/tbl'
import { tblRefName } from '@/lib/tblRef'
import { dbColumnLabel } from '@/lib/dbColumnLabel'
import { RowDetailPage } from '@/components/data/RowDetailPage'
import { RowEditPage } from '@/components/data/RowEditPage'
import { IngameTableStats } from '@/components/data/IngameTableStats'

const IG_TBL_PAGE_SIZE = 100

interface IngameSettingsPageProps {
  activeTab: string
}

export function IngameSettingsPage({ activeTab }: IngameSettingsPageProps) {
  const { t, lang } = useI18n()
  const tl = tblLangOf(lang)
  const domain = useMemo(() => INGAME_DOMAINS.find(d => d.key === activeTab) ?? INGAME_DOMAINS[0], [activeTab])
  const [files, setFiles] = useState<string[]>([])
  const [selected, setSelected] = useState('')
  const [q, setQ] = useState('')
  const [rows, setRows] = useState<Record<string, unknown>[] | null>(null)
  const [saving, setSaving] = useState(false)
  const [statusMsg, setStatusMsg] = useState('')
  const [search, setSearch] = useState('')
  const [page, setPage] = useState(0)
  const [view, setView] = useState<'list' | 'detail' | 'edit' | 'insert'>('list')
  const [activeRowIdx, setActiveRowIdx] = useState(-1)
  const [statTab, setStatTab] = useState<'data' | 'stats'>('data')
  const [tableListOpen, setTableListOpen] = useState(true)
  const [tblHookEnabled, setTblHookEnabled] = useState(true)
  const [tblHookLoading, setTblHookLoading] = useState(false)
  const [tblHookStatus, setTblHookStatus] = useState('')

  useEffect(() => {
    apiGetTblEnabled().then(status => {
      setTblHookEnabled(status.enabled)
      setTblHookStatus(`${status.tables ?? 0} / ${status.rows ?? 0}`)
    })
  }, [])
  useEffect(() => {
    apiTblList().then(r => {
      const matched = r.files.filter(f => tableMatchesDomain(f, domain))
      setFiles(matched)
      setSelected(matched[0] ?? '')
      setRows(null)
      setPage(0)
      setSearch('')
      setView('list')
      setActiveRowIdx(-1)
      setStatusMsg('')
    })
  }, [domain])

  const loadFile = useCallback((name: string) => {
    apiTblGet(name).then(r => {
      setRows(r)
      setPage(0)
      setSearch('')
      setView('list')
      setActiveRowIdx(-1)
      setStatusMsg('')
    })
  }, [])

  useEffect(() => { if (selected) loadFile(selected) }, [selected, loadFile])

  const filteredList = useMemo(
    () => (q ? files.filter(f => f.toLowerCase().includes(q.toLowerCase())) : files),
    [files, q],
  )

  const activeRows = useMemo(() => rows ?? [], [rows])
  const columns = useMemo(() => (activeRows[0] ? Object.keys(activeRows[0]) : []), [activeRows])

  const filtered = useMemo(() => {
    if (!search) return activeRows
    const qs = search.toLowerCase()
    return activeRows.filter(row => Object.values(row).some(v => v !== null && v !== undefined && String(v).toLowerCase().includes(qs)))
  }, [activeRows, search])

  const totalPages = Math.max(1, Math.ceil(filtered.length / IG_TBL_PAGE_SIZE))
  const pageRows = filtered.slice(page * IG_TBL_PAGE_SIZE, (page + 1) * IG_TBL_PAGE_SIZE)

  // TBL 행 키 → 공용 RowDetailPage/RowEditPage 가 받는 JsonColumnMeta 형태(타입은 첫 행 값으로 추론).
  const fields = useMemo<JsonColumnMeta[]>(
    () => columns.map((col, i) => ({
      cid: i, name: col,
      type: activeRows[0] ? jsonValueType(activeRows[0][col]) : 'TEXT',
      pk: false, notnull: false, dflt_value: null,
    })),
    [columns, activeRows],
  )

  // 행 저장(중앙 RowEditPage onSubmit 주입). idx<0=추가, 그 외=수정. 저장 후 .tbl 빌드 결과 표시.
  async function submitRow(values: Record<string, string>, idx: number): Promise<string | null> {
    const coerced: Record<string, unknown> = {}
    for (const c of fields) {
      const v = values[c.name] ?? ''
      if (c.type === 'INTEGER' || c.type === 'REAL') { const n = Number(v); coerced[c.name] = v === '' ? null : (isNaN(n) ? v : n) }
      else if (c.type === 'BOOL') coerced[c.name] = v === 'true' || v === '1'
      else coerced[c.name] = v
    }
    const updated = [...activeRows]
    if (idx < 0) updated.push(coerced)
    else updated[idx] = { ...updated[idx], ...coerced }
    const r = await apiTblSave(selected, updated)
    if (!r.ok) return r.error ?? t('admin.save_fail')
    setRows(updated)
    setView('list'); setActiveRowIdx(-1)
    setStatusMsg(t('tbl.save_ok'))
    return null
  }

  async function handleSaveJson() {
    if (!selected) return
    setSaving(true); setStatusMsg('')
    const r = await apiTblSave(selected, activeRows)
    setSaving(false)
    setStatusMsg(r.ok ? t('tbl.save_ok') : (r.error ?? t('admin.save_fail')))
  }

  async function toggleTblHook() {
    setTblHookLoading(true)
    try {
      const status = await apiSetTblEnabled(!tblHookEnabled)
      setTblHookEnabled(status.enabled)
      setTblHookStatus(`${status.tables ?? 0} / ${status.rows ?? 0}`)
    } finally {
      setTblHookLoading(false)
    }
  }

  if (view === 'detail' && activeRowIdx >= 0 && activeRows[activeRowIdx]) {
    return (
      <RowDetailPage
        table={selected}
        columns={fields}
        row={activeRows[activeRowIdx]}
        editable={true}
        onBack={() => { setView('list'); setActiveRowIdx(-1) }}
        onEdit={() => setView('edit')}
        onDelete={async () => {
          if (!window.confirm(t('data.confirm_delete'))) return
          const updated = activeRows.filter((_, i) => i !== activeRowIdx)
          const r = await apiTblSave(selected, updated)
          if (r.ok) { setRows(updated); setView('list'); setActiveRowIdx(-1) }
        }}
      />
    )
  }
  if (view === 'edit' || view === 'insert') {
    return (
      <RowEditPage
        title={selected}
        columns={fields}
        mode={view === 'insert' ? 'insert' : 'edit'}
        initial={view === 'edit' ? activeRows[activeRowIdx] : undefined}
        onBack={() => setView(view === 'edit' ? 'detail' : 'list')}
        onSubmit={(values) => submitRow(values, view === 'insert' ? -1 : activeRowIdx)}
      />
    )
  }

  return (
    <div className={cn(tableListOpen ? dbBrowser.shell : dbBrowser.shellCollapsed)}>
      {tableListOpen ? (
      <GlassCard className={dbBrowser.sidePanel}>
        <div className={dbBrowser.sideHead}>
          <div className={dbBrowser.sideTitle}>
            <Boxes size={18} className="shrink-0" />
            <h2 className={cn(typo.cardTitle, 'truncate')}>{t(domain.i18nKey)}</h2>
            <span className={badge.neutral}>{files.length}</span>
          </div>
          <button className={dbBrowser.sideToggle} onClick={() => setTableListOpen(false)} aria-label={t('ig.tables')}>
            <PanelLeftClose size={16} />
          </button>
        </div>
        <div className={dbBrowser.searchBox}>
          <Search size={14} />
          <input className={dbBrowser.searchInput} value={q} placeholder={t('ig.tables')} onChange={e => setQ(e.target.value)} />
        </div>
        <div className={dbBrowser.list}>
          {filteredList.map(name => {
            const active = selected === name
            return (
              <button key={name} className={cn(dbBrowser.item, active && dbBrowser.itemActive)} onClick={() => setSelected(name)}>
                <span className={dbBrowser.itemName}>{name}</span>
              </button>
            )
          })}
        </div>
      </GlassCard>
      ) : (
        <button className={dbBrowser.sidePanelCollapsed} onClick={() => setTableListOpen(true)} aria-label={t('ig.tables')}>
          <span className="min-w-0 flex items-center gap-2">
            <PanelLeftOpen size={16} className="shrink-0" />
            <span className="truncate text-[13px] font-bold">{selected || t('ig.tables')}</span>
          </span>
          <span className={badge.neutral}>{files.length}</span>
        </button>
      )}

      <div className={cn(layout.stackLg, dbBrowser.contentPanel)}>
        <div className="flex items-center justify-between gap-3 rounded-xl border px-4 py-3 bg-(--es-glass-fill-soft) border-(--es-border)">
          <div className="min-w-0 flex items-start gap-3">
            <div className={cn('mt-0.5 flex h-8 w-8 shrink-0 items-center justify-center rounded-lg', tblHookEnabled ? 'bg-emerald-500 text-white' : 'bg-slate-200 text-slate-500 dark:bg-white/10 dark:text-slate-300')}>
              <Power size={15} />
            </div>
            <div className="min-w-0">
              <div className="flex items-center gap-2">
                <span className={typo.cardTitle}>{t('sc.tbl_hook')}</span>
                <span className={cn(badge.neutral, tblHookEnabled && 'text-emerald-600 dark:text-emerald-400')}>{tblHookEnabled ? t('admin.state_on') : t('admin.state_off')}</span>
                {tblHookStatus && <span className={typo.hint}>{tblHookStatus}</span>}
              </div>
              <p className={cn(typo.hint, 'mt-1')}>{t('sc.tbl_hook_desc')}</p>
            </div>
          </div>
          <button className={tblHookEnabled ? button.primary : button.secondary} onClick={toggleTblHook} disabled={tblHookLoading}>
            <Power size={16} />
            {tblHookEnabled ? t('admin.state_on') : t('admin.state_off')}
          </button>
        </div>
        <div className="flex items-start gap-2 rounded-xl border px-4 py-3 text-[13px] bg-(--es-warn)/12 border-(--es-warn)/40 text-(--es-warn)">
          <AlertTriangle size={15} className="shrink-0 mt-0.5" />
          <span>{t('tbl.apply_notice')}</span>
        </div>
        <GlassCard className="min-w-0 overflow-hidden">
          {!selected ? (
            <div className={dbBrowser.emptySel}>
              <Table2 size={36} />
              <p className={typo.hint}>{t('db.select_table')}</p>
            </div>
          ) : (
            <div className={layout.stackLg}>
              <div className={cn(dc.toolbar, 'min-w-0')}>
                <div className={cn(dc.toolbarLeft, 'flex-wrap max-w-full')}>
                  <div className={cn(dc.searchBox, 'min-w-0 flex-1')}>
                    <Search size={14} />
                    <input className={dc.searchInput} value={search} placeholder={t('data.search_row')} onChange={e => { setSearch(e.target.value); setPage(0) }} />
                  </div>
                  <span className={dc.countTag}>{search && filtered.length !== activeRows.length ? `${filtered.length} / ${activeRows.length}` : `${activeRows.length}`}</span>
                  {statusMsg && <span className={typo.hint}>{statusMsg}</span>}
                </div>
                <div className={cn(dc.actions, 'shrink flex-wrap justify-end min-w-0')}>
                  <div className="flex rounded-lg bg-(--es-glass-fill-soft) p-0.5 mr-1">
                    <button onClick={() => setStatTab('data')} className={cn('flex items-center gap-1 px-2.5 py-1 rounded-md text-xs font-semibold transition', statTab === 'data' ? 'bg-sky-500 text-white' : 'text-(--es-text-faint)')}><Table2 size={13} />{t('ig.tab_data')}</button>
                    <button onClick={() => setStatTab('stats')} className={cn('flex items-center gap-1 px-2.5 py-1 rounded-md text-xs font-semibold transition', statTab === 'stats' ? 'bg-sky-500 text-white' : 'text-(--es-text-faint)')}><BarChart3 size={13} />{t('ig.tab_stats')}</button>
                  </div>
                  <button className={button.icon} onClick={() => { setRows(null); loadFile(selected) }} aria-label={t('ui.refresh')}><RefreshCw size={16} className={rows === null ? dc.spin : undefined} /></button>
                  <button className={button.secondary} onClick={() => { setActiveRowIdx(-1); setView('insert') }}><Plus size={16} />{t('data.add_row')}</button>
                  <button className={button.primary} onClick={handleSaveJson} disabled={saving}><Save size={16} />{saving ? t('admin.save_ing') : t('admin.save')}</button>
                </div>
              </div>

              {statTab === 'stats' ? (
                <IngameTableStats columns={fields} rows={activeRows} />
              ) : (
                <>
                  <div className={tbl.wrap}>
                    {pageRows.length === 0 ? (
                      <div className={dc.empty}><FileText size={32} /><p className={typo.hint}>{rows === null ? t('admin.loading') : t('tbl.no_rows')}</p></div>
                    ) : (
                      <table className={tbl.base}>
                        <thead className={tbl.headRow}>
                          <tr>{columns.map(col => <th key={col} className={tbl.th} title={col}>{dbColumnLabel(t, col)}</th>)}<th className={dc.thAction}></th></tr>
                        </thead>
                        <tbody>
                          {pageRows.map((row, rIdx) => {
                            const origIdx = activeRows.indexOf(filtered[page * IG_TBL_PAGE_SIZE + rIdx])
                            return (
                              <tr key={rIdx} className={cn(tbl.tr, 'cursor-pointer')} onClick={() => { setActiveRowIdx(origIdx); setView('detail') }}>
                                {columns.map(col => {
                                  const v = row[col]
                                  const isNull = v === null || v === undefined
                                  const refName = !isNull && typeof v === 'number' ? tblRefName(col, v, tl) : null
                                  return (
                                    <td key={col} className={cn(tbl.td, isNull && dc.cellNull)}>
                                      {isNull ? 'NULL' : String(v)}
                                      {refName && <span className="ml-1.5 text-xs text-sky-500">{refName}</span>}
                                    </td>
                                  )
                                })}
                                <td className={dc.tdAction}><ChevronRight size={16} className="opacity-40" /></td>
                              </tr>
                            )
                          })}
                        </tbody>
                      </table>
                    )}
                  </div>

                  {totalPages > 1 && (
                    <div className={dc.pager}>
                      <span className={dc.pagerInfo}>{page * IG_TBL_PAGE_SIZE + 1}–{Math.min((page + 1) * IG_TBL_PAGE_SIZE, filtered.length)} / {filtered.length}</span>
                      <div className={dc.pagerBtns}>
                        <button className={button.smIcon} disabled={page === 0} onClick={() => setPage(p => Math.max(0, p - 1))} aria-label={t('ui.prev')}><ChevronLeft size={16} /></button>
                        <span className={dc.pagerPage}>{page + 1} / {totalPages}</span>
                        <button className={button.smIcon} disabled={page >= totalPages - 1} onClick={() => setPage(p => Math.min(totalPages - 1, p + 1))} aria-label={t('ui.next')}><ChevronRight size={16} /></button>
                      </div>
                    </div>
                  )}
                </>
              )}
            </div>
          )}
        </GlassCard>
      </div>
    </div>
  )
}
