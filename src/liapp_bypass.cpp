// Contributor: MadlyMoe (working MuMu ARM64 bypass, EverSoul 1.34.101)
#include "liapp_bypass.hpp"

#if defined(__aarch64__) || defined(__x86_64__)

#include <android/log.h>
#include <arpa/inet.h>
#include <dlfcn.h>
#include <elf.h>
#include <errno.h>
#include <fcntl.h>
#include <netinet/in.h>
#include <pthread.h>
#include <signal.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/system_properties.h>
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
using fopen_t       = FILE *(*)(const char *, const char *);
using fopen64_t     = FILE *(*)(const char *, const char *);
using openat_t      = int  (*)(int, const char *, int, ...);
using openat64_t    = int  (*)(int, const char *, int, ...);
using read_t        = ssize_t (*)(int, void *, size_t);
using kill_t        = int (*)(pid_t, int);
using connect_t         = int (*)(int, const struct sockaddr *, socklen_t);
using sysprop_get_t     = int (*)(const char *, char *);
using pthread_create_t  = int (*)(pthread_t *, const pthread_attr_t *, void *(*)(void *), void *);

static fopen_t          g_orig_fopen          = nullptr;
static fopen64_t        g_orig_fopen64        = nullptr;
static openat_t         g_orig_openat         = nullptr;
static openat64_t       g_orig_openat64       = nullptr;
static read_t           g_orig_read           = nullptr;
static kill_t           g_orig_kill           = nullptr;
static connect_t        g_orig_connect        = nullptr;
static sysprop_get_t    g_orig_sysprop_get    = nullptr;
static pthread_create_t g_orig_pthread_create = nullptr;

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
        "ksud",
        "kernelsu",
        "apatch",
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
        "ksud",
        "kernelsu",
        "apatch",
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
            logi("liapp_bypass: connect redirect %s:%d -> 127.0.0.1:19999", ip_str, (int)port);
            struct sockaddr_in local{};
            local.sin_family      = AF_INET;
            local.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
            local.sin_port        = htons(19999);
            return g_orig_connect(sockfd,
                                  reinterpret_cast<const struct sockaddr *>(&local),
                                  static_cast<socklen_t>(sizeof(local)));
        }
    }
    return g_orig_connect(sockfd, addr, addrlen);
}

static int hook_sys_prop_get(const char *name, char *value)
{
    if (!name) return g_orig_sysprop_get(name, value);
    if (std::strcmp(name, "ro.boot.verifiedbootstate") == 0) {
        std::strcpy(value, "green");
        logi("liapp_bypass: sysprop %s -> green", name);
        return 5;
    }
    if (std::strcmp(name, "ro.boot.vbmeta.device_state") == 0) {
        std::strcpy(value, "locked");
        logi("liapp_bypass: sysprop %s -> locked", name);
        return 6;
    }
    if (std::strcmp(name, "sys.oem_unlock_allowed") == 0 ||
        std::strcmp(name, "ro.boot.warranty_bit") == 0) {
        std::strcpy(value, "0");
        logi("liapp_bypass: sysprop %s -> 0", name);
        return 1;
    }
    return g_orig_sysprop_get(name, value);
}

static void *dummy_thread(void *) { return nullptr; }

static int hook_pthread_create(pthread_t *thread, const pthread_attr_t *attr,
                               void *(*start_routine)(void *), void *arg)
{
    if (start_routine) {
        Dl_info info{};
        if (dladdr(reinterpret_cast<void *>(start_routine), &info) &&
            info.dli_fname && std::strstr(info.dli_fname, "cawwyayy")) {
            uintptr_t off = reinterpret_cast<uintptr_t>(start_routine) -
                            reinterpret_cast<uintptr_t>(info.dli_fbase);
            logi("liapp_bypass: pthread_create from cawwyayy offset=0x%lx -> dummy",
                 static_cast<unsigned long>(off));
            return g_orig_pthread_create(thread, attr, dummy_thread, arg);
        }
    }
    return g_orig_pthread_create(thread, attr, start_routine, arg);
}

// ---------------------------------------------------------------------------
// ELF RELA 동적 재배치 테이블 스캔 — swappywrapper.c 방식 이식
// GOT에 심볼이 있을 경우 직접 교체한다 (libc inline hook과 이중 보험).
// ---------------------------------------------------------------------------
#ifdef __aarch64__
static int elf_got_patch_symbol(std::uintptr_t base, const char *sym_name, void *new_val)
{
    if (!base) return 0;
    auto *ehdr = reinterpret_cast<Elf64_Ehdr *>(base);
    if (std::memcmp(ehdr->e_ident, ELFMAG, SELFMAG) != 0) return 0;

    auto *phdr = reinterpret_cast<Elf64_Phdr *>(base + ehdr->e_phoff);
    Elf64_Dyn *dyn = nullptr;
    for (int i = 0; i < ehdr->e_phnum; ++i) {
        if (phdr[i].p_type == PT_DYNAMIC) {
            dyn = reinterpret_cast<Elf64_Dyn *>(base + phdr[i].p_vaddr);
            break;
        }
    }
    if (!dyn) return 0;

    Elf64_Rela *rela    = nullptr; std::size_t relasz   = 0;
    Elf64_Rela *pltrel  = nullptr; std::size_t pltrelsz = 0;
    Elf64_Sym  *symtab  = nullptr;
    const char *strtab  = nullptr;

    for (auto *d = dyn; d->d_tag != DT_NULL; ++d) {
        auto ptr = [&](Elf64_Xword v) -> std::uintptr_t {
            return v < base ? base + v : static_cast<std::uintptr_t>(v);
        };
        switch (d->d_tag) {
        case DT_RELA:    rela    = reinterpret_cast<Elf64_Rela *>(ptr(d->d_un.d_ptr)); break;
        case DT_RELASZ:  relasz  = d->d_un.d_val;                                       break;
        case DT_JMPREL:  pltrel  = reinterpret_cast<Elf64_Rela *>(ptr(d->d_un.d_ptr)); break;
        case DT_PLTRELSZ:pltrelsz= d->d_un.d_val;                                       break;
        case DT_SYMTAB:  symtab  = reinterpret_cast<Elf64_Sym  *>(ptr(d->d_un.d_ptr)); break;
        case DT_STRTAB:  strtab  = reinterpret_cast<const char *>(ptr(d->d_un.d_ptr)); break;
        default: break;
        }
    }
    if (!symtab || !strtab) return 0;

    int count = 0;
    auto patch_table = [&](Elf64_Rela *tbl, std::size_t sz) {
        if (!tbl || !sz) return;
        for (std::size_t i = 0; i < sz / sizeof(Elf64_Rela); ++i) {
            unsigned sym_idx = static_cast<unsigned>(ELF64_R_SYM(tbl[i].r_info));
            if (!sym_idx) continue;
            if (std::strcmp(strtab + symtab[sym_idx].st_name, sym_name) != 0) continue;
            auto *slot = reinterpret_cast<std::uintptr_t *>(base + tbl[i].r_offset);
            void *page = reinterpret_cast<void *>(
                reinterpret_cast<std::uintptr_t>(slot) & ~(static_cast<std::uintptr_t>(4095)));
            mprotect(page, 4096, PROT_READ | PROT_WRITE);
            *slot = reinterpret_cast<std::uintptr_t>(new_val);
            mprotect(page, 4096, PROT_READ);
            logi("liapp_bypass: ELF GOT [%s] slot=%p -> %p", sym_name, slot, new_val);
            ++count;
        }
    };
    patch_table(rela,   relasz);
    patch_table(pltrel, pltrelsz);
    return count;
}

static int scan_and_hook_active_modules()
{
    FILE *fp = ::fopen("/proc/self/maps", "r");
    if (!fp) return 0;
    char line[512];
    int  count = 0;
    while (fgets(line, static_cast<int>(sizeof(line)), fp)) {
        if (!std::strstr(line, "/data/app/") ||
             std::strstr(line, "libswappywrapper.so")) continue;
        std::uintptr_t base   = 0;
        unsigned long  offset = 0;
        char perm[16] = {};
        char name[256] = {};
        int  n = sscanf(line, "%lx-%*lx %15s %lx %*s %*s %255s",
                              reinterpret_cast<unsigned long *>(&base),
                              perm, &offset, name);
        if (n < 3 || !std::strchr(perm, 'r') || offset != 0) continue;
        count += elf_got_patch_symbol(base, "pthread_create",
                                       reinterpret_cast<void *>(hook_pthread_create));
    }
    fclose(fp);
    return count;
}
#endif

// ---------------------------------------------------------------------------
// libc original pointer resolution (no inline hook — Houdini PLT stubs must
// not be code-patched; GOT patch on libcawwyayy.so is the sole intercept path)
// ---------------------------------------------------------------------------
static void install_libc_hooks()
{
    struct {
        const char *sym;
        void      **orig;
    } entries[] = {
        { "fopen",                 reinterpret_cast<void **>(&g_orig_fopen)          },
        { "fopen64",               reinterpret_cast<void **>(&g_orig_fopen64)        },
        { "openat",                reinterpret_cast<void **>(&g_orig_openat)         },
        { "openat64",              reinterpret_cast<void **>(&g_orig_openat64)       },
        { "read",                  reinterpret_cast<void **>(&g_orig_read)           },
        { "kill",                  reinterpret_cast<void **>(&g_orig_kill)           },
        { "connect",               reinterpret_cast<void **>(&g_orig_connect)        },
        { "__system_property_get", reinterpret_cast<void **>(&g_orig_sysprop_get)    },
        { "pthread_create",        reinterpret_cast<void **>(&g_orig_pthread_create) },
    };

    for (auto &e : entries) {
        void *sym = dlsym(RTLD_DEFAULT, e.sym);
        if (!sym) { loge("liapp_bypass: %s not found", e.sym); continue; }
        *e.orig = sym;
        logi("liapp_bypass: %s resolved @ %p", e.sym, sym);
    }
}

// ---------------------------------------------------------------------------
// GOT patch — libcawwyayy.so RELA 파싱으로 모든 대상 심볼 교체 (ARM64 only).
// 원본 SO는 암호화 상태로 고정 오프셋이 없으므로 elf_got_patch_symbol로 동적 탐색.
// ---------------------------------------------------------------------------
#ifdef __aarch64__
static void patch_cawwyayy_got(std::uintptr_t base)
{
    static const struct { const char *sym; void *fn; } kTargets[] = {
        { "fopen",                  reinterpret_cast<void *>(hook_fopen)          },
        { "fopen64",                reinterpret_cast<void *>(hook_fopen64)        },
        { "openat",                 reinterpret_cast<void *>(hook_openat)         },
        { "openat64",               reinterpret_cast<void *>(hook_openat64)       },
        { "read",                   reinterpret_cast<void *>(hook_read)           },
        { "kill",                   reinterpret_cast<void *>(hook_kill)           },
        { "connect",                reinterpret_cast<void *>(hook_connect)        },
        { "__system_property_get",  reinterpret_cast<void *>(hook_sys_prop_get)   },
        { "pthread_create",         reinterpret_cast<void *>(hook_pthread_create) },
        { nullptr, nullptr },
    };
    for (int i = 0; kTargets[i].sym; ++i)
        elf_got_patch_symbol(base, kTargets[i].sym, kTargets[i].fn);
}
#endif

// ---------------------------------------------------------------------------
// Background poller — waits for libcawwyayy.so, then applies GOT patch
// ---------------------------------------------------------------------------
static std::atomic<bool> g_done{false};

static void *monitor_thread_fn(void *)
{
    logi("liapp_bypass: monitor thread started (5ms x 3000)");
    for (int i = 0; i < 3000 && !g_done.load(std::memory_order_relaxed); ++i) {
        std::uintptr_t target_base = 0;
        char           target_name[256] = {};

        FILE *fp = ::fopen("/proc/self/maps", "r");
        if (fp) {
            char line[512];
            while (fgets(line, static_cast<int>(sizeof(line)), fp)) {
                if (!std::strstr(line, "libcawwyayy.so")) continue;
                std::uintptr_t base   = 0;
                unsigned long  offset = 0;
                char perm[16] = {};
                char name[256] = {};
                int  n = sscanf(line, "%lx-%*lx %15s %lx %*s %*s %255s",
                                      reinterpret_cast<unsigned long *>(&base),
                                      perm, &offset, name);
                if (n < 3) continue;
                if (std::strchr(perm, 'r') && offset == 0) {
                    target_base = base;
                    std::strncpy(target_name,
                                 (name[0] ? name : "libcawwyayy.so"),
                                 sizeof(target_name) - 1);
                    break;
                }
            }
            fclose(fp);
        }

        if (target_base) {
#ifdef __aarch64__
            patch_cawwyayy_got(target_base);
#endif
            logi("liapp_bypass: monitor hooked %s @ base=0x%lx",
                 target_name, static_cast<unsigned long>(target_base));
            g_done.store(true, std::memory_order_relaxed);
            break;
        }
        usleep(5000);
    }

    if (!g_done.load(std::memory_order_relaxed))
        loge("liapp_bypass: monitor timeout: libcawwyayy.so not found in 15s");
    else
        logi("liapp_bypass: monitor thread done");
    return nullptr;
}

} // namespace

void install()
{
    install_libc_hooks();

#ifdef __aarch64__
    int cnt = scan_and_hook_active_modules();
    if (cnt > 0) {
        logi("liapp_bypass: static scan hooked %d GOT slots", cnt);
        g_done.store(true, std::memory_order_relaxed);
    }
#endif

    if (g_orig_pthread_create) {
        pthread_t thr;
        g_orig_pthread_create(&thr, nullptr, monitor_thread_fn, nullptr);
        pthread_detach(thr);
    } else {
        loge("liapp_bypass: pthread_create unavailable, monitor thread not started");
    }
}

} // namespace eversoul::liapp_bypass

#else

namespace eversoul::liapp_bypass {
    void install() {}
} // namespace eversoul::liapp_bypass

#endif // defined(__aarch64__) || defined(__x86_64__)
