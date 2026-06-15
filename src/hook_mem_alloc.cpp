#include "hook_mem_alloc.hpp"
#include "hook_common.hpp"

#include <cinttypes>
#include <algorithm>
#include <cstdio>
#include <cstring>
#include <mutex>
#include <sys/mman.h>
#include <unistd.h>
#include <vector>

namespace eversoul::hook {

// ---------------------------------------------------------------------------
// OS memory primitives
// ---------------------------------------------------------------------------

int os_page_size()
{
    return static_cast<int>(sysconf(_SC_PAGESIZE));
}

static int to_prot(MemPerm p)
{
    int v = PROT_NONE;
    if (p & kMemRX) v |= PROT_READ | PROT_EXEC;
    if (p & kMemRW) v |= PROT_READ | PROT_WRITE;
    return v;
}

void *os_mem_alloc(size_t size, MemPerm perm, void *hint)
{
    int flags = MAP_PRIVATE | MAP_ANONYMOUS;
    if (hint) flags |= MAP_FIXED;

    void *r = mmap(hint, size, to_prot(perm), flags, -1, 0);
    if (r == MAP_FAILED) {
        if (hint) {
            r = mmap(nullptr, size, to_prot(perm), MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
        }
        if (r == MAP_FAILED) return nullptr;
    }
    return r;
}

bool os_mem_free(void *addr, size_t size)
{
    return munmap(addr, size) == 0;
}

bool os_mem_set_perm(void *addr, size_t size, MemPerm perm)
{
    return mprotect(addr, size, to_prot(perm)) == 0;
}

// ---------------------------------------------------------------------------
// Simple linear page allocator
// ---------------------------------------------------------------------------

struct PageAllocator {
    uint8_t *base;
    size_t   capacity;
    size_t   used = 0;

    PageAllocator(uint8_t *b, size_t cap) : base(b), capacity(cap) {}

    void *alloc(size_t n)
    {
        n = (n + 3u) & ~3u; // 4-byte align
        if (used + n > capacity) return nullptr;
        void *r = base + used;
        used += n;
        return r;
    }

    uintptr_t start()  const { return reinterpret_cast<uintptr_t>(base); }
    uintptr_t end()    const { return start() + capacity; }
    uintptr_t cursor() const { return start() + used; }
    size_t    avail()  const { return capacity - used; }
};

// ---------------------------------------------------------------------------
// Global exec allocator (unrestricted address)
// ---------------------------------------------------------------------------

static std::mutex                    g_exec_mtx;
static std::vector<PageAllocator *>  g_exec_pages;

MemBlock alloc_exec_block(size_t size)
{
    std::lock_guard<std::mutex> lk(g_exec_mtx);
    const int ps = os_page_size();

    for (auto *pa : g_exec_pages) {
        void *p = pa->alloc(size);
        if (p) return { reinterpret_cast<uintptr_t>(p), size };
    }

    void *page = os_mem_alloc(static_cast<size_t>(ps), kMemRX);
    if (!page) return {};
    auto *pa = new PageAllocator(static_cast<uint8_t *>(page),
                                 static_cast<size_t>(ps));
    g_exec_pages.push_back(pa);
    void *p = pa->alloc(size);
    return p ? MemBlock{ reinterpret_cast<uintptr_t>(p), size } : MemBlock{};
}

// ---------------------------------------------------------------------------
// Near exec allocator  (/proc/self/maps → gap → mmap; code-gap scan fallback)
// ---------------------------------------------------------------------------

struct MapRegion {
    uintptr_t start;
    uintptr_t end;
    bool      exec;
};

static std::vector<MapRegion> read_proc_maps()
{
    std::vector<MapRegion> out;
    FILE *fp = fopen("/proc/self/maps", "r");
    if (!fp) return out;

    char line[512];
    while (fgets(line, sizeof(line), fp)) {
        uintptr_t s = 0, e = 0;
        char perms[5] = {};
        if (sscanf(line, "%" SCNxPTR "-%" SCNxPTR " %4s", &s, &e, perms) < 3)
            continue;
        const bool x = (perms[2] == 'x');
        out.push_back({ s, e, x });
    }
    fclose(fp);
    std::sort(out.begin(), out.end(),
              [](const MapRegion &a, const MapRegion &b) { return a.start < b.start; });
    return out;
}

static bool addr_in_range(uintptr_t addr, uintptr_t hint, size_t range)
{
    const uintptr_t lo = (hint > range) ? hint - range : 0u;
    const uintptr_t hi = hint + range;
    return addr >= lo && addr + 1u <= hi;
}

static std::mutex                   g_near_mtx;
static std::vector<PageAllocator *> g_near_pages;

MemBlock alloc_near_exec_block(size_t size, uintptr_t hint, size_t range)
{
    std::lock_guard<std::mutex> lk(g_near_mtx);
    const int ps = os_page_size();

    // Step 1: existing near allocators that still have room in range
    for (auto *pa : g_near_pages) {
        if (pa->avail() < size) continue;
        if (!addr_in_range(pa->cursor(), hint, range)) continue;
        void *p = pa->alloc(size);
        if (p) return { reinterpret_cast<uintptr_t>(p), size };
    }

    // Step 2: find an unmapped gap in /proc/self/maps within range, mmap it
    const auto regions = read_proc_maps();
    for (size_t i = 0; i + 1 < regions.size(); ++i) {
        const uintptr_t gap_start = regions[i].end;
        const uintptr_t gap_end   = regions[i + 1].start;
        if (gap_end <= gap_start + static_cast<size_t>(ps)) continue;

        const uintptr_t candidate = HOOK_ALIGN_CEIL(gap_start,
                                                     static_cast<uintptr_t>(ps));
        if (candidate + size > gap_end) continue;
        if (!addr_in_range(candidate, hint, range)) continue;

        void *page = mmap(reinterpret_cast<void *>(candidate),
                          static_cast<size_t>(ps),
                          PROT_READ | PROT_EXEC,
                          MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED,
                          -1, 0);
        if (page == MAP_FAILED) continue;
        if (page != reinterpret_cast<void *>(candidate)) {
            munmap(page, static_cast<size_t>(ps));
            continue;
        }

        auto *pa = new PageAllocator(static_cast<uint8_t *>(page),
                                     static_cast<size_t>(ps));
        g_near_pages.push_back(pa);
        void *p = pa->alloc(size);
        if (p) return { reinterpret_cast<uintptr_t>(p), size };
    }

    // Step 3: scan executable regions for all-zero code gaps (unused padding)
    const uint8_t zeros[128] = {};
    const size_t  scan_size  = (size < sizeof(zeros)) ? size : sizeof(zeros);
    for (const auto &r : regions) {
        if (!r.exec) continue;
        for (uintptr_t scan = r.start; scan + scan_size <= r.end; scan += 4u) {
            if (!addr_in_range(scan, hint, range)) continue;
            if (memcmp(reinterpret_cast<void *>(scan), zeros, scan_size) == 0)
                return { scan, size };
        }
    }

    return {};
}

} // namespace eversoul::hook
