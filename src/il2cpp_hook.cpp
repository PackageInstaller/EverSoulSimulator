// il2cpp_hook.cpp — Native IL2CPP-layer UnityWebRequest URL redirection.
// Hooks il2cpp_init → dynamically discovers UnityWebRequest methods → DobbyHook.
// Java-layer Kakao SDK URL redirect is handled by Smali injection in classes3.dex.

#include "il2cpp_hook.hpp"
#include "redirect.hpp"

#include <atomic>
#include <chrono>
#include <cstring>
#include <string>
#include <thread>

#include <android/log.h>
#include <dlfcn.h>
#include <dobby.h>

namespace eversoul::il2cpp_hook
{
    namespace
    {
        constexpr const char *kLogTag = "libswappywrapper/il2cpp";

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
        template <class... A>
        void logi(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_INFO, kLogTag, fmt, a...); }
        template <class... A>
        void logw(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_WARN, kLogTag, fmt, a...); }
        template <class... A>
        void loge(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_ERROR, kLogTag, fmt, a...); }
#pragma clang diagnostic pop

        // ---------- IL2CPP function types ----------

        using il2cpp_domain_get_t = void *(*)();
        using il2cpp_domain_assembly_open_t = void *(*)(void *, const char *);
        using il2cpp_assembly_get_image_t = void *(*)(void *);
        using il2cpp_class_from_name_t = void *(*)(void *, const char *, const char *);
        using il2cpp_class_get_methods_t = void *(*)(void *, void **);
        using il2cpp_method_get_name_t = const char *(*)(void *);
        using il2cpp_string_new_t = void *(*)(const char *);
        using il2cpp_string_chars_t = uint16_t *(*)(void *);
        using il2cpp_string_length_t = int32_t (*)(void *);
        using il2cpp_init_t = bool (*)(const char *);

        // ---------- Global state ----------

        il2cpp_string_new_t g_il2cpp_string_new = nullptr;
        il2cpp_string_chars_t g_il2cpp_string_chars = nullptr;
        il2cpp_string_length_t g_il2cpp_string_length = nullptr;
        il2cpp_init_t g_orig_il2cpp_init = nullptr;

        // Forward declarations for kg_rva_detour
        std::string il2cpp_string_to_utf8(void *il2cpp_str);

        // KGConfiguration RVA hooks: wrap String*-returning methods
        using kg_return_string_t = void *(*)(void *, unsigned int, void *);
        constexpr int kMaxKgRVA = 3;
        kg_return_string_t g_kg_rva_orig[kMaxKgRVA] = {};
        int g_kg_rva_count = 0;

        void *kg_rva_detour(void *a1, unsigned int a2, void *a3)
        {
            // Find which slot we're in by comparing LR (link register)
            // But easier: just call original, then modify return
            void *ret = g_kg_rva_orig[g_kg_rva_count > 0 ? g_kg_rva_count - 1 : 0](a1, a2, a3);

            // Rewrite the returned IL2CPP string if possible
            if (g_il2cpp_string_chars && g_il2cpp_string_length && ret)
            {
                std::string url = il2cpp_string_to_utf8(ret);
                std::string mod = eversoul::redirect::rewrite_url(url);
                if (url != mod && g_il2cpp_string_new)
                {
                    logi("KG URL: %s -> %s", url.c_str(), mod.c_str());
                    return g_il2cpp_string_new(mod.c_str());
                }
            }
            return ret;
        }

        // ---------- IL2CPP string helpers ----------

        std::string il2cpp_string_to_utf8(void *il2cpp_str)
        {
            if (!il2cpp_str || !g_il2cpp_string_chars || !g_il2cpp_string_length) return "";

            int32_t len = g_il2cpp_string_length(il2cpp_str);
            if (len < 0 || len > 0x100000) return "";

            uint16_t *chars = g_il2cpp_string_chars(il2cpp_str);
            if (!chars || len <= 0) return "";

            std::string utf8;
            utf8.reserve(static_cast<size_t>(len));
            for (int32_t i = 0; i < len; ++i)
            {
                uint16_t c = chars[i];
                if (c < 0x80)
                    utf8.push_back(static_cast<char>(c));
                else if (c < 0x800)
                {
                    utf8.push_back(static_cast<char>(0xc0 | (c >> 6)));
                    utf8.push_back(static_cast<char>(0x80 | (c & 0x3f)));
                }
                else
                {
                    utf8.push_back(static_cast<char>(0xe0 | (c >> 12)));
                    utf8.push_back(static_cast<char>(0x80 | ((c >> 6) & 0x3f)));
                    utf8.push_back(static_cast<char>(0x80 | (c & 0x3f)));
                }
            }
            return utf8;
        }

        void *make_il2cpp_string(const std::string &s)
        {
            if (!g_il2cpp_string_new) return nullptr;
            return g_il2cpp_string_new(s.c_str());
        }

        // ---------- UnityWebRequest detours ----------

        using detour_target_t = void *(*)(void *, void *, void *, void *, void *, void *);

        constexpr int kMaxHooks = 8;
        detour_target_t g_orig_funcs[kMaxHooks] = {nullptr};
        int g_hook_count = 0;

        void *detour_entry(void *__this, void *url, void *a3, void *a4, void *a5, void *a6, int slot)
        {
            if (url && g_il2cpp_string_length)
            {
                int32_t len = g_il2cpp_string_length(url);
                if (len > 0 && len < 0x100000)
                {
                    std::string original = il2cpp_string_to_utf8(url);
                    std::string modified = eversoul::redirect::rewrite_url(original);
                    if (original != modified)
                    {
                        void *new_url = make_il2cpp_string(modified);
                        if (new_url) url = new_url;
                        logi("IL2CPP: %s -> %s", original.c_str(), modified.c_str());
                    }
                }
            }
            return g_orig_funcs[slot](__this, url, a3, a4, a5, a6);
        }

#define MAKE_DETOUR(n)                                                                             \
    static void *detour_##n(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)           \
    { return detour_entry(a1, a2, a3, a4, a5, a6, n); }

        MAKE_DETOUR(0); MAKE_DETOUR(1); MAKE_DETOUR(2); MAKE_DETOUR(3);
        MAKE_DETOUR(4); MAKE_DETOUR(5); MAKE_DETOUR(6); MAKE_DETOUR(7);
#undef MAKE_DETOUR

        void *detour_table[kMaxHooks] = {
            reinterpret_cast<void *>(detour_0), reinterpret_cast<void *>(detour_1),
            reinterpret_cast<void *>(detour_2), reinterpret_cast<void *>(detour_3),
            reinterpret_cast<void *>(detour_4), reinterpret_cast<void *>(detour_5),
            reinterpret_cast<void *>(detour_6), reinterpret_cast<void *>(detour_7),
        };

        // ---------- Hook installation ----------

        void perform_il2cpp_class_hooks(void *lib_handle)
        {
            auto domain_get = reinterpret_cast<il2cpp_domain_get_t>(dlsym(lib_handle, "il2cpp_domain_get"));
            auto assembly_open = reinterpret_cast<il2cpp_domain_assembly_open_t>(dlsym(lib_handle, "il2cpp_domain_assembly_open"));
            auto get_image = reinterpret_cast<il2cpp_assembly_get_image_t>(dlsym(lib_handle, "il2cpp_assembly_get_image"));
            auto class_from_name = reinterpret_cast<il2cpp_class_from_name_t>(dlsym(lib_handle, "il2cpp_class_from_name"));
            auto get_methods = reinterpret_cast<il2cpp_class_get_methods_t>(dlsym(lib_handle, "il2cpp_class_get_methods"));
            auto method_get_name = reinterpret_cast<il2cpp_method_get_name_t>(dlsym(lib_handle, "il2cpp_method_get_name"));

            g_il2cpp_string_new = reinterpret_cast<il2cpp_string_new_t>(dlsym(lib_handle, "il2cpp_string_new"));
            g_il2cpp_string_chars = reinterpret_cast<il2cpp_string_chars_t>(dlsym(lib_handle, "il2cpp_string_chars"));
            g_il2cpp_string_length = reinterpret_cast<il2cpp_string_length_t>(dlsym(lib_handle, "il2cpp_string_length"));

            if (!domain_get || !class_from_name || !get_methods || !g_il2cpp_string_new)
            {
                loge("Failed to resolve critical IL2CPP APIs");
                return;
            }

            void *domain = domain_get();
            if (!domain) { loge("IL2CPP domain is NULL"); return; }
            logi("IL2CPP domain: %p", domain);

            static const char *kAssemblyNames[] = {
                "UnityEngine.WebRequestModule",
                "UnityEngine.UnityWebRequestModule",
                "UnityEngine.CoreModule",
            };
            void *assembly = nullptr;
            const char *found_name = nullptr;
            for (const char *name : kAssemblyNames)
            {
                assembly = assembly_open(domain, name);
                if (assembly) { found_name = name; break; }
            }
            if (!assembly) { loge("Failed to open any UnityWebRequest assembly"); return; }
            logi("Opened assembly: %s", found_name);

            void *image = get_image(assembly);
            if (!image) { loge("Failed to get assembly image"); return; }

            void *klass = class_from_name(image, "UnityEngine.Networking", "UnityWebRequest");
            if (!klass) { loge("Failed to find UnityWebRequest class"); return; }
            logi("Found UnityWebRequest class");

            void *iter = nullptr;
            void *method = nullptr;
            while ((method = get_methods(klass, &iter)) != nullptr)
            {
                const char *name = method_get_name(method);
                if (!name) continue;

                std::string mn(name);
                bool should_hook = (mn == ".ctor" || mn == "set_url" || mn == "SetUrl");
                if (!should_hook) continue;

                if (g_hook_count >= kMaxHooks)
                {
                    loge("Max hooks exceeded, skipping: %s", name);
                    break;
                }

                void *ptr = *reinterpret_cast<void **>(method);
                if (!ptr) { loge("Method %s has no native code pointer", name); continue; }

                logi("DobbyHook UnityWebRequest::%s @ %p (slot %d)", name, ptr, g_hook_count);
                void *origin = nullptr;
                int ret = DobbyHook(ptr, detour_table[g_hook_count], &origin);
                if (ret == 0)
                {
                    g_orig_funcs[g_hook_count] = reinterpret_cast<detour_target_t>(origin);
                    logi("Successfully hooked %s", name);
                    ++g_hook_count;
                }
                else
                {
                    loge("DobbyHook failed for %s: ret=%d", name, ret);
                }
            }
            logi("IL2CPP hook done: %d methods hooked", g_hook_count);
        }

        // ---------- il2cpp_init detour ----------

        bool detour_il2cpp_init(const char *domain_name)
        {
            logi("il2cpp_init(%s) called", domain_name);
            bool res = g_orig_il2cpp_init(domain_name);
            logi("il2cpp_init returned: %d", res);

            void *handle = dlopen("libil2cpp.so", RTLD_NOW);
            if (handle)
            {
                perform_il2cpp_class_hooks(handle);
            }
            else
            {
                loge("Could not re-open libil2cpp.so");
            }
            return res;
        }

        // ---------- Main init thread ----------

        void init_hooks()
        {
            void *handle = nullptr;
            for (int i = 0; i < 200; ++i)
            {
                handle = dlopen("libil2cpp.so", RTLD_NOLOAD);
                if (!handle) handle = dlopen("libil2cpp.so", RTLD_NOW);
                if (handle) break;
                std::this_thread::sleep_for(std::chrono::milliseconds(10));
            }
            if (!handle) { loge("Failed to find libil2cpp.so"); return; }
            logi("Opened libil2cpp.so: %p", handle);

            void *target = dlsym(handle, "il2cpp_init");
            if (!target) { loge("Failed to find il2cpp_init symbol"); return; }

            // --- Hook KGConfiguration URL methods via RVA ---
            // These IL2CPP methods return hardcoded Kakao URLs as String*.
            // RVAs from Il2CppInspector:
            //   InfodeskUrl(KGServerType): 0x0894A724 → returns String*
            //   SessionUrl(KGServerType):  0x0894A85C → returns String*
            //   OpenApiUrl(KGServerType):  0x0894A994 → returns String*
            // We wrap the return value to redirect.
            std::uintptr_t base = 0;
            {
                Dl_info info;
                if (dladdr(handle, &info)) base = reinterpret_cast<std::uintptr_t>(info.dli_fbase);
            }
            if (base)
            {
                static const uintptr_t kKgRVAs[] = { 0x0894A724, 0x0894A85C, 0x0894A994 };
                for (int i = 0; i < 3 && g_kg_rva_count < kMaxKgRVA; ++i)
                {
                    void *addr = reinterpret_cast<void *>(base + kKgRVAs[i]);
                    logi("KG RVA hook #%d @ 0x%lx → %p", i,
                         static_cast<unsigned long>(kKgRVAs[i]), addr);
                    void *origin = nullptr;
                    int ret = DobbyHook(addr, reinterpret_cast<void *>(kg_rva_detour), &origin);
                    if (ret == 0)
                    {
                        g_kg_rva_orig[g_kg_rva_count] = reinterpret_cast<kg_return_string_t>(origin);
                        logi("Hooked KG URL method #%d", g_kg_rva_count);
                        ++g_kg_rva_count;
                    }
                }
            }

            // --- Hook il2cpp_init (existing) ---
            logi("Installing DobbyHook on il2cpp_init @ %p", target);
            void *origin = nullptr;
            int ret = DobbyHook(target, reinterpret_cast<void *>(detour_il2cpp_init), &origin);
            if (ret == 0)
            {
                g_orig_il2cpp_init = reinterpret_cast<il2cpp_init_t>(origin);
                logi("Hooked il2cpp_init!");
            }
            else
            {
                loge("DobbyHook il2cpp_init failed: ret=%d", ret);
            }
        }

    } // anonymous namespace

    void init()
    {
        std::thread(init_hooks).detach();
    }

} // namespace eversoul::il2cpp_hook
