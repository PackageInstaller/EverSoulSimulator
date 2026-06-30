import { type Transition, type Variants } from 'motion/react'

/**
 * 동적 효과 중앙 모듈 (motion / 구 Framer Motion).
 * 컴포넌트는 transition/variants 를 인라인으로 정의하지 않고 이 상수만 참조한다.
 */

export const springSoft: Transition = { type: 'spring', stiffness: 280, damping: 26, mass: 0.9 }
export const springSnappy: Transition = { type: 'spring', stiffness: 420, damping: 30 }
export const easeOut: Transition = { duration: 0.32, ease: [0.22, 1, 0.36, 1] }

export const overlayMotion = {
  initial: { opacity: 0 },
  animate: { opacity: 1 },
  exit: { opacity: 0 },
  transition: { duration: 0.2 },
} as const

export const panelMotion = {
  initial: { opacity: 0, scale: 0.94, y: 14 },
  animate: { opacity: 1, scale: 1, y: 0 },
  exit: { opacity: 0, scale: 0.96, y: 10 },
  transition: springSoft,
} as const

export const riseMotion = {
  initial: { opacity: 0, y: 12 },
  animate: { opacity: 1, y: 0 },
  transition: easeOut,
} as const

export const popMotion = {
  initial: { opacity: 0, scale: 0.92 },
  animate: { opacity: 1, scale: 1 },
  transition: springSnappy,
} as const

/** 리스트 staggered 진입 */
export const listContainer: Variants = {
  hidden: {},
  show: { transition: { staggerChildren: 0.04, delayChildren: 0.02 } },
}
export const listItem: Variants = {
  hidden: { opacity: 0, y: 10 },
  show: { opacity: 1, y: 0, transition: easeOut },
}

/** 입체 카드 hover (프리즘 부양) */
export const cardHover = {
  whileHover: { y: -4, scale: 1.012 },
  whileTap: { scale: 0.99 },
  transition: springSnappy,
} as const

/** 메뉴/탭 활성 인디케이터 공유 layoutId */
export const LAYOUT_ID = {
  navActive: 'es-nav-active',
  tabActive: 'es-tab-active',
} as const
