#ifdef __ANDROID__
#include "lsplant_hooks.hpp"
#include "dex_loader.hpp"
#include "url_redirect.hpp"
#include <lsplant.hpp>
#include <dobby.h>
#include <android/log.h>
#include <dlfcn.h>
#include <cstdio>
#include <cstring>
#include <atomic>
#include <thread>
#include <chrono>
#include <string>

namespace eversoul::lsplant {

namespace {
    constexpr const char* TAG = "libswappywrapper/lsplant";

#define LOGI(fmt, ...) __android_log_print(ANDROID_LOG_INFO,  TAG, fmt, ##__VA_ARGS__)
#define LOGE(fmt, ...) __android_log_print(ANDROID_LOG_ERROR, TAG, fmt, ##__VA_ARGS__)

    // lsplant::Hook() 반환값 — C++에서 직접 보관하여 backup invoke 처리
    static jobject g_backup_url_init1      = nullptr;  // java.net.URL.<init>(String)
    static jobject g_backup_url_init2      = nullptr;  // java.net.URL.<init>(URL, String)
    static jobject g_backup_url_init3      = nullptr;  // java.net.URL.<init>(URL, String, Handler)
    static jobject g_backup_okhttp         = nullptr;  // okhttp3.Request$Builder.url(String)
    static jobject g_backup_load_data      = nullptr;  // CustomTabLauncherActivity.loadData(Intent)
    static jobject g_backup_on_new_intent  = nullptr;  // CustomTabLauncherActivity.onNewIntent(Intent)

    // OAuth flow: loadData에서 저장한 ResultReceiver — onNewIntent에서 null인 경우 재사용
    static jobject g_pending_rr = nullptr;

    // java.lang.reflect.Method.invoke(Object, Object[]) 메서드 ID
    static jmethodID g_method_invoke = nullptr;

    // Object 클래스 (NewObjectArray 용)
    static jclass g_object_cls = nullptr;

    static std::string s_libart_path;

    // libart.so 핸들 획득 — /proc/self/maps → 고정 경로 순으로 시도
    static void* get_libart_handle() {
        static void* libart = nullptr;
        if (libart) return libart;

        // 1단계: /proc/self/maps에서 실제 로드 경로 파싱
        char maps_path[512] = {};
        FILE* maps = fopen("/proc/self/maps", "r");
        if (maps) {
            char line[512];
            while (fgets(line, sizeof(line), maps)) {
                if (strstr(line, "libart.so")) {
                    char* path = strrchr(line, ' ');
                    if (path) {
                        ++path;
                        size_t len = strlen(path);
                        while (len > 0 && (path[len-1] == '\n' || path[len-1] == '\r'))
                            path[--len] = '\0';
                        strncpy(maps_path, path, sizeof(maps_path) - 1);
                    }
                    break;
                }
            }
            fclose(maps);
        }
        if (maps_path[0]) {
            s_libart_path = maps_path;
            libart = dlopen(maps_path, RTLD_NOW | RTLD_NOLOAD);
            if (!libart) libart = dlopen(maps_path, RTLD_NOW);
        }

        // 2단계: APEX 경로 (Android 10+)
        if (!libart) {
            static const char* kApexPaths[] = {
                "/apex/com.android.art/lib64/libart.so",
                "/apex/com.android.art/lib/libart.so",
                nullptr
            };
            for (int i = 0; kApexPaths[i]; ++i) {
                libart = dlopen(kApexPaths[i], RTLD_NOW | RTLD_NOLOAD);
                if (!libart) libart = dlopen(kApexPaths[i], RTLD_NOW);
                if (libart) { s_libart_path = kApexPaths[i]; break; }
            }
        }

        // 3단계: 이름만으로 fallback
        if (!libart) {
            libart = dlopen("libart.so", RTLD_NOW | RTLD_NOLOAD);
            if (!libart) libart = dlopen("libart.so", RTLD_NOW);
        }

        return libart;
    }

    // libart.so 심볼 직접 조회
    void* art_resolver(const std::string_view& name) {
        void* libart = get_libart_handle();
        if (!libart) return nullptr;
        return dlsym(libart, std::string(name).c_str());
    }

    // libart.so 심볼 prefix 변형 조회 — lsplant::InitInfo::art_symbol_prefix_resolver
    // lsplant는 내부 심볼에 대해 "art_" 또는 "__" prefix 변형을 prefix_resolver로 조회한다
    void* art_prefix_resolver(const std::string_view& name) {
        void* libart = get_libart_handle();
        if (!libart) return nullptr;
        // lsplant가 넘겨주는 name은 이미 prefix가 붙은 형태이므로 그대로 dlsym
        void* sym = dlsym(libart, std::string(name).c_str());
        return sym;
    }

    // redirect 후 backup Method를 JNI로 invoke
    // backup: java.lang.reflect.Method, receiver: Object (또는 null for static), invoke_args: Object[]
    static jobject invoke_backup(JNIEnv* env, jobject backup, jobject receiver, jobjectArray invoke_args) {
        if (!backup || !g_method_invoke) return nullptr;
        jobject result = env->CallObjectMethod(backup, g_method_invoke, receiver, invoke_args);
        if (env->ExceptionCheck()) { env->ExceptionClear(); }
        return result;
    }

    // class hierarchy를 위로 순회하며 field ID 조회
    static jfieldID find_field(JNIEnv* env, jobject obj, const char* name, const char* sig) {
        jclass cls = env->GetObjectClass(obj);
        while (cls) {
            jfieldID fid = env->GetFieldID(cls, name, sig);
            if (!env->ExceptionCheck() && fid) { env->DeleteLocalRef(cls); return fid; }
            env->ExceptionClear();
            jclass sc = env->GetSuperclass(cls);
            env->DeleteLocalRef(cls);
            cls = sc;
        }
        return nullptr;
    }

    static jobject get_intent_data(JNIEnv* env, jobject intent) {
        if (!intent) return nullptr;
        jclass intent_cls = env->GetObjectClass(intent);
        jmethodID get_data = env->GetMethodID(intent_cls, "getData", "()Landroid/net/Uri;");
        env->DeleteLocalRef(intent_cls);
        if (!get_data) {
            env->ExceptionClear();
            return nullptr;
        }
        jobject uri = env->CallObjectMethod(intent, get_data);
        if (env->ExceptionCheck()) {
            env->ExceptionClear();
            return nullptr;
        }
        return uri;
    }

    static bool send_oauth_result(JNIEnv* env, jobject rr, jobject uri, const char* source) {
        if (!rr || !uri) return false;

        jclass bundle_cls = env->FindClass("android/os/Bundle");
        if (!bundle_cls) {
            env->ExceptionClear();
            return false;
        }
        jmethodID bundle_ctor = env->GetMethodID(bundle_cls, "<init>", "()V");
        jmethodID put_parcelable = env->GetMethodID(bundle_cls,
            "putParcelable", "(Ljava/lang/String;Landroid/os/Parcelable;)V");
        jobject bundle = bundle_ctor ? env->NewObject(bundle_cls, bundle_ctor) : nullptr;
        env->DeleteLocalRef(bundle_cls);
        if (!bundle || !put_parcelable) {
            env->ExceptionClear();
            if (bundle) env->DeleteLocalRef(bundle);
            return false;
        }

        jstring key = env->NewStringUTF("key.url");
        env->CallVoidMethod(bundle, put_parcelable, key, uri);
        env->DeleteLocalRef(key);

        jclass rr_cls = env->GetObjectClass(rr);
        jmethodID send_mid = env->GetMethodID(rr_cls, "send", "(ILandroid/os/Bundle;)V");
        env->DeleteLocalRef(rr_cls);
        if (!send_mid) {
            env->ExceptionClear();
            env->DeleteLocalRef(bundle);
            return false;
        }

        env->CallVoidMethod(rr, send_mid, (jint)-1, bundle);
        env->DeleteLocalRef(bundle);

        if (env->ExceptionCheck()) {
            env->ExceptionClear();
            LOGE("%s: ResultReceiver.send 실패", source);
            return false;
        }

        LOGI("%s: OAuth code 전달 완료", source);
        return true;
    }

    static bool send_pending_oauth_result(JNIEnv* env, jobject uri, const char* source) {
        if (!g_pending_rr || !uri) return false;
        bool sent = send_oauth_result(env, g_pending_rr, uri, source);
        env->DeleteGlobalRef(g_pending_rr);
        g_pending_rr = nullptr;
        return sent;
    }

    static void clear_pending_receiver(JNIEnv* env) {
        if (g_pending_rr) {
            env->DeleteGlobalRef(g_pending_rr);
            g_pending_rr = nullptr;
        }
    }

    static void finish_activity(JNIEnv* env, jobject activity) {
        if (!activity) return;
        jclass activity_cls = env->GetObjectClass(activity);
        jmethodID finish_mid = env->GetMethodID(activity_cls, "finish", "()V");
        env->DeleteLocalRef(activity_cls);
        if (!finish_mid) {
            env->ExceptionClear();
            return;
        }
        env->CallVoidMethod(activity, finish_mid);
        if (env->ExceptionCheck()) env->ExceptionClear();
    }

    // ---- RegisterNatives C++ 구현 ----

    // java.net.URL.<init>(String spec)
    // args[0]=this(URL), args[1]=spec(String)
    static jobject native_url_init1(JNIEnv* env, jobject, jobjectArray args) {
        jobject url_this  = env->GetObjectArrayElement(args, 0);
        jstring spec      = reinterpret_cast<jstring>(env->GetObjectArrayElement(args, 1));
        const char* s     = env->GetStringUTFChars(spec, nullptr);
        std::string redir = eversoul::url_redirect::redirect_url_cpp(s);
        env->ReleaseStringUTFChars(spec, s);
        jstring new_spec  = env->NewStringUTF(redir.c_str());
        jobjectArray bargs = env->NewObjectArray(1, g_object_cls, nullptr);
        env->SetObjectArrayElement(bargs, 0, new_spec);
        invoke_backup(env, g_backup_url_init1, url_this, bargs);
        return nullptr;
    }

    // java.net.URL.<init>(URL context, String spec)
    // args[0]=this(URL), args[1]=context(URL), args[2]=spec(String)
    static jobject native_url_init2(JNIEnv* env, jobject, jobjectArray args) {
        jobject url_this  = env->GetObjectArrayElement(args, 0);
        jobject ctx       = env->GetObjectArrayElement(args, 1);
        jstring spec      = reinterpret_cast<jstring>(env->GetObjectArrayElement(args, 2));
        const char* s     = env->GetStringUTFChars(spec, nullptr);
        std::string redir = eversoul::url_redirect::redirect_url_cpp(s);
        env->ReleaseStringUTFChars(spec, s);
        jstring new_spec  = env->NewStringUTF(redir.c_str());
        jobjectArray bargs = env->NewObjectArray(2, g_object_cls, nullptr);
        env->SetObjectArrayElement(bargs, 0, ctx);
        env->SetObjectArrayElement(bargs, 1, new_spec);
        invoke_backup(env, g_backup_url_init2, url_this, bargs);
        return nullptr;
    }

    // java.net.URL.<init>(URL context, String spec, URLStreamHandler handler)
    // args[0]=this(URL), args[1]=context(URL), args[2]=spec(String), args[3]=handler
    static jobject native_url_init3(JNIEnv* env, jobject, jobjectArray args) {
        jobject url_this  = env->GetObjectArrayElement(args, 0);
        jobject ctx       = env->GetObjectArrayElement(args, 1);
        jstring spec      = reinterpret_cast<jstring>(env->GetObjectArrayElement(args, 2));
        jobject handler   = env->GetObjectArrayElement(args, 3);
        const char* s     = env->GetStringUTFChars(spec, nullptr);
        std::string redir = eversoul::url_redirect::redirect_url_cpp(s);
        env->ReleaseStringUTFChars(spec, s);
        jstring new_spec  = env->NewStringUTF(redir.c_str());
        jobjectArray bargs = env->NewObjectArray(3, g_object_cls, nullptr);
        env->SetObjectArrayElement(bargs, 0, ctx);
        env->SetObjectArrayElement(bargs, 1, new_spec);
        env->SetObjectArrayElement(bargs, 2, handler);
        invoke_backup(env, g_backup_url_init3, url_this, bargs);
        return nullptr;
    }

    // okhttp3.Request$Builder.url(String url)
    // args[0]=this(Builder), args[1]=url(String)
    static jobject native_okhttp_builder_url(JNIEnv* env, jobject, jobjectArray args) {
        jobject builder   = env->GetObjectArrayElement(args, 0);
        jstring url       = reinterpret_cast<jstring>(env->GetObjectArrayElement(args, 1));
        const char* s     = env->GetStringUTFChars(url, nullptr);
        std::string redir = eversoul::url_redirect::redirect_url_cpp(s);
        env->ReleaseStringUTFChars(url, s);
        jstring new_url   = env->NewStringUTF(redir.c_str());
        jobjectArray bargs = env->NewObjectArray(1, g_object_cls, nullptr);
        env->SetObjectArrayElement(bargs, 0, new_url);
        return invoke_backup(env, g_backup_okhttp, builder, bargs);
    }

    // CustomTabLauncherActivity.loadData(Intent)
    // args[0]=this, args[1]=intent
    static jobject native_hook_load_data(JNIEnv* env, jobject, jobjectArray args) {
        jobject activity = env->GetObjectArrayElement(args, 0);
        jobject intent   = env->GetObjectArrayElement(args, 1);

        jobject uri = get_intent_data(env, intent);
        if (uri && send_pending_oauth_result(env, uri, "loadData")) {
            finish_activity(env, activity);
            env->DeleteLocalRef(uri);
            env->DeleteLocalRef(activity);
            env->DeleteLocalRef(intent);
            return nullptr;
        }
        if (uri) env->DeleteLocalRef(uri);

        jobjectArray bargs = env->NewObjectArray(1, g_object_cls, nullptr);
        env->SetObjectArrayElement(bargs, 0, intent);
        invoke_backup(env, g_backup_load_data, activity, bargs);
        env->DeleteLocalRef(bargs);

        jfieldID fid = find_field(env, activity, "resultReceiver", "Landroid/os/ResultReceiver;");
        if (fid) {
            jobject rr = env->GetObjectField(activity, fid);
            if (rr) {
                if (g_pending_rr) env->DeleteGlobalRef(g_pending_rr);
                g_pending_rr = env->NewGlobalRef(rr);
                env->DeleteLocalRef(rr);
                LOGI("loadData: resultReceiver 저장 완료");
            }
        }

        env->DeleteLocalRef(activity);
        env->DeleteLocalRef(intent);
        return nullptr;
    }

    // CustomTabLauncherActivity.onNewIntent(Intent)
    // args[0]=this, args[1]=intent
    static jobject native_hook_on_new_intent(JNIEnv* env, jobject, jobjectArray args) {
        jobject activity = env->GetObjectArrayElement(args, 0);
        jobject intent   = env->GetObjectArrayElement(args, 1);

        jobjectArray bargs = env->NewObjectArray(1, g_object_cls, nullptr);
        env->SetObjectArrayElement(bargs, 0, intent);
        invoke_backup(env, g_backup_on_new_intent, activity, bargs);
        env->DeleteLocalRef(bargs);

        jfieldID fid = find_field(env, activity, "resultReceiver", "Landroid/os/ResultReceiver;");
        jobject rr = fid ? env->GetObjectField(activity, fid) : nullptr;

        if (!rr && g_pending_rr) {
            jobject uri = get_intent_data(env, intent);
            if (uri) {
                send_pending_oauth_result(env, uri, "onNewIntent");
                env->DeleteLocalRef(uri);
            } else {
                LOGE("onNewIntent: intent.getData() null — URI 없음");
            }
        } else if (rr) {
            env->DeleteLocalRef(rr);
            clear_pending_receiver(env);
        }

        env->DeleteLocalRef(activity);
        env->DeleteLocalRef(intent);
        return nullptr;
    }

    // target 메서드 하나를 hooker_obj/callback 으로 훅, backup global ref 반환
    static jobject hook_one(JNIEnv* env,
                            jclass target_cls,
                            const char* method_name,
                            const char* method_sig,
                            jboolean is_static,
                            jclass hooks_cls,
                            jobject hooker_obj,
                            const char* callback_name) {
        jmethodID target_mid = is_static
            ? env->GetStaticMethodID(target_cls, method_name, method_sig)
            : env->GetMethodID(target_cls, method_name, method_sig);
        if (!target_mid) { env->ExceptionClear(); LOGE("메서드 없음: %s", method_name); return nullptr; }

        jmethodID cb_mid = env->GetMethodID(hooks_cls, callback_name,
            "([Ljava/lang/Object;)Ljava/lang/Object;");
        if (!cb_mid) { env->ExceptionClear(); LOGE("콜백 없음: %s", callback_name); return nullptr; }

        jobject target_ref  = env->ToReflectedMethod(target_cls, target_mid, is_static);
        jobject cb_ref      = env->ToReflectedMethod(hooks_cls, cb_mid, JNI_FALSE);
        jobject backup      = ::lsplant::Hook(env, target_ref, hooker_obj, cb_ref);
        if (!backup) { LOGE("lsplant::Hook 실패: %s", method_name); return nullptr; }
        LOGI("훅 설치: %s", method_name);
        return env->NewGlobalRef(backup);
    }

    // 앱 ClassLoader 소속 클래스 로드 시점까지 폴링 후 훅 설치
    struct DeferredHookArgs {
        JavaVM*     vm;
        jobject     hooker_global;
        jclass      hooks_global;
        std::string target_cls;
        std::string method_name;
        std::string method_sig;
        jboolean    is_static;
        std::string callback_name;
        jobject*    backup_slot;
    };

    static void hook_deferred(DeferredHookArgs a) {
        std::thread([a]() mutable {
            JNIEnv* env = nullptr;
            a.vm->AttachCurrentThread(&env, nullptr);
            for (int i = 0; i < 300; ++i) {
                std::this_thread::sleep_for(std::chrono::milliseconds(100));
                jclass cls = env->FindClass(a.target_cls.c_str());
                if (cls) {
                    env->ExceptionClear();
                    jobject bk = hook_one(env, cls,
                        a.method_name.c_str(), a.method_sig.c_str(),
                        a.is_static, a.hooks_global, a.hooker_global,
                        a.callback_name.c_str());
                    if (bk && a.backup_slot) *a.backup_slot = bk;
                    env->DeleteLocalRef(cls);
                    break;
                }
                env->ExceptionClear();
            }
        }).detach();
    }

    void do_install(JavaVM* vm) {
        JNIEnv* env = nullptr;
        if (vm->GetEnv(reinterpret_cast<void**>(&env), JNI_VERSION_1_6) != JNI_OK) {
            if (vm->AttachCurrentThread(&env, nullptr) != JNI_OK) {
                LOGE("AttachCurrentThread 실패"); return;
            }
        }

        // java.lang.reflect.Method.invoke 메서드 ID 사전 조회
        jclass method_cls = env->FindClass("java/lang/reflect/Method");
        g_method_invoke   = env->GetMethodID(method_cls, "invoke",
            "(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;");
        jclass obj_local  = env->FindClass("java/lang/Object");
        g_object_cls      = static_cast<jclass>(env->NewGlobalRef(obj_local));
        env->DeleteLocalRef(obj_local);
        env->DeleteLocalRef(method_cls);

        // LSPlant 초기화 (Dobby inline hook 엔진)
        ::lsplant::InitInfo info{
            .inline_hooker = [](void* target, void* hooker) -> void* {
                void* backup = nullptr;
                return (DobbyHook(target, hooker, &backup) == 0) ? backup : nullptr;
            },
            .inline_unhooker = [](void* func) -> bool {
                return DobbyDestroy(func) == 0;
            },
            .art_symbol_resolver        = art_resolver,
            .art_symbol_prefix_resolver = art_prefix_resolver,
        };
        if (!::lsplant::Init(env, info)) { LOGE("lsplant::Init 실패"); return; }
        LOGI("lsplant::Init 완료");

        // RedirectHooks.dex 로드
        jclass hooks_local = dex_loader::load_class(env, "com.rikka.eversouloffline.RedirectHooks");
        if (!hooks_local) { LOGE("RedirectHooks 로드 실패"); return; }

        // RegisterNatives: urlInit1/2/3/okhttpBuilderUrl → C++ native
        // 시그니처 ([Ljava/lang/Object;)Ljava/lang/Object; — LSPlant callback 규약과 동일
        JNINativeMethod natives[] = {
            { "urlInit1",       "([Ljava/lang/Object;)Ljava/lang/Object;",
              reinterpret_cast<void*>(native_url_init1) },
            { "urlInit2",       "([Ljava/lang/Object;)Ljava/lang/Object;",
              reinterpret_cast<void*>(native_url_init2) },
            { "urlInit3",       "([Ljava/lang/Object;)Ljava/lang/Object;",
              reinterpret_cast<void*>(native_url_init3) },
            { "okhttpBuilderUrl", "([Ljava/lang/Object;)Ljava/lang/Object;",
              reinterpret_cast<void*>(native_okhttp_builder_url) },
            { "hookLoadData",   "([Ljava/lang/Object;)Ljava/lang/Object;",
              reinterpret_cast<void*>(native_hook_load_data) },
            { "hookOnNewIntent","([Ljava/lang/Object;)Ljava/lang/Object;",
              reinterpret_cast<void*>(native_hook_on_new_intent) },
        };
        if (env->RegisterNatives(hooks_local, natives, 6) != JNI_OK) {
            env->ExceptionClear();
            LOGE("RegisterNatives 실패"); return;
        }
        LOGI("RegisterNatives 완료: urlInit1/2/3/okhttpBuilderUrl/hookLoadData/hookOnNewIntent → C++ native");

        jclass hooks_global = static_cast<jclass>(env->NewGlobalRef(hooks_local));
        env->DeleteLocalRef(hooks_local);

        // hooker_object: RedirectHooks 인스턴스 (모든 훅 공유)
        jmethodID ctor      = env->GetMethodID(hooks_global, "<init>", "()V");
        jobject hooker_local = env->NewObject(hooks_global, ctor);
        jobject hooker_global = env->NewGlobalRef(hooker_local);
        env->DeleteLocalRef(hooker_local);
        LOGI("RedirectHooks 인스턴스 생성 완료");

        // ---- 부트 클래스 즉시 훅 ----

        // java.net.URL 생성자 3종
        jclass url_cls = env->FindClass("java/net/URL");
        if (url_cls) {
            g_backup_url_init1 = hook_one(env, url_cls, "<init>", "(Ljava/lang/String;)V",
                JNI_FALSE, hooks_global, hooker_global, "urlInit1");
            g_backup_url_init2 = hook_one(env, url_cls, "<init>",
                "(Ljava/net/URL;Ljava/lang/String;)V",
                JNI_FALSE, hooks_global, hooker_global, "urlInit2");
            g_backup_url_init3 = hook_one(env, url_cls, "<init>",
                "(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V",
                JNI_FALSE, hooks_global, hooker_global, "urlInit3");
            env->DeleteLocalRef(url_cls);
        }

        // android.os.Process.killProcess(int)
        jclass proc_cls = env->FindClass("android/os/Process");
        if (proc_cls) {
            hook_one(env, proc_cls, "killProcess", "(I)V",
                JNI_TRUE, hooks_global, hooker_global, "hookKillProcess");
            env->DeleteLocalRef(proc_cls);
        }

        // ---- 앱 ClassLoader 클래스 → 지연 폴링 훅 ----

        // okhttp3.Request$Builder.url(String)
        hook_deferred({ vm, hooker_global, hooks_global,
            "okhttp3/Request$Builder",
            "url", "(Ljava/lang/String;)Lokhttp3/Request$Builder;",
            JNI_FALSE, "okhttpBuilderUrl", &g_backup_okhttp });

        // com.kakaogame.util.HmacSHA256Util.verifySignature
        hook_deferred({ vm, hooker_global, hooks_global,
            "com/kakaogame/util/HmacSHA256Util",
            "verifySignature", "(Ljava/lang/String;Ljava/lang/String;)Z",
            JNI_FALSE, "hookVerifySignature", nullptr });

        // com.kakao.sdk.auth.CustomTabLauncherActivity.loadData(Intent)
        hook_deferred({ vm, hooker_global, hooks_global,
            "com/kakao/sdk/auth/CustomTabLauncherActivity",
            "loadData", "(Landroid/content/Intent;)V",
            JNI_FALSE, "hookLoadData", &g_backup_load_data });

        // com.kakao.sdk.auth.CustomTabLauncherActivity.onNewIntent(Intent)
        hook_deferred({ vm, hooker_global, hooks_global,
            "com/kakao/sdk/auth/CustomTabLauncherActivity",
            "onNewIntent", "(Landroid/content/Intent;)V",
            JNI_FALSE, "hookOnNewIntent", &g_backup_on_new_intent });

        LOGI("Java 훅 설치 완료");
    }

} // anonymous namespace

void install_java_hooks(JavaVM* vm) {
    do_install(vm);
}

} // namespace eversoul::lsplant
#endif
