import { ArrowLeft, Pencil, Trash2, KeyRound } from 'lucide-react'
import { GlassCard } from '@/components/ui/GlassCard'
import { layout, typo, button, badge } from '@/styles/tokens'
import { type JsonColumnMeta } from '@/types/api'
import { dbColumnLabel } from '@/lib/dbColumnLabel'
import { dataTypeMeta } from '@/lib/dataTypeMeta'
import { useI18n } from '@/lib/i18n'
import { tblLangOf } from '@/lib/tbl'
import { tblRefName } from '@/lib/tblRef'

interface RowDetailPageProps {
  table: string
  columns: JsonColumnMeta[]
  row: Record<string, unknown>
  editable: boolean
  onBack: () => void
  onEdit: () => void
  onDelete: () => void
}

// 행 상세보기 — 페이지 방식. 컬럼별 타입 아이콘·PK·NOT NULL 배지 + 값. 수정/삭제는 페이지 전환.
export function RowDetailPage({ table, columns, row, editable, onBack, onEdit, onDelete }: RowDetailPageProps) {
  const { t, lang } = useI18n()
  const tl = tblLangOf(lang)
  return (
    <div className={layout.page}>
      <div className="flex items-center justify-between gap-3 flex-wrap">
        <button className={button.ghost} onClick={onBack}><ArrowLeft size={16} />{t('row.back')}</button>
        <h2 className={typo.cardTitle}>{t('row.detail')} · {table}</h2>
        {editable ? (
          <div className="flex gap-2">
            <button className={button.secondary} onClick={onDelete}><Trash2 size={16} />{t('common.delete')}</button>
            <button className={button.primary} onClick={onEdit}><Pencil size={16} />{t('common.edit')}</button>
          </div>
        ) : <span className="w-px" />}
      </div>

      <GlassCard>
        <div className="grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3 gap-3">
          {columns.map(c => {
            const v = row[c.name]
            const isNull = v === null || v === undefined
            const refName = !isNull && typeof v === 'number' ? tblRefName(c.name, v, tl) : null
            const meta = dataTypeMeta(c.type)
            const Icon = meta.icon
            return (
              <div key={c.name} className="flex flex-col gap-1.5 rounded-2xl border border-(--es-glass-border) bg-(--es-glass-fill-soft) p-3.5">
                <div className="flex items-center gap-1.5 flex-wrap">
                  <Icon size={14} className={meta.colorClass} />
                  <span className={typo.label}>{dbColumnLabel(t, c.name)}</span>
                  <span className={badge.typeTag}>{meta.label}</span>
                  {c.pk ? <span className={badge.accent}><KeyRound size={12} />{t('db.label.pk')}</span> : null}
                  {c.notnull ? <span className={typo.flagDanger}>NOT NULL</span> : null}
                </div>
                <span className={isNull
                  ? 'text-sm font-mono italic text-(--es-text-faint)'
                  : 'text-sm font-mono break-all text-(--es-text-strong)'}>
                  {isNull ? 'NULL' : String(v)}
                  {refName && <span className="ml-1.5 not-italic text-sky-500">· {refName}</span>}
                </span>
              </div>
            )
          })}
        </div>
      </GlassCard>
    </div>
  )
}
