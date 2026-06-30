#ifdef __ANDROID__
#include "apk/frida/gum_init.hpp"
#include <frida-gum.h>
#include <android/log.h>
#include <atomic>

namespace eversoul::frida_gum {

namespace {
    // 중복 초기화 방지: constructor가 여러 스레드에서 동시에 호출될 수 있음
    std::atomic<bool> g_initialized{false};
}

void init() {
    bool expected = false;
    if (!g_initialized.compare_exchange_strong(expected, true)) return;
    gum_init_embedded();
    __android_log_print(ANDROID_LOG_INFO,
        "libswappywrapper/gum", "gum_init_embedded 완료");
}

} // namespace eversoul::frida_gum
#endif
