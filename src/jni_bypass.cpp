#include "jni_bypass.hpp"

#ifdef __aarch64__

#include "inline_hook.hpp"

#include <android/log.h>
#include <dlfcn.h>
#include <jni.h>
#include <sys/mman.h>

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

// Hook: drop every RegisterNatives call originating from libcawwyayy.so.
static jint hook_register_natives(JNIEnv *env, jclass cls,
                                   const JNINativeMethod *methods, jint n_methods)
{
    void *ret = __builtin_return_address(0);
    Dl_info info{};
    if (ret && dladdr(ret, &info) && info.dli_fname &&
        std::strstr(info.dli_fname, "cawwyayy")) {
        logi("jni_bypass: RegisterNatives from libcawwyayy.so blocked (%d methods)", n_methods);
        return JNI_OK;
    }
    return g_orig_register_natives(env, cls, methods, n_methods);
}

} // namespace

void init(JavaVM *vm)
{
    if (!vm) return;

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
    g_orig_register_natives = reinterpret_cast<RegisterNatives_t>(orig_vtable[215]);

    constexpr size_t kVtableCount = 256;
    constexpr size_t kVtableBytes = kVtableCount * sizeof(void *);
    void **new_vtable = static_cast<void **>(
        mmap(nullptr, kVtableBytes, PROT_READ | PROT_WRITE,
             MAP_PRIVATE | MAP_ANONYMOUS, -1, 0));
    if (new_vtable == MAP_FAILED) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "jni_bypass: mmap failed");
        return;
    }
    memcpy(new_vtable, orig_vtable, kVtableBytes);
    new_vtable[215] = reinterpret_cast<void *>(hook_register_natives);
    mprotect(new_vtable, kVtableBytes, PROT_READ);

    *reinterpret_cast<void ***>(env) = new_vtable;
    logi("jni_bypass: RegisterNatives hooked (vtable replaced)");
}

} // namespace eversoul::jni_bypass
#else
namespace eversoul::jni_bypass {
    void init(JavaVM *) {}
} // namespace eversoul::jni_bypass
#endif // __aarch64__
