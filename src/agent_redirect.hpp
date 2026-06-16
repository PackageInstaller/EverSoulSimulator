#pragma once

#include <cstring>
#include <string>

namespace eversoul::agent {

// 포트 분리:
//   8080 - 기기 내부 SO 서버 (카카오 API, LIAPP device-auth, rttcheck)
//   9999 - PC EXE 서버 (ADB reverse tcp:9999 tcp:9999; 게임서버 protobuf, CDN, WebSocket)
static constexpr uint16_t kPortInternal   = 8080;
static constexpr uint16_t kPortExternal   = 9999;
static constexpr uint16_t kPortExternalWs = 9998;

static constexpr const char *kBaseInternal   = "http://127.0.0.1:8080";
static constexpr const char *kBaseExternal   = "http://127.0.0.1:9999";
static constexpr const char *kBaseExternalWs = "ws://127.0.0.1:9998";

// 카카오 SDK/API 도메인 → 기기 내부 서버 8080
static const char *kKakaoDomains[] = {
    "gc-openapi-zinny3.kakaogames.com",
    "gc-infodesk-zinny3.kakaogames.com",
    "gc-session-zinny3.kakaogames.com",
    "session-zinny3.game.kakao.com",
    "qa-gc-openapi-zinny3.kakaogames.com",
    "qa-gc-infodesk-zinny3.kakaogames.com",
    "infodesk-zinny3.game.kakao.com",
    "openapi-zinny3.game.kakao.com",
    "kauth.kakao.com",
    "accounts.kakao.com",
    nullptr,
};

// 게임 서버 / 채팅 / CDN 도메인 → PC EXE 서버 9999
static const char *kGameDomains[] = {
    "live-kr.esoul.kakaogames.com",
    "live-kr-chat.esoul.kakaogames.com",
    "live-sea.esoul.kakaogames.com",
    "live-sea-chat.esoul.kakaogames.com",
    "patch.esoul.kakaogames.com",
    "replaydn-esoul.kakaogames.com",
    nullptr,
};

// 게임 서버 WebSocket 도메인 → PC EXE 9999 (ws://)
static const char *kGameWsDomains[] = {
    "live-kr-chat.esoul.kakaogames.com",
    "live-sea-chat.esoul.kakaogames.com",
    "gc-session-zinny3.kakaogames.com",
    "session-zinny3.game.kakao.com",
    nullptr,
};

static inline std::string strip_scheme_and_port(const std::string &url,
                                                  const std::string &scheme_prefix)
{
    auto pos = url.find(scheme_prefix);
    if (pos == std::string::npos) return {};
    auto end = pos + scheme_prefix.size();
    if (end < url.size() && url[end] == ':')
        while (end < url.size() && url[end] != '/') ++end;
    return url.substr(end);
}

inline std::string redirect_url(const std::string &url)
{
    if (url.empty()) return url;

    // WebSocket 게임 서버 → 9998 (kBaseExternalWs)
    for (int i = 0; kGameWsDomains[i]; ++i) {
        const std::string dom(kGameWsDomains[i]);
        for (const char *s : {"wss://", "ws://"}) {
            std::string pq = strip_scheme_and_port(url, std::string(s) + dom);
            if (!pq.empty()) return kBaseExternalWs + pq;
        }
        for (const char *s : {"https://", "http://"}) {
            std::string pq = strip_scheme_and_port(url, std::string(s) + dom);
            if (!pq.empty()) return kBaseExternal + pq;
        }
    }

    // HTTP 게임 서버/CDN → 9999 (kBaseExternal)
    for (int i = 0; kGameDomains[i]; ++i) {
        const std::string dom(kGameDomains[i]);
        for (const char *s : {"https://", "http://"}) {
            std::string pq = strip_scheme_and_port(url, std::string(s) + dom);
            if (!pq.empty()) return kBaseExternal + pq;
        }
    }

    static constexpr const char *kSchemes[] = {"https://", "http://", nullptr};

    auto try_prefix = [&](const char *domain, const char *tag) -> std::string {
        for (int i = 0; kSchemes[i]; ++i) {
            std::string pq = strip_scheme_and_port(url, std::string(kSchemes[i]) + domain);
            if (!pq.empty()) return kBaseInternal + std::string(tag) + pq;
        }
        return {};
    };

    // LIAPP device-auth (*.lockincomp.com) → /__lockincomp<path>
    if (url.find(".lockincomp.com") != std::string::npos) {
        for (int i = 0; kSchemes[i]; ++i) {
            std::string pq = strip_scheme_and_port(url, kSchemes[i]);
            if (!pq.empty()) {
                auto slash = pq.find('/');
                std::string pp = (slash != std::string::npos) ? pq.substr(slash) : "/";
                return kBaseInternal + std::string("/__lockincomp") + pp;
            }
        }
    }

    // rttcheck-*.kakaogames.io → /__rttcheck (즉시 200)
    if (url.find("rttcheck-") != std::string::npos &&
        url.find(".kakaogames.io") != std::string::npos) {
        return std::string(kBaseInternal) + "/__rttcheck";
    }

    // 개별 카카오 도메인 → /__<tag><path?query> (8080 내부 서버)
    { auto r = try_prefix("infodesk-zinny3.game.kakao.com",    "/__kr_infodesk"); if (!r.empty()) return r; }
    { auto r = try_prefix("gc-infodesk-zinny3.kakaogames.com", "/__hk_infodesk"); if (!r.empty()) return r; }
    { auto r = try_prefix("openapi-zinny3.game.kakao.com",     "/__kr_openapi");  if (!r.empty()) return r; }
    { auto r = try_prefix("gc-openapi-zinny3.kakaogames.com",  "/__hk_openapi");  if (!r.empty()) return r; }
    { auto r = try_prefix("gp-api.kakaogames.com",             "/__gp_api");      if (!r.empty()) return r; }
    { auto r = try_prefix("gc-session-zinny3.kakaogames.com",  "/__kakao");       if (!r.empty()) return r; }
    { auto r = try_prefix("session-zinny3.game.kakao.com",     "/__kakao");       if (!r.empty()) return r; }
    { auto r = try_prefix("kauth.kakao.com",                   "/__kakao");       if (!r.empty()) return r; }
    { auto r = try_prefix("accounts.kakao.com",                "/__kakao");       if (!r.empty()) return r; }

    // 나머지 kakao/kakaogames 도메인 fallback → /__kakao<path>
    if (url.find("kakao.com") != std::string::npos ||
        url.find("kakaogames.com") != std::string::npos) {
        for (int i = 0; kSchemes[i]; ++i) {
            std::string pq = strip_scheme_and_port(url, kSchemes[i]);
            if (!pq.empty()) {
                auto slash = pq.find('/');
                std::string pp = (slash != std::string::npos) ? pq.substr(slash) : "/";
                return kBaseInternal + std::string("/__kakao") + pp;
            }
        }
    }

    return url;
}

inline uint16_t redirect_port(const char *host)
{
    if (!host) return 0;
    // WebSocket 전용 도메인 → 9998 (PC EXE WebSocket 서버)
    for (int i = 0; kGameWsDomains[i]; ++i)
        if (strcmp(host, kGameWsDomains[i]) == 0) return kPortExternalWs;
    // HTTP 게임 서버/CDN 도메인 → 9999 (PC EXE HTTP 서버)
    for (int i = 0; kGameDomains[i]; ++i)
        if (strcmp(host, kGameDomains[i]) == 0) return kPortExternal;
    // 게임 서버 서브도메인 캐치올 (*.esoul.kakaogames.com) → 9999
    if (strstr(host, ".esoul.kakaogames.com")) return kPortExternal;
    // rttcheck, kakaogames.io 핑 → 8080 (즉시 200)
    if (strstr(host, ".kakaogames.io"))    return kPortInternal;
    // LIAPP
    if (strstr(host, ".lockincomp.com"))   return kPortInternal;
    // 카카오 API (kauth.kakao.com, gc-*-zinny3.kakaogames.com, accounts.kakao.com 등)
    if (strstr(host, "kakao"))             return kPortInternal;
    return 0;
}

inline std::string read_il2cpp_string(const void *str_ptr)
{
    if (!str_ptr) return {};
    const auto *p = static_cast<const char *>(str_ptr);
    int32_t len = 0;
    __builtin_memcpy(&len, p + 0x10, 4);
    if (len <= 0 || len > 0x100000) return {};
    std::string out(static_cast<std::size_t>(len), '\0');
    const auto *chars = reinterpret_cast<const uint16_t *>(p + 0x14);
    for (int32_t i = 0; i < len; ++i)
        out[static_cast<std::size_t>(i)] = static_cast<char>(chars[i] & 0x7F);
    return out;
}

} // namespace eversoul::agent
