// java_hook.hpp — Load pine_helper.dex via InMemoryDexClassLoader.
// Call from a thread that already has JNI context (e.g. il2cpp_init detour).
#pragma once

#include <jni.h>

namespace eversoul::java_hook
{
    // Load pine_helper.dex from assets/ and invoke PineHelper.init().
    // Call when Application is ready and caller has a valid JNIEnv.
    // Returns true on success.
    bool try_load(JNIEnv *env);

} // namespace eversoul::java_hook
