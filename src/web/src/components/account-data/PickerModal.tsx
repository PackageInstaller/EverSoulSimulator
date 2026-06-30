import { useState, useMemo, useEffect } from 'react'
import { createPortal } from 'react-dom'
import { Search, X } from 'lucide-react'
import { cn } from '@/lib/utils'

export interface PickerEntry {
  id: number
  name: string
  sub?: string
  subColor?: string
  icon?: string | null
  iconCover?: boolean
}

interface PickerModalProps {
  onClose: () => void
  onSelect: (id: number) => void
  entries: PickerEntry[]
  placeholder?: string
  emptyText?: string
}

// 범용 검색·선택 모달(중앙화). 정령/아이템 등 PickerEntry 목록을 받아 검색 그리드로 노출한다.
// createPortal 로 document.body 최상단(z-1000)에 렌더되어 어떤 레이아웃과도 겹치지 않는다.
// 부모가 조건부 마운트({open && <PickerModal/>})하므로 열 때마다 검색어가 초기화된다
// (effect 안에서 setState 하지 않음 — cascading 렌더 회피).
export function PickerModal({ onClose, onSelect, entries, placeholder, emptyText }: PickerModalProps) {
  const [q, setQ] = useState('')

  // 배경 스크롤 잠금(마운트 동안). 외부 시스템(document)만 동기화하고 setState 는 하지 않는다.
  useEffect(() => {
    const prev = document.body.style.overflow
    document.body.style.overflow = 'hidden'
    return () => { document.body.style.overflow = prev }
  }, [])

  const list = useMemo(() => {
    const query = q.trim().toLowerCase()
    if (!query) return entries
    return entries.filter(e => e.name.toLowerCase().includes(query) || String(e.id).includes(query))
  }, [q, entries])

  return createPortal(
    <div className="fixed inset-0 z-1000 flex items-center justify-center p-2" role="dialog" aria-modal="true">
      <div className="absolute inset-0 bg-slate-900/50 backdrop-blur-sm" onClick={onClose} />
      <div className="relative w-[98vw] max-w-[2000px] h-[96vh] flex flex-col rounded-2xl bg-white dark:bg-slate-900 shadow-2xl border border-slate-200 dark:border-white/10">
        <div className="flex items-center gap-2 p-4 border-b border-slate-200 dark:border-white/10">
          <Search className="w-4 h-4 text-slate-400 shrink-0" />
          <input
            autoFocus
            value={q}
            onChange={e => setQ(e.target.value)}
            placeholder={placeholder}
            className="flex-1 min-w-0 bg-transparent text-sm text-slate-900 dark:text-white placeholder:text-slate-400 focus:outline-none"
          />
          <span className="text-xs text-slate-400 shrink-0">{list.length}</span>
          <button onClick={onClose} className="p-1.5 rounded-lg text-slate-400 hover:bg-slate-100 dark:hover:bg-white/10 transition-all">
            <X className="w-4 h-4" />
          </button>
        </div>

        <div className="flex-1 overflow-y-auto p-3 grid grid-cols-3 sm:grid-cols-4 md:grid-cols-6 lg:grid-cols-7 xl:grid-cols-8 gap-2.5">
          {list.map(e => (
            <button
              key={e.id}
              onClick={() => { onSelect(e.id); onClose() }}
              className="flex flex-col items-start p-3 rounded-xl border border-slate-200 dark:border-white/10 hover:border-sky-400 hover:bg-sky-50 dark:hover:bg-sky-900/20 transition-all text-left"
            >
              {e.icon && <img src={e.icon} alt="" loading="lazy" className={cn('w-full aspect-square rounded-lg mb-1.5', e.iconCover ? 'object-cover object-top' : 'object-contain')} />}
              <span className="text-sm font-semibold text-slate-900 dark:text-white truncate w-full">{e.name}</span>
              {e.sub && (
                <span className="text-xs truncate w-full" style={e.subColor ? { color: e.subColor } : undefined}>{e.sub}</span>
              )}
              <span className="mt-0.5 text-[10px] font-mono text-slate-400">#{e.id}</span>
            </button>
          ))}
          {list.length === 0 && (
            <p className="col-span-full text-center text-sm text-slate-400 py-10">{emptyText}</p>
          )}
        </div>
      </div>
    </div>,
    document.body,
  )
}
