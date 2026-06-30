import { useI18n } from '@/lib/i18n'

// 우측 하단 고정 제작자 표기 — 웹UI 및 윈도우 빌드 제작자 = Nekoi. 메인·초기 셋업 공용.
export function BuilderCredit() {
  const { t } = useI18n()
  return (
    <div className="fixed bottom-2 right-3 z-40 select-none pointer-events-none text-[11px] font-medium text-(--es-text-faint)">
      {t('credit.builder')}: <span className="font-bold text-(--es-accent)">Nekoi</span>
    </div>
  )
}
