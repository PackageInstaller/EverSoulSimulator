#pragma once
#ifdef __ANDROID__

namespace eversoul::native_hooks {

// libil2cpp.so 로드 완료를 대기 후 frida-gum Interceptor로
// UnityWebRequest .ctor / set_url / SetUrl 및 KGConfiguration URL getter를 훅.
// JNI_OnLoad에서 스레드로 분리하여 호출.
void install_il2cpp_hooks();

} // namespace eversoul::native_hooks
#endif
