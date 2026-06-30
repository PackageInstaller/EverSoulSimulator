import { usePolling } from '@/hooks/usePolling'
import { type AdbConnectionState } from '@/types/injector'

// ADB 연결 상태 단일 소스(/web/api/adb/state — 서버 런타임과 INI 상태).
// 상단 탑바와 ADB 컨트롤러(ApkConnectPage)가 이 훅을 공용으로 사용해 100% 동기화된다.
// 서버 EXE 가 실행되는 동안 어느 화면으로 이동하든 같은 상태(serial/connected/reverse)를 본다.
export function useAdbState(intervalMs = 3000) {
  return usePolling<AdbConnectionState>({ url: '/web/api/adb/state', intervalMs })
}
