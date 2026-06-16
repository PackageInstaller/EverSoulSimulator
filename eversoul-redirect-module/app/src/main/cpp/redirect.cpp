#include <jni.h>
#include <android/log.h>
#include <dlfcn.h>
#include <string>
#include <vector>
#include <thread>
#include <chrono>
#include <regex>
#include <cstring>
#include "dobby.h"

#define LOG_TAG "EversoulNative"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

#define MAX_HOOKS 8

// IL2CPP Types & Functions
typedef void* (*il2cpp_domain_get_t)();
typedef void* (*il2cpp_domain_assembly_open_t)(void* domain, const char* name);
typedef void* (*il2cpp_assembly_get_image_t)(void* assembly);
typedef void* (*il2cpp_class_from_name_t)(void* image, const char* namespaze, const char* name);
typedef void* (*il2cpp_class_get_methods_t)(void* klass, void** iter);
typedef const char* (*il2cpp_method_get_name_t)(void* method);
typedef void* (*il2cpp_string_new_t)(const char* str);
typedef uint16_t* (*il2cpp_string_chars_t)(void* str);
typedef int32_t (*il2cpp_string_length_t)(void* str);

static il2cpp_domain_get_t il2cpp_domain_get = nullptr;
static il2cpp_domain_assembly_open_t il2cpp_domain_assembly_open = nullptr;
static il2cpp_assembly_get_image_t il2cpp_assembly_get_image = nullptr;
static il2cpp_class_from_name_t il2cpp_class_from_name = nullptr;
static il2cpp_class_get_methods_t il2cpp_class_get_methods = nullptr;
static il2cpp_method_get_name_t il2cpp_method_get_name = nullptr;
static il2cpp_string_new_t il2cpp_string_new = nullptr;
static il2cpp_string_chars_t il2cpp_string_chars = nullptr;
static il2cpp_string_length_t il2cpp_string_length = nullptr;

static void* orig_funcs[MAX_HOOKS] = {nullptr};

const std::vector<std::string> DOMAINS = {
    "gc-openapi-zinny3.kakaogames.com",
    "gc-infodesk-zinny3.kakaogames.com",
    "gc-session-zinny3.kakaogames.com",
    "session-zinny3.game.kakao.com",
    "qa-gc-openapi-zinny3.kakaogames.com",
    "qa-gc-infodesk-zinny3.kakaogames.com",
    "infodesk-zinny3.game.kakao.com",
    "openapi-zinny3.game.kakao.com",
    "game.kakao.com",
    "kakaogames.com"
};

const std::vector<std::string> WS_DOMAINS = {
    "live-sea-chat.esoul.kakaogames.com",
    "live-sea.esoul.kakaogames.com",
    "gc-session-zinny3.kakaogames.com"
};

const std::string LOCAL_HTTP_BASE = "http://127.0.0.1:9999";
const std::string LOCAL_WS_BASE = "ws://127.0.0.1:9999";

std::string utf16_to_utf8(const uint16_t* wstr, int32_t len) {
    if (!wstr || len <= 0) return "";
    std::string utf8;
    utf8.reserve(len);
    for (int32_t i = 0; i < len; ++i) {
        uint16_t c = wstr[i];
        if (c < 0x80) {
            utf8.push_back(static_cast<char>(c));
        } else if (c < 0x800) {
            utf8.push_back(static_cast<char>(0xc0 | (c >> 6)));
            utf8.push_back(static_cast<char>(0x80 | (c & 0x3f)));
        } else {
            utf8.push_back(static_cast<char>(0xe0 | (c >> 12)));
            utf8.push_back(static_cast<char>(0x80 | ((c >> 6) & 0x3f)));
            utf8.push_back(static_cast<char>(0x80 | (c & 0x3f)));
        }
    }
    return utf8;
}

std::string redirect_url_cpp(const std::string& url) {
    std::string out = url;

    // LIAPP lockincomp.com
    if (out.find(".lockincomp.com") != std::string::npos) {
        std::regex re("https?://[a-zA-Z0-9-]+\\.lockincomp\\.com(:\\d+)?");
        out = std::regex_replace(out, re, LOCAL_HTTP_BASE);
        LOGI("Redirected lockincomp native: %s -> %s", url.c_str(), out.c_str());
        return out;
    }

    // Check WS domains
    for (const auto& domain : WS_DOMAINS) {
        if (out.find(domain) != std::string::npos) {
            std::regex ws_re("wss?://" + domain + "(:\\d+)?");
            out = std::regex_replace(out, ws_re, LOCAL_WS_BASE);
            std::regex http_re("https?://" + domain + "(:\\d+)?");
            out = std::regex_replace(out, http_re, LOCAL_HTTP_BASE);
        }
    }

    // Check HTTP domains
    for (const auto& domain : DOMAINS) {
        size_t pos;
        while ((pos = out.find("https://" + domain)) != std::string::npos) {
            out.replace(pos, 8 + domain.length(), LOCAL_HTTP_BASE);
        }
        while ((pos = out.find("http://" + domain)) != std::string::npos) {
            out.replace(pos, 7 + domain.length(), LOCAL_HTTP_BASE);
        }
    }

    if (out != url) {
        LOGI("Redirected native: %s -> %s", url.c_str(), out.c_str());
    }
    return out;
}

void* maybe_redirect_il2cpp_string(void* il2cpp_str) {
    if (!il2cpp_str || !il2cpp_string_chars || !il2cpp_string_length || !il2cpp_string_new) {
        return il2cpp_str;
    }

    uint16_t* chars = il2cpp_string_chars(il2cpp_str);
    int32_t len = il2cpp_string_length(il2cpp_str);
    if (!chars || len <= 0) {
        return il2cpp_str;
    }

    std::string original = utf16_to_utf8(chars, len);
    std::string modified = redirect_url_cpp(original);

    if (original != modified) {
        return il2cpp_string_new(modified.c_str());
    }

    return il2cpp_str;
}

template<int Idx>
void* detour_instance_method(void* __this, void* url, void* a3, void* a4, void* a5, void* a6) {
    void* new_url = maybe_redirect_il2cpp_string(url);
    typedef void* (*func_t)(void*, void*, void*, void*, void*, void*);
    return ((func_t)orig_funcs[Idx])(__this, new_url, a3, a4, a5, a6);
}

void init_native_hook() {
    LOGI("Initializing native redirect hook...");

    void* handle = nullptr;
    for (int i = 0; i < 20; ++i) {
        handle = dlopen("libil2cpp.so", RTLD_NOW);
        if (handle) break;
        std::this_thread::sleep_for(std::chrono::milliseconds(200));
    }

    if (!handle) {
        LOGE("Failed to find/dlopen libil2cpp.so");
        return;
    }

    LOGI("Successfully opened libil2cpp.so");

    il2cpp_domain_get = (il2cpp_domain_get_t)dlsym(handle, "il2cpp_domain_get");
    il2cpp_domain_assembly_open = (il2cpp_domain_assembly_open_t)dlsym(handle, "il2cpp_domain_assembly_open");
    il2cpp_assembly_get_image = (il2cpp_assembly_get_image_t)dlsym(handle, "il2cpp_assembly_get_image");
    il2cpp_class_from_name = (il2cpp_class_from_name_t)dlsym(handle, "il2cpp_class_from_name");
    il2cpp_class_get_methods = (il2cpp_class_get_methods_t)dlsym(handle, "il2cpp_class_get_methods");
    il2cpp_method_get_name = (il2cpp_method_get_name_t)dlsym(handle, "il2cpp_method_get_name");
    il2cpp_string_new = (il2cpp_string_new_t)dlsym(handle, "il2cpp_string_new");
    il2cpp_string_chars = (il2cpp_string_chars_t)dlsym(handle, "il2cpp_string_chars");
    il2cpp_string_length = (il2cpp_string_length_t)dlsym(handle, "il2cpp_string_length");

    if (!il2cpp_domain_get || !il2cpp_class_from_name || !il2cpp_class_get_methods || !il2cpp_string_new) {
        LOGE("Failed to resolve critical IL2CPP APIs");
        return;
    }

    void* domain = il2cpp_domain_get();
    if (!domain) {
        LOGE("Failed to get IL2CPP domain");
        return;
    }

    void* assembly = il2cpp_domain_assembly_open(domain, "UnityEngine.WebRequestModule");
    if (!assembly) {
        LOGE("Failed to open assembly UnityEngine.WebRequestModule");
        return;
    }

    void* image = il2cpp_assembly_get_image(assembly);
    if (!image) {
        LOGE("Failed to get assembly image");
        return;
    }

    void* klass = il2cpp_class_from_name(image, "UnityEngine.Networking", "UnityWebRequest");
    if (!klass) {
        LOGE("Failed to find class UnityEngine.Networking.UnityWebRequest");
        return;
    }

    LOGI("Found UnityWebRequest class, scanning methods...");

    void* iter = nullptr;
    void* method = nullptr;
    int hook_count = 0;

    void* detour_tbl[MAX_HOOKS] = {
        (void*)detour_instance_method<0>,
        (void*)detour_instance_method<1>,
        (void*)detour_instance_method<2>,
        (void*)detour_instance_method<3>,
        (void*)detour_instance_method<4>,
        (void*)detour_instance_method<5>,
        (void*)detour_instance_method<6>,
        (void*)detour_instance_method<7>
    };

    while ((method = il2cpp_class_get_methods(klass, &iter)) != nullptr) {
        const char* name = il2cpp_method_get_name(method);
        if (!name) continue;

        std::string method_name(name);
        bool should_hook = false;

        if (method_name == ".ctor" || method_name == "set_url" || method_name == "SetUrl") {
            should_hook = true;
        }

        if (should_hook) {
            if (hook_count >= MAX_HOOKS) {
                LOGE("Maximum hooks exceeded, skipping: %s", name);
                break;
            }

            void* method_ptr = *(void**)method;
            if (!method_ptr) {
                LOGE("Method %s has no native code pointer", name);
                continue;
            }

            LOGI("Hooking UnityWebRequest::%s @ %p with slot %d", name, method_ptr, hook_count);

            int ret = DobbyHook(method_ptr, detour_tbl[hook_count], &orig_funcs[hook_count]);
            if (ret == 0) {
                LOGI("Successfully hooked %s", name);
                hook_count++;
            } else {
                LOGE("Failed to hook %s, error code: %d", name, ret);
            }
        }
    }

    LOGI("IL2CPP Native Hook initialization completed. Hooked %d methods.", hook_count);
}

extern "C" JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved) {
    LOGI("JNI_OnLoad called, launching hook thread...");
    std::thread(init_native_hook).detach();
    return JNI_VERSION_1_6;
}
