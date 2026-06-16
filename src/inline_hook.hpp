// inline_hook.hpp — Generic ARM64 inline hook utility extracted from the
// anticheat_patch.cpp pthread_create hook. Provides the low-level primitives
// needed by LSPlant (InitInfo::inline_hooker / inline_unhooker) as well as
// the UnityWebRequest native redirect hooks.
//
// Usage:
//   void *trampoline = eversoul::inline_hook::install(target_fn, hook_fn);
//   eversoul::inline_hook::remove(target_fn);
//
// The hook overwrites the first 16 bytes of `target_fn` with an absolute jump
// (LDR X16,[PC,#8]; BR X16; .quad target). A trampoline is allocated via mmap
// that runs the saved prologue and resumes the original function at offset 16.
#pragma once

#include <cstdint>

namespace eversoul::inline_hook
{

    // Install an inline hook: redirect `target` to `hook`.
    // Returns a trampoline that behaves like the original `target`.
    // Returns nullptr on failure.
    void *install(void *target, void *hook);

    // Remove a previously installed hook, restoring the original instructions at `target`.
    // Returns true if the hook was removed successfully.
    bool remove(void *target);

    // Low-level: overwrite the first 16 bytes of executable memory at `dest` with
    // an absolute jump to `hook_addr`. Returns true on success.
    bool patch_memory(void *dest, std::uintptr_t hook_addr);

    // Allocate an executable trampoline that runs the saved 16-byte prologue
    // from `original_prologue` and then resumes at `resume_addr`. Returns nullptr on failure.
    void *create_trampoline(const void *original_prologue, std::uintptr_t resume_addr);

} // namespace eversoul::inline_hook
