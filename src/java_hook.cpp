#include "java_hook.hpp"

#ifdef __aarch64__

#include <android/log.h>
#include <dlfcn.h>
#include <jni.h>
#include <pthread.h>
#include <sys/mman.h>
#include <unistd.h>

#include <cctype>
#include <cstdint>
#include <cstring>
#include <string>

namespace eversoul::java_hook {
namespace {

static const char* kTag = "libswappywrapper";

template<typename... A>
static void logi(const char* fmt, A... a) {
    __android_log_print(ANDROID_LOG_INFO, kTag, fmt, a...);
}

// ARM64 Android 10-13 ArtMethod field offsets (AOSP art/runtime/art_method.h verified).
static constexpr size_t   kOffFlags  = 0x04;
static constexpr size_t   kOffData   = 0x18;
static constexpr size_t   kOffEp     = 0x20;
static constexpr uint32_t kAccNative = 0x0100u;

// -------------------------------------------------------------------------
// URL redirect — mirrors JS redirectUrl() exactly.
// -------------------------------------------------------------------------
static const char* kLocalBase   = "http://127.0.0.1:9999";
static const char* kLocalWsBase = "ws://127.0.0.1:9999";

static const char* kRedirectDomains[] = {
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
    nullptr
};

static const char* kWsDomains[] = {
    "live-sea-chat.esoul.kakaogames.com",
    "live-sea.esoul.kakaogames.com",
    "live-kr.esoul.kakaogames.com",
    "live-kr-chat.esoul.kakaogames.com",
    "gc-session-zinny3.kakaogames.com",
    "session-zinny3.game.kakao.com",
    nullptr
};

static void str_replace_all(std::string& s, const std::string& from, const char* to) {
    if (from.empty()) return;
    const size_t tolen = strlen(to);
    size_t pos = 0;
    while ((pos = s.find(from, pos)) != std::string::npos) {
        s.replace(pos, from.size(), to);
        pos += tolen;
    }
}

static bool is_kauth_url(const std::string& url) {
    return url.find("kauth.kakao.com") != std::string::npos ||
           url.find("accounts.kakao.com") != std::string::npos;
}

static std::string redirect_url(const std::string& url) {
    std::string out = url;

    for (int i = 0; kRedirectDomains[i]; ++i) {
        str_replace_all(out, std::string("https://") + kRedirectDomains[i], kLocalBase);
        str_replace_all(out, std::string("http://")  + kRedirectDomains[i], kLocalBase);
    }

    for (int i = 0; kWsDomains[i]; ++i) {
        const std::string dom = kWsDomains[i];
        for (const char* scheme : {"wss://", "ws://"}) {
            std::string prefix = scheme + dom;
            size_t pos = 0;
            while ((pos = out.find(prefix, pos)) != std::string::npos) {
                size_t end = pos + prefix.size();
                if (end < out.size() && out[end] == ':') {
                    ++end;
                    while (end < out.size() &&
                           std::isdigit(static_cast<unsigned char>(out[end])))
                        ++end;
                }
                out.replace(pos, end - pos, kLocalWsBase);
                pos += strlen(kLocalWsBase);
            }
        }
        str_replace_all(out, std::string("https://") + dom, kLocalBase);
        str_replace_all(out, std::string("http://")  + dom, kLocalBase);
    }

    // *.lockincomp.com (random subdomain) -> kLocalBase
    {
        const std::string suffix = ".lockincomp.com";
        for (;;) {
            size_t suf = out.find(suffix);
            if (suf == std::string::npos) break;
            size_t scheme = out.rfind("https://", suf);
            if (scheme == std::string::npos) scheme = out.rfind("http://", suf);
            if (scheme == std::string::npos) break;
            size_t end = suf + suffix.size();
            if (end < out.size() && out[end] == ':') {
                ++end;
                while (end < out.size() &&
                       std::isdigit(static_cast<unsigned char>(out[end])))
                    ++end;
            }
            out.replace(scheme, end - scheme, kLocalBase);
        }
    }

    // rttcheck-*.kakaogames.io -> kLocalBase
    {
        const std::string suffix = ".kakaogames.io";
        for (;;) {
            size_t suf = out.find(suffix);
            if (suf == std::string::npos) break;
            size_t scheme = out.rfind("https://", suf);
            if (scheme == std::string::npos) scheme = out.rfind("http://", suf);
            if (scheme == std::string::npos) break;
            // host segment must contain "rttcheck-"
            std::string host = out.substr(scheme, suf - scheme);
            if (host.find("rttcheck-") == std::string::npos) break;
            size_t end = suf + suffix.size();
            if (end < out.size() && out[end] == ':') {
                ++end;
                while (end < out.size() &&
                       std::isdigit(static_cast<unsigned char>(out[end])))
                    ++end;
            }
            out.replace(scheme, end - scheme, kLocalBase);
        }
    }

    return out;
}

// -------------------------------------------------------------------------
// ArtMethod direct patching.
// -------------------------------------------------------------------------
struct NativeHook {
    jmethodID   id;
    void*       orig_ep;
    void*       orig_data;
    uint32_t    orig_flags;
    void*       hook_ep;
    void*       hook_fn;
    pthread_mutex_t mtx;
};

static bool page_rw(void* ptr) {
    uintptr_t base = reinterpret_cast<uintptr_t>(ptr) & ~uintptr_t{4095};
    return mprotect(reinterpret_cast<void*>(base), 8192, PROT_READ | PROT_WRITE) == 0;
}

static void page_ro(void* ptr) {
    uintptr_t base = reinterpret_cast<uintptr_t>(ptr) & ~uintptr_t{4095};
    mprotect(reinterpret_cast<void*>(base), 8192, PROT_READ);
}

static void flush_icache(void* ptr) {
    uintptr_t base = reinterpret_cast<uintptr_t>(ptr) & ~uintptr_t{4095};
    __builtin___clear_cache(reinterpret_cast<char*>(base),
                            reinterpret_cast<char*>(base + 8192));
}

static bool install_native_hook(NativeHook* h, jmethodID mid,
                                void* hook_fn, void* jni_tramp) {
    auto* m     = reinterpret_cast<uint8_t*>(mid);
    auto* flags = reinterpret_cast<uint32_t*>(m + kOffFlags);
    auto* data  = reinterpret_cast<void**>   (m + kOffData);
    auto* ep    = reinterpret_cast<void**>   (m + kOffEp);

    if (!page_rw(m)) return false;

    h->id         = mid;
    h->orig_ep    = *ep;
    h->orig_data  = *data;
    h->orig_flags = *flags;
    h->hook_ep    = jni_tramp;
    h->hook_fn    = hook_fn;
    pthread_mutex_init(&h->mtx, nullptr);

    *flags |= kAccNative;
    *data   = hook_fn;
    *ep     = jni_tramp;

    flush_icache(m);
    page_ro(m);
    return true;
}

static void restore_orig(NativeHook* h) {
    auto* m     = reinterpret_cast<uint8_t*>(h->id);
    auto* flags = reinterpret_cast<uint32_t*>(m + kOffFlags);
    auto* data  = reinterpret_cast<void**>   (m + kOffData);
    auto* ep    = reinterpret_cast<void**>   (m + kOffEp);
    page_rw(m);
    *flags = h->orig_flags;
    *data  = h->orig_data;
    *ep    = h->orig_ep;
    flush_icache(m);
    page_ro(m);
}

static void reapply_hook(NativeHook* h) {
    auto* m     = reinterpret_cast<uint8_t*>(h->id);
    auto* flags = reinterpret_cast<uint32_t*>(m + kOffFlags);
    auto* data  = reinterpret_cast<void**>   (m + kOffData);
    auto* ep    = reinterpret_cast<void**>   (m + kOffEp);
    page_rw(m);
    *flags |= kAccNative;
    *data   = h->hook_fn;
    *ep     = h->hook_ep;
    flush_icache(m);
    page_ro(m);
}

// -------------------------------------------------------------------------
// JNI helpers.
// -------------------------------------------------------------------------
static std::string jstring_to_std(JNIEnv* env, jstring js) {
    if (!js) return {};
    const char* c = env->GetStringUTFChars(js, nullptr);
    if (!c) return {};
    std::string s(c);
    env->ReleaseStringUTFChars(js, c);
    return s;
}

static jstring std_to_jstring(JNIEnv* env, const std::string& s) {
    return env->NewStringUTF(s.c_str());
}

// -------------------------------------------------------------------------
// Global state.
// -------------------------------------------------------------------------
static JavaVM* g_vm             = nullptr;
static void*   g_jni_trampoline = nullptr;

static NativeHook g_hook_url_init_str;
static NativeHook g_hook_url_init_ctx;
static NativeHook g_hook_okhttp_url;
static NativeHook g_hook_kill_process;
static NativeHook g_hook_finish_affinity;
static NativeHook g_hook_start_activity;
static NativeHook g_hook_custom_tab;
static NativeHook g_hook_use_session;
static NativeHook g_hook_set_conn_type;
static NativeHook g_hook_verify_sig;

// -------------------------------------------------------------------------
// Hook implementations.
// -------------------------------------------------------------------------

// java.net.URL.<init>(String url)
static void JNICALL hook_url_init_str(JNIEnv* env, jobject thiz, jstring url_js) {
    std::string orig = jstring_to_std(env, url_js);
    std::string mod  = redirect_url(orig);
    if (orig != mod)
        logi("java_hook: URL.<init>(String) %s -> %s", orig.c_str(), mod.c_str());
    jstring mod_js = std_to_jstring(env, mod);
    pthread_mutex_lock(&g_hook_url_init_str.mtx);
    restore_orig(&g_hook_url_init_str);
    env->CallVoidMethod(thiz, g_hook_url_init_str.id, mod_js);
    reapply_hook(&g_hook_url_init_str);
    pthread_mutex_unlock(&g_hook_url_init_str.mtx);
    env->DeleteLocalRef(mod_js);
}

// java.net.URL.<init>(URL context, String spec)
static void JNICALL hook_url_init_ctx(JNIEnv* env, jobject thiz,
                                      jobject ctx, jstring spec_js) {
    std::string orig = jstring_to_std(env, spec_js);
    std::string mod  = redirect_url(orig);
    if (orig != mod)
        logi("java_hook: URL.<init>(URL,String) %s -> %s", orig.c_str(), mod.c_str());
    jstring mod_js = std_to_jstring(env, mod);
    pthread_mutex_lock(&g_hook_url_init_ctx.mtx);
    restore_orig(&g_hook_url_init_ctx);
    env->CallVoidMethod(thiz, g_hook_url_init_ctx.id, ctx, mod_js);
    reapply_hook(&g_hook_url_init_ctx);
    pthread_mutex_unlock(&g_hook_url_init_ctx.mtx);
    env->DeleteLocalRef(mod_js);
}

// okhttp3.Request$Builder.url(String) -> Request$Builder
static jobject JNICALL hook_okhttp_url(JNIEnv* env, jobject thiz, jstring url_js) {
    std::string orig = jstring_to_std(env, url_js);
    std::string mod  = redirect_url(orig);
    if (orig != mod)
        logi("java_hook: OkHttp Builder.url %s -> %s", orig.c_str(), mod.c_str());
    jstring  mod_js = std_to_jstring(env, mod);
    jobject  result;
    pthread_mutex_lock(&g_hook_okhttp_url.mtx);
    restore_orig(&g_hook_okhttp_url);
    result = env->CallObjectMethod(thiz, g_hook_okhttp_url.id, mod_js);
    reapply_hook(&g_hook_okhttp_url);
    pthread_mutex_unlock(&g_hook_okhttp_url.mtx);
    env->DeleteLocalRef(mod_js);
    return result;
}

// android.os.Process.killProcess(int pid) — block self
static void JNICALL hook_kill_process(JNIEnv* env, jclass cls, jint pid) {
    if (static_cast<int>(pid) == getpid()) {
        logi("java_hook: Process.killProcess(%d) blocked", static_cast<int>(pid));
        return;
    }
    pthread_mutex_lock(&g_hook_kill_process.mtx);
    restore_orig(&g_hook_kill_process);
    env->CallStaticVoidMethod(cls, g_hook_kill_process.id, pid);
    reapply_hook(&g_hook_kill_process);
    pthread_mutex_unlock(&g_hook_kill_process.mtx);
}

// android.app.Activity.finishAffinity() — block
static void JNICALL hook_finish_affinity(JNIEnv*, jobject) {
    logi("java_hook: Activity.finishAffinity blocked");
}

// android.app.Activity.startActivityForResult(Intent, int)
// kauth URL → inject fake onActivityResult(requestCode, RESULT_OK, fakeIntent)
static void JNICALL hook_start_activity(JNIEnv* env, jobject thiz,
                                        jobject intent, jint request_code) {
    bool is_kauth = false;
    if (intent) {
        jclass icls = env->GetObjectClass(intent);

        jmethodID gds = env->GetMethodID(icls, "getDataString", "()Ljava/lang/String;");
        if (gds) {
            auto djs = static_cast<jstring>(env->CallObjectMethod(intent, gds));
            if (djs) {
                is_kauth = is_kauth_url(jstring_to_std(env, djs));
                env->DeleteLocalRef(djs);
            }
        }

        if (!is_kauth) {
            jmethodID get_extras = env->GetMethodID(icls, "getExtras", "()Landroid/os/Bundle;");
            if (get_extras) {
                jobject extras = env->CallObjectMethod(intent, get_extras);
                if (extras && !env->ExceptionCheck()) {
                    jclass    bundle_cls = env->FindClass("android/os/Bundle");
                    jmethodID get_str    = bundle_cls
                        ? env->GetMethodID(bundle_cls, "getString", "(Ljava/lang/String;)Ljava/lang/String;")
                        : nullptr;
                    if (get_str) {
                        static const char* kExtraKeys[] = {
                            "url", "redirect_url",
                            "android.support.customtabs.extra.SESSION", nullptr
                        };
                        for (int k = 0; kExtraKeys[k] && !is_kauth; ++k) {
                            jstring key_js = env->NewStringUTF(kExtraKeys[k]);
                            auto val_js = static_cast<jstring>(
                                env->CallObjectMethod(extras, get_str, key_js));
                            env->DeleteLocalRef(key_js);
                            if (env->ExceptionCheck()) { env->ExceptionClear(); continue; }
                            if (val_js) {
                                is_kauth = is_kauth_url(jstring_to_std(env, val_js));
                                env->DeleteLocalRef(val_js);
                            }
                        }
                    }
                    if (bundle_cls) env->DeleteLocalRef(bundle_cls);
                    env->DeleteLocalRef(extras);
                } else if (env->ExceptionCheck()) {
                    env->ExceptionClear();
                }
            }
        }

        env->DeleteLocalRef(icls);
    }

    if (is_kauth) {
        logi("java_hook: startActivityForResult blocked (kauth) reqCode=%d",
             static_cast<int>(request_code));

        jclass    intent_cls  = env->FindClass("android/content/Intent");
        jclass    uri_cls     = env->FindClass("android/net/Uri");
        jmethodID uri_parse   = env->GetStaticMethodID(uri_cls, "parse",
                                    "(Ljava/lang/String;)Landroid/net/Uri;");
        jmethodID intent_init = env->GetMethodID(intent_cls, "<init>", "()V");
        jmethodID set_data    = env->GetMethodID(intent_cls, "setData",
                                    "(Landroid/net/Uri;)Landroid/content/Intent;");
        jclass    act_cls     = env->GetObjectClass(thiz);
        jmethodID on_result   = env->GetMethodID(act_cls, "onActivityResult",
                                    "(IILandroid/content/Intent;)V");

        if (uri_parse && intent_init && set_data && on_result) {
            jstring  uri_str  = env->NewStringUTF("kakao743487://oauth?code=offline-kakao-code-0");
            jobject  uri_obj  = env->CallStaticObjectMethod(uri_cls, uri_parse, uri_str);
            jobject  fake_int = env->NewObject(intent_cls, intent_init);
            env->CallObjectMethod(fake_int, set_data, uri_obj);
            // RESULT_OK = -1 in Android
            env->CallVoidMethod(thiz, on_result, request_code, (jint)-1, fake_int);
            env->DeleteLocalRef(uri_str);
            env->DeleteLocalRef(uri_obj);
            env->DeleteLocalRef(fake_int);
        }
        env->DeleteLocalRef(intent_cls);
        env->DeleteLocalRef(uri_cls);
        env->DeleteLocalRef(act_cls);
        return;
    }

    pthread_mutex_lock(&g_hook_start_activity.mtx);
    restore_orig(&g_hook_start_activity);
    env->CallVoidMethod(thiz, g_hook_start_activity.id, intent, request_code);
    reapply_hook(&g_hook_start_activity);
    pthread_mutex_unlock(&g_hook_start_activity.mtx);
}

// androidx.browser.customtabs.CustomTabsIntent.launchUrl(Context, Uri) — kauth → block
static void JNICALL hook_custom_tab(JNIEnv* env, jobject thiz,
                                    jobject context, jobject uri) {
    bool is_kauth = false;
    if (uri) {
        jclass    ucls = env->GetObjectClass(uri);
        jmethodID ts   = env->GetMethodID(ucls, "toString", "()Ljava/lang/String;");
        if (ts) {
            auto ujs = static_cast<jstring>(env->CallObjectMethod(uri, ts));
            if (ujs) {
                is_kauth = is_kauth_url(jstring_to_std(env, ujs));
                env->DeleteLocalRef(ujs);
            }
        }
        env->DeleteLocalRef(ucls);
    }
    if (is_kauth) {
        logi("java_hook: CustomTabsIntent.launchUrl blocked (kauth)");
        return;
    }
    pthread_mutex_lock(&g_hook_custom_tab.mtx);
    restore_orig(&g_hook_custom_tab);
    env->CallVoidMethod(thiz, g_hook_custom_tab.id, context, uri);
    reapply_hook(&g_hook_custom_tab);
    pthread_mutex_unlock(&g_hook_custom_tab.mtx);
}

// com.kakaogame.server.ServerService.useSessionConnection() → useHttpConnection()
static void JNICALL hook_use_session(JNIEnv* env, jobject thiz) {
    logi("java_hook: ServerService.useSessionConnection -> useHttpConnection");
    jclass    cls      = env->GetObjectClass(thiz);
    jmethodID use_http = env->GetMethodID(cls, "useHttpConnection", "()V");
    if (use_http) env->CallVoidMethod(thiz, use_http);
    env->DeleteLocalRef(cls);
}

// com.kakaogame.core.ConnectionManager.setConnectionType(Context, Configuration, boolean)
// Force the boolean argument to true (HTTP fallback enabled).
static void JNICALL hook_set_conn_type(JNIEnv* env, jobject thiz,
                                       jobject context, jobject config, jboolean) {
    logi("java_hook: ConnectionManager.setConnectionType forced true");
    pthread_mutex_lock(&g_hook_set_conn_type.mtx);
    restore_orig(&g_hook_set_conn_type);
    env->CallVoidMethod(thiz, g_hook_set_conn_type.id, context, config, JNI_TRUE);
    reapply_hook(&g_hook_set_conn_type);
    pthread_mutex_unlock(&g_hook_set_conn_type.mtx);
}

// com.kakaogame.util.HmacSHA256Util.verifySignature(String, String) → true
static jboolean JNICALL hook_verify_sig(JNIEnv*, jclass, jstring, jstring) {
    logi("java_hook: HmacSHA256Util.verifySignature -> true");
    return JNI_TRUE;
}

// -------------------------------------------------------------------------
// Trampoline extraction + hook installation.
// -------------------------------------------------------------------------
static bool init_trampoline(JNIEnv* env) {
    jclass    obj_cls = env->FindClass("java/lang/Object");
    if (!obj_cls) return false;
    jmethodID hc = env->GetMethodID(obj_cls, "hashCode", "()I");
    env->DeleteLocalRef(obj_cls);
    if (!hc) return false;
    g_jni_trampoline = *reinterpret_cast<void**>(
        reinterpret_cast<uint8_t*>(hc) + kOffEp);
    logi("java_hook: jni_trampoline @ %p", g_jni_trampoline);
    return g_jni_trampoline != nullptr;
}

static jclass find_class_safe(JNIEnv* env, const char* name) {
    jclass cls = env->FindClass(name);
    if (env->ExceptionCheck()) {
        env->ExceptionClear();
        return nullptr;
    }
    return cls;
}

static bool do_install(NativeHook* h, JNIEnv* env,
                       const char* cls_name, const char* method,
                       const char* sig, void* fn, bool is_static) {
    jclass cls = find_class_safe(env, cls_name);
    if (!cls) return false;

    jmethodID mid = is_static
        ? env->GetStaticMethodID(cls, method, sig)
        : env->GetMethodID(cls, method, sig);
    if (env->ExceptionCheck()) env->ExceptionClear();

    bool ok = false;
    if (mid) {
        ok = install_native_hook(h, mid, fn, g_jni_trampoline);
        logi("java_hook: %s %s.%s%s",
             ok ? "hooked" : "FAILED", cls_name, method, sig);
    } else {
        logi("java_hook: method not found: %s.%s%s", cls_name, method, sig);
    }
    env->DeleteLocalRef(cls);
    return ok;
}

// -------------------------------------------------------------------------
// Background thread — waits for app DEX classes to be loaded.
// -------------------------------------------------------------------------
static void* installer_thread(void*) {
    JNIEnv* env = nullptr;
    g_vm->AttachCurrentThread(&env, nullptr);

    if (!init_trampoline(env)) {
        logi("java_hook: trampoline init failed");
        g_vm->DetachCurrentThread();
        return nullptr;
    }

    // java.* / android.* — always available immediately.
    do_install(&g_hook_url_init_str, env,
               "java/net/URL", "<init>", "(Ljava/lang/String;)V",
               reinterpret_cast<void*>(hook_url_init_str), false);

    do_install(&g_hook_url_init_ctx, env,
               "java/net/URL", "<init>",
               "(Ljava/net/URL;Ljava/lang/String;)V",
               reinterpret_cast<void*>(hook_url_init_ctx), false);

    do_install(&g_hook_kill_process, env,
               "android/os/Process", "killProcess", "(I)V",
               reinterpret_cast<void*>(hook_kill_process), true);

    do_install(&g_hook_finish_affinity, env,
               "android/app/Activity", "finishAffinity", "()V",
               reinterpret_cast<void*>(hook_finish_affinity), false);

    do_install(&g_hook_start_activity, env,
               "android/app/Activity", "startActivityForResult",
               "(Landroid/content/Intent;I)V",
               reinterpret_cast<void*>(hook_start_activity), false);

    // App/SDK classes — retry until the DEX is loaded (up to 60 s).
    bool ok_okhttp     = false;
    bool ok_custom_tab = false;
    bool ok_server_svc = false;
    bool ok_conn_mgr   = false;
    bool ok_hmac_util  = false;

    for (int i = 0;
         i < 300 && !(ok_okhttp && ok_custom_tab && ok_server_svc && ok_conn_mgr && ok_hmac_util);
         ++i)
    {
        usleep(200000); // 200 ms

        if (!ok_okhttp) {
            ok_okhttp = do_install(&g_hook_okhttp_url, env,
                "okhttp3/Request$Builder", "url",
                "(Ljava/lang/String;)Lokhttp3/Request$Builder;",
                reinterpret_cast<void*>(hook_okhttp_url), false);
        }
        if (!ok_custom_tab) {
            ok_custom_tab = do_install(&g_hook_custom_tab, env,
                "androidx/browser/customtabs/CustomTabsIntent", "launchUrl",
                "(Landroid/content/Context;Landroid/net/Uri;)V",
                reinterpret_cast<void*>(hook_custom_tab), false);
        }
        if (!ok_server_svc) {
            ok_server_svc = do_install(&g_hook_use_session, env,
                "com/kakaogame/server/ServerService", "useSessionConnection", "()V",
                reinterpret_cast<void*>(hook_use_session), false);
        }
        if (!ok_conn_mgr) {
            ok_conn_mgr = do_install(&g_hook_set_conn_type, env,
                "com/kakaogame/core/ConnectionManager", "setConnectionType",
                "(Landroid/content/Context;Lcom/kakaogame/config/Configuration;Z)V",
                reinterpret_cast<void*>(hook_set_conn_type), false);
        }
        if (!ok_hmac_util) {
            ok_hmac_util = do_install(&g_hook_verify_sig, env,
                "com/kakaogame/util/HmacSHA256Util", "verifySignature",
                "(Ljava/lang/String;Ljava/lang/String;)Z",
                reinterpret_cast<void*>(hook_verify_sig), true);
        }
    }

    g_vm->DetachCurrentThread();
    return nullptr;
}

} // namespace

void init(JavaVM* vm) {
    g_vm = vm;
    pthread_t t;
    pthread_create(&t, nullptr, installer_thread, nullptr);
    pthread_detach(t);
}

} // namespace eversoul::java_hook

#else // !__aarch64__

namespace eversoul::java_hook {
    void init(JavaVM*) {}
} // namespace eversoul::java_hook

#endif
