#ifdef __ANDROID__
#include "dex_loader.hpp"
#include <android/log.h>
#include <string>

namespace eversoul::dex_loader {

namespace {
    constexpr const char* TAG = "libswappywrapper/dex";

    void loge(const char* msg) {
        __android_log_print(ANDROID_LOG_ERROR, TAG, "%s", msg);
    }
}

jclass load_class(JNIEnv* env, std::string_view class_name) {
    const char* start = _binary_redirect_hooks_dex_start;
    const char* end   = _binary_redirect_hooks_dex_end;
    jsize dex_len = static_cast<jsize>(end - start);

    // DEX 바이트를 직접 참조하는 ByteBuffer 생성 (복사 없음)
    jobject byte_buf = env->NewDirectByteBuffer(
        const_cast<char*>(start), static_cast<jlong>(dex_len));
    if (!byte_buf) { loge("NewDirectByteBuffer 실패"); return nullptr; }

    jclass imdcl_cls = env->FindClass("dalvik/system/InMemoryDexClassLoader");
    if (!imdcl_cls) {
        env->ExceptionClear();
        loge("InMemoryDexClassLoader 클래스를 찾을 수 없음");
        return nullptr;
    }

    // InMemoryDexClassLoader(ByteBuffer dexBuffer, ClassLoader parent)
    jmethodID imdcl_ctor = env->GetMethodID(imdcl_cls, "<init>",
        "(Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;)V");
    if (!imdcl_ctor) { loge("InMemoryDexClassLoader.<init> 탐색 실패"); return nullptr; }

    // 부모 ClassLoader: 현재 스레드의 ContextClassLoader (앱 클래스 접근용)
    jclass thread_cls = env->FindClass("java/lang/Thread");
    jmethodID cur_thread_m = env->GetStaticMethodID(
        thread_cls, "currentThread", "()Ljava/lang/Thread;");
    jobject thread_obj = env->CallStaticObjectMethod(thread_cls, cur_thread_m);
    jmethodID get_cl_m = env->GetMethodID(
        thread_cls, "getContextClassLoader", "()Ljava/lang/ClassLoader;");
    jobject parent_cl = env->CallObjectMethod(thread_obj, get_cl_m);

    jobject dex_loader = env->NewObject(imdcl_cls, imdcl_ctor, byte_buf, parent_cl);
    if (!dex_loader) { loge("InMemoryDexClassLoader 인스턴스 생성 실패"); return nullptr; }

    // ClassLoader.loadClass(String name) 으로 클래스 탐색
    jclass cl_cls = env->FindClass("java/lang/ClassLoader");
    jmethodID load_class_m = env->GetMethodID(cl_cls, "loadClass",
        "(Ljava/lang/String;)Ljava/lang/Class;");

    std::string name_str(class_name);
    jstring jname = env->NewStringUTF(name_str.c_str());
    jclass result = static_cast<jclass>(
        env->CallObjectMethod(dex_loader, load_class_m, jname));

    if (env->ExceptionCheck()) {
        env->ExceptionDescribe();
        env->ExceptionClear();
        loge(("loadClass 실패: " + name_str).c_str());
        return nullptr;
    }
    return result;
}

} // namespace eversoul::dex_loader
#endif
