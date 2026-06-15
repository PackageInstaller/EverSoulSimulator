#include "inline_hook.hpp"
#include "hook_code_patch.hpp"
#include "hook_mem_alloc.hpp"

#include <cstring>
#include <mutex>
#include <vector>

// ---------------------------------------------------------------------------
// Shared hook-entry table  (supports uninstall)
// ---------------------------------------------------------------------------

namespace eversoul::hook {

struct HookEntry {
    uintptr_t target;
    uint8_t   saved[16];
    size_t    patch_bytes;
};

static std::mutex              g_hook_mtx;
static std::vector<HookEntry>  g_hooks;

} // namespace eversoul::hook

// ===========================================================================
// ARM64
// ===========================================================================
#if defined(__aarch64__)

#include "hook_arm64_relo.hpp"
#include <cstdint>

namespace eversoul::hook {

static constexpr uint32_t kX17 = 17u;

// 16-byte absolute stub written at an arbitrary near-exec location:
//   LDR X17, #8 ; BR X17 ; <dst:u64>
static MemBlock build_near_stub(uintptr_t hint, uint64_t hook_fn)
{
    constexpr size_t kStubSz  = 16u;
    constexpr size_t kNearRng = 128ull * 1024u * 1024u - 1u;

    MemBlock blk = alloc_near_exec_block(kStubSz, hint, kNearRng);
    if (!blk.valid()) return {};

    uint32_t stub[4] = {
        0x58000051u,
        0xD61F0220u,
        static_cast<uint32_t>(hook_fn),
        static_cast<uint32_t>(hook_fn >> 32),
    };
    code_patch(reinterpret_cast<void *>(blk.addr), stub, kStubSz);
    return blk;
}

bool install_inline_hook(void *target, void *hook_fn, void **out_trampoline)
{
    if (!target || !hook_fn) return false;

    const auto tgt  = reinterpret_cast<uintptr_t>(target);
    const auto hfn  = reinterpret_cast<uint64_t>(hook_fn);

    {
        std::lock_guard<std::mutex> lk(g_hook_mtx);
        for (const auto &e : g_hooks)
            if (e.target == tgt) return false; // already hooked
    }

    // Attempt near branch (4-byte patch).
    // If a near stub can be allocated within ±128 MB, we patch target with
    // a single B #offset; otherwise fall back to the 16-byte LDR+BR patch.
    MemBlock near = build_near_stub(tgt, hfn);

    size_t   patch_size;
    uint32_t patch[4] = {};

    if (near.valid()) {
        const int64_t off = static_cast<int64_t>(near.addr) -
                            static_cast<int64_t>(tgt);
        patch_size = 4u;
        patch[0]   = 0x14000000u | (static_cast<uint32_t>(off >> 2) & 0x3FFFFFFu);
    } else {
        // 16-byte absolute: LDR X17, #8 ; BR X17 ; <hook_fn:u64>
        patch_size = 16u;
        patch[0]   = 0x58000051u;
        patch[1]   = 0xD61F0220u;
        patch[2]   = static_cast<uint32_t>(hfn);
        patch[3]   = static_cast<uint32_t>(hfn >> 32);
    }

    // Generate relocated original code + resume branch
    MemBlock relo = arm64_gen_relocated_with_resume(tgt, patch_size);
    if (!relo.valid()) return false;

    // Save original bytes for potential uninstall
    HookEntry entry;
    entry.target      = tgt;
    entry.patch_bytes = patch_size;
    std::memcpy(entry.saved,
                reinterpret_cast<const void *>(tgt), patch_size);

    if (!code_patch(target, patch, patch_size)) return false;

    {
        std::lock_guard<std::mutex> lk(g_hook_mtx);
        g_hooks.push_back(entry);
    }

    if (out_trampoline)
        *out_trampoline = reinterpret_cast<void *>(relo.addr);

    return true;
}

bool uninstall_inline_hook(void *target)
{
    if (!target) return false;
    const auto tgt = reinterpret_cast<uintptr_t>(target);
    std::lock_guard<std::mutex> lk(g_hook_mtx);

    for (auto it = g_hooks.begin(); it != g_hooks.end(); ++it) {
        if (it->target != tgt) continue;
        code_patch(target, it->saved, it->patch_bytes);
        g_hooks.erase(it);
        return true;
    }
    return false;
}

} // namespace eversoul::hook

// ===========================================================================
// x86_64  (14-byte JMP [rip+0] + 8-byte abs addr; mmap trampoline)
// ===========================================================================
#elif defined(__x86_64__)

#include <sys/mman.h>
#include <unistd.h>

namespace eversoul::hook {

static constexpr std::size_t kX64PatchSize = 14u;

bool install_inline_hook(void *target, void *hook_fn, void **out_trampoline)
{
    if (!target || !hook_fn) return false;

    const auto tgt = reinterpret_cast<uintptr_t>(target);

    {
        std::lock_guard<std::mutex> lk(g_hook_mtx);
        for (const auto &e : g_hooks)
            if (e.target == tgt) return false;
    }

    // Allocate writable+exec trampoline page
    const long ps = sysconf(_SC_PAGESIZE);
    void *mem = mmap(nullptr, static_cast<size_t>(ps),
                     PROT_READ | PROT_WRITE,
                     MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (mem == MAP_FAILED) return false;

    // Write trampoline: copy original 14 bytes + abs JMP back to target+14
    auto *tr = static_cast<uint8_t *>(mem);
    std::memcpy(tr, target, kX64PatchSize);

    const uintptr_t resume = tgt + kX64PatchSize;
    tr[kX64PatchSize + 0] = 0xFF;
    tr[kX64PatchSize + 1] = 0x25;
    tr[kX64PatchSize + 2] = 0x00;
    tr[kX64PatchSize + 3] = 0x00;
    tr[kX64PatchSize + 4] = 0x00;
    tr[kX64PatchSize + 5] = 0x00;
    std::memcpy(tr + kX64PatchSize + 6, &resume, 8u);

    if (mprotect(mem, static_cast<size_t>(ps), PROT_READ | PROT_EXEC) != 0) {
        munmap(mem, static_cast<size_t>(ps));
        return false;
    }

    // Patch target with FF 25 00 00 00 00 + <hook_fn:u64>
    uint8_t patch[kX64PatchSize] = { 0xFF, 0x25, 0x00, 0x00, 0x00, 0x00 };
    const uintptr_t hfn = reinterpret_cast<uintptr_t>(hook_fn);
    std::memcpy(patch + 6, &hfn, 8u);

    HookEntry entry;
    entry.target      = tgt;
    entry.patch_bytes = kX64PatchSize;
    std::memcpy(entry.saved, target, kX64PatchSize);

    if (!code_patch(target, patch, kX64PatchSize)) {
        munmap(mem, static_cast<size_t>(ps));
        return false;
    }

    {
        std::lock_guard<std::mutex> lk(g_hook_mtx);
        g_hooks.push_back(entry);
    }

    if (out_trampoline) *out_trampoline = mem;
    return true;
}

bool uninstall_inline_hook(void *target)
{
    if (!target) return false;
    const auto tgt = reinterpret_cast<uintptr_t>(target);
    std::lock_guard<std::mutex> lk(g_hook_mtx);

    for (auto it = g_hooks.begin(); it != g_hooks.end(); ++it) {
        if (it->target != tgt) continue;
        code_patch(target, it->saved, it->patch_bytes);
        g_hooks.erase(it);
        return true;
    }
    return false;
}

} // namespace eversoul::hook

#endif // architecture
