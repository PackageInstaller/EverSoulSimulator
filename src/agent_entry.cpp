#include "agent_il2cpp_hook.hpp"
#include "agent_java_hook.hpp"
#include "agent_redirect.hpp"
#include "agent_http_server.hpp"
#include "inline_hook.hpp"

#include <android/log.h>
#include <arpa/inet.h>
#include <dlfcn.h>
#include <elf.h>
#include <netdb.h>
#include <pthread.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/socket.h>
#include <unistd.h>

#include <atomic>
#include <cstdint>

#define LOGI(...) __android_log_print(ANDROID_LOG_INFO,  "eversoul_agent", __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, "eversoul_agent", __VA_ARGS__)

namespace
{

using getaddrinfo_t = int (*)(const char *, const char *, const struct addrinfo *, struct addrinfo **);
using connect_t     = int (*)(int, const struct sockaddr *, socklen_t);

static getaddrinfo_t g_orig_getaddrinfo = nullptr;
static connect_t     g_orig_connect     = nullptr;

// 도메인 → 포트 결정 (포트 분리):
//   카카오 API 도메인 → 8080 (기기 내부 서버)
//   게임 서버/CDN   → 9999 (PC EXE, ADB reverse)
static uint16_t port_for_domain(const char *node)
{
    uint16_t p = eversoul::agent::redirect_port(node);
    return (p != 0) ? p : eversoul::agent::kPortExternal;
}

static int hook_getaddrinfo(const char *node, const char *service,
                             const struct addrinfo *hints, struct addrinfo **res)
{
    int rc = g_orig_getaddrinfo(node, service, hints, res);
    if (rc != 0 || !res || !*res) return rc;
    uint16_t port = port_for_domain(node);
    if (!port) return rc;
    LOGI("getaddrinfo %s -> 127.0.0.1:%u", node ? node : "", port);
    for (struct addrinfo *ai = *res; ai; ai = ai->ai_next) {
        if (ai->ai_family == AF_INET && ai->ai_addr) {
            auto *sin = reinterpret_cast<struct sockaddr_in *>(ai->ai_addr);
            sin->sin_addr.s_addr = htonl(INADDR_LOOPBACK);
            sin->sin_port        = htons(port);
        }
    }
    return 0;
}

static int hook_connect(int sockfd, const struct sockaddr *addr, socklen_t addrlen)
{
    if (addr && addr->sa_family == AF_INET) {
        const auto *sin = reinterpret_cast<const struct sockaddr_in *>(addr);
        uint32_t ip = ntohl(sin->sin_addr.s_addr);
        if ((ip >> 24) != 127) {
            // 외부 IP 직접 접속 백업:
            // :1739 = 에버소울 게임 서버 protobuf → 9999
            // 나머지 (80/443) = 카카오 API → 8080
            // WebSocket(443/wss)은 hook_getaddrinfo가 선처리하므로 여기까지 오지 않음
            uint16_t orig_port = ntohs(sin->sin_port);
            uint16_t local_port = (orig_port == 1739)
                                  ? eversoul::agent::kPortExternal
                                  : eversoul::agent::kPortInternal;
            struct sockaddr_in local{};
            local.sin_family      = AF_INET;
            local.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
            local.sin_port        = htons(local_port);
            LOGI("connect %u.%u.%u.%u:%u -> 127.0.0.1:%u",
                 (ip >> 24) & 0xFF, (ip >> 16) & 0xFF,
                 (ip >>  8) & 0xFF,  ip         & 0xFF,
                 orig_port, local_port);
            return g_orig_connect(sockfd,
                                  reinterpret_cast<const struct sockaddr *>(&local),
                                  static_cast<socklen_t>(sizeof(local)));
        }
    }
    return g_orig_connect(sockfd, addr, addrlen);
}

static int got_hook_network(uintptr_t base, const char *map_name)
{
    if (!base) return 0;
    const auto *ehdr = reinterpret_cast<const Elf64_Ehdr *>(base);
    if (memcmp(ehdr->e_ident, ELFMAG, SELFMAG) != 0) return 0;

    const auto *phdr = reinterpret_cast<const Elf64_Phdr *>(base + ehdr->e_phoff);
    const Elf64_Dyn *dyn = nullptr;
    for (int i = 0; i < ehdr->e_phnum; ++i) {
        if (phdr[i].p_type == PT_DYNAMIC) {
            dyn = reinterpret_cast<const Elf64_Dyn *>(base + phdr[i].p_vaddr);
            break;
        }
    }
    if (!dyn) return 0;

    const Elf64_Rela *rela = nullptr; size_t relasz = 0;
    const Elf64_Rela *plt  = nullptr; size_t pltsz  = 0;
    const Elf64_Sym  *sym  = nullptr;
    const char       *str  = nullptr;

    for (const Elf64_Dyn *d = dyn; d->d_tag != DT_NULL; ++d) {
        uintptr_t v   = d->d_un.d_ptr;
        uintptr_t abs = (v < base) ? base + v : v;
        switch (d->d_tag) {
        case DT_RELA:    rela   = reinterpret_cast<const Elf64_Rela *>(abs); break;
        case DT_RELASZ:  relasz = d->d_un.d_val; break;
        case DT_JMPREL:  plt    = reinterpret_cast<const Elf64_Rela *>(abs); break;
        case DT_PLTRELSZ:pltsz  = d->d_un.d_val; break;
        case DT_SYMTAB:  sym    = reinterpret_cast<const Elf64_Sym *>(abs); break;
        case DT_STRTAB:  str    = reinterpret_cast<const char *>(abs); break;
        default: break;
        }
    }
    if (!sym || !str) return 0;

    int count = 0;
    auto patch_slot = [&](const Elf64_Rela *table, size_t sz) {
        if (!table || !sz) return;
        size_t n = sz / sizeof(Elf64_Rela);
        for (size_t i = 0; i < n; ++i) {
            unsigned idx = ELF64_R_SYM(table[i].r_info);
            if (!idx) continue;
            const char *name = str + sym[idx].st_name;
            void  *hook    = nullptr;
            void **orig_pp = nullptr;
            if (strcmp(name, "getaddrinfo") == 0 && !g_orig_getaddrinfo) {
                hook    = reinterpret_cast<void *>(hook_getaddrinfo);
                orig_pp = reinterpret_cast<void **>(&g_orig_getaddrinfo);
            } else if (strcmp(name, "connect") == 0 && !g_orig_connect) {
                hook    = reinterpret_cast<void *>(hook_connect);
                orig_pp = reinterpret_cast<void **>(&g_orig_connect);
            }
            if (!hook) continue;
            auto *slot = reinterpret_cast<uintptr_t *>(base + table[i].r_offset);
            *orig_pp   = reinterpret_cast<void *>(*slot);
            long ps    = sysconf(_SC_PAGESIZE);
            auto page  = reinterpret_cast<uintptr_t>(slot) &
                         ~(static_cast<uintptr_t>(ps) - 1);
            mprotect(reinterpret_cast<void *>(page), static_cast<size_t>(ps),
                     PROT_READ | PROT_WRITE);
            *slot = reinterpret_cast<uintptr_t>(hook);
            mprotect(reinterpret_cast<void *>(page), static_cast<size_t>(ps),
                     PROT_READ);
            LOGI("GOT hook %s in %s", name, map_name);
            ++count;
        }
    };
    patch_slot(rela, relasz);
    patch_slot(plt,  pltsz);
    return count;
}

static std::atomic<bool> g_il2cpp_hooked{false};
static std::atomic<bool> g_got_hooked{false};

static void *poller_thread(void *)
{
    for (int i = 0; i < 240 && (!g_il2cpp_hooked.load() || !g_got_hooked.load()); ++i) {
        usleep(500000);

        void *sym = dlsym(RTLD_DEFAULT, "il2cpp_string_new");
        if (!sym) continue;

        Dl_info info{};
        if (!dladdr(sym, &info) || !info.dli_fbase) continue;

        if (!g_il2cpp_hooked.exchange(true)) {
            uintptr_t base = reinterpret_cast<uintptr_t>(info.dli_fbase);
            LOGI("libil2cpp.so base=0x%lx", static_cast<unsigned long>(base));
            eversoul::agent::il2cpp_hook::install(info.dli_fbase);
        }

        if (!g_got_hooked.exchange(true)) {
            uintptr_t base = reinterpret_cast<uintptr_t>(info.dli_fbase);
            int n = got_hook_network(base, "libil2cpp.so");
            LOGI("GOT hooks installed: %d", n);
        }
    }

    if (!g_il2cpp_hooked.load())
        LOGE("libil2cpp.so not found within 120s");

    return nullptr;
}

static void init_java_vm()
{
    using get_created_vms_fn = jint (*)(JavaVM **, jsize, jsize *);
    auto fn = reinterpret_cast<get_created_vms_fn>(
        dlsym(RTLD_DEFAULT, "JNI_GetCreatedJavaVMs"));
    if (!fn) { LOGE("JNI_GetCreatedJavaVMs not found"); return; }

    JavaVM *vm    = nullptr;
    jsize   count = 0;
    if (fn(&vm, 1, &count) == JNI_OK && count > 0 && vm) {
        LOGI("JavaVM found, installing Java hooks");
        eversoul::agent::java_hook::install(vm);
    } else {
        LOGE("JavaVM not yet available");
    }
}

} // namespace

extern "C"
{

__attribute__((constructor)) static void eversoul_agent_init()
{
    LOGI("eversoul_agent_init");
    eversoul::agent::http_server::start();
    init_java_vm();

    pthread_t thr;
    pthread_create(&thr, nullptr, poller_thread, nullptr);
    pthread_detach(thr);
}

JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm, void *)
{
    LOGI("JNI_OnLoad");
    eversoul::agent::java_hook::install(vm);
    return JNI_VERSION_1_6;
}

} // extern "C"
