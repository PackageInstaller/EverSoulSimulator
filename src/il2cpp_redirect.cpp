#include "il2cpp_redirect.hpp"

#ifdef __aarch64__

#include "inline_hook.hpp"

#include <android/log.h>
#include <dlfcn.h>
#include <link.h>
#include <pthread.h>
#include <unistd.h>

#include <atomic>
#include <cstdint>
#include <cstring>
#include <string>

namespace eversoul::il2cpp_redirect {

namespace {

constexpr const char *kTag = "libswappywrapper";

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
template <class... A>
void logi(const char *fmt, A... a)
{
    __android_log_print(ANDROID_LOG_INFO, kTag, fmt, a...);
}
template <class... A>
void loge(const char *fmt, A... a)
{
    __android_log_print(ANDROID_LOG_ERROR, kTag, fmt, a...);
}
#pragma clang diagnostic pop

// ---------------------------------------------------------------------------
// il2cpp offsets (libil2cpp.so RVA — version-fixed)
// ---------------------------------------------------------------------------
static constexpr std::uintptr_t kUWR_ctor_string        = 0x097887a4;
static constexpr std::uintptr_t kUWR_ctor_string_method = 0x097889e4;
static constexpr std::uintptr_t kUWR_ctor_full          = 0x09788c5c;
static constexpr std::uintptr_t kUWR_SetUrl             = 0x09789be8;
static constexpr std::uintptr_t kUWR_Get                = 0x0978ac50;
static constexpr std::uintptr_t kUWR_Put_bytes          = 0x0978b040;
static constexpr std::uintptr_t kUWR_Put_string         = 0x0978b27c;
static constexpr std::uintptr_t kUWR_PostWwwForm        = 0x0978b488;
static constexpr std::uintptr_t kUWR_Post_contentType   = 0x0978b700;
static constexpr std::uintptr_t kKakao_ShowMsgBox       = 0x04c72530;

// ---------------------------------------------------------------------------
// URL redirect tables — all external domains redirected to local server
// ---------------------------------------------------------------------------
static const char *kDomains[] = {
    "gc-openapi-zinny3.kakaogames.com",
    "gc-infodesk-zinny3.kakaogames.com",
    "gc-session-zinny3.kakaogames.com",
    "session-zinny3.game.kakao.com",
    "qa-gc-openapi-zinny3.kakaogames.com",
    "qa-gc-infodesk-zinny3.kakaogames.com",
    "infodesk-zinny3.game.kakao.com",
    "openapi-zinny3.game.kakao.com",
    "game.kakao.com",
    "kakaogames.com",
    "patch.esoul.kakaogames.com",
    "replaydn-esoul.kakaogames.com",
    "kauth.kakao.com",
    "accounts.kakao.com",
    nullptr,
};

static const char *kWsDomains[] = {
    "live-sea-chat.esoul.kakaogames.com",
    "live-sea.esoul.kakaogames.com",
    "live-kr.esoul.kakaogames.com",
    "live-kr-chat.esoul.kakaogames.com",
    "gc-session-zinny3.kakaogames.com",
    "session-zinny3.game.kakao.com",
    nullptr,
};

static constexpr const char *kLocalHttp = "http://127.0.0.1:19999";
static constexpr const char *kLocalWs   = "ws://127.0.0.1:19999";

// ---------------------------------------------------------------------------
// il2cpp_string_new
// ---------------------------------------------------------------------------
using Il2CppStringNew_t = void *(*)(const char *);
static Il2CppStringNew_t g_string_new = nullptr;

// ---------------------------------------------------------------------------
// String helpers
// ---------------------------------------------------------------------------
static void str_replace_prefix(std::string &out,
                                const char *scheme, const char *domain,
                                const char *replacement)
{
    std::string needle = std::string(scheme) + domain;
    std::size_t pos = out.find(needle);
    if (pos == std::string::npos) return;
    std::size_t end = pos + needle.size();
    // strip optional :port after domain
    if (end < out.size() && out[end] == ':') {
        while (end < out.size() && out[end] != '/') ++end;
    }
    out.replace(pos, end - pos, replacement);
}

static std::string read_il2cpp_string(const void *ptr)
{
    if (!ptr) return {};
    const auto *p = static_cast<const std::uint8_t *>(ptr);
    std::int32_t len = 0;
    std::memcpy(&len, p + 0x10, 4);
    if (len <= 0 || len > 65536) return {};
    const auto *chars = reinterpret_cast<const std::uint16_t *>(p + 0x14);
    std::string out;
    out.reserve(static_cast<std::size_t>(len));
    for (std::int32_t i = 0; i < len; ++i) {
        std::uint16_t c = chars[i];
        if (c < 0x80) {
            out += static_cast<char>(c);
        } else if (c < 0x800) {
            out += static_cast<char>(0xC0 | (c >> 6));
            out += static_cast<char>(0x80 | (c & 0x3F));
        } else {
            out += static_cast<char>(0xE0 | (c >> 12));
            out += static_cast<char>(0x80 | ((c >> 6) & 0x3F));
            out += static_cast<char>(0x80 | (c & 0x3F));
        }
    }
    return out;
}

static std::string redirect_url(const std::string &url)
{
    if (url.empty()) return url;
    std::string out = url;

    for (int i = 0; kDomains[i]; ++i) {
        str_replace_prefix(out, "https://", kDomains[i], kLocalHttp);
        str_replace_prefix(out, "http://",  kDomains[i], kLocalHttp);
    }
    for (int i = 0; kWsDomains[i]; ++i) {
        str_replace_prefix(out, "wss://",  kWsDomains[i], kLocalWs);
        str_replace_prefix(out, "ws://",   kWsDomains[i], kLocalWs);
        str_replace_prefix(out, "https://",kWsDomains[i], kLocalHttp);
        str_replace_prefix(out, "http://", kWsDomains[i], kLocalHttp);
    }

    // *.lockincomp.com
    {
        const char *marker = ".lockincomp.com";
        std::size_t pos = out.find(marker);
        while (pos != std::string::npos) {
            std::size_t scheme = out.rfind("://", pos);
            if (scheme != std::string::npos) {
                std::size_t host_start = scheme + 3;
                std::size_t host_end   = pos + std::strlen(marker);
                if (host_end < out.size() && out[host_end] == ':') {
                    while (host_end < out.size() && out[host_end] != '/') ++host_end;
                }
                std::size_t repl_start = (scheme >= 4 && out.substr(scheme - 4, 4) == "http")
                                         ? scheme - 4
                                         : (scheme >= 3 && out.substr(scheme - 2, 2) == "ws")
                                           ? scheme - 2 : scheme;
                out.replace(repl_start, host_end - repl_start, kLocalHttp);
                pos = out.find(marker);
            } else {
                break;
            }
        }
    }

    // (ga-)rttcheck-*.kakaogames.io
    {
        const char *marker = ".kakaogames.io";
        std::size_t pos = out.find("rttcheck-");
        if (pos != std::string::npos && out.find(marker, pos) != std::string::npos) {
            std::size_t scheme = out.rfind("://", pos);
            if (scheme != std::string::npos) {
                std::size_t dot_pos = out.find(marker, pos);
                std::size_t host_end = dot_pos + std::strlen(marker);
                if (host_end < out.size() && out[host_end] == ':') {
                    while (host_end < out.size() && out[host_end] != '/') ++host_end;
                }
                std::size_t repl_start = (scheme >= 4) ? scheme - 4 : scheme;
                out.replace(repl_start, host_end - repl_start, kLocalHttp);
            }
        }
    }

    return out;
}

static void *maybe_redirect(void *str_ptr)
{
    if (!str_ptr || !g_string_new) return nullptr;
    std::string orig = read_il2cpp_string(str_ptr);
    std::string redir = redirect_url(orig);
    if (redir == orig) return nullptr;
    logi("redirect: %s -> %s", orig.c_str(), redir.c_str());
    return g_string_new(redir.c_str());
}

// ---------------------------------------------------------------------------
// Hook trampolines
// ---------------------------------------------------------------------------
using UWR3_t = void (*)(void *, void *, void *);
using UWR4_t = void (*)(void *, void *, void *, void *);
using UWR5_t = void (*)(void *, void *, void *, void *, void *);
using UWR6_t = void (*)(void *, void *, void *, void *, void *, void *);
using StaticStr1_t = void *(*)(void *, void *);
using StaticStr2_t = void *(*)(void *, void *, void *);
using VoidVoid2_t  = void (*)(void *, void *);

static UWR3_t    g_orig_ctor_string        = nullptr;
static UWR4_t    g_orig_ctor_string_method = nullptr;
static UWR6_t    g_orig_ctor_full          = nullptr;
static UWR3_t    g_orig_set_url            = nullptr;
static StaticStr1_t g_orig_get            = nullptr;
static StaticStr2_t g_orig_put_bytes      = nullptr;
static StaticStr2_t g_orig_put_string     = nullptr;
static StaticStr2_t g_orig_post_wwwform   = nullptr;
static StaticStr2_t g_orig_post_ctype     = nullptr;
static VoidVoid2_t  g_orig_show_msg_box   = nullptr;

static void hook_ctor_string(void *self, void *url, void *mi)
{
    void *r = maybe_redirect(url);
    g_orig_ctor_string(self, r ? r : url, mi);
}

static void hook_ctor_string_method(void *self, void *url, void *method, void *mi)
{
    void *r = maybe_redirect(url);
    g_orig_ctor_string_method(self, r ? r : url, method, mi);
}

static void hook_ctor_full(void *self, void *url, void *method, void *dh, void *uh, void *mi)
{
    void *r = maybe_redirect(url);
    g_orig_ctor_full(self, r ? r : url, method, dh, uh, mi);
}

static void hook_set_url(void *self, void *url, void *mi)
{
    void *r = maybe_redirect(url);
    g_orig_set_url(self, r ? r : url, mi);
}

static void *hook_get(void *url, void *mi)
{
    void *r = maybe_redirect(url);
    return g_orig_get(r ? r : url, mi);
}

static void *hook_put_bytes(void *url, void *data, void *mi)
{
    void *r = maybe_redirect(url);
    return g_orig_put_bytes(r ? r : url, data, mi);
}

static void *hook_put_string(void *url, void *data, void *mi)
{
    void *r = maybe_redirect(url);
    return g_orig_put_string(r ? r : url, data, mi);
}

static void *hook_post_wwwform(void *url, void *form, void *mi)
{
    void *r = maybe_redirect(url);
    return g_orig_post_wwwform(r ? r : url, form, mi);
}

static void *hook_post_ctype(void *url, void *body, void *mi)
{
    void *r = maybe_redirect(url);
    return g_orig_post_ctype(r ? r : url, body, mi);
}

static void hook_show_msg_box(void *self, void *mi)
{
    logi("Kakao ShowMsgBox blocked");
}

// ---------------------------------------------------------------------------
// Hook installation
// ---------------------------------------------------------------------------
struct HookEntry {
    std::uintptr_t  rva;
    void           *hook_fn;
    void          **orig;
    const char     *name;
};

static void do_install(std::uintptr_t base)
{
    const HookEntry kHooks[] = {
        { kUWR_ctor_string,        (void*)hook_ctor_string,        (void**)&g_orig_ctor_string,        "UWR::ctor(string)" },
        { kUWR_ctor_string_method, (void*)hook_ctor_string_method, (void**)&g_orig_ctor_string_method, "UWR::ctor(string,string)" },
        { kUWR_ctor_full,          (void*)hook_ctor_full,          (void**)&g_orig_ctor_full,          "UWR::ctor(full)" },
        { kUWR_SetUrl,             (void*)hook_set_url,            (void**)&g_orig_set_url,            "UWR::SetUrl" },
        { kUWR_Get,                (void*)hook_get,                (void**)&g_orig_get,                "UWR::Get" },
        { kUWR_Put_bytes,          (void*)hook_put_bytes,          (void**)&g_orig_put_bytes,          "UWR::Put(bytes)" },
        { kUWR_Put_string,         (void*)hook_put_string,         (void**)&g_orig_put_string,         "UWR::Put(string)" },
        { kUWR_PostWwwForm,        (void*)hook_post_wwwform,       (void**)&g_orig_post_wwwform,       "UWR::PostWwwForm" },
        { kUWR_Post_contentType,   (void*)hook_post_ctype,         (void**)&g_orig_post_ctype,         "UWR::Post(contentType)" },
        { kKakao_ShowMsgBox,       (void*)hook_show_msg_box,       (void**)&g_orig_show_msg_box,       "KakaoSDKAdapter::ShowMsgBox" },
    };

    for (const auto &h : kHooks) {
        void *target = reinterpret_cast<void *>(base + h.rva);
        void *tramp  = nullptr;
        if (eversoul::hook::install_inline_hook(target, h.hook_fn, &tramp)) {
            *h.orig = tramp;
            logi("il2cpp_redirect: hooked %s @ %p", h.name, target);
        } else {
            loge("il2cpp_redirect: failed %s @ %p", h.name, target);
        }
    }
}

// ---------------------------------------------------------------------------
// Background poller — waits for libil2cpp.so to appear, then installs hooks
// ---------------------------------------------------------------------------
static std::atomic<bool> g_installed{false};

static void *poller_thread(void *)
{
    for (int i = 0; i < 120 && !g_installed.load(); ++i) {
        usleep(500000);

        void *sym = dlsym(RTLD_DEFAULT, "il2cpp_string_new");
        if (!sym) continue;

        Dl_info info{};
        if (!dladdr(sym, &info) || !info.dli_fbase) continue;

        g_string_new = reinterpret_cast<Il2CppStringNew_t>(sym);

        bool expected = false;
        if (!g_installed.compare_exchange_strong(expected, true)) return nullptr;

        do_install(reinterpret_cast<std::uintptr_t>(info.dli_fbase));
    }
    if (!g_installed.load())
        loge("il2cpp_redirect: libil2cpp.so not found within 60s");
    return nullptr;
}

} // namespace

void install()
{
    pthread_t thr;
    pthread_create(&thr, nullptr, poller_thread, nullptr);
    pthread_detach(thr);
}

} // namespace eversoul::il2cpp_redirect
#else
namespace eversoul::il2cpp_redirect {
    void install() {}
} // namespace eversoul::il2cpp_redirect
#endif // __aarch64__
