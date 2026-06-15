#pragma once
#include <cstddef>
#include <cstdint>

namespace eversoul::hook {

static inline uint32_t bits32(uint32_t v, int lo, int hi)
{
    return (v >> lo) & ((1u << (hi - lo + 1)) - 1);
}
static inline uint64_t bits64(uint64_t v, int lo, int hi)
{
    return (v >> lo) & ((uint64_t(1) << (hi - lo + 1)) - 1);
}
static inline int bit32(uint32_t v, int n) { return (v >> n) & 1; }
static inline void set_bits32(uint32_t &v, int lo, int hi, uint32_t val)
{
    const uint32_t mask = ((1u << (hi - lo + 1)) - 1u) << lo;
    v = (v & ~mask) | ((val << lo) & mask);
}
static inline void set_bit32(uint32_t &v, int n, int val)
{
    v = (v & ~(1u << n)) | (uint32_t(val & 1) << n);
}
static inline int64_t sign_extend64(uint64_t x, int from_bits)
{
    const int shift = 64 - from_bits;
    return static_cast<int64_t>(x << shift) >> shift;
}

} // namespace eversoul::hook

#define HOOK_ALIGN_FLOOR(v, align) \
    (reinterpret_cast<uintptr_t>(v) & ~(static_cast<uintptr_t>(align) - 1u))
#define HOOK_ALIGN_CEIL(v, align) \
    ((reinterpret_cast<uintptr_t>(v) + static_cast<uintptr_t>(align) - 1u) \
     & ~(static_cast<uintptr_t>(align) - 1u))
