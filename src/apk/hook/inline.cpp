// inline_hook.cpp — Generic ARM64 inline hook implementation.
// Extracted from anticheat_patch.cpp and generalised for reuse.
#include "apk/hook/inline.hpp"

#include <array>
#include <cerrno>
#include <cstring>
#include <map>
#include <mutex>

#include <android/log.h>
#include <dlfcn.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>

namespace eversoul::inline_hook
{
    namespace
    {
        constexpr const char *kLogTag = "libswappywrapper/hook";
        constexpr std::size_t kPatchSize = 16;
        constexpr std::uint32_t kInsnLdrX16Pc8 = 0x58000050;
        constexpr std::uint32_t kInsnBrX16 = 0xD61F0200;

        // Map from hooked target address -> saved original 16-byte prologue, so
        // remove() can restore the function.
        std::map<void *, std::array<std::uint8_t, kPatchSize>> g_saved_prologues;
        std::mutex g_mutex;

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
        template <class... A>
        void logi(const char *fmt, A... a)
        {
            __android_log_print(ANDROID_LOG_INFO, kLogTag, fmt, a...);
        }
        template <class... A>
        void logw(const char *fmt, A... a)
        {
            __android_log_print(ANDROID_LOG_WARN, kLogTag, fmt, a...);
        }
        template <class... A>
        void loge(const char *fmt, A... a)
        {
            __android_log_print(ANDROID_LOG_ERROR, kLogTag, fmt, a...);
        }
#pragma clang diagnostic pop

        // Raw write to executable memory. Tries mprotect first, falls back to /proc/self/mem.
        bool write_memory(void *dest, const void *src, std::size_t len)
        {
            long page_size = sysconf(_SC_PAGESIZE);
            auto page_start =
                reinterpret_cast<std::uintptr_t>(dest) & ~(static_cast<std::uintptr_t>(page_size) - 1);
            std::size_t prot_size =
                (reinterpret_cast<std::uintptr_t>(dest) + len - page_start + page_size - 1) &
                ~(static_cast<std::size_t>(page_size) - 1);

            if (mprotect(reinterpret_cast<void *>(page_start), prot_size, PROT_READ | PROT_WRITE | PROT_EXEC) == 0)
            {
                std::memcpy(dest, src, len);
                __builtin___clear_cache(static_cast<char *>(dest), static_cast<char *>(dest) + len);
                mprotect(reinterpret_cast<void *>(page_start), prot_size, PROT_READ | PROT_EXEC);
                return true;
            }
            logw("write_memory: mprotect failed (%s), trying /proc/self/mem", std::strerror(errno));

            int fd = open("/proc/self/mem", O_RDWR);
            if (fd < 0)
            {
                loge("write_memory: open /proc/self/mem failed: %s", std::strerror(errno));
                return false;
            }
            bool ok = false;
            if (lseek(fd, static_cast<off_t>(reinterpret_cast<std::uintptr_t>(dest)), SEEK_SET) !=
                static_cast<off_t>(-1))
            {
                ssize_t written = write(fd, src, len);
                if (written == static_cast<ssize_t>(len))
                {
                    __builtin___clear_cache(static_cast<char *>(dest), static_cast<char *>(dest) + len);
                    logi("write_memory: /proc/self/mem ok");
                    ok = true;
                }
                else
                {
                    loge("write_memory: write failed (wrote %zd/%zu): %s", written, len, std::strerror(errno));
                }
            }
            else
            {
                loge("write_memory: lseek failed: %s", std::strerror(errno));
            }
            close(fd);
            return ok;
        }

    } // anonymous namespace

    bool patch_memory(void *dest, std::uintptr_t hook_addr)
    {
        std::array<std::uint8_t, kPatchSize> patch{};
        std::memcpy(patch.data(), &kInsnLdrX16Pc8, 4);
        std::memcpy(patch.data() + 4, &kInsnBrX16, 4);
        std::memcpy(patch.data() + 8, &hook_addr, 8);
        return write_memory(dest, patch.data(), patch.size());
    }

    void *create_trampoline(const void *original_prologue, std::uintptr_t resume_addr)
    {
        long page_size = sysconf(_SC_PAGESIZE);
        void *mem = mmap(nullptr, static_cast<std::size_t>(page_size), PROT_READ | PROT_WRITE,
                         MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
        if (mem == MAP_FAILED)
        {
            loge("create_trampoline: mmap failed: %s", std::strerror(errno));
            return nullptr;
        }

        auto *p = static_cast<std::uint8_t *>(mem);
        // Copy the saved prologue (16 bytes) into the trampoline
        std::memcpy(p, original_prologue, kPatchSize);

        // Append absolute jump back to target + 16
        std::memcpy(p + kPatchSize, &kInsnLdrX16Pc8, 4);
        std::memcpy(p + kPatchSize + 4, &kInsnBrX16, 4);
        std::memcpy(p + kPatchSize + 8, &resume_addr, 8);

        if (mprotect(mem, static_cast<std::size_t>(page_size), PROT_READ | PROT_EXEC) != 0)
        {
            loge("create_trampoline: mprotect RX failed: %s", std::strerror(errno));
            munmap(mem, static_cast<std::size_t>(page_size));
            return nullptr;
        }
        __builtin___clear_cache(static_cast<char *>(mem), reinterpret_cast<char *>(p + kPatchSize + 16));
        return mem;
    }

    // Check whether a 32-bit ARM64 instruction uses PC-relative addressing.
    // PC-relative instructions in a trampoline would compute wrong addresses
    // because the trampoline sits at a different PC than the original function.
    // This is a simplified check — a full relocation engine (like Dobby) is
    // needed for production use.
    bool is_pc_relative_insn(std::uint32_t insn)
    {
        if ((insn & 0x9F000000) == 0x90000000) return true; // ADRP
        if ((insn & 0x9F000000) == 0x10000000) return true; // ADR
        if ((insn & 0x7C000000) == 0x14000000) return true; // B / BL
        if ((insn & 0xFF000010) == 0x54000000) return true; // B.cond
        if ((insn & 0x7E000000) == 0x34000000) return true; // CBZ / CBNZ
        if ((insn & 0x7E000000) == 0x36000000) return true; // TBZ / TBNZ
        if ((insn & 0x3B000000) == 0x18000000) return true; // LDR (literal)
        return false;
    }

    void *install(void *target, void *hook)
    {
        if (!target || !hook)
        {
            loge("install: null target or hook");
            return nullptr;
        }

        std::lock_guard lock(g_mutex);

        // Check if already hooked
        if (g_saved_prologues.contains(target))
        {
            logw("install: %p already hooked, skipping", target);
            return nullptr;
        }

        // Check for PC-relative instructions in the prologue. If found, refuse
        // to hook — our simple trampoline cannot relocate them. A production
        // inline hook engine (Dobby / Frida Gum) handles this correctly.
        auto *insns = static_cast<const std::uint32_t *>(target);
        bool has_pc_rel = false;
        for (std::size_t i = 0; i < 4; ++i)
        {
            if (is_pc_relative_insn(insns[i]))
            {
                logw("install: PC-relative insn[%zu]=0x%08x at %p — refusing hook", i, insns[i], target);
                has_pc_rel = true;
            }
        }
        if (has_pc_rel)
        {
            loge("install: target %p has PC-relative instructions; this inline hook engine cannot handle it", target);
            return nullptr;
        }

        // Save original prologue
        std::array<std::uint8_t, kPatchSize> saved{};
        std::memcpy(saved.data(), target, kPatchSize);
        g_saved_prologues[target] = saved;

        logi("install: target=%p hook=%p saved=[0]=0x%08x [1]=0x%08x",
             target, hook,
             *reinterpret_cast<std::uint32_t *>(saved.data()),
             *reinterpret_cast<std::uint32_t *>(saved.data() + 4));

        // Create trampoline to resume at target + 16
        auto resume_addr = reinterpret_cast<std::uintptr_t>(target) + kPatchSize;
        void *tramp = create_trampoline(saved.data(), resume_addr);
        if (!tramp)
        {
            g_saved_prologues.erase(target);
            return nullptr;
        }

        // Apply the patch
        if (!patch_memory(target, reinterpret_cast<std::uintptr_t>(hook)))
        {
            loge("install: patch failed for %p", target);
            // Cleanup trampoline (we can't easily munmap, just leak it)
            g_saved_prologues.erase(target);
            return nullptr;
        }

        return tramp;
    }

    bool remove(void *target)
    {
        if (!target) return false;

        std::lock_guard lock(g_mutex);

        auto it = g_saved_prologues.find(target);
        if (it == g_saved_prologues.end())
        {
            logw("remove: %p not hooked", target);
            return false;
        }

        // Restore original prologue
        if (!write_memory(target, it->second.data(), kPatchSize))
        {
            loge("remove: failed to restore %p", target);
            return false;
        }

        logi("remove: restored %p", target);
        g_saved_prologues.erase(it);
        return true;
    }

} // namespace eversoul::inline_hook
