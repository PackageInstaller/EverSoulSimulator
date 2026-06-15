#pragma once
#include "hook_mem_alloc.hpp"

#if defined(__aarch64__)

namespace eversoul::hook {

// Relocate `patch_size` bytes of ARM64 code from `src_addr` into a freshly
// allocated exec block, then append an absolute branch back to
// (src_addr + patch_size).  Returns the exec block; .addr is the trampoline
// entry that callers should invoke instead of the original function.
MemBlock arm64_gen_relocated_with_resume(uintptr_t src_addr, size_t patch_size);

} // namespace eversoul::hook

#endif // __aarch64__
