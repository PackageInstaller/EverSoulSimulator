import { useState, useRef, useEffect } from 'react'
import { createPortal } from 'react-dom'
import { cn } from '@/lib/utils'
import { useI18n, LANGS, type Lang } from '@/lib/i18n'
import { ChevronDown } from 'lucide-react'
import { topbar, button } from '@/styles/tokens'

const LANG_META: Record<Lang, { label: string; cc: string }> = {
  ko: { label: '한국어',     cc: 'kr' },
  en: { label: 'English',   cc: 'us' },
  zh: { label: '中文',      cc: 'cn' },
  ru: { label: 'Русский',   cc: 'ru' },
  de: { label: 'Deutsch',   cc: 'de' },
  fr: { label: 'Français',  cc: 'fr' },
  vi: { label: 'Tiếng Việt', cc: 'vn' },
}

function FlagImg({ cc, className }: { cc: string; className?: string }) {
  return (
    <img
      src={`https://flagcdn.com/20x15/${cc}.png`}
      width={20}
      height={15}
      alt={cc.toUpperCase()}
      className={cn('rounded-sm object-cover shrink-0', className)}
    />
  )
}

// 7개 언어 전환 드롭다운. 메인 TopBar 와 초기 셋업 SetupPage 가 공용으로 사용한다(중앙화).
export function LanguageSwitcher() {
  const { lang, setLang } = useI18n()
  const [langOpen, setLangOpen] = useState(false)
  const [dropPos, setDropPos] = useState<{ top: number; right: number } | null>(null)
  const langBtnRef = useRef<HTMLButtonElement>(null)
  const langDropRef = useRef<HTMLDivElement>(null)

  useEffect(() => {
    function onOutside(e: MouseEvent) {
      const target = e.target as Node
      const inBtn = langBtnRef.current?.contains(target) ?? false
      const inDrop = langDropRef.current?.contains(target) ?? false
      if (!inBtn && !inDrop) setLangOpen(false)
    }
    if (langOpen) document.addEventListener('mousedown', onOutside)
    return () => document.removeEventListener('mousedown', onOutside)
  }, [langOpen])

  useEffect(() => {
    function onResize() { setLangOpen(false) }
    window.addEventListener('resize', onResize)
    return () => window.removeEventListener('resize', onResize)
  }, [])

  function openLang() {
    if (!langBtnRef.current) return
    const r = langBtnRef.current.getBoundingClientRect()
    setDropPos({ top: r.bottom + 6, right: window.innerWidth - r.right })
    setLangOpen(v => !v)
  }

  const current = LANG_META[lang]

  return (
    <>
      <button
        ref={langBtnRef}
        onClick={openLang}
        className={cn(button.secondary, 'px-2.5 py-1.5', langOpen && 'ring-2 ring-(--es-glass-edge)')}
      >
        <FlagImg cc={current.cc} />
        <span className="hidden sm:inline">{current.label}</span>
        <ChevronDown size={12} className={cn('transition-transform', langOpen && 'rotate-180')} />
      </button>

      {langOpen && dropPos && createPortal(
        <div ref={langDropRef} style={{ position: 'fixed', top: dropPos.top, right: dropPos.right }} className={topbar.menu}>
          {LANGS.map(l => {
            const m = LANG_META[l]
            const on = lang === l
            return (
              <button
                key={l}
                onClick={() => { setLang(l); setLangOpen(false) }}
                className={cn(topbar.menuItem, on ? topbar.menuItemActive : topbar.menuItemIdle)}
              >
                <FlagImg cc={m.cc} />
                <span>{m.label}</span>
              </button>
            )
          })}
        </div>,
        document.body
      )}
    </>
  )
}
