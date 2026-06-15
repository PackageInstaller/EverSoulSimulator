// Contributor: MadlyMoe (working MuMu ARM64 bypass, EverSoul 1.34.101)
#pragma once

#include <atomic>
#include <cstdint>
#include <cstring>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>

namespace eversoul::hook {

inline bool write_memory(void *dest, const void *src, std::size_t len)
{
    long ps = sysconf(_SC_PAGESIZE);
    auto page = reinterpret_cast<std::uintptr_t>(dest) &
                ~(static_cast<std::uintptr_t>(ps) - 1);
    std::size_t sz =
        (reinterpret_cast<std::uintptr_t>(dest) + len - page +
         static_cast<std::size_t>(ps) - 1) &
        ~(static_cast<std::size_t>(ps) - 1);
    if (mprotect(reinterpret_cast<void *>(page), sz, PROT_READ | PROT_WRITE | PROT_EXEC) == 0) {
        std::memcpy(dest, src, len);
#if defined(__aarch64__)
        __builtin___clear_cache(static_cast<char *>(dest),
                                static_cast<char *>(dest) + len);
#endif
        mprotect(reinterpret_cast<void *>(page), sz, PROT_READ | PROT_EXEC);
        return true;
    }
    int fd = open("/proc/self/mem", O_RDWR);
    if (fd < 0) return false;
    bool ok = false;
    if (lseek(fd, static_cast<off_t>(reinterpret_cast<std::uintptr_t>(dest)),
              SEEK_SET) != static_cast<off_t>(-1)) {
        ok = (write(fd, src, len) == static_cast<ssize_t>(len));
#if defined(__aarch64__)
        if (ok)
            __builtin___clear_cache(static_cast<char *>(dest),
                                    static_cast<char *>(dest) + len);
#endif
    }
    close(fd);
    return ok;
}

#if defined(__aarch64__)

static constexpr std::size_t   kPatchSize     = 16;
static constexpr std::uint32_t kInsnLdrX16Pc8 = 0x58000050;
static constexpr std::uint32_t kInsnBrX16     = 0xD61F0200;

static constexpr std::size_t kTrampolineSize  = 32;
static constexpr std::size_t kTrampolineCount = 24;

static std::uint8_t s_trampoline_pool[kTrampolineSize * kTrampolineCount]
    __attribute__((aligned(8)));
static std::atomic<int> s_trampoline_next{0};

inline bool install_inline_hook(void *target, void *hook_fn, void **out_trampoline)
{
    int slot = s_trampoline_next.fetch_add(1, std::memory_order_relaxed);
    if (slot >= static_cast<int>(kTrampolineCount)) return false;
    auto *p = s_trampoline_pool + static_cast<std::size_t>(slot) * kTrampolineSize;
    std::memcpy(p, target, kPatchSize);
    auto resume = reinterpret_cast<std::uintptr_t>(target) + kPatchSize;
    std::memcpy(p + kPatchSize,     &kInsnLdrX16Pc8, 4);
    std::memcpy(p + kPatchSize + 4, &kInsnBrX16,     4);
    std::memcpy(p + kPatchSize + 8, &resume,         8);

    long ps = sysconf(_SC_PAGESIZE);
    auto page = reinterpret_cast<std::uintptr_t>(p) &
                ~(static_cast<std::uintptr_t>(ps) - 1);
    mprotect(reinterpret_cast<void *>(page), static_cast<std::size_t>(ps) * 2,
             PROT_READ | PROT_WRITE | PROT_EXEC);
    __builtin___clear_cache(reinterpret_cast<char *>(p),
                            reinterpret_cast<char *>(p + kTrampolineSize));

    std::uint8_t patch[kPatchSize]{};
    auto addr = reinterpret_cast<std::uintptr_t>(hook_fn);
    std::memcpy(patch,     &kInsnLdrX16Pc8, 4);
    std::memcpy(patch + 4, &kInsnBrX16,     4);
    std::memcpy(patch + 8, &addr,           8);
    if (!write_memory(target, patch, kPatchSize))
        return false;

    *out_trampoline = p;
    return true;
}

#elif defined(__x86_64__)

static constexpr std::size_t kPatchSize = 14;

inline bool install_inline_hook(void *target, void *hook_fn, void **out_trampoline)
{
    long ps = sysconf(_SC_PAGESIZE);
    void *mem = mmap(nullptr, static_cast<std::size_t>(ps),
                     PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (mem == MAP_FAILED) return false;

    auto *p = static_cast<std::uint8_t *>(mem);
    std::memcpy(p, target, kPatchSize);
    auto resume = reinterpret_cast<std::uintptr_t>(target) + kPatchSize;
    p[kPatchSize]   = 0xFF; p[kPatchSize + 1] = 0x25;
    p[kPatchSize + 2] = 0x00; p[kPatchSize + 3] = 0x00;
    p[kPatchSize + 4] = 0x00; p[kPatchSize + 5] = 0x00;
    std::memcpy(p + kPatchSize + 6, &resume, 8);
    if (mprotect(mem, static_cast<std::size_t>(ps), PROT_READ | PROT_EXEC) != 0) {
        munmap(mem, static_cast<std::size_t>(ps));
        return false;
    }

    std::uint8_t patch[kPatchSize]{};
    patch[0] = 0xFF; patch[1] = 0x25;
    patch[2] = 0x00; patch[3] = 0x00; patch[4] = 0x00; patch[5] = 0x00;
    auto addr = reinterpret_cast<std::uintptr_t>(hook_fn);
    std::memcpy(patch + 6, &addr, 8);
    if (!write_memory(target, patch, kPatchSize)) {
        munmap(mem, static_cast<std::size_t>(ps));
        return false;
    }
    *out_trampoline = mem;
    return true;
}

#endif

} // namespace eversoul::hook
