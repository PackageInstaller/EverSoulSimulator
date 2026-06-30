#ifdef __ANDROID__
#include "apk/native/url_hooks.hpp"
#include "apk/hook/tbl_hook.hpp"
#include "apk/redirect/url.hpp"

#include <frida-gum.h>
#include <android/log.h>
#include <dlfcn.h>
#include <thread>
#include <chrono>
#include <string>
#include <cstdint>

namespace eversoul::native_hooks {

namespace {
    constexpr const char* TAG = "libswappywrapper/il2cpp";

#define LOGI(fmt, ...) __android_log_print(ANDROID_LOG_INFO,  TAG, fmt, ##__VA_ARGS__)
#define LOGE(fmt, ...) __android_log_print(ANDROID_LOG_ERROR, TAG, fmt, ##__VA_ARGS__)

    // ---------- IL2CPP 함수 타입 ----------

    using il2cpp_domain_get_t          = void*(*)();
    using il2cpp_domain_assembly_open_t= void*(*)(void*, const char*);
    using il2cpp_assembly_get_image_t  = void*(*)(void*);
    using il2cpp_class_from_name_t     = void*(*)(void*, const char*, const char*);
    using il2cpp_class_get_methods_t   = void*(*)(void*, void**);
    using il2cpp_method_get_name_t     = const char*(*)(void*);
    using il2cpp_string_new_t          = void*(*)(const char*);
    using il2cpp_string_chars_t        = uint16_t*(*)(void*);
    using il2cpp_string_length_t       = int32_t(*)(void*);
    using il2cpp_init_t                = bool(*)(const char*);

    // ---------- 전역 상태 ----------

    il2cpp_string_new_t    g_str_new    = nullptr;
    il2cpp_string_chars_t  g_str_chars  = nullptr;
    il2cpp_string_length_t g_str_length = nullptr;
    il2cpp_init_t          g_orig_init  = nullptr;

    // frida-gum interceptor 싱글톤
    GumInterceptor* g_interceptor = nullptr;

    // ---------- IL2CPP 문자열 변환 ----------

    std::string il2cpp_to_utf8(void* s) {
        if (!s || !g_str_chars || !g_str_length) return {};
        int32_t len = g_str_length(s);
        if (len <= 0 || len > 0x100000) return {};
        uint16_t* chars = g_str_chars(s);
        if (!chars) return {};
        std::string out;
        out.reserve(static_cast<size_t>(len));
        for (int32_t i = 0; i < len; ++i) {
            uint16_t c = chars[i];
            if      (c < 0x80)  { out.push_back(static_cast<char>(c)); }
            else if (c < 0x800) { out.push_back(static_cast<char>(0xc0|(c>>6))); out.push_back(static_cast<char>(0x80|(c&0x3f))); }
            else                { out.push_back(static_cast<char>(0xe0|(c>>12))); out.push_back(static_cast<char>(0x80|((c>>6)&0x3f))); out.push_back(static_cast<char>(0x80|(c&0x3f))); }
        }
        return out;
    }

    void* make_il2cpp_str(const std::string& s) {
        return g_str_new ? g_str_new(s.c_str()) : nullptr;
    }

    // ---------- UnityWebRequest detour ----------

    // frida-gum replace: 원본 포인터 저장 슬롯
    constexpr int kMaxHooks = 8;
    using target_fn = void*(*)(void*, void*, void*, void*, void*, void*);
    target_fn g_orig_uwr[kMaxHooks]{};
    int g_uwr_count = 0;

    void* uwr_detour_impl(void* thiz, void* url, void* a3, void* a4, void* a5, void* a6, int slot) {
        if (url && g_str_length) {
            if (g_str_length(url) > 0) {
                std::string orig = il2cpp_to_utf8(url);
                std::string mod  = url_redirect::redirect_url_cpp(orig);
                if (orig != mod) {
                    void* new_str = make_il2cpp_str(mod);
                    if (new_str) {
                        LOGI("IL2CPP: %s -> %s", orig.c_str(), mod.c_str());
                        url = new_str;
                    }
                }
            }
        }
        return g_orig_uwr[slot](thiz, url, a3, a4, a5, a6);
    }

#define MAKE_UWR_DETOUR(n) \
    static void* uwr_detour_##n(void* a,void* b,void* c,void* d,void* e,void* f) \
    { return uwr_detour_impl(a,b,c,d,e,f,n); }

    MAKE_UWR_DETOUR(0) MAKE_UWR_DETOUR(1) MAKE_UWR_DETOUR(2) MAKE_UWR_DETOUR(3)
    MAKE_UWR_DETOUR(4) MAKE_UWR_DETOUR(5) MAKE_UWR_DETOUR(6) MAKE_UWR_DETOUR(7)
#undef MAKE_UWR_DETOUR

    void* g_uwr_detours[kMaxHooks] = {
        (void*)uwr_detour_0,(void*)uwr_detour_1,(void*)uwr_detour_2,(void*)uwr_detour_3,
        (void*)uwr_detour_4,(void*)uwr_detour_5,(void*)uwr_detour_6,(void*)uwr_detour_7,
    };

    // ---------- KGConfiguration RVA detour ----------

    constexpr int kMaxKg = 3;
    using kg_fn = void*(*)(void*, unsigned int, void*);
    kg_fn g_orig_kg[kMaxKg]{};
    int g_kg_count = 0;

#define MAKE_KG_DETOUR(n) \
    static void* kg_detour_##n(void* a, unsigned int b, void* c) { \
        void* ret = g_orig_kg[n](a,b,c); \
        if (ret && g_str_chars && g_str_length) { \
            std::string url = il2cpp_to_utf8(ret); \
            std::string mod = url_redirect::redirect_url_cpp(url); \
            if (url != mod && g_str_new) { LOGI("KG URL: %s -> %s", url.c_str(), mod.c_str()); return g_str_new(mod.c_str()); } \
        } \
        return ret; \
    }
    MAKE_KG_DETOUR(0) MAKE_KG_DETOUR(1) MAKE_KG_DETOUR(2)
#undef MAKE_KG_DETOUR

    void* g_kg_detours[kMaxKg] = {
        (void*)kg_detour_0,(void*)kg_detour_1,(void*)kg_detour_2,
    };

    // frida-gum으로 단일 주소 replace 훅 설치
    bool gum_replace(void* target, void* detour, void** out_orig) {
        if (!g_interceptor || !target || !detour) return false;
        gum_interceptor_begin_transaction(g_interceptor);
        GumReplaceReturn r = gum_interceptor_replace(
            g_interceptor, target, detour,
            reinterpret_cast<gpointer*>(out_orig), nullptr);
        gum_interceptor_end_transaction(g_interceptor);
        return r == GUM_REPLACE_OK;
    }

    // ---------- il2cpp_init detour ----------

    bool detour_il2cpp_init(const char* domain_name) {
        LOGI("il2cpp_init(%s)", domain_name);
        bool res = g_orig_init(domain_name);

        void* handle = dlopen("libil2cpp.so", RTLD_NOW | RTLD_NOLOAD);
        if (!handle) handle = dlopen("libil2cpp.so", RTLD_NOW);
        if (!handle) { LOGE("libil2cpp.so 재오픈 실패"); return res; }

        auto domain_get    = reinterpret_cast<il2cpp_domain_get_t>(dlsym(handle,"il2cpp_domain_get"));
        auto assembly_open = reinterpret_cast<il2cpp_domain_assembly_open_t>(dlsym(handle,"il2cpp_domain_assembly_open"));
        auto get_image     = reinterpret_cast<il2cpp_assembly_get_image_t>(dlsym(handle,"il2cpp_assembly_get_image"));
        auto class_from    = reinterpret_cast<il2cpp_class_from_name_t>(dlsym(handle,"il2cpp_class_from_name"));
        auto get_methods   = reinterpret_cast<il2cpp_class_get_methods_t>(dlsym(handle,"il2cpp_class_get_methods"));
        auto method_name   = reinterpret_cast<il2cpp_method_get_name_t>(dlsym(handle,"il2cpp_method_get_name"));

        if (!domain_get || !class_from || !get_methods) {
            LOGE("핵심 IL2CPP API 탐색 실패"); return res;
        }

        void* domain = domain_get();
        if (!domain) return res;

        static const char* kAsms[] = {
            "UnityEngine.WebRequestModule",
            "UnityEngine.UnityWebRequestModule",
            "UnityEngine.CoreModule",
        };
        void* assembly = nullptr;
        for (auto* name : kAsms) {
            assembly = assembly_open(domain, name);
            if (assembly) break;
        }
        if (!assembly) return res;

        void* image = get_image(assembly);
        if (!image) return res;

        void* klass = class_from(image, "UnityEngine.Networking", "UnityWebRequest");
        if (!klass) return res;
        LOGI("UnityWebRequest 클래스 발견");

        void* iter = nullptr;
        void* method = nullptr;
        while ((method = get_methods(klass, &iter)) != nullptr && g_uwr_count < kMaxHooks) {
            const char* n = method_name(method);
            if (!n) continue;
            std::string mn(n);
            if (mn != ".ctor" && mn != "set_url" && mn != "SetUrl") continue;
            void* ptr = *reinterpret_cast<void**>(method);
            if (!ptr) continue;
            void* orig = nullptr;
            if (gum_replace(ptr, g_uwr_detours[g_uwr_count], &orig)) {
                g_orig_uwr[g_uwr_count] = reinterpret_cast<target_fn>(orig);
                LOGI("frida-gum hook: UnityWebRequest::%s @ %p", n, ptr);
                ++g_uwr_count;
            }
        }
        LOGI("UnityWebRequest 훅 완료: %d개", g_uwr_count);
        tbl_hook::hook_table_manager(handle);
        return res;
    }

    // ---------- 초기화 스레드 ----------

    void hook_thread() {
        // libil2cpp.so 로드 대기 (최대 2초)
        void* handle = nullptr;
        for (int i = 0; i < 200; ++i) {
            handle = dlopen("libil2cpp.so", RTLD_NOLOAD);
            if (!handle) handle = dlopen("libil2cpp.so", RTLD_NOW);
            if (handle) break;
            std::this_thread::sleep_for(std::chrono::milliseconds(10));
        }
        if (!handle) { LOGE("libil2cpp.so 찾기 실패"); return; }
        LOGI("libil2cpp.so 로드 확인: %p", handle);

        g_str_new    = reinterpret_cast<il2cpp_string_new_t>(dlsym(handle,"il2cpp_string_new"));
        g_str_chars  = reinterpret_cast<il2cpp_string_chars_t>(dlsym(handle,"il2cpp_string_chars"));
        g_str_length = reinterpret_cast<il2cpp_string_length_t>(dlsym(handle,"il2cpp_string_length"));

        // KGConfiguration RVA 훅 (RVA from Il2CppInspector)
        Dl_info info{};
        if (g_str_new && dladdr(reinterpret_cast<void*>(g_str_new), &info) && info.dli_fbase) {
            auto base = reinterpret_cast<std::uintptr_t>(info.dli_fbase);
            static const uintptr_t kRVAs[] = { 0x0894A724, 0x0894A85C, 0x0894A994 };
            for (int i = 0; i < 3 && g_kg_count < kMaxKg; ++i) {
                void* addr = reinterpret_cast<void*>(base + kRVAs[i]);
                void* orig = nullptr;
                if (gum_replace(addr, g_kg_detours[g_kg_count], &orig)) {
                    g_orig_kg[g_kg_count] = reinterpret_cast<kg_fn>(orig);
                    LOGI("KG RVA 훅 #%d @ %p", g_kg_count, addr);
                    ++g_kg_count;
                }
            }
        }

        // il2cpp_init 훅 → 초기화 이후 UnityWebRequest 훅 설치
        void* init_sym = dlsym(handle, "il2cpp_init");
        if (!init_sym) { LOGE("il2cpp_init 심볼 없음"); return; }
        void* orig = nullptr;
        if (gum_replace(init_sym, reinterpret_cast<void*>(detour_il2cpp_init), &orig)) {
            g_orig_init = reinterpret_cast<il2cpp_init_t>(orig);
            LOGI("frida-gum: il2cpp_init 훅 완료");
        }
    }

} // anonymous namespace

void install_il2cpp_hooks() {
    g_interceptor = gum_interceptor_obtain();
    std::thread(hook_thread).detach();
}

} // namespace eversoul::native_hooks
#endif
