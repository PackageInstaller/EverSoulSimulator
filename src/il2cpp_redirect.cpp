#include "il2cpp_redirect.hpp"

#ifdef __aarch64__

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

namespace eversoul::il2cpp_redirect
{

    namespace
    {

        constexpr const char *kTag = "libswappywrapper";

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
        template <class... A>
        void logi(const char *fmt, A... a)
        {
            __android_log_print(ANDROID_LOG_INFO, kTag, fmt, a...);
        }
        template <class... A>
        void loge(const char *fmt, A... a)
        {
            __android_log_print(ANDROID_LOG_ERROR, kTag, fmt, a...);
        }
#pragma clang diagnostic pop

        // ---------------------------------------------------------------------------
        // Target domains
        // ---------------------------------------------------------------------------
        static const char *kTargetDomains[] = {
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
            "live-sea-chat.esoul.kakaogames.com",
            "live-sea.esoul.kakaogames.com",
            "live-kr.esoul.kakaogames.com",
            "live-kr-chat.esoul.kakaogames.com",
            nullptr,
        };

        static constexpr uint16_t kLocalPort = 9999;

        static bool is_target_domain(const char *node)
        {
            if (!node)
                return false;
            for (int i = 0; kTargetDomains[i]; ++i)
            {
                if (strcmp(node, kTargetDomains[i]) == 0)
                    return true;
            }
            if (strstr(node, ".kakaogames.io"))
                return true;
            if (strstr(node, ".lockincomp.com"))
                return true;
            return false;
        }

        // ---------------------------------------------------------------------------
        // Original function pointers (filled from GOT slots at hook time)
        // ---------------------------------------------------------------------------
        using getaddrinfo_t = int (*)(const char *, const char *,
                                      const struct addrinfo *, struct addrinfo **);
        using connect_t = int (*)(int, const struct sockaddr *, socklen_t);

        static getaddrinfo_t g_orig_getaddrinfo = nullptr;
        static connect_t g_orig_connect = nullptr;
        static std::atomic<bool> g_installed{false};

        // ---------------------------------------------------------------------------
        // Hook: getaddrinfo — DNS 결과를 127.0.0.1:kLocalPort로 교체
        // ---------------------------------------------------------------------------
        static int hook_getaddrinfo(const char *node, const char *service,
                                    const struct addrinfo *hints,
                                    struct addrinfo **res)
        {
            int rc = g_orig_getaddrinfo(node, service, hints, res);
            if (rc != 0 || !res || !*res || !is_target_domain(node))
                return rc;

            logi("il2cpp_redirect: getaddrinfo %s -> 127.0.0.1:%u", node ? node : "", kLocalPort);
            for (struct addrinfo *ai = *res; ai; ai = ai->ai_next)
            {
                if (ai->ai_family == AF_INET && ai->ai_addr)
                {
                    auto *sin = reinterpret_cast<struct sockaddr_in *>(ai->ai_addr);
                    sin->sin_addr.s_addr = htonl(INADDR_LOOPBACK);
                    sin->sin_port = htons(kLocalPort);
                }
            }
            return 0;
        }

        // ---------------------------------------------------------------------------
        // Hook: connect — 외부 IP 연결을 127.0.0.1:kLocalPort로 교체
        // ---------------------------------------------------------------------------
        static int hook_connect(int sockfd, const struct sockaddr *addr, socklen_t addrlen)
        {
            if (addr && addr->sa_family == AF_INET)
            {
                const auto *sin = reinterpret_cast<const struct sockaddr_in *>(addr);
                uint32_t ip = ntohl(sin->sin_addr.s_addr);
                if ((ip >> 24) != 127)
                {
                    struct sockaddr_in local{};
                    local.sin_family = AF_INET;
                    local.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
                    local.sin_port = htons(kLocalPort);
                    logi("il2cpp_redirect: connect %u.%u.%u.%u:%u -> 127.0.0.1:%u",
                         (ip >> 24) & 0xFF, (ip >> 16) & 0xFF,
                         (ip >> 8) & 0xFF, ip & 0xFF,
                         ntohs(sin->sin_port), kLocalPort);
                    return g_orig_connect(sockfd,
                                          reinterpret_cast<const struct sockaddr *>(&local),
                                          static_cast<socklen_t>(sizeof(local)));
                }
            }
            return g_orig_connect(sockfd, addr, addrlen);
        }

        // ---------------------------------------------------------------------------
        // GOT hook — anticheat_patch.cpp와 동일한 ELF PT_DYNAMIC 파싱 방식
        // ---------------------------------------------------------------------------
        static int got_hook_network(uintptr_t base, const char *map_name)
        {
            if (!base)
                return 0;
            const auto *ehdr = reinterpret_cast<const Elf64_Ehdr *>(base);
            if (memcmp(ehdr->e_ident, ELFMAG, SELFMAG) != 0)
                return 0;

            const auto *phdr = reinterpret_cast<const Elf64_Phdr *>(base + ehdr->e_phoff);
            const Elf64_Dyn *dyn = nullptr;
            for (int i = 0; i < ehdr->e_phnum; ++i)
            {
                if (phdr[i].p_type == PT_DYNAMIC)
                {
                    dyn = reinterpret_cast<const Elf64_Dyn *>(base + phdr[i].p_vaddr);
                    break;
                }
            }
            if (!dyn)
                return 0;

            const Elf64_Rela *rela = nullptr;
            size_t relasz = 0;
            const Elf64_Rela *plt = nullptr;
            size_t pltsz = 0;
            const Elf64_Sym *sym = nullptr;
            const char *str = nullptr;

            for (const Elf64_Dyn *d = dyn; d->d_tag != DT_NULL; ++d)
            {
                uintptr_t v = d->d_un.d_ptr;
                uintptr_t abs = (v < base) ? base + v : v;
                switch (d->d_tag)
                {
                case DT_RELA:
                    rela = reinterpret_cast<const Elf64_Rela *>(abs);
                    break;
                case DT_RELASZ:
                    relasz = d->d_un.d_val;
                    break;
                case DT_JMPREL:
                    plt = reinterpret_cast<const Elf64_Rela *>(abs);
                    break;
                case DT_PLTRELSZ:
                    pltsz = d->d_un.d_val;
                    break;
                case DT_SYMTAB:
                    sym = reinterpret_cast<const Elf64_Sym *>(abs);
                    break;
                case DT_STRTAB:
                    str = reinterpret_cast<const char *>(abs);
                    break;
                default:
                    break;
                }
            }
            if (!sym || !str)
                return 0;

            int count = 0;
            auto patch_slot = [&](const Elf64_Rela *table, size_t sz)
            {
                if (!table || !sz)
                    return;
                size_t n = sz / sizeof(Elf64_Rela);
                for (size_t i = 0; i < n; ++i)
                {
                    unsigned idx = ELF64_R_SYM(table[i].r_info);
                    if (!idx)
                        continue;
                    const char *name = str + sym[idx].st_name;

                    void *hook = nullptr;
                    void **orig_pp = nullptr;
                    if (strcmp(name, "getaddrinfo") == 0 && !g_orig_getaddrinfo)
                    {
                        hook = reinterpret_cast<void *>(hook_getaddrinfo);
                        orig_pp = reinterpret_cast<void **>(&g_orig_getaddrinfo);
                    }
                    else if (strcmp(name, "connect") == 0 && !g_orig_connect)
                    {
                        hook = reinterpret_cast<void *>(hook_connect);
                        orig_pp = reinterpret_cast<void **>(&g_orig_connect);
                    }
                    if (!hook)
                        continue;

                    auto *slot = reinterpret_cast<uintptr_t *>(base + table[i].r_offset);
                    *orig_pp = reinterpret_cast<void *>(*slot);

                    long ps = sysconf(_SC_PAGESIZE);
                    auto page = reinterpret_cast<uintptr_t>(slot) &
                                ~(static_cast<uintptr_t>(ps) - 1);
                    mprotect(reinterpret_cast<void *>(page), static_cast<size_t>(ps),
                             PROT_READ | PROT_WRITE);
                    *slot = reinterpret_cast<uintptr_t>(hook);
                    mprotect(reinterpret_cast<void *>(page), static_cast<size_t>(ps),
                             PROT_READ);
                    ++count;
                    logi("il2cpp_redirect: GOT hook %s in %s slot=%p", name, map_name, slot);
                }
            };
            patch_slot(rela, relasz);
            patch_slot(plt, pltsz);
            return count;
        }

        // ---------------------------------------------------------------------------
        // Poller — libil2cpp.so 로드 대기 후 GOT hook 설치
        // ---------------------------------------------------------------------------
        static void *poller_thread(void *)
        {
            for (int i = 0; i < 120 && !g_installed.load(); ++i)
            {
                usleep(500000);

                void *sym = dlsym(RTLD_DEFAULT, "il2cpp_string_new");
                if (!sym)
                    continue;

                Dl_info info{};
                if (!dladdr(sym, &info) || !info.dli_fbase)
                    continue;

                bool expected = false;
                if (!g_installed.compare_exchange_strong(expected, true))
                    return nullptr;

                uintptr_t base = reinterpret_cast<uintptr_t>(info.dli_fbase);
                int n = got_hook_network(base, "libil2cpp.so");
                if (n > 0)
                    logi("il2cpp_redirect: GOT hook done (%d slots patched)", n);
                else
                    loge("il2cpp_redirect: GOT hook failed (0 slots)");
            }
            if (!g_installed.load())
                loge("il2cpp_redirect: libil2cpp.so not found within 60s");
            return nullptr;
        }

    } // namespace

    void install()
    {
        pthread_t thr;
        pthread_create(&thr, nullptr, poller_thread, nullptr);
        pthread_detach(thr);
    }

} // namespace eversoul::il2cpp_redirect
#else
namespace eversoul::il2cpp_redirect
{
    void install() {}
} // namespace eversoul::il2cpp_redirect
#endif // __aarch64__
