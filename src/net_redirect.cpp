// net_redirect.cpp — Transport-layer redirect (방식 B): bounce every outbound
// connection aimed at a Kakao/zinny3/esoul/lockincomp host to 127.0.0.1:9991.
//
// Strategy (two cooperating hooks):
//   1) getaddrinfo() / android_getaddrinfofornet(): when the resolved hostname
//      is a redirect target, re-resolve it to 127.0.0.1 (IPv4) instead. This
//      forces the caller to build an AF_INET socket and works even with no
//      network (offline device), since "127.0.0.1" is numeric.
//        - Java (HttpURLConnection, raw Socket, WebSocketClient) resolves names
//          via android_getaddrinfofornet (libcore -> bionic).
//        - Native (Unity/curl) resolves via getaddrinfo.
//   2) connect(): any connect to a loopback address on a known Kakao port
//      (80 / 443 / 1739) is rewritten to 127.0.0.1:9991. The only way a loopback
//      connect on those ports happens is via our redirected DNS above, so this is
//      precise; connections to our own server (:9991) and unrelated loopback
//      services on other ports pass through untouched.
//
// We use DobbyHook (not the 16-byte inline_hook) because libc prologues contain
// PC-relative instructions (ADRP/ADR for errno/TLS) that must be relocated into
// the trampoline — Dobby does this; a raw prologue copy would crash.
//
// ─── TLS CAVEAT (read this) ────────────────────────────────────────────────
// EVERY Kakao/game endpoint is TLS: https://*:443, wss://*:443, and the game
// server https://live-sea*.kakaogames.com:1739. A socket-level redirect does NOT
// change the URL scheme, so after the connection lands on 127.0.0.1:9991 the
// client still performs a TLS handshake. The offline server on :9991 speaks
// plaintext HTTP/WS, so the handshake fails unless ONE of these is also done:
//   (A) keep the URL-string scheme-downgrade (https->http, wss->ws) at the
//       Java/IL2CPP layer (URLHook + UnityWebRequest hook) — proven, no TLS; or
//   (B) terminate TLS on :9991 with a cert AND defeat the client's certificate
//       validation / pinning (e.g. hook boringssl SSL_get_verify_result -> 0,
//       SSL_set_custom_verify, plus Conscrypt/OkHttp pinning).
// This file implements the transport redirect only; it is the foundation, not a
// complete solution on its own for the https/wss endpoints.

#include "net_redirect.hpp"
#include "redirect.hpp"

#include "common.hpp"

#include <netdb.h>
#include <netinet/in.h>
#include <sys/socket.h>

#include <atomic>
#include <cstdint>

#include <android/log.h>
#include <dlfcn.h>
#include <dobby.h>

namespace eversoul::net_redirect
{
    namespace
    {
        constexpr const char *kLogTag = "libswappywrapper/net";

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
        template <class... A>
        void logi(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_INFO, kLogTag, fmt, a...); }
        template <class... A>
        void logw(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_WARN, kLogTag, fmt, a...); }
        template <class... A>
        void loge(const char *fmt, A... a) { __android_log_print(ANDROID_LOG_ERROR, kLogTag, fmt, a...); }
#pragma clang diagnostic pop

        constexpr std::uint16_t kLocalPort = static_cast<std::uint16_t>(kServerListenPort); // 9991

        // Loopback connects on these ports get bounced to the local server.
        //   80  : plain HTTP        443 : HTTPS / WSS (openapi/infodesk/session)
        //   1739: game server (live-sea*.kakaogames.com, https/wss)
        constexpr std::uint16_t kTargetPorts[] = {80, 443, 1739};

        bool is_target_port(std::uint16_t port)
        {
            for (std::uint16_t p : kTargetPorts)
                if (p == port) return true;
            return false;
        }

        // ---------- Original function pointers ----------

        using connect_fn = int (*)(int, const sockaddr *, socklen_t);
        using getaddrinfo_fn = int (*)(const char *, const char *, const addrinfo *, addrinfo **);
        // bionic: android_getaddrinfofornet(host, serv, hints, netid, mark, res)
        using gai_fornet_fn = int (*)(const char *, const char *, const addrinfo *, unsigned, unsigned, addrinfo **);

        connect_fn g_orig_connect = nullptr;
        getaddrinfo_fn g_orig_getaddrinfo = nullptr;
        gai_fornet_fn g_orig_gai_fornet = nullptr;

        std::atomic<bool> g_installed{false};

        // Build a hints copy that forces a numeric IPv4 loopback resolution.
        addrinfo loopback_hints(const addrinfo *orig)
        {
            addrinfo h{};
            if (orig) h = *orig;
            h.ai_family = AF_INET;                          // force IPv4 -> AF_INET socket
            h.ai_flags = (h.ai_flags | AI_NUMERICHOST) & ~AI_CANONNAME;
            h.ai_addrlen = 0;
            h.ai_addr = nullptr;
            h.ai_canonname = nullptr;
            h.ai_next = nullptr;
            return h;
        }

        // ---------- connect() ----------

        int hook_connect(int sockfd, const sockaddr *addr, socklen_t addrlen)
        {
            if (addr && addr->sa_family == AF_INET)
            {
                const auto *in = reinterpret_cast<const sockaddr_in *>(addr);
                std::uint16_t port = ntohs(in->sin_port);
                std::uint32_t host = ntohl(in->sin_addr.s_addr);
                bool loopback = (host >> 24) == 127; // 127.0.0.0/8

                if (loopback && port != kLocalPort && is_target_port(port))
                {
                    sockaddr_in local = *in;
                    local.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
                    local.sin_port = htons(kLocalPort);
                    logi("connect redirect: 127.0.0.1:%u -> 127.0.0.1:%u (fd=%d)", port, kLocalPort, sockfd);
                    return g_orig_connect(sockfd, reinterpret_cast<sockaddr *>(&local), sizeof(local));
                }
            }
            return g_orig_connect(sockfd, addr, addrlen);
        }

        // ---------- getaddrinfo() (native path) ----------

        int hook_getaddrinfo(const char *node, const char *service, const addrinfo *hints, addrinfo **res)
        {
            if (node && eversoul::redirect::is_target_host(node))
            {
                logi("getaddrinfo redirect: %s -> 127.0.0.1", node);
                addrinfo h = loopback_hints(hints);
                return g_orig_getaddrinfo("127.0.0.1", service, &h, res);
            }
            return g_orig_getaddrinfo(node, service, hints, res);
        }

        // ---------- android_getaddrinfofornet() (Java / libcore path) ----------

        int hook_gai_fornet(const char *node, const char *service, const addrinfo *hints,
                            unsigned netid, unsigned mark, addrinfo **res)
        {
            if (node && eversoul::redirect::is_target_host(node))
            {
                logi("android_getaddrinfofornet redirect: %s -> 127.0.0.1", node);
                addrinfo h = loopback_hints(hints);
                return g_orig_gai_fornet("127.0.0.1", service, &h, netid, mark, res);
            }
            return g_orig_gai_fornet(node, service, hints, netid, mark, res);
        }

        bool hook_symbol(const char *name, void *replacement, void **out_orig)
        {
            void *target = dlsym(RTLD_DEFAULT, name);
            if (!target)
            {
                logw("symbol not found: %s (skipped)", name);
                return false;
            }
            int ret = DobbyHook(target, replacement, out_orig);
            if (ret != 0)
            {
                loge("DobbyHook %s failed: ret=%d", name, ret);
                return false;
            }
            logi("hooked %s @ %p", name, target);
            return true;
        }

    } // anonymous namespace

    void install()
    {
        bool expected = false;
        if (!g_installed.compare_exchange_strong(expected, true))
            return;

        logi("installing transport-layer redirect -> 127.0.0.1:%u", kLocalPort);
        hook_symbol("connect", reinterpret_cast<void *>(hook_connect),
                    reinterpret_cast<void **>(&g_orig_connect));
        hook_symbol("getaddrinfo", reinterpret_cast<void *>(hook_getaddrinfo),
                    reinterpret_cast<void **>(&g_orig_getaddrinfo));
        // Java's InetAddress resolves through this; may be absent on some images.
        hook_symbol("android_getaddrinfofornet", reinterpret_cast<void *>(hook_gai_fornet),
                    reinterpret_cast<void **>(&g_orig_gai_fornet));
    }

} // namespace eversoul::net_redirect
