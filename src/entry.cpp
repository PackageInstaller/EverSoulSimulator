// entry.cpp — Android entry point for the merged libswappywrapper.so.
//
// The game auto-loads this library under the name "swappywrapper" very early
// (before LIAPP / libcawwyayy initialize). A single constructor:
//   1. migrates assets if needed,
//   2. installs LIAPP bypass hooks (must precede libcawwyayy init),
//   3. installs the anti-cheat pthread_create hook,
//   4. installs il2cpp URL redirect hooks (game HTTP → 127.0.0.1:9999 via adb reverse).
//
// No in-process server is started. The offline server runs as a desktop exe;
// adb reverse tcp:9999 tcp:9999 bridges the device to it.
#include <jni.h>

#include <android/log.h>

#include "anticheat_patch.hpp"
#include "asset_migration.hpp"
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
