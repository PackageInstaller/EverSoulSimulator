#include "liapp_bypass.hpp"

#if defined(__aarch64__) || defined(__x86_64__)

#include "inline_hook.hpp"

#include <android/log.h>
#include <arpa/inet.h>
#include <dlfcn.h>
#include <errno.h>
#include <fcntl.h>
#include <link.h>
#include <netinet/in.h>
#include <pthread.h>
#include <signal.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

#include <atomic>
#include <cstdint>
#include <cstring>

namespace eversoul::liapp_bypass {

namespace {

constexpr const char *kTag = "libswappywrapper";

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
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
#pragma clang diagnostic pop

// ---------------------------------------------------------------------------
// Orig SO path — original (unpatched) libcawwyayy.so for integrity redirect
// ---------------------------------------------------------------------------
static constexpr const char *kPatchedSoPath = "/data/local/tmp/libcawwyayy_patched.so";

// ---------------------------------------------------------------------------
// Original function pointers (saved by libc inline hooks)
// ---------------------------------------------------------------------------
using fopen_t    = FILE *(*)(const char *, const char *);
using fopen64_t  = FILE *(*)(const char *, const char *);
using openat_t   = int  (*)(int, const char *, int, ...);
using openat64_t = int  (*)(int, const char *, int, ...);
using read_t     = ssize_t (*)(int, void *, size_t);
using kill_t     = int (*)(pid_t, int);
using connect_t  = int (*)(int, const struct sockaddr *, socklen_t);

static fopen_t    g_orig_fopen    = nullptr;
static fopen64_t  g_orig_fopen64  = nullptr;
static openat_t   g_orig_openat   = nullptr;
static openat64_t g_orig_openat64 = nullptr;
static read_t     g_orig_read     = nullptr;
static kill_t     g_orig_kill     = nullptr;
static connect_t  g_orig_connect  = nullptr;

// ---------------------------------------------------------------------------
// Path helpers
// ---------------------------------------------------------------------------
static bool is_liapp_so_path(const char *path)
{
    if (!path) return false;
    return std::strstr(path, "libcawwyayy") != nullptr ||
           std::strstr(path, "libliapp")    != nullptr;
}

static bool is_blocked_path(const char *path)
{
    if (!path) return false;
    static const char *kPatterns[] = {
        "app_process64.orig",
        "app_process64.bak",
        "/sbin/magisk",
        "/sbin/.magisk",
        "/data/adb/magisk",
        "/data/adb/ksu",
        "/data/adb/apd",
        "zygisk",
        "magiskd",
        nullptr,
    };
    for (int i = 0; kPatterns[i]; ++i) {
        if (std::strstr(path, kPatterns[i])) return true;
    }
    return false;
}

// ---------------------------------------------------------------------------
// /proc/maps filtering state
// ---------------------------------------------------------------------------
static constexpr int kMaxTrackedFds = 32;

struct TrackedFd { int fd; bool active; };
static TrackedFd       g_tracked[kMaxTrackedFds] = {};
static pthread_mutex_t g_fd_mutex = PTHREAD_MUTEX_INITIALIZER;

static void track_fd(int fd)
{
    pthread_mutex_lock(&g_fd_mutex);
    for (auto &t : g_tracked) {
        if (!t.active) { t.fd = fd; t.active = true; break; }
    }
    pthread_mutex_unlock(&g_fd_mutex);
}

static bool is_tracked_fd(int fd)
{
    pthread_mutex_lock(&g_fd_mutex);
    for (const auto &t : g_tracked) {
        if (t.active && t.fd == fd) { pthread_mutex_unlock(&g_fd_mutex); return true; }
    }
    pthread_mutex_unlock(&g_fd_mutex);
    return false;
}

static void untrack_fd(int fd)
{
    pthread_mutex_lock(&g_fd_mutex);
    for (auto &t : g_tracked) {
        if (t.active && t.fd == fd) { t.active = false; break; }
    }
    pthread_mutex_unlock(&g_fd_mutex);
}

static std::size_t filter_maps_buf(char *buf, std::size_t len)
{
    static const char *kMapsFilter[] = {
        "libswappywrapper",
        "magisk",
        "zygisk",
        "xposed",
        "edxposed",
        "lsplant",
        nullptr,
    };
    std::size_t out = 0;
    std::size_t i   = 0;
    while (i < len) {
        std::size_t line_start = i;
        while (i < len && buf[i] != '\n') ++i;
        std::size_t line_end = (i < len) ? i + 1 : i;
        bool suppress = false;
        for (int k = 0; kMapsFilter[k]; ++k) {
            for (std::size_t j = line_start; j < line_end; ++j) {
                if (std::strncmp(buf + j, kMapsFilter[k],
                                 std::strlen(kMapsFilter[k])) == 0) {
                    suppress = true; break;
                }
            }
            if (suppress) break;
        }
        if (!suppress) {
            std::memmove(buf + out, buf + line_start, line_end - line_start);
            out += line_end - line_start;
        }
        i = line_end;
    }
    return out;
}

static bool is_maps_path(const char *path)
{
    if (!path) return false;
    if (std::strncmp(path, "/proc/", 6) != 0) return false;
    const char *maps = std::strstr(path, "/maps");
    return maps && maps[5] == '\0';
}

// ---------------------------------------------------------------------------
// Hooks — fopen, fopen64, openat, openat64, read, kill
// ---------------------------------------------------------------------------
static FILE *hook_fopen(const char *path, const char *mode)
{
    if (is_liapp_so_path(path)) {
        logi("liapp_bypass: fopen redirect cawwyayy -> orig: %s", path);
        return g_orig_fopen(kPatchedSoPath, mode);
    }
    if (is_blocked_path(path)) {
        logi("liapp_bypass: fopen blocked: %s", path);
        errno = ENOENT;
        return nullptr;
    }
    return g_orig_fopen(path, mode);
}

static FILE *hook_fopen64(const char *path, const char *mode)
{
    if (is_liapp_so_path(path)) {
        logi("liapp_bypass: fopen64 redirect cawwyayy -> orig: %s", path);
        return g_orig_fopen64(kPatchedSoPath, mode);
    }
    if (is_blocked_path(path)) {
        logi("liapp_bypass: fopen64 blocked: %s", path);
        errno = ENOENT;
        return nullptr;
    }
    return g_orig_fopen64(path, mode);
}

static int hook_openat(int dirfd, const char *path, int flags, ...)
{
    mode_t mode = 0;
    if (flags & O_CREAT) {
        va_list ap; va_start(ap, flags);
        mode = static_cast<mode_t>(va_arg(ap, int));
        va_end(ap);
    }
    if (is_liapp_so_path(path)) {
        logi("liapp_bypass: openat redirect cawwyayy -> orig: %s", path);
        return (flags & O_CREAT)
               ? g_orig_openat(dirfd, kPatchedSoPath, flags, mode)
               : g_orig_openat(dirfd, kPatchedSoPath, flags);
    }
    if (is_blocked_path(path)) {
        logi("liapp_bypass: openat blocked: %s", path);
        errno = ENOENT;
        return -1;
    }
    int fd = (flags & O_CREAT)
             ? g_orig_openat(dirfd, path, flags, mode)
             : g_orig_openat(dirfd, path, flags);
    if (fd >= 0 && is_maps_path(path)) {
        logi("liapp_bypass: tracking maps fd=%d path=%s", fd, path);
        track_fd(fd);
    }
    return fd;
}

static int hook_openat64(int dirfd, const char *path, int flags, ...)
{
    mode_t mode = 0;
    if (flags & O_CREAT) {
        va_list ap; va_start(ap, flags);
        mode = static_cast<mode_t>(va_arg(ap, int));
        va_end(ap);
    }
    if (is_liapp_so_path(path)) {
        logi("liapp_bypass: openat64 redirect cawwyayy -> orig: %s", path);
        return (flags & O_CREAT)
               ? g_orig_openat64(dirfd, kPatchedSoPath, flags, mode)
               : g_orig_openat64(dirfd, kPatchedSoPath, flags);
    }
    if (is_blocked_path(path)) {
        logi("liapp_bypass: openat64 blocked: %s", path);
        errno = ENOENT;
        return -1;
    }
    int fd = (flags & O_CREAT)
             ? g_orig_openat64(dirfd, path, flags, mode)
             : g_orig_openat64(dirfd, path, flags);
    if (fd >= 0 && is_maps_path(path)) {
        logi("liapp_bypass: tracking maps fd=%d path=%s", fd, path);
        track_fd(fd);
    }
    return fd;
}

static ssize_t hook_read(int fd, void *buf, size_t count)
{
    ssize_t n = g_orig_read(fd, buf, count);
    if (n > 0 && is_tracked_fd(fd)) {
        std::size_t filtered = filter_maps_buf(static_cast<char *>(buf),
                                               static_cast<std::size_t>(n));
        if (filtered != static_cast<std::size_t>(n))
            logi("liapp_bypass: maps read filtered %zd -> %zu bytes", n, filtered);
        n = static_cast<ssize_t>(filtered);
        if (n == 0) untrack_fd(fd);
    }
    return n;
}

static int hook_kill(pid_t pid, int sig)
{
    if (pid == getpid() && (sig == SIGKILL || sig == SIGTERM)) {
        logi("liapp_bypass: blocked kill(%d, %d) from cawwyayy", pid, sig);
        return 0;
    }
    return g_orig_kill(pid, sig);
}

static int hook_connect(int sockfd, const struct sockaddr *addr, socklen_t addrlen)
{
    if (addr && addr->sa_family == AF_INET &&
        addrlen >= static_cast<socklen_t>(sizeof(struct sockaddr_in))) {
        const auto *in4 = reinterpret_cast<const struct sockaddr_in *>(addr);
        const uint32_t host = ntohl(in4->sin_addr.s_addr);
        const uint16_t port = ntohs(in4->sin_port);
        if (host != INADDR_LOOPBACK && (port == 80 || port == 443 || port == 8080)) {
            char ip_str[INET_ADDRSTRLEN] = {};
            inet_ntop(AF_INET, &in4->sin_addr, ip_str, sizeof(ip_str));
            logi("liapp_bypass: connect redirect %s:%d -> 127.0.0.1:9999", ip_str, (int)port);
            struct sockaddr_in local{};
            local.sin_family      = AF_INET;
            local.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
            local.sin_port        = htons(9999);
            return g_orig_connect(sockfd,
                                  reinterpret_cast<const struct sockaddr *>(&local),
                                  static_cast<socklen_t>(sizeof(local)));
        }
    }
    return g_orig_connect(sockfd, addr, addrlen);
}

// ---------------------------------------------------------------------------
// libc inline hooks
// ---------------------------------------------------------------------------
static void install_libc_hooks()
{
    struct {
        const char *sym;
        void       *hook;
        void      **orig;
    } entries[] = {
        { "fopen",    reinterpret_cast<void *>(hook_fopen),    reinterpret_cast<void **>(&g_orig_fopen)    },
        { "fopen64",  reinterpret_cast<void *>(hook_fopen64),  reinterpret_cast<void **>(&g_orig_fopen64)  },
        { "openat",   reinterpret_cast<void *>(hook_openat),   reinterpret_cast<void **>(&g_orig_openat)   },
        { "openat64", reinterpret_cast<void *>(hook_openat64), reinterpret_cast<void **>(&g_orig_openat64) },
        { "read",     reinterpret_cast<void *>(hook_read),     reinterpret_cast<void **>(&g_orig_read)     },
        { "kill",     reinterpret_cast<void *>(hook_kill),     reinterpret_cast<void **>(&g_orig_kill)     },
        { "connect",  reinterpret_cast<void *>(hook_connect),  reinterpret_cast<void **>(&g_orig_connect)  },
    };

    for (auto &e : entries) {
        void *sym = dlsym(RTLD_DEFAULT, e.sym);
        if (!sym) { loge("liapp_bypass: %s not found", e.sym); continue; }
        void *tramp = nullptr;
        if (eversoul::hook::install_inline_hook(sym, e.hook, &tramp)) {
            *e.orig = tramp;
            logi("liapp_bypass: %s libc hook active", e.sym);
        } else {
            loge("liapp_bypass: %s libc hook FAILED", e.sym);
        }
    }
}

// ---------------------------------------------------------------------------
// GOT patch — patches libcawwyayy.so's own GOT (ARM64 only).
// Offsets from dump analysis of cawwyayy_dump.so.
// ---------------------------------------------------------------------------
#ifdef __aarch64__
static constexpr std::uintptr_t kGotFopen   = 0xa3ec8;
static constexpr std::uintptr_t kGotOpenat  = 0xa3dc8;
static constexpr std::uintptr_t kGotKill    = 0xa3e38;

static void patch_got_entry(std::uintptr_t base, std::uintptr_t offset,
                             void *hook_fn, const char *name)
{
    void **slot = reinterpret_cast<void **>(base + offset);
    void *page  = reinterpret_cast<void *>(
        reinterpret_cast<std::uintptr_t>(slot) & ~(static_cast<std::uintptr_t>(4095)));
    if (mprotect(page, 4096, PROT_READ | PROT_WRITE) != 0) {
        loge("liapp_bypass: mprotect failed for GOT %s", name);
        return;
    }
    void *orig = *slot;
    *slot = hook_fn;
    mprotect(page, 4096, PROT_READ);
    logi("liapp_bypass: GOT %s patched 0x%lx -> hook (was %p)",
         name, static_cast<unsigned long>(base + offset), orig);
}

static void patch_cawwyayy_got(std::uintptr_t base)
{
    patch_got_entry(base, kGotFopen,  reinterpret_cast<void *>(hook_fopen),  "fopen");
    patch_got_entry(base, kGotOpenat, reinterpret_cast<void *>(hook_openat), "openat");
    patch_got_entry(base, kGotKill,   reinterpret_cast<void *>(hook_kill),   "kill");
}
#endif

// ---------------------------------------------------------------------------
// Background poller — waits for libcawwyayy.so, then applies GOT patch
// ---------------------------------------------------------------------------
static std::atomic<bool> g_done{false};

struct FindLibResult { std::uintptr_t base; };

static int find_cawwyayy_callback(struct dl_phdr_info *info, size_t, void *data)
{
    if (!info->dlpi_name || !std::strstr(info->dlpi_name, "cawwyayy")) return 0;
    static_cast<FindLibResult *>(data)->base =
        static_cast<std::uintptr_t>(info->dlpi_addr);
    return 1;
}

static void *poller_thread(void *)
{
    for (int attempt = 0; attempt < 120 && !g_done.load(); ++attempt) {
        usleep(250000);

        FindLibResult result{0};
        dl_iterate_phdr(find_cawwyayy_callback, &result);
        if (!result.base) continue;

        bool expected = false;
        if (!g_done.compare_exchange_strong(expected, true)) break;

        logi("liapp_bypass: libcawwyayy.so mapped @ base=0x%lx",
             static_cast<unsigned long>(result.base));
#ifdef __aarch64__
        patch_cawwyayy_got(result.base);
#endif
        break;
    }

    if (!g_done.load())
        loge("liapp_bypass: libcawwyayy.so not found within 30s");
    return nullptr;
}

} // namespace

void install()
{
    install_libc_hooks();

    pthread_t thr;
    pthread_create(&thr, nullptr, poller_thread, nullptr);
    pthread_detach(thr);
}

} // namespace eversoul::liapp_bypass

#else

namespace eversoul::liapp_bypass {
    void install() {}
} // namespace eversoul::liapp_bypass

#endif // defined(__aarch64__) || defined(__x86_64__)
