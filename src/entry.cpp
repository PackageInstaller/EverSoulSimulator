// entry.cpp — Android entry point for libswappywrapper.so.
// 1. Anti-cheat bypass (pthread_create hook)
// 2. Offline mock server on :9999
// 3. IL2CPP UnityWebRequest URL redirect (native)
// Java-layer Kakao SDK URL redirect is handled by Smali injection.
#include <jni.h>
#include <android/log.h>
#include <dlfcn.h>

#include "anticheat_patch.hpp"
#include "common.hpp"
#include "il2cpp_hook.hpp"
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
        // 1. Anti-cheat
        __android_log_print(ANDROID_LOG_INFO, kLogTag, "anti-cheat hook");
        eversoul::anticheat::install();

        // 2. Offline server
        __android_log_print(ANDROID_LOG_INFO, kLogTag, "starting offline server :%d",
                             eversoul::kDefaultPort);
        eversoul::start_async(eversoul::kDefaultPort);

        // 3. Transport-layer redirect: connect()/getaddrinfo() -> 127.0.0.1:9999.
        __android_log_print(ANDROID_LOG_INFO, kLogTag, "transport redirect hooks");
        eversoul::net_redirect::install();

        // 4. IL2CPP UnityWebRequest hook
        __android_log_print(ANDROID_LOG_INFO, kLogTag, "IL2CPP hook thread");
        eversoul::il2cpp_hook::init();
    }

    JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm, void *reserved)
    {
        (void)vm;
        (void)reserved;
        __android_log_print(ANDROID_LOG_INFO, kLogTag, "JNI_OnLoad");
        return JNI_VERSION_1_6;
    }

} // extern "C"
