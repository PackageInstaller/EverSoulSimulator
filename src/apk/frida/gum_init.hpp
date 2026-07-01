#pragma once
#ifdef __ANDROID__

namespace eversoul::frida_gum {

// frida-gum 런타임 초기화 (gum_init_embedded).
// GumInterceptor 사용 전 반드시 1회 호출. constructor 컨텍스트에서 호출 안전.
void init();

} // namespace eversoul::frida_gum
#endif
