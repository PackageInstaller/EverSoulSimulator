#ifdef __ANDROID__
#include "apk/hook/file_protect_hook.hpp"

#include <android/log.h>
#include <dobby.h>
#include <dlfcn.h>
#include <cstdio>
#include <cstring>
#include <unistd.h>

#define FPLOGI(fmt, ...) __android_log_print(ANDROID_LOG_INFO,  "libswappywrapper/fp", fmt, ##__VA_ARGS__)
#define FPLOGE(fmt, ...) __android_log_print(ANDROID_LOG_ERROR, "libswappywrapper/fp", fmt, ##__VA_ARGS__)

namespace eversoul::file_protect
{

namespace
{

static const char* kProtectedPatterns[] = {
    "catalog_eversoul.hash",
    "catalog_eversoul.json",
    "data_4725",
    nullptr
};

bool is_protected(const char* path)
{
    if (!path) return false;
    for (int i = 0; kProtectedPatterns[i]; ++i)
        if (strstr(path, kProtectedPatterns[i])) return true;
    return false;
}

using unlink_fn_t = int (*)(const char*);
using remove_fn_t = int (*)(const char*);

unlink_fn_t g_orig_unlink = nullptr;
remove_fn_t g_orig_remove = nullptr;

int hooked_unlink(const char* path)
{
    if (is_protected(path))
    {
        FPLOGI("보호: unlink 차단 -> %s", path);
        return 0;
    }
    return g_orig_unlink(path);
}

int hooked_remove(const char* path)
{
    if (is_protected(path))
    {
        FPLOGI("보호: remove 차단 -> %s", path);
        return 0;
    }
    return g_orig_remove(path);
}

} // anonymous namespace

void install()
{
    void* sym_unlink = dlsym(RTLD_DEFAULT, "unlink");
    if (sym_unlink)
    {
        void* orig = nullptr;
        if (DobbyHook(sym_unlink, reinterpret_cast<void*>(hooked_unlink), &orig) == 0)
        {
            g_orig_unlink = reinterpret_cast<unlink_fn_t>(orig);
            FPLOGI("file_protect: unlink 훅 완료 @ %p", sym_unlink);
        }
        else
        {
            FPLOGE("file_protect: unlink DobbyHook 실패");
        }
    }
    else
    {
        FPLOGE("file_protect: unlink 심볼 없음");
    }

    void* sym_remove = dlsym(RTLD_DEFAULT, "remove");
    if (sym_remove && sym_remove != sym_unlink)
    {
        void* orig = nullptr;
        if (DobbyHook(sym_remove, reinterpret_cast<void*>(hooked_remove), &orig) == 0)
        {
            g_orig_remove = reinterpret_cast<remove_fn_t>(orig);
            FPLOGI("file_protect: remove 훅 완료 @ %p", sym_remove);
        }
        else
        {
            FPLOGE("file_protect: remove DobbyHook 실패");
        }
    }
    else if (sym_remove)
    {
        g_orig_remove = reinterpret_cast<remove_fn_t>(sym_unlink);
    }
    else
    {
        FPLOGE("file_protect: remove 심볼 없음");
    }
}

} // namespace eversoul::file_protect
#endif // __ANDROID__
