// Contributor: MadlyMoe (working MuMu ARM64 bypass, EverSoul 1.34.101)
#include "anticheat_patch.hpp"

#include "inline_hook.hpp"

#include <android/log.h>
#include <dlfcn.h>
#include <pthread.h>

#include <atomic>
#include <cstring>

namespace eversoul::anticheat
{

    namespace
    {
        constexpr const char *kLogTag = "libswappywrapper";

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
        template <class... A>
        void logi(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_INFO,  kLogTag, fmt, a...); }
        template <class... A>
        void loge(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_ERROR, kLogTag, fmt, a...); }
#pragma clang diagnostic pop
    } // namespace

#if defined(__aarch64__) || defined(__x86_64__)

    namespace
    {
        using pthread_create_fn = int (*)(pthread_t *, const pthread_attr_t *, void *(*)(void *), void *);

        pthread_create_fn g_orig_pthread_create = nullptr;
        std::atomic<bool> g_hook_installed{false};

        void *dummy_thread(void *) { return nullptr; }

        int hook_pthread_create(pthread_t *thread, const pthread_attr_t *attr,
                                void *(*start_routine)(void *), void *arg)
        {
            if (start_routine)
            {
                Dl_info info;
                if (dladdr(reinterpret_cast<void *>(start_routine), &info) &&
                    info.dli_fname && std::strstr(info.dli_fname, "cawwyayy"))
                {
                    auto offset = reinterpret_cast<std::uintptr_t>(start_routine) -
                                  reinterpret_cast<std::uintptr_t>(info.dli_fbase);
                    logi("anticheat: blocked %s thread offset=0x%lx",
                         info.dli_fname, static_cast<unsigned long>(offset));
                    return g_orig_pthread_create(thread, attr, dummy_thread, arg);
                }
            }
            return g_orig_pthread_create(thread, attr, start_routine, arg);
        }
    } // namespace

    void install()
    {
        bool expected = false;
        if (!g_hook_installed.compare_exchange_strong(expected, true))
            return;

        void *target = dlsym(RTLD_DEFAULT, "pthread_create");
        if (!target)
        {
            loge("anticheat: pthread_create not found");
            g_hook_installed = false;
            return;
        }

        void *trampoline = nullptr;
        if (eversoul::hook::install_inline_hook(target,
                                                reinterpret_cast<void *>(hook_pthread_create),
                                                &trampoline))
        {
            g_orig_pthread_create = reinterpret_cast<pthread_create_fn>(trampoline);
            logi("anticheat: pthread_create hook active (arm64)");
        }
        else
        {
            loge("anticheat: hook install failed");
            g_hook_installed = false;
        }
    }

#else

    void install()
    {
        logi("anticheat: hook skipped (unsupported arch)");
    }

#endif

} // namespace eversoul::anticheat
