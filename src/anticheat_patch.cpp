#include "anticheat_patch.hpp"

#include <android/log.h>
#include <dlfcn.h>
#include <pthread.h>

#include <atomic>
#include <cstring>

#ifdef __aarch64__
#include <array>
#include <cerrno>
#include <cstdint>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#endif

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

#ifdef __aarch64__

    namespace
    {
        using pthread_create_fn = int (*)(pthread_t *, const pthread_attr_t *, void *(*)(void *), void *);

        pthread_create_fn    g_orig_pthread_create = nullptr;
        std::atomic<bool>    g_hook_installed{false};

        constexpr std::size_t    kPatchSize     = 16;
        constexpr std::uint32_t  kInsnLdrX16Pc8 = 0x58000050;
        constexpr std::uint32_t  kInsnBrX16     = 0xD61F0200;

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

        bool is_pc_relative_insn(std::uint32_t insn)
        {
            if ((insn & 0x9F000000) == 0x90000000) return true;
            if ((insn & 0x9F000000) == 0x10000000) return true;
            if ((insn & 0x7C000000) == 0x14000000) return true;
            if ((insn & 0xFF000010) == 0x54000000) return true;
            if ((insn & 0x7E000000) == 0x34000000) return true;
            if ((insn & 0x7E000000) == 0x36000000) return true;
            if ((insn & 0x3B000000) == 0x18000000) return true;
            return false;
        }

        bool write_memory(void *dest, const void *src, std::size_t len)
        {
            long page_size = sysconf(_SC_PAGESIZE);
            auto page_start = reinterpret_cast<std::uintptr_t>(dest) &
                              ~(static_cast<std::uintptr_t>(page_size) - 1);
            std::size_t prot_size =
                (reinterpret_cast<std::uintptr_t>(dest) + len - page_start +
                 static_cast<std::size_t>(page_size) - 1) &
                ~(static_cast<std::size_t>(page_size) - 1);
            if (mprotect(reinterpret_cast<void *>(page_start), prot_size,
                         PROT_READ | PROT_WRITE | PROT_EXEC) == 0)
            {
                std::memcpy(dest, src, len);
                __builtin___clear_cache(static_cast<char *>(dest),
                                        static_cast<char *>(dest) + len);
                mprotect(reinterpret_cast<void *>(page_start), prot_size, PROT_READ | PROT_EXEC);
                return true;
            }
            int fd = open("/proc/self/mem", O_RDWR);
            if (fd < 0) return false;
            bool ok = false;
            if (lseek(fd, static_cast<off_t>(reinterpret_cast<std::uintptr_t>(dest)),
                      SEEK_SET) != static_cast<off_t>(-1))
            {
                ssize_t written = write(fd, src, len);
                if (written == static_cast<ssize_t>(len))
                {
                    __builtin___clear_cache(static_cast<char *>(dest),
                                            static_cast<char *>(dest) + len);
                    ok = true;
                }
            }
            close(fd);
            return ok;
        }

        void *create_trampoline(void *target)
        {
            long page_size = sysconf(_SC_PAGESIZE);
            void *mem = mmap(nullptr, static_cast<std::size_t>(page_size),
                             PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
            if (mem == MAP_FAILED) return nullptr;
            auto *p = static_cast<std::uint8_t *>(mem);
            std::memcpy(p, target, kPatchSize);
            auto resume_addr = reinterpret_cast<std::uintptr_t>(target) + kPatchSize;
            std::memcpy(p + kPatchSize,     &kInsnLdrX16Pc8, 4);
            std::memcpy(p + kPatchSize + 4, &kInsnBrX16,     4);
            std::memcpy(p + kPatchSize + 8, &resume_addr,    8);
            if (mprotect(mem, static_cast<std::size_t>(page_size), PROT_READ | PROT_EXEC) != 0)
            {
                munmap(mem, static_cast<std::size_t>(page_size));
                return nullptr;
            }
            __builtin___clear_cache(static_cast<char *>(mem),
                                    reinterpret_cast<char *>(p + kPatchSize + 16));
            return mem;
        }

        bool install_inline_hook(void *target, void *hook, void **out_trampoline)
        {
            auto *insns = static_cast<std::uint32_t *>(target);
            for (int i = 0; i < 4; ++i)
            {
                if (is_pc_relative_insn(insns[i]))
                    logi("anticheat: WARNING insn[%d]=0x%08x is PC-relative", i, insns[i]);
            }
            void *tramp = create_trampoline(target);
            if (!tramp) return false;
            std::array<std::uint8_t, kPatchSize> patch{};
            auto hook_addr = reinterpret_cast<std::uintptr_t>(hook);
            std::memcpy(patch.data(),     &kInsnLdrX16Pc8, 4);
            std::memcpy(patch.data() + 4, &kInsnBrX16,     4);
            std::memcpy(patch.data() + 8, &hook_addr,      8);
            if (!write_memory(target, patch.data(), patch.size()))
            {
                munmap(tramp, static_cast<std::size_t>(sysconf(_SC_PAGESIZE)));
                return false;
            }
            *out_trampoline = tramp;
            logi("anticheat: hook installed target=%p -> hook=%p trampoline=%p",
                 target, hook, tramp);
            return true;
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
        if (install_inline_hook(target,
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
        logi("anticheat: hook skipped (non-arm64, server-only mode)");
    }

#endif

} // namespace eversoul::anticheat
