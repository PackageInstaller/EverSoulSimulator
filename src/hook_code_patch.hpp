#pragma once
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>

#include "hook_common.hpp"

namespace eversoul::hook {

static inline void clear_icache(void *start, void *end)
{
#if defined(__aarch64__)
    const uint64_t xstart = reinterpret_cast<uint64_t>(start);
    const uint64_t xend   = reinterpret_cast<uint64_t>(end);

    static uint64_t ctr_el0 = 0;
    if (!ctr_el0)
        __asm__ __volatile__("mrs %0, ctr_el0" : "=r"(ctr_el0));

    if (!((ctr_el0 >> 28) & 1u)) {
        const size_t dc_line = 4u << ((ctr_el0 >> 16) & 15u);
        for (uint64_t a = xstart & ~(dc_line - 1u); a < xend; a += dc_line)
            __asm__ __volatile__("dc cvau, %0" :: "r"(a));
    }
    __asm__ __volatile__("dsb ish");

    if (!((ctr_el0 >> 29) & 1u)) {
        const size_t ic_line = 4u << (ctr_el0 & 15u);
        for (uint64_t a = xstart & ~(ic_line - 1u); a < xend; a += ic_line)
            __asm__ __volatile__("ic ivau, %0" :: "r"(a));
        __asm__ __volatile__("dsb ish");
    }
    __asm__ __volatile__("isb sy");
#else
    (void)start; (void)end;
#if defined(__arm__)
    __builtin___clear_cache(static_cast<char *>(start), static_cast<char *>(end));
#endif
#endif
}

static inline bool code_patch(void *addr, const void *src, size_t len)
{
    const long ps = sysconf(_SC_PAGESIZE);
    const uintptr_t base = HOOK_ALIGN_FLOOR(addr, static_cast<uintptr_t>(ps));
    const uintptr_t tail = HOOK_ALIGN_FLOOR(
        reinterpret_cast<uintptr_t>(addr) + len - 1u, static_cast<uintptr_t>(ps));

    const bool prot_ok =
        (mprotect(reinterpret_cast<void *>(base),
                  static_cast<size_t>(ps), PROT_READ | PROT_WRITE | PROT_EXEC) == 0);

    if (!prot_ok) {
        int fd = open("/proc/self/mem", O_RDWR);
        if (fd < 0) return false;
        const bool ok = (lseek(fd, static_cast<off_t>(
                                    reinterpret_cast<uintptr_t>(addr)),
                                SEEK_SET) >= 0
                         && write(fd, src, len) == static_cast<ssize_t>(len));
        close(fd);
        if (ok) clear_icache(addr, reinterpret_cast<uint8_t *>(addr) + len);
        return ok;
    }

    if (base != tail)
        mprotect(reinterpret_cast<void *>(tail),
                 static_cast<size_t>(ps), PROT_READ | PROT_WRITE | PROT_EXEC);

    std::memcpy(addr, src, len);
    clear_icache(addr, reinterpret_cast<uint8_t *>(addr) + len);

    mprotect(reinterpret_cast<void *>(base), static_cast<size_t>(ps), PROT_READ | PROT_EXEC);
    if (base != tail)
        mprotect(reinterpret_cast<void *>(tail), static_cast<size_t>(ps), PROT_READ | PROT_EXEC);

    return true;
}

} // namespace eversoul::hook
