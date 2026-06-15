#include "liapp_dex_injector.hpp"

#ifdef __aarch64__

#include <android/log.h>
#include <fcntl.h>
#include <jni.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>
#include <zlib.h>

#include <cstdint>
#include <cstdio>
#include <cstring>

namespace eversoul::liapp_dex_injector {

namespace {

constexpr const char *kTag = "libswappywrapper";

template <class... A>
static void logi(const char *fmt, A... a)
{
    __android_log_print(ANDROID_LOG_INFO, kTag, fmt, a...);
}
template <class... A>
static void loge(const char *fmt, A... a)
{
    __android_log_print(ANDROID_LOG_ERROR, kTag, fmt, a...);
}

static constexpr uint32_t kEOCDSig    = 0x06054b50u;
static constexpr uint32_t kCDSig      = 0x02014b50u;
static constexpr uint32_t kLFHSig     = 0x04034b50u;
static constexpr uint16_t kMethodStore   = 0;
static constexpr uint16_t kMethodDeflate = 8;

static bool find_base_apk_path(char *out, size_t size)
{
    FILE *fp = fopen("/proc/self/maps", "r");
    if (!fp) return false;
    char line[512];
    bool found = false;
    while (fgets(line, sizeof(line), fp)) {
        if (!strstr(line, "base.apk") || !strstr(line, "/data/app/")) continue;
        char *slash = strchr(line, '/');
        if (!slash) continue;
        char *nl = strchr(slash, '\n');
        if (nl) *nl = '\0';
        strncpy(out, slash, size - 1);
        out[size - 1] = '\0';
        found = true;
        break;
    }
    fclose(fp);
    return found;
}

static bool find_eocd(const uint8_t *data, size_t size,
                      uint32_t *cd_off, uint16_t *cd_count)
{
    if (size < 22) return false;
    size_t lo = (size >= 22u + 65535u) ? size - 22u - 65535u : 0u;
    for (ssize_t i = (ssize_t)(size - 22); i >= (ssize_t)lo; --i) {
        if (*(const uint32_t *)(data + i) != kEOCDSig) continue;
        *cd_count = *(const uint16_t *)(data + i + 10);
        *cd_off   = *(const uint32_t *)(data + i + 16);
        return true;
    }
    return false;
}

struct ZipEntry {
    uint16_t method;
    uint32_t comp_size;
    uint32_t uncomp_size;
    uint32_t lhdr_off;
    bool     valid = false;
};

static ZipEntry find_entry(const uint8_t *data, size_t size,
                           uint32_t cd_off, uint16_t cd_count,
                           const char *target)
{
    ZipEntry e{};
    size_t tlen = strlen(target);
    const uint8_t *cd = data + cd_off;
    for (uint16_t i = 0; i < cd_count; ++i) {
        if ((size_t)(cd - data) + 46 > size) break;
        if (*(const uint32_t *)cd != kCDSig) break;
        uint16_t fnlen  = *(const uint16_t *)(cd + 28);
        uint16_t exlen  = *(const uint16_t *)(cd + 30);
        uint16_t cmlen  = *(const uint16_t *)(cd + 32);
        if (fnlen == (uint16_t)tlen &&
            memcmp(cd + 46, target, tlen) == 0) {
            e.method     = *(const uint16_t *)(cd + 10);
            e.comp_size  = *(const uint32_t *)(cd + 20);
            e.uncomp_size= *(const uint32_t *)(cd + 24);
            e.lhdr_off   = *(const uint32_t *)(cd + 42);
            e.valid      = true;
            return e;
        }
        cd += 46u + fnlen + exlen + cmlen;
    }
    return e;
}

static uint32_t data_start(const uint8_t *data, uint32_t lhdr_off)
{
    if (*(const uint32_t *)(data + lhdr_off) != kLFHSig) return 0;
    uint16_t fnlen = *(const uint16_t *)(data + lhdr_off + 26);
    uint16_t exlen = *(const uint16_t *)(data + lhdr_off + 28);
    return lhdr_off + 30u + fnlen + exlen;
}

static jbyteArray read_jar_from_apk(JNIEnv *env, const char *apk_path)
{
    int fd = open(apk_path, O_RDONLY);
    if (fd < 0) {
        loge("liapp_dex_injector: open failed: %s", apk_path);
        return nullptr;
    }
    struct stat st{};
    fstat(fd, &st);
    size_t sz = (size_t)st.st_size;
    const auto *data = static_cast<const uint8_t *>(
        mmap(nullptr, sz, PROT_READ, MAP_PRIVATE, fd, 0));
    close(fd);
    if (data == MAP_FAILED) {
        loge("liapp_dex_injector: mmap APK failed");
        return nullptr;
    }

    uint32_t cd_off = 0; uint16_t cd_cnt = 0;
    if (!find_eocd(data, sz, &cd_off, &cd_cnt)) {
        loge("liapp_dex_injector: EOCD not found");
        munmap(const_cast<uint8_t *>(data), sz);
        return nullptr;
    }

    ZipEntry e = find_entry(data, sz, cd_off, cd_cnt, "assets/liapp.dex");
    if (!e.valid) {
        loge("liapp_dex_injector: assets/liapp.dex not in APK");
        munmap(const_cast<uint8_t *>(data), sz);
        return nullptr;
    }

    uint32_t doff = data_start(data, e.lhdr_off);
    if (!doff || doff + e.comp_size > sz) {
        loge("liapp_dex_injector: invalid ZIP offsets");
        munmap(const_cast<uint8_t *>(data), sz);
        return nullptr;
    }

    jbyteArray result = nullptr;

    if (e.method == kMethodStore) {
        result = env->NewByteArray((jsize)e.uncomp_size);
        env->SetByteArrayRegion(result, 0, (jsize)e.uncomp_size,
            reinterpret_cast<const jbyte *>(data + doff));
        logi("liapp_dex_injector: liapp.dex STORED %u bytes", e.uncomp_size);

    } else if (e.method == kMethodDeflate) {
        result = env->NewByteArray((jsize)e.uncomp_size);
        jbyte *out = env->GetByteArrayElements(result, nullptr);
        z_stream zs{};
        zs.next_in   = const_cast<Bytef *>(data + doff);
        zs.avail_in  = e.comp_size;
        zs.next_out  = reinterpret_cast<Bytef *>(out);
        zs.avail_out = e.uncomp_size;
        inflateInit2(&zs, -15);
        int ret = inflate(&zs, Z_FINISH);
        inflateEnd(&zs);
        env->ReleaseByteArrayElements(result, out, 0);
        if (ret != Z_STREAM_END) {
            loge("liapp_dex_injector: inflate failed %d", ret);
            env->DeleteLocalRef(result);
            result = nullptr;
        } else {
            logi("liapp_dex_injector: liapp.dex DEFLATE %u bytes", e.uncomp_size);
        }
    } else {
        loge("liapp_dex_injector: unsupported method %d", (int)e.method);
    }

    munmap(const_cast<uint8_t *>(data), sz);
    return result;
}

static jobject get_path_classloader(JNIEnv *env)
{
    jclass tc = env->FindClass("java/lang/Thread");
    if (!tc || env->ExceptionCheck()) { env->ExceptionClear(); return nullptr; }
    jmethodID cur = env->GetStaticMethodID(tc, "currentThread", "()Ljava/lang/Thread;");
    jobject thr = env->CallStaticObjectMethod(tc, cur);
    jmethodID gcl = env->GetMethodID(tc, "getContextClassLoader", "()Ljava/lang/ClassLoader;");
    env->DeleteLocalRef(tc);
    if (!thr || env->ExceptionCheck()) { env->ExceptionClear(); return nullptr; }
    jobject cl = env->CallObjectMethod(thr, gcl);
    env->DeleteLocalRef(thr);
    if (env->ExceptionCheck()) { env->ExceptionClear(); return nullptr; }
    return cl;
}

static bool do_inject(JNIEnv *env)
{
    char apk_path[512] = {};
    if (!find_base_apk_path(apk_path, sizeof(apk_path))) {
        loge("liapp_dex_injector: base.apk not in /proc/self/maps");
        return false;
    }
    logi("liapp_dex_injector: APK=%s", apk_path);

    jbyteArray jar = read_jar_from_apk(env, apk_path);
    if (!jar) return false;

    jclass bb_cls = env->FindClass("java/nio/ByteBuffer");
    jmethodID bb_wrap = env->GetStaticMethodID(bb_cls, "wrap", "([B)Ljava/nio/ByteBuffer;");
    jobject bbuf = env->CallStaticObjectMethod(bb_cls, bb_wrap, jar);
    env->DeleteLocalRef(jar);
    env->DeleteLocalRef(bb_cls);
    if (!bbuf || env->ExceptionCheck()) {
        env->ExceptionClear();
        loge("liapp_dex_injector: ByteBuffer.wrap failed");
        return false;
    }

    jobject ctx_cl = get_path_classloader(env);
    if (!ctx_cl) {
        env->DeleteLocalRef(bbuf);
        loge("liapp_dex_injector: PathClassLoader unavailable");
        return false;
    }

    jclass imdcl_cls = env->FindClass("dalvik/system/InMemoryDexClassLoader");
    if (!imdcl_cls || env->ExceptionCheck()) {
        env->ExceptionClear();
        loge("liapp_dex_injector: InMemoryDexClassLoader unavailable");
        env->DeleteLocalRef(bbuf);
        env->DeleteLocalRef(ctx_cl);
        return false;
    }
    jmethodID imdcl_init = env->GetMethodID(imdcl_cls, "<init>",
        "(Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;)V");
    jobject our_loader = env->NewObject(imdcl_cls, imdcl_init, bbuf, (jobject)nullptr);
    env->DeleteLocalRef(bbuf);
    env->DeleteLocalRef(imdcl_cls);
    if (!our_loader || env->ExceptionCheck()) {
        env->ExceptionClear();
        loge("liapp_dex_injector: InMemoryDexClassLoader create failed");
        env->DeleteLocalRef(ctx_cl);
        return false;
    }

    jclass bdcl_cls = env->FindClass("dalvik/system/BaseDexClassLoader");
    jfieldID path_list_fid = env->GetFieldID(bdcl_cls, "pathList", "Ldalvik/system/DexPathList;");
    env->DeleteLocalRef(bdcl_cls);
    if (!path_list_fid || env->ExceptionCheck()) {
        env->ExceptionClear();
        loge("liapp_dex_injector: BaseDexClassLoader.pathList field not found");
        env->DeleteLocalRef(our_loader);
        env->DeleteLocalRef(ctx_cl);
        return false;
    }

    jobject ctx_path_list = env->GetObjectField(ctx_cl, path_list_fid);
    jobject our_path_list = env->GetObjectField(our_loader, path_list_fid);
    env->DeleteLocalRef(our_loader);
    if (!ctx_path_list || !our_path_list || env->ExceptionCheck()) {
        env->ExceptionClear();
        loge("liapp_dex_injector: pathList field get failed");
        env->DeleteLocalRef(ctx_cl);
        if (ctx_path_list) env->DeleteLocalRef(ctx_path_list);
        if (our_path_list) env->DeleteLocalRef(our_path_list);
        return false;
    }

    jclass dpl_cls = env->FindClass("dalvik/system/DexPathList");
    jfieldID dex_elems_fid = env->GetFieldID(dpl_cls, "dexElements",
        "[Ldalvik/system/DexPathList$Element;");
    env->DeleteLocalRef(dpl_cls);
    if (!dex_elems_fid || env->ExceptionCheck()) {
        env->ExceptionClear();
        loge("liapp_dex_injector: DexPathList.dexElements field not found");
        env->DeleteLocalRef(ctx_path_list);
        env->DeleteLocalRef(our_path_list);
        env->DeleteLocalRef(ctx_cl);
        return false;
    }

    jobjectArray ctx_elems = static_cast<jobjectArray>(
        env->GetObjectField(ctx_path_list, dex_elems_fid));
    jobjectArray our_elems = static_cast<jobjectArray>(
        env->GetObjectField(our_path_list, dex_elems_fid));
    env->DeleteLocalRef(our_path_list);
    if (!ctx_elems || !our_elems || env->ExceptionCheck()) {
        env->ExceptionClear();
        loge("liapp_dex_injector: dexElements field get failed");
        env->DeleteLocalRef(ctx_path_list);
        env->DeleteLocalRef(ctx_cl);
        if (ctx_elems) env->DeleteLocalRef(ctx_elems);
        if (our_elems) env->DeleteLocalRef(our_elems);
        return false;
    }

    jint ctx_len = env->GetArrayLength(ctx_elems);
    jint our_len = env->GetArrayLength(our_elems);
    if (our_len == 0) {
        loge("liapp_dex_injector: IMDCL produced no dexElements");
        env->DeleteLocalRef(ctx_path_list);
        env->DeleteLocalRef(ctx_cl);
        env->DeleteLocalRef(ctx_elems);
        env->DeleteLocalRef(our_elems);
        return false;
    }

    jobject first_elem = env->GetObjectArrayElement(our_elems, 0);
    jclass elem_cls = env->GetObjectClass(first_elem);
    env->DeleteLocalRef(first_elem);
    jobjectArray merged = env->NewObjectArray(our_len + ctx_len, elem_cls, nullptr);
    env->DeleteLocalRef(elem_cls);

    for (jint i = 0; i < our_len; ++i) {
        jobject elem = env->GetObjectArrayElement(our_elems, i);
        env->SetObjectArrayElement(merged, i, elem);
        env->DeleteLocalRef(elem);
    }
    for (jint i = 0; i < ctx_len; ++i) {
        jobject elem = env->GetObjectArrayElement(ctx_elems, i);
        env->SetObjectArrayElement(merged, our_len + i, elem);
        env->DeleteLocalRef(elem);
    }
    env->DeleteLocalRef(our_elems);
    env->DeleteLocalRef(ctx_elems);

    env->SetObjectField(ctx_path_list, dex_elems_fid, merged);
    env->DeleteLocalRef(ctx_path_list);
    env->DeleteLocalRef(merged);
    env->DeleteLocalRef(ctx_cl);

    if (env->ExceptionCheck()) {
        env->ExceptionClear();
        loge("liapp_dex_injector: dexElements set failed");
        return false;
    }

    logi("liapp_dex_injector: liapp.dex injected into PathClassLoader.dexElements");
    return true;
}

} // namespace

void init(JavaVM *vm)
{
    JNIEnv *env = nullptr;
    jint rc = vm->GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_6);
    if (rc == JNI_EDETACHED) rc = vm->AttachCurrentThread(&env, nullptr);
    if (rc != JNI_OK || !env) {
        __android_log_print(ANDROID_LOG_ERROR, kTag,
            "liapp_dex_injector: JNIEnv unavailable");
        return;
    }
    do_inject(env);
}

} // namespace eversoul::liapp_dex_injector

#else

namespace eversoul::liapp_dex_injector {
    void init(JavaVM *) {}
} // namespace eversoul::liapp_dex_injector

#endif
