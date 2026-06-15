// Contributor: MadlyMoe (working MuMu ARM64 bypass, EverSoul 1.34.101)
#include <jni.h>

#include <android/log.h>
#include <dlfcn.h>

#include "asset_migration.hpp"
#include "il2cpp_redirect.hpp"
#include "jni_bypass.hpp"
#include "liapp_bypass.hpp"

namespace
{
    constexpr const char *kLogTag = "libswappywrapper";

    void init_jni_bypass_from_created_vm()
    {
        using get_created_vms_fn = jint (*)(JavaVM **, jsize, jsize *);
        auto fn = reinterpret_cast<get_created_vms_fn>(
            dlsym(RTLD_DEFAULT, "JNI_GetCreatedJavaVMs"));
        if (!fn)
        {
            __android_log_print(ANDROID_LOG_WARN, kLogTag,
                                "jni_bypass: JNI_GetCreatedJavaVMs not found");
            return;
        }

        JavaVM *vm = nullptr;
        jsize count = 0;
        if (fn(&vm, 1, &count) == JNI_OK && count > 0 && vm)
            eversoul::jni_bypass::init(vm);
        else
            __android_log_print(ANDROID_LOG_WARN, kLogTag,
                                "jni_bypass: no created JavaVM available");
    }
}

extern "C"
{

    __attribute__((constructor)) static void eversoul_entry()
    {
        eversoul::asset_migration::migrate();
        eversoul::liapp_bypass::install();
        init_jni_bypass_from_created_vm();
        eversoul::il2cpp_redirect::install();
    }

    JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm, void *reserved)
    {
        (void)reserved;
        __android_log_print(ANDROID_LOG_INFO, kLogTag, "JNI_OnLoad (merged anti-cheat + offline server)");
        eversoul::jni_bypass::init(vm);
        return JNI_VERSION_1_6;
    }

} // extern "C"
