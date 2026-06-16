#include "agent_java_hook.hpp"

#include "agent_redirect.hpp"

#include <android/log.h>
#include <jni.h>
#include <string>

#define LOGI(...) __android_log_print(ANDROID_LOG_INFO,  "eversoul_agent", __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, "eversoul_agent", __VA_ARGS__)

namespace eversoul::agent::java_hook {

namespace {

static JavaVM *g_vm = nullptr;

static JNIEnv *get_env()
{
    if (!g_vm) return nullptr;
    JNIEnv *env = nullptr;
    if (g_vm->GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_6) == JNI_EDETACHED)
        g_vm->AttachCurrentThread(&env, nullptr);
    return env;
}

// HmacSHA256Util.verifySignature(String, String) → true
static jboolean native_verifySignature(JNIEnv *, jclass, jstring, jstring)
{
    LOGI("verifySignature bypassed → true");
    return JNI_TRUE;
}

// Process.killProcess(int) → no-op
static void native_killProcess(JNIEnv *, jclass, jint pid)
{
    LOGI("killProcess(%d) blocked", static_cast<int>(pid));
}

static void hook_hmac_verify(JNIEnv *env)
{
    jclass cls = env->FindClass("com/kakaogame/util/HmacSHA256Util");
    if (!cls) { env->ExceptionClear(); LOGE("HmacSHA256Util not found"); return; }

    static const JNINativeMethod nm = {
        "verifySignature",
        "(Ljava/lang/String;Ljava/lang/String;)Z",
        reinterpret_cast<void *>(native_verifySignature),
    };
    if (env->RegisterNatives(cls, &nm, 1) != 0) {
        env->ExceptionClear();
        LOGE("RegisterNatives verifySignature failed");
    } else {
        LOGI("hooked HmacSHA256Util.verifySignature");
    }
    env->DeleteLocalRef(cls);
}

static void hook_process_kill(JNIEnv *env)
{
    jclass cls = env->FindClass("android/os/Process");
    if (!cls) { env->ExceptionClear(); LOGE("android/os/Process not found"); return; }

    static const JNINativeMethod nm = {
        "killProcess",
        "(I)V",
        reinterpret_cast<void *>(native_killProcess),
    };
    if (env->RegisterNatives(cls, &nm, 1) != 0) {
        env->ExceptionClear();
        LOGE("RegisterNatives killProcess failed");
    } else {
        LOGI("hooked android.os.Process.killProcess");
    }
    env->DeleteLocalRef(cls);
}

static void *install_thread(void *)
{
    JNIEnv *env = get_env();
    if (!env) { LOGE("java_hook: could not get JNIEnv"); return nullptr; }

    hook_hmac_verify(env);
    hook_process_kill(env);

    LOGI("java_hook: all Java hooks installed");
    return nullptr;
}

} // namespace

void install(JavaVM *vm)
{
    g_vm = vm;
    pthread_t thr;
    pthread_create(&thr, nullptr, install_thread, nullptr);
    pthread_detach(thr);
}

} // namespace eversoul::agent::java_hook
