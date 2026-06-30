import { useState, useMemo } from 'react'
import { ArrowLeft, Save, KeyRound, Search } from 'lucide-react'
import { cn } from '@/lib/utils'
import { layout, typo, button, field, formRow, badge } from '@/styles/tokens'
import { type JsonColumnMeta } from '@/types/api'
import { dbColumnLabel } from '@/lib/dbColumnLabel'
import { dataTypeMeta } from '@/lib/dataTypeMeta'
import { useI18n } from '@/lib/i18n'
import { tblString, tblLangOf, tblStringList } from '@/lib/tbl'
import { tblRefName } from '@/lib/tblRef'
import { PickerModal } from '@/components/account-data/PickerModal'

const isSnoColumn = (name: string) => name.endsWith('_sno') || name === 'sno'

interface RowEditPageProps {
  title: string
  columns: JsonColumnMeta[]
  mode: 'insert' | 'edit'
  initial?: Record<string, unknown>
  onBack: () => void
  // 저장 로직 주입(중앙화) — 호출자가 values 로 저장하고 에러 메시지(또는 null=성공)를 반환.
  onSubmit: (values: Record<string, string>) => Promise<string | null>
}

// 행 수정/추가 — 페이지 방식(모달 아님). 컬럼별 타입 아이콘·PK·NOT NULL 배지 + 입력. 저장은 onSubmit 주입.
export function RowEditPage({ title, columns, mode, initial, onBack, onSubmit }: RowEditPageProps) {
  const { t, lang } = useI18n()
  const tl = tblLangOf(lang)
  const snoEntries = useMemo(() => tblStringList(tl), [tl])
  const [pickerCol, setPickerCol] = useState<string | null>(null)
  const [values, setValues] = useState<Record<string, string>>(() => {
    const v: Record<string, string> = {}
    for (const c of columns) {
      const iv = initial?.[c.name]
      v[c.name] = iv === null || iv === undefined ? '' : String(iv)
    }
    return v
  })
  const [busy, setBusy] = useState(false)
  const [err, setErr] = useState('')

  function setField(name: string, val: string) {
    setValues(prev => ({ ...prev, [name]: val }))
  }

  async function save() {
    setBusy(true); setErr('')
    try {
      const e = await onSubmit(values)
      if (e) setErr(e)
    } catch (e) {
      setErr(e instanceof Error ? e.message : String(e))
    } finally {
      setBusy(false)
    }
  }

  return (
    <div className={layout.page}>
      <div className="flex items-center justify-between gap-3 flex-wrap">
        <button className={button.ghost} onClick={onBack}><ArrowLeft size={16} />{t('row.back')}</button>
        <h2 className={typo.cardTitle}>{(mode === 'insert' ? t('row.add') : t('row.edit'))} · {title}</h2>
        <button className={button.primary} onClick={save} disabled={busy}>
          <Save size={16} />{busy ? t('row.saving') : t('row.save')}
        </button>
      </div>

      {err && <p className="px-4 py-2 rounded-xl border border-rose-300 bg-rose-50 text-rose-600 text-sm font-medium dark:bg-rose-900/20 dark:border-rose-700/50 dark:text-rose-400">{err}</p>}

      <div className="grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3 gap-3">
        {columns.map(c => {
          const readOnly = mode === 'edit' && c.pk
          const meta = dataTypeMeta(c.type)
          const Icon = meta.icon
          const isNum = c.type === 'INTEGER' || c.type === 'REAL'
          const refHint = isNum && values[c.name] ? tblRefName(c.name, Number(values[c.name]), tl) : null
          return (
            <div key={c.name} className="rounded-2xl p-3.5 bg-white/60 dark:bg-white/5 border border-slate-200 dark:border-white/10 flex flex-col gap-2">
              <div className="flex items-center gap-1.5 flex-wrap">
                <Icon size={14} className={meta.colorClass} />
                <span className={typo.label}>{dbColumnLabel(t, c.name)}</span>
                <span className={badge.typeTag}>{meta.label}</span>
                {c.pk ? <span className={badge.accent}><KeyRound size={12} />{t('db.label.pk')}</span> : null}
                {c.notnull ? <span className={typo.flagDanger}>NOT NULL</span> : null}
              </div>
              {isSnoColumn(c.name) ? (
                <button
                  type="button"
                  className={cn(field.input, 'flex items-center justify-between gap-2 text-left', readOnly && formRow.readonly)}
                  disabled={readOnly}
                  onClick={() => setPickerCol(c.name)}
                >
                  <span className={cn('truncate', !values[c.name] && 'text-(--es-text-faint)')}>
                    {values[c.name]
                      ? `${values[c.name]} · ${tblString(Number(values[c.name]), tl)}`
                      : t('row.select_sno')}
                  </span>
                  <Search size={14} className="opacity-50 shrink-0" />
                </button>
              ) : c.type === 'BOOL' ? (
                <div className="flex gap-1.5">
                  {(['true', 'false'] as const).map(b => (
                    <button
                      key={b}
                      type="button"
                      disabled={readOnly}
                      onClick={() => setField(c.name, b)}
                      className={cn('flex-1 py-1.5 rounded-lg text-sm font-semibold transition-all active:scale-95',
                        values[c.name] === b
                          ? (b === 'true' ? 'bg-emerald-500 text-white' : 'bg-slate-400 text-white')
                          : 'bg-slate-100 dark:bg-white/5 text-slate-500 dark:text-slate-400')}
                    >
                      {b === 'true' ? 'ON' : 'OFF'}
                    </button>
                  ))}
                </div>
              ) : (
                <div className="flex flex-col gap-1">
                  <input
                    className={cn(field.input, readOnly && formRow.readonly)}
                    type={isNum ? 'number' : 'text'}
                    value={values[c.name] ?? ''}
                    readOnly={readOnly}
                    placeholder={c.dflt_value ?? 'NULL'}
                    onChange={e => setField(c.name, e.target.value)}
                  />
                  {refHint && <span className="text-xs text-sky-500 px-1 truncate">{refHint}</span>}
                </div>
              )}
            </div>
          )
        })}
      </div>

      {pickerCol && (
        <PickerModal
          entries={snoEntries}
          placeholder={t('row.select_sno')}
          emptyText={t('row.select_sno')}
          onSelect={id => { setField(pickerCol, String(id)); setPickerCol(null) }}
          onClose={() => setPickerCol(null)}
        />
      )}
    </div>
  )
}
