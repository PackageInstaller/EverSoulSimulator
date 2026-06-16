#include <jni.h>
#include <android/log.h>
#include <dlfcn.h>

#include "anticheat_patch.hpp"
#include "common.hpp"
#include "il2cpp_hook.hpp"
#include "lsplant_hook.hpp"
#include "net_redirect.hpp"
#include "server.hpp"

namespace
{
    constexpr const char *kLogTag = "libswappywrapper";
}

extern "C"
{

    __attribute__((constructor)) static void eversoul_entry()
    {
        __android_log_print(ANDROID_LOG_INFO, kLogTag, "anti-cheat hook");
        eversoul::anticheat::install();

        __android_log_print(ANDROID_LOG_INFO, kLogTag, "offline server start async port=%d", eversoul::kDefaultPort);
        eversoul::start_async(eversoul::kDefaultPort);

        __android_log_print(ANDROID_LOG_INFO, kLogTag, "transport redirect hooks");
        eversoul::net_redirect::install();

        __android_log_print(ANDROID_LOG_INFO, kLogTag, "IL2CPP hook thread");
        eversoul::il2cpp_hook::init();
    }

    JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm, void *reserved)
    {
        (void)reserved;
        __android_log_print(ANDROID_LOG_INFO, kLogTag, "JNI_OnLoad");
        JNIEnv *env = nullptr;
        if (vm->GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_6) == JNI_OK)
        {
            __android_log_print(ANDROID_LOG_INFO, kLogTag, "LSPlant Java hook init");
            eversoul::lsplant_hook::init(env);
        }
        return JNI_VERSION_1_6;
    }

} // extern "C"
