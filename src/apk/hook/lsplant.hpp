// lsplant_hook.hpp — Java-layer URL redirection via LSPlant.
// Initializes LSPlant with our inline_hook engine and hooks java.net.URL
// constructors + okhttp3.Request$Builder.url() to redirect Kakao domains.
#pragma once

#include <jni.h>

namespace eversoul::lsplant_hook
{

    // Initialize LSPlant and install Java-layer hooks.
    // Must be called from JNI_OnLoad (where ART hidden API restrictions are
    // not yet enforced). Returns true on success.
    bool init(JNIEnv *env);

} // namespace eversoul::lsplant_hook
