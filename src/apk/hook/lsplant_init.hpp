#pragma once
#ifdef __ANDROID__
#include <jni.h>

namespace eversoul::lsplant {

// LSPlant 초기화 및 Java 레이어 훅 전체 설치.
// JNI_OnLoad에서 호출 — 내부에서 별도 스레드 분리하여 실행.
void install_java_hooks(JavaVM* vm);

} // namespace eversoul::lsplant
#endif
