#pragma once
#ifdef __ANDROID__

namespace eversoul::tbl_hook
{
    void hook_table_manager(void *lib_handle);
} // namespace eversoul::tbl_hook

#endif // __ANDROID__
