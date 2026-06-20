import { useState, useRef, useEffect } from 'react'
import { createPortal } from 'react-dom'
import { cn } from '@/lib/utils'
import { useI18n, LANGS, type Lang } from '@/lib/i18n'
import { Moon, Sun, Menu, Zap, ChevronDown } from 'lucide-react'

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

interface TopBarProps {
  title: string
  theme: 'light' | 'dark'
  onToggleTheme: () => void
  onToggleSidebar: () => void
  serverPort?: number
  className?: string
}

export function TopBar({ title, theme, onToggleTheme, onToggleSidebar, serverPort, className }: TopBarProps) {
  const { t, lang, setLang } = useI18n()
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
    <header
      className={cn(
        'flex items-center justify-between shrink-0 gap-3',
        'mx-3 mt-3 mb-0 min-h-12 px-3 sm:px-4 py-2 rounded-2xl',
        'bg-white/80 dark:bg-slate-900/80 backdrop-blur-2xl',
        'border border-white/40 dark:border-white/10',
        'shadow-lg shadow-black/5 dark:shadow-black/30',
        className
      )}
    >
      <div className="flex items-center gap-2 sm:gap-3 min-w-0">
        <button
          onClick={onToggleSidebar}
          className="md:hidden p-1.5 rounded-xl text-slate-400 hover:bg-slate-100 dark:hover:bg-white/10 transition-all active:scale-95 shrink-0"
          aria-label={t('ui.open_sidebar')}
        >
          <Menu className="w-5 h-5" />
        </button>

        <div className="flex items-center gap-2 min-w-0">
          <Zap className="w-4 h-4 text-violet-500 dark:text-violet-400 shrink-0" />
          <h1 className="text-sm font-bold text-slate-900 dark:text-white tracking-tight truncate">{title}</h1>
        </div>
      </div>

      <div className="flex items-center gap-2 shrink-0">
        <div className="hidden sm:flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-slate-100/80 dark:bg-white/8">
          <span className="w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse" />
          <span className="text-[11px] font-mono text-slate-500 dark:text-slate-400">:{serverPort ?? '…'}</span>
        </div>

        <button
          ref={langBtnRef}
          onClick={openLang}
          className={cn(
            'flex items-center gap-1.5 px-2.5 py-1.5 rounded-xl text-xs font-medium transition-all active:scale-95',
            'bg-slate-100/80 dark:bg-white/8 border border-slate-200 dark:border-white/10',
            'text-slate-700 dark:text-slate-200 hover:bg-slate-200 dark:hover:bg-white/12',
            langOpen && 'ring-1 ring-sky-400/50'
          )}
        >
          <FlagImg cc={current.cc} />
          <span className="hidden sm:inline">{current.label}</span>
          <ChevronDown className={cn('w-3 h-3 text-slate-400 transition-transform', langOpen && 'rotate-180')} />
        </button>

        {langOpen && dropPos && createPortal(
          <div
            ref={langDropRef}
            style={{ position: 'fixed', top: dropPos.top, right: dropPos.right }}
            className={cn(
              'z-9999 w-44',
              'rounded-2xl border border-white/40 dark:border-white/10',
              'bg-white/95 dark:bg-slate-900/95 backdrop-blur-2xl',
              'shadow-xl shadow-black/10 dark:shadow-black/50',
              'py-1.5 overflow-hidden'
            )}
          >
            {LANGS.map(l => {
              const m = LANG_META[l]
              return (
                <button
                  key={l}
                  onClick={() => { setLang(l); setLangOpen(false) }}
                  className={cn(
                    'w-full flex items-center gap-2.5 px-3 py-2 text-xs font-medium transition-all',
                    lang === l
                      ? 'bg-sky-500/10 text-sky-600 dark:text-sky-400'
                      : 'text-slate-600 dark:text-slate-300 hover:bg-slate-100 dark:hover:bg-white/8'
                  )}
                >
                  <FlagImg cc={m.cc} />
                  <span>{m.label}</span>
                  {lang === l && <span className="ml-auto w-1.5 h-1.5 rounded-full bg-sky-500 shrink-0" />}
                </button>
              )
            })}
          </div>,
          document.body
        )}

        <button
          onClick={onToggleTheme}
          className="p-2 rounded-xl text-slate-400 hover:bg-slate-100 dark:hover:bg-white/10 transition-all active:scale-95"
          aria-label={t('ui.theme_toggle')}
        >
          {theme === 'dark' ? (
            <Sun className="w-4 h-4 text-amber-400" />
          ) : (
            <Moon className="w-4 h-4 text-indigo-500" />
          )}
        </button>
      </div>
    </header>
  )
}
