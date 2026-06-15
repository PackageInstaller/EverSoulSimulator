#include "jni_bypass.hpp"

#ifdef __aarch64__

#include "inline_hook.hpp"

#include <android/log.h>
#include <dlfcn.h>
#include <jni.h>
#include <sys/mman.h>

#include <atomic>
#include <cstring>

namespace eversoul::jni_bypass {

namespace {

constexpr const char *kTag = "libswappywrapper";

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
template <class... A>
void logi(const char *fmt, A... a)
{
    __android_log_print(ANDROID_LOG_INFO, kTag, fmt, a...);
}
#pragma clang diagnostic pop

// Original RegisterNatives pointer saved from JNIEnv vtable[215].
using RegisterNatives_t = jint (*)(JNIEnv *, jclass, const JNINativeMethod *, jint);
static RegisterNatives_t g_orig_register_natives = nullptr;
static std::atomic<bool> g_installed{false};

// Hook: observe RegisterNatives calls originating from libcawwyayy.so.
// LIAPP's bootstrap depends on some of these registrations, so dropping all
// of them breaks attachBaseContext before Unity can start.
static jint hook_register_natives(JNIEnv *env, jclass cls,
                                   const JNINativeMethod *methods, jint n_methods)
{
    void *ret = __builtin_return_address(0);
    Dl_info info{};
    if (ret && dladdr(ret, &info) && info.dli_fname &&
        std::strstr(info.dli_fname, "cawwyayy")) {
        logi("jni_bypass: RegisterNatives from libcawwyayy.so allowed (%d methods)", n_methods);
        for (jint i = 0; methods && i < n_methods && i < 8; ++i) {
            logi("jni_bypass: native[%d]=%s %s",
                 i,
                 methods[i].name ? methods[i].name : "<null>",
                 methods[i].signature ? methods[i].signature : "<null>");
        }
    }
    return g_orig_register_natives(env, cls, methods, n_methods);
}

} // namespace

void init(JavaVM *vm)
{
    if (!vm) return;
    bool expected = false;
    if (!g_installed.compare_exchange_strong(expected, true))
        return;

    JNIEnv *env = nullptr;
    jint rc = vm->GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_6);
    if (rc == JNI_EDETACHED)
        rc = vm->AttachCurrentThread(&env, nullptr);
    if (rc != JNI_OK || !env) {
        __android_log_print(ANDROID_LOG_ERROR, kTag,
                            "jni_bypass: GetEnv failed (rc=%d)", rc);
        return;
    }

    void **orig_vtable = *reinterpret_cast<void ***>(env);
    void *target = orig_vtable[215];
    void *trampoline = nullptr;
    if (!eversoul::hook::install_inline_hook(target,
                                             reinterpret_cast<void *>(hook_register_natives),
                                             &trampoline)) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "jni_bypass: RegisterNatives inline hook failed");
        g_installed = false;
        return;
    }
    g_orig_register_natives = reinterpret_cast<RegisterNatives_t>(trampoline);
    logi("jni_bypass: RegisterNatives inline hook active");
}

} // namespace eversoul::jni_bypass
#else
namespace eversoul::jni_bypass {
    void init(JavaVM *) {}
} // namespace eversoul::jni_bypass
#endif // __aarch64__
