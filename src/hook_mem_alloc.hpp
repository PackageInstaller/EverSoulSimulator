#pragma once
#include <cstddef>
#include <cstdint>

namespace eversoul::hook {

enum MemPerm { kMemNoAccess = 0, kMemRX = 1, kMemRW = 2, kMemRWX = 3 };

struct MemBlock {
    uintptr_t addr = 0;
    size_t    size = 0;
    bool valid() const noexcept { return addr != 0; }
};

int   os_page_size();
void *os_mem_alloc(size_t size, MemPerm perm, void *hint = nullptr);
bool  os_mem_free(void *addr, size_t size);
bool  os_mem_set_perm(void *addr, size_t size, MemPerm perm);

MemBlock alloc_exec_block(size_t size);
MemBlock alloc_near_exec_block(size_t size, uintptr_t hint, size_t range);

} // namespace eversoul::hook
