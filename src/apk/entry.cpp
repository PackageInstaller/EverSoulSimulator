// entry.cpp — libswappywrapper.so Android 진입점
// constructor 단계: anticheat + net_redirect + file_protect + frida-gum init
// JNI_OnLoad 단계: frida-gum IL2CPP 훅 (JNIEnv 준비 완료 후)
#include <jni.h>
#include <android/log.h>
#include <dlfcn.h>

#include "apk/patch/anticheat.hpp"
#include "type/common.hpp"
#include "apk/frida/gum_init.hpp"
#include "apk/hook/file_protect_hook.hpp"
#include "apk/native/url_hooks.hpp"
#include "apk/redirect/net.hpp"

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

        // 3. 중요 파일 삭제 차단: catalog_eversoul.hash/json, data_4725
        __android_log_print(ANDROID_LOG_INFO, kLogTag, "파일 보호 훅 설치");
        eversoul::file_protect::install();

        // 4. frida-gum 런타임 초기화 (GumInterceptor 사용 전 필수, JNIEnv 불필요)
        eversoul::frida_gum::init();
    }

    JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *, void *)
    {
        __android_log_print(ANDROID_LOG_INFO, kLogTag, "JNI_OnLoad — IL2CPP 훅 초기화");
        eversoul::native_hooks::install_il2cpp_hooks();
        return JNI_VERSION_1_6;
    }

} // extern "C"
