// anticheat_patch.cpp — ARM64 inline hook of libc pthread_create (C++23 rewrite of
// the original swappywrapper.c). When a thread's start_routine belongs to
// libcawwyayy.so (the anti-cheat library), it is replaced with a no-op so the
// detection thread is created but never runs its logic.
//
// The Android linker binds libcawwyayy's imported pthread_create directly to libc.so,
// so symbol interposition (RTLD_GLOBAL) cannot override it. We instead patch the first
// 16 bytes of libc's pthread_create with an absolute jump to our hook and build a
// trampoline that runs the saved prologue and returns to the original.
#include "apk/patch/anticheat.hpp"

#include <dlfcn.h>
#include <fcntl.h>
#include <pthread.h>
#include <sys/mman.h>
#include <unistd.h>

#include <array>
#include <atomic>
#include <bit>
#include <cerrno>
#include <cstdint>
#include <cstring>

#include <android/log.h>

namespace eversoul::anticheat
{
    namespace
    {

        constexpr const char *kLogTag = "libswappywrapper";
// The format string is always a literal at the call site; silence -Wformat-security
// for these thin forwarding wrappers.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
        template <class... A>
        void logi(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_INFO, kLogTag, fmt, a...); }
        template <class... A>
        void logw(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_WARN, kLogTag, fmt, a...); }
        template <class... A>
        void loge(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_ERROR, kLogTag, fmt, a...); }
#pragma clang diagnostic pop

        using pthread_create_fn = int (*)(pthread_t *, const pthread_attr_t *, void *(*)(void *), void *);

        pthread_create_fn g_orig_pthread_create = nullptr;
        std::atomic<bool> g_hook_installed{false};

        // Absolute jump (16 bytes): LDR X16,[PC,#8]; BR X16; .quad target
        constexpr std::size_t kPatchSize = 16;
        constexpr std::uint32_t kInsnLdrX16Pc8 = 0x58000050;
        constexpr std::uint32_t kInsnBrX16 = 0xD61F0200;

        void *dummy_thread(void *) { return nullptr; }

        // Our replacement pthread_create: divert anti-cheat threads to a no-op routine.
        int hook_pthread_create(pthread_t *thread, const pthread_attr_t *attr, void *(*start_routine)(void *),
                                void *arg)
        {
            if (start_routine)
            {
                Dl_info info;
                if (dladdr(reinterpret_cast<void *>(start_routine), &info) && info.dli_fname &&
                    std::strstr(info.dli_fname, "cawwyayy"))
                {
                    auto offset = reinterpret_cast<std::uintptr_t>(start_routine) -
                                  reinterpret_cast<std::uintptr_t>(info.dli_fbase);
                    logi("차단: %s 스레드 offset=0x%lx", info.dli_fname, static_cast<unsigned long>(offset));
                    return g_orig_pthread_create(thread, attr, dummy_thread, arg);
                }
            }
            return g_orig_pthread_create(thread, attr, start_routine, arg);
        }

        // PC-relative prologue instructions would break if copied into the trampoline verbatim.
        // bionic's pthread_create prologue is plain STP/SUB stack setup, so this is just a guard.
        bool is_pc_relative_insn(std::uint32_t insn)
        {
            if ((insn & 0x9F000000) == 0x90000000)
                return true; // ADRP
            if ((insn & 0x9F000000) == 0x10000000)
                return true; // ADR
            if ((insn & 0x7C000000) == 0x14000000)
                return true; // B / BL
            if ((insn & 0xFF000010) == 0x54000000)
                return true; // B.cond
            if ((insn & 0x7E000000) == 0x34000000)
                return true; // CBZ / CBNZ
            if ((insn & 0x7E000000) == 0x36000000)
                return true; // TBZ / TBNZ
            if ((insn & 0x3B000000) == 0x18000000)
                return true; // LDR (literal)
            return false;
        }

        // Write `bytes` to executable memory: try mprotect+memcpy, fall back to /proc/self/mem.
        bool write_memory(void *dest, const void *src, std::size_t len)
        {
            long page_size = sysconf(_SC_PAGESIZE);
            auto page_start = reinterpret_cast<std::uintptr_t>(dest) & ~(static_cast<std::uintptr_t>(page_size) - 1);
            std::size_t prot_size =
                (reinterpret_cast<std::uintptr_t>(dest) + len - page_start + page_size - 1) & ~(page_size - 1);

            if (mprotect(reinterpret_cast<void *>(page_start), prot_size, PROT_READ | PROT_WRITE | PROT_EXEC) == 0)
            {
                std::memcpy(dest, src, len);
                __builtin___clear_cache(static_cast<char *>(dest), static_cast<char *>(dest) + len);
                mprotect(reinterpret_cast<void *>(page_start), prot_size, PROT_READ | PROT_EXEC);
                return true;
            }
            logw("write_memory: mprotect 실패 (%s), /proc/self/mem 방식 시도", std::strerror(errno));

            int fd = open("/proc/self/mem", O_RDWR);
            if (fd < 0)
            {
                loge("write_memory: /proc/self/mem 열기 실패: %s", std::strerror(errno));
                return false;
            }
            bool ok = false;
            if (lseek(fd, static_cast<off_t>(reinterpret_cast<std::uintptr_t>(dest)), SEEK_SET) != static_cast<off_t>(-1))
            {
                ssize_t written = write(fd, src, len);
                if (written == static_cast<ssize_t>(len))
                {
                    __builtin___clear_cache(static_cast<char *>(dest), static_cast<char *>(dest) + len);
                    logi("write_memory: /proc/self/mem 방식 성공");
                    ok = true;
                }
                else
                {
                    loge("write_memory: write 실패 (wrote %zd/%zu): %s", written, len, std::strerror(errno));
                }
            }
            else
            {
                loge("write_memory: lseek 실패: %s", std::strerror(errno));
            }
            close(fd);
            return ok;
        }

        // Build a trampoline: [saved 16-byte prologue][LDR X16,[PC,#8]; BR X16; .quad target+16].
        void *create_trampoline(void *target)
        {
            long page_size = sysconf(_SC_PAGESIZE);
            void *mem = mmap(nullptr, static_cast<std::size_t>(page_size), PROT_READ | PROT_WRITE,
                             MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
            if (mem == MAP_FAILED)
            {
                loge("create_trampoline: mmap 실패: %s", std::strerror(errno));
                return nullptr;
            }

            auto *p = static_cast<std::uint8_t *>(mem);
            std::memcpy(p, target, kPatchSize);

            auto resume_addr = reinterpret_cast<std::uintptr_t>(target) + kPatchSize;
            std::memcpy(p + kPatchSize, &kInsnLdrX16Pc8, 4);
            std::memcpy(p + kPatchSize + 4, &kInsnBrX16, 4);
            std::memcpy(p + kPatchSize + 8, &resume_addr, 8);

            if (mprotect(mem, static_cast<std::size_t>(page_size), PROT_READ | PROT_EXEC) != 0)
            {
                loge("create_trampoline: mprotect RX 실패: %s", std::strerror(errno));
                munmap(mem, static_cast<std::size_t>(page_size));
                return nullptr;
            }
            __builtin___clear_cache(static_cast<char *>(mem), reinterpret_cast<char *>(p + kPatchSize + 16));
            return mem;
        }

        bool install_inline_hook(void *target, void *hook, void **out_trampoline)
        {
            auto *insns = static_cast<std::uint32_t *>(target);
            for (int i = 0; i < 4; ++i)
            {
                if (is_pc_relative_insn(insns[i]))
                {
                    logw("경고: 명령[%d]=0x%08x 는 PC 상대 주소 지정, trampoline 내 실행 오류 가능", i, insns[i]);
                }
            }
            logi("원본 명령: [0]=0x%08x [1]=0x%08x [2]=0x%08x [3]=0x%08x", insns[0], insns[1], insns[2], insns[3]);

            void *tramp = create_trampoline(target);
            if (!tramp)
            {
                loge("install_inline_hook: trampoline 생성 실패");
                return false;
            }

            std::array<std::uint8_t, kPatchSize> patch{};
            auto hook_addr = reinterpret_cast<std::uintptr_t>(hook);
            std::memcpy(patch.data(), &kInsnLdrX16Pc8, 4);
            std::memcpy(patch.data() + 4, &kInsnBrX16, 4);
            std::memcpy(patch.data() + 8, &hook_addr, 8);

            if (!write_memory(target, patch.data(), patch.size()))
            {
                loge("install_inline_hook: 패치 쓰기 실패");
                munmap(tramp, static_cast<std::size_t>(sysconf(_SC_PAGESIZE)));
                return false;
            }

            *out_trampoline = tramp;
            logi("훅 설치 성공: target=%p -> hook=%p, trampoline=%p", target, hook, tramp);
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
            loge("pthread_create 심볼을 찾을 수 없음");
            g_hook_installed = false;
            return;
        }

        Dl_info dl;
        if (dladdr(target, &dl))
        {
            logi("대상: pthread_create @ %p (%s + 0x%lx)", target, dl.dli_fname,
                 static_cast<unsigned long>(reinterpret_cast<std::uintptr_t>(target) -
                                            reinterpret_cast<std::uintptr_t>(dl.dli_fbase)));
        }
        else
        {
            logi("대상: pthread_create @ %p (dladdr 실패)", target);
        }

        void *trampoline = nullptr;
        if (install_inline_hook(target, reinterpret_cast<void *>(hook_pthread_create), &trampoline))
        {
            g_orig_pthread_create = std::bit_cast<pthread_create_fn>(trampoline);
            logi("pthread_create 훅 활성화 완료");
        }
        else
        {
            loge("pthread_create 훅 설치 실패");
            g_hook_installed = false;
        }
    }

} // namespace eversoul::anticheat
