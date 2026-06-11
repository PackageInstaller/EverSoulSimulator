// entry.cpp — Android entry point for the merged libswappywrapper.so.
//
// The game auto-loads this library under the name "swappywrapper" very early
// (before LIAPP / libcawwyayy initialize). A single constructor:
//   1. installs the pthread_create hook (must precede anti-cheat thread creation), then
//   2. starts the offline mock server on a background thread.
#include <jni.h>

#include <android/log.h>

#include "anticheat_patch.hpp"
#include "asset_migration.hpp"
#include "common.hpp"
#include "server.hpp"

namespace
{
    constexpr const char *kLogTag = "libswappywrapper";
}

extern "C"
{

    __attribute__((constructor)) static void eversoul_entry()
    {
        // Order matters: hook before the anti-cheat library spawns its detection threads,
        // then bring up the in-process server (its own threads are not anti-cheat threads,
        // so the hook's cawwyayy filter never diverts them).
        eversoul::asset_migration::migrate();
        eversoul::anticheat::install();
        eversoul::start_async(eversoul::kDefaultPort);
    }

    JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm, void *reserved)
    {
        (void)vm;
        (void)reserved;
        __android_log_print(ANDROID_LOG_INFO, kLogTag, "JNI_OnLoad (merged anti-cheat + offline server)");
        return JNI_VERSION_1_6;
    }

} // extern "C"
