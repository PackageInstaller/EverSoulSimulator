// entry.cpp — libswappywrapper.so Android 진입점
// constructor 단계: anticheat + 서버 기동 + frida-gum init (JNIEnv 불필요)
// JNI_OnLoad 단계: LSPlant Java 훅 + frida-gum IL2CPP 훅 (JNIEnv 준비 완료 후)
#include <jni.h>
#include <android/log.h>
#include <dlfcn.h>

#include "anticheat_patch.hpp"
#include "common.hpp"
#include "frida_gum_init.hpp"
#include "lsplant_hooks.hpp"
#include "native_url_hooks.hpp"
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
        // 1. Anti-cheat bypass
        __android_log_print(ANDROID_LOG_INFO, kLogTag, "anti-cheat 훅 설치");
        eversoul::anticheat::install();

        // 2. 전송 레이어 리다이렉트: connect()/getaddrinfo() → 127.0.0.1:9991
        __android_log_print(ANDROID_LOG_INFO, kLogTag, "전송 레이어 리다이렉트 훅 설치");
        eversoul::net_redirect::install();

        // 4. frida-gum 런타임 초기화 (GumInterceptor 사용 전 필수, JNIEnv 불필요)
        eversoul::frida_gum::init();
    }

    JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm, void *reserved)
    {
        (void)reserved;
        __android_log_print(ANDROID_LOG_INFO, kLogTag, "JNI_OnLoad — Java/IL2CPP 훅 초기화");
        eversoul::lsplant::install_java_hooks(vm);
        eversoul::native_hooks::install_il2cpp_hooks();
        return JNI_VERSION_1_6;
    }

} // extern "C"
