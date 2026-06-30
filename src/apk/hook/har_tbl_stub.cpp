#ifdef __ANDROID__
#ifdef EVERSOUL_HAR_MODE
namespace eversoul::tbl_hook {
    void hook_table_manager(void *) {}
}
#endif
#endif
