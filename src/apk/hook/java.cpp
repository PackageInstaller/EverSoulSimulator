// java_hook.cpp — Load pine_helper.dex via InMemoryDexClassLoader.
// Call from il2cpp_init detour (Application already ready, JNIEnv valid).

#include "apk/hook/java.hpp"

#include <android/log.h>
#include <android/asset_manager.h>
#include <android/asset_manager_jni.h>

#include <cstring>
#include <string>
#include <vector>

namespace eversoul::java_hook
{
    namespace
    {
        constexpr const char *kLogTag = "libswappywrapper/java_hook";

#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, kLogTag, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, kLogTag, __VA_ARGS__)

        jobject get_system_context(JNIEnv *env)
        {
            jclass at = env->FindClass("android/app/ActivityThread");
            if (!at) return nullptr;
            jmethodID m = env->GetStaticMethodID(at, "currentActivityThread",
                                                 "()Landroid/app/ActivityThread;");
            if (!m) return nullptr;
            jobject o = env->CallStaticObjectMethod(at, m);
            if (!o) return nullptr;
            jmethodID ga = env->GetMethodID(at, "getApplication", "()Landroid/app/Application;");
            if (!ga) return nullptr;
            return env->CallObjectMethod(o, ga);
        }

    } // anonymous namespace

    bool try_load(JNIEnv *env)
    {
        LOGI("Loading pine_helper.dex from assets...");

        jobject ctx = get_system_context(env);
        if (!ctx) { LOGE("No Application context"); return false; }

        jclass ctx_cls = env->GetObjectClass(ctx);
        jmethodID get_cl = env->GetMethodID(ctx_cls, "getClassLoader", "()Ljava/lang/ClassLoader;");
        jobject parent_cl = env->CallObjectMethod(ctx, get_cl);
        if (!parent_cl) { LOGE("No ClassLoader"); return false; }

        jmethodID get_assets = env->GetMethodID(ctx_cls, "getAssets",
                                                "()Landroid/content/res/AssetManager;");
        jobject am_obj = env->CallObjectMethod(ctx, get_assets);
        AAssetManager *am = AAssetManager_fromJava(env, am_obj);
        if (!am) { LOGE("No AssetManager"); return false; }

        AAsset *a = AAssetManager_open(am, "pine_helper.dex", AASSET_MODE_BUFFER);
        if (!a) { LOGE("assets/pine_helper.dex not found"); return false; }

        off_t sz = AAsset_getLength(a);
        LOGI("pine_helper.dex: %ld bytes", static_cast<long>(sz));
        std::vector<char> buf(static_cast<size_t>(sz));
        AAsset_read(a, buf.data(), sz);
        AAsset_close(a);

        jobject bb = env->NewDirectByteBuffer(buf.data(), sz);
        if (!bb) { LOGE("NewDirectByteBuffer failed"); return false; }

        jclass imcl = env->FindClass("dalvik/system/InMemoryDexClassLoader");
        jmethodID ctor = env->GetMethodID(imcl, "<init>",
                                          "(Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;)V");
        jobject loader = env->NewObject(imcl, ctor, bb, parent_cl);
        if (env->ExceptionCheck()) { env->ExceptionClear(); LOGE("IMCL failed"); return false; }
        LOGI("InMemoryDexClassLoader created");

        jmethodID load = env->GetMethodID(imcl, "loadClass",
                                          "(Ljava/lang/String;)Ljava/lang/Class;");
        jstring name = env->NewStringUTF("com.rikka.helper.PineHelper");
        jclass hc = static_cast<jclass>(env->CallObjectMethod(loader, load, name));
        env->DeleteLocalRef(name);
        if (env->ExceptionCheck() || !hc) {
            env->ExceptionClear(); LOGE("PineHelper not found in DEX"); return false;
        }
        LOGI("PineHelper class loaded");

        jmethodID init = env->GetStaticMethodID(hc, "init", "(Ljava/lang/ClassLoader;)V");
        if (!init) { LOGE("PineHelper.init not found"); return false; }
        env->CallStaticVoidMethod(hc, init, parent_cl);
        if (env->ExceptionCheck()) { env->ExceptionClear(); LOGE("init() threw"); return false; }

        LOGI("Pine hooks installed successfully!");
        return true;
    }

} // namespace eversoul::java_hook
