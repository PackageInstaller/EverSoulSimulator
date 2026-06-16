#include "agent_il2cpp_hook.hpp"

#ifdef __aarch64__

#include "agent_redirect.hpp"
#include "inline_hook.hpp"

#include <android/log.h>
#include <cstdint>
#include <dlfcn.h>

#define LOGI(...) __android_log_print(ANDROID_LOG_INFO,  "eversoul_agent", __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, "eversoul_agent", __VA_ARGS__)

namespace eversoul::agent::il2cpp_hook {

namespace {

using il2cpp_string_new_fn = void *(*)(const char *);
static il2cpp_string_new_fn g_il2cpp_string_new = nullptr;

static void *make_il2cpp_string(const char *utf8)
{
    if (!g_il2cpp_string_new || !utf8) return nullptr;
    return g_il2cpp_string_new(utf8);
}

static void *redirect_il2cpp_url(void *str_ptr)
{
    if (!str_ptr) return str_ptr;
    std::string url = read_il2cpp_string(str_ptr);
    if (url.empty()) return str_ptr;
    std::string redir = redirect_url(url);
    if (redir == url) return str_ptr;
    LOGI("REDIRECT %s -> %s", url.c_str(), redir.c_str());
    void *ns = make_il2cpp_string(redir.c_str());
    return ns ? ns : str_ptr;
}

// RVA offsets from monitor_unity_web_request.js CONFIG.il2cpp
// libil2cpp.so base + RVA = hook target address
static constexpr uintptr_t kRva_ctor_string        = 0x097887a4;
static constexpr uintptr_t kRva_ctor_string_method = 0x097889e4;
static constexpr uintptr_t kRva_ctor_full          = 0x09788c5c;
static constexpr uintptr_t kRva_SetUrl             = 0x09789be8;
static constexpr uintptr_t kRva_Get                = 0x0978ac50;
static constexpr uintptr_t kRva_Put_bytes          = 0x0978b040;
static constexpr uintptr_t kRva_Put_string         = 0x0978b27c;
static constexpr uintptr_t kRva_PostWwwForm        = 0x0978b488;
static constexpr uintptr_t kRva_Post_contentType   = 0x0978b700;

// ctor(string): x0=this, x1=url
using ctor_string_fn = void (*)(void *, void *);
static ctor_string_fn g_orig_ctor_string = nullptr;
static void hook_ctor_string(void *thiz, void *url)
{
    g_orig_ctor_string(thiz, redirect_il2cpp_url(url));
}

// ctor(string,string): x0=this, x1=url, x2=method
using ctor_string_method_fn = void (*)(void *, void *, void *);
static ctor_string_method_fn g_orig_ctor_string_method = nullptr;
static void hook_ctor_string_method(void *thiz, void *url, void *method)
{
    g_orig_ctor_string_method(thiz, redirect_il2cpp_url(url), method);
}

// ctor(full): x0=this, x1=url, x2=method, x3=dh, x4=uh
using ctor_full_fn = void (*)(void *, void *, void *, void *, void *);
static ctor_full_fn g_orig_ctor_full = nullptr;
static void hook_ctor_full(void *thiz, void *url, void *method, void *dh, void *uh)
{
    g_orig_ctor_full(thiz, redirect_il2cpp_url(url), method, dh, uh);
}

// SetUrl: x0=this, x1=url
using set_url_fn = void (*)(void *, void *);
static set_url_fn g_orig_set_url = nullptr;
static void hook_set_url(void *thiz, void *url)
{
    g_orig_set_url(thiz, redirect_il2cpp_url(url));
}

// Static: x0=url → return UWR*
using static_url_fn = void *(*)(void *);
static static_url_fn g_orig_Get            = nullptr;
static static_url_fn g_orig_Put_bytes      = nullptr;
static static_url_fn g_orig_Put_string     = nullptr;
static static_url_fn g_orig_PostWwwForm    = nullptr;
static static_url_fn g_orig_Post_content   = nullptr;

static void *hook_Get(void *url)           { return g_orig_Get(redirect_il2cpp_url(url)); }
static void *hook_Put_bytes(void *url)     { return g_orig_Put_bytes(redirect_il2cpp_url(url)); }
static void *hook_Put_string(void *url)    { return g_orig_Put_string(redirect_il2cpp_url(url)); }
static void *hook_PostWwwForm(void *url)   { return g_orig_PostWwwForm(redirect_il2cpp_url(url)); }
static void *hook_Post_content(void *url)  { return g_orig_Post_content(redirect_il2cpp_url(url)); }

struct HookEntry {
    const char     *name;
    uintptr_t       rva;
    void           *hook_fn;
    void          **orig_pp;
};

static const HookEntry kHooks[] = {
    { "UWR.ctor(string)",         kRva_ctor_string,        (void *)hook_ctor_string,       (void **)&g_orig_ctor_string       },
    { "UWR.ctor(string,method)",  kRva_ctor_string_method, (void *)hook_ctor_string_method,(void **)&g_orig_ctor_string_method },
    { "UWR.ctor(full)",           kRva_ctor_full,          (void *)hook_ctor_full,         (void **)&g_orig_ctor_full         },
    { "UWR.SetUrl",               kRva_SetUrl,             (void *)hook_set_url,           (void **)&g_orig_set_url           },
    { "UWR.Get",                  kRva_Get,                (void *)hook_Get,               (void **)&g_orig_Get               },
    { "UWR.Put(bytes)",           kRva_Put_bytes,          (void *)hook_Put_bytes,         (void **)&g_orig_Put_bytes         },
    { "UWR.Put(string)",          kRva_Put_string,         (void *)hook_Put_string,        (void **)&g_orig_Put_string        },
    { "UWR.PostWwwForm",          kRva_PostWwwForm,        (void *)hook_PostWwwForm,       (void **)&g_orig_PostWwwForm       },
    { "UWR.Post(contentType)",    kRva_Post_contentType,   (void *)hook_Post_content,      (void **)&g_orig_Post_content      },
};

} // namespace

void install(void *il2cpp_base)
{
    auto base = reinterpret_cast<uintptr_t>(il2cpp_base);

    auto sym_new = dlsym(RTLD_DEFAULT, "il2cpp_string_new");
    if (!sym_new) {
        LOGE("il2cpp_string_new not found");
        return;
    }
    g_il2cpp_string_new = reinterpret_cast<il2cpp_string_new_fn>(sym_new);

    int ok = 0;
    for (const auto &h : kHooks) {
        void *target = reinterpret_cast<void *>(base + h.rva);
        void *tramp  = nullptr;
        if (eversoul::hook::install_inline_hook(target, h.hook_fn, &tramp)) {
            *h.orig_pp = tramp;
            LOGI("hooked %s @ %p", h.name, target);
            ++ok;
        } else {
            LOGE("hook FAILED %s @ %p", h.name, target);
        }
    }
    LOGI("il2cpp hooks installed: %d/%zu", ok, sizeof(kHooks) / sizeof(kHooks[0]));
}

} // namespace eversoul::agent::il2cpp_hook

#else

namespace eversoul::agent::il2cpp_hook {
void install(void *) {}
} // namespace eversoul::agent::il2cpp_hook

#endif // __aarch64__
