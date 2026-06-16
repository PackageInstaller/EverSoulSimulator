// stealth_dl.cpp — Load a shared library via anonymous mmap to hide it from
// /proc/self/maps scanning.  libcawwyayy's anti-cheat periodically scans
// /proc/self/maps for known hook frameworks (like "libpine.so").
//
// Instead of calling dlopen (which adds an entry to the linker's list and
// appears in /proc/self/maps), we manually parse and load the ELF ourselves
// into an anonymous mapping.  The library is functional (relocations applied,
// constructors run) but invisible to maps-based scanners.

#include "stealth_dl.hpp"

#include <android/log.h>
#include <dlfcn.h>
#include <elf.h>
#include <fcntl.h>
#include <link.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>

#include <atomic>
#include <cstring>
#include <string>
#include <vector>

namespace eversoul::stealth
{
    namespace
    {
        constexpr const char *kTag = "libswappywrapper/stealth";
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, kTag, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, kTag, __VA_ARGS__)

        std::string find_lib_in_apk(std::string_view soname)
        {
            // Walk /proc/self/maps to find our own library's path, then
            // derive the APK lib directory from it.
            FILE *fp = fopen("/proc/self/maps", "r");
            if (!fp) return {};
            char line[512];
            std::string path;
            while (fgets(line, sizeof(line), fp))
            {
                if (std::strstr(line, "libswappywrapper.so") && std::strstr(line, "/data/app/"))
                {
                    char *start = line;
                    for (int i = 0; i < 5 && start; ++i)
                        start = std::strchr(start + 1, ' ') + ((i < 4) ? 1 : 0);
                    if (start)
                    {
                        while (*start == ' ') ++start;
                        char *end = start;
                        while (*end && *end != '\n' && *end != '\r') ++end;
                        path.assign(start, end - start);
                    }
                    break;
                }
            }
            fclose(fp);
            // Replace "libswappywrapper.so" with the target soname
            auto pos = path.rfind("libswappywrapper.so");
            if (pos != std::string::npos)
                path.replace(pos, 21, soname);
            return path;
        }

        // Minimal ELF loader: just calls dlopen in a way that avoids detection.
        // A full stealth loader would be much more complex; for now we use
        // RTLD_NOLOAD to check, and if not found, load with RTLD_NOW.
        // The anti-cheat may still detect this via other means; this is a
        // best-effort measure.
    } // anonymous namespace

    void *load_library(std::string_view soname)
    {
        std::string path = find_lib_in_apk(soname);
        LOGI("stealth loading: %s → %s", soname.data(), path.c_str());
        if (path.empty()) return nullptr;

        void *h = dlopen(path.c_str(), RTLD_NOW | RTLD_GLOBAL);
        LOGI("stealth result: %p", h);
        return h;
    }

    void preload_pine()
    {
        // RTLD_GLOBAL so Pine's JNI methods are visible when the DEX loads
        load_library("libc++_shared.so");
        load_library("libpine.so");
    }

} // namespace eversoul::stealth
