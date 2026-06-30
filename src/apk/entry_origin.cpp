#include <android/log.h>
#include "apk/patch/anticheat.hpp"

extern "C"
{
    __attribute__((constructor)) static void eversoul_origin_entry()
    {
        __android_log_print(ANDROID_LOG_INFO, "libswappywrapper-origin",
                            "anticheat pthread_create hook installing");
        eversoul::anticheat::install();
    }
}
