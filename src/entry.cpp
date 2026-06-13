#include <jni.h>

#include <android/log.h>

#include "anticheat_patch.hpp"
#include "asset_migration.hpp"
#include "common.hpp"
#include "il2cpp_redirect.hpp"
#include "java_hook.hpp"
#include "jni_bypass.hpp"
#include "liapp_bypass.hpp"

namespace
{
    constexpr const char *kLogTag = "libswappywrapper";
}

extern "C"
{

    __attribute__((constructor)) static void eversoul_entry()
    {
        eversoul::asset_migration::migrate();
        eversoul::liapp_bypass::install();
        eversoul::anticheat::install();
        eversoul::il2cpp_redirect::install();
    }

    JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm, void *reserved)
    {
        (void)reserved;
        __android_log_print(ANDROID_LOG_INFO, kLogTag, "JNI_OnLoad (hook+redirect layer active)");
        eversoul::jni_bypass::init(vm);
        eversoul::java_hook::init(vm);
        return JNI_VERSION_1_6;
    }

} // extern "C"
