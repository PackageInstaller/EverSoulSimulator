#ifdef __ANDROID__
#ifdef EVERSOUL_HAR_MODE
#include "apk/redirect/url.hpp"
#include <cctype>

namespace eversoul::url_redirect {

namespace {

inline constexpr std::string_view kHarDomains[] = {
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
    "live-kr.esoul.kakaogames.com",
    "live-sea.esoul.kakaogames.com",
};

std::string_view har_path_suffix(std::string_view url) {
    auto s = url.find("://");
    if (s == std::string_view::npos) return {};
    auto slash = url.find('/', s + 3);
    if (slash == std::string_view::npos) return {};
    return url.substr(slash);
}

bool har_starts_with_ci(std::string_view url, std::string_view prefix) {
    if (url.size() < prefix.size()) return false;
    for (size_t i = 0; i < prefix.size(); ++i)
        if (std::tolower(static_cast<unsigned char>(url[i])) !=
            std::tolower(static_cast<unsigned char>(prefix[i]))) return false;
    return true;
}

} // anonymous namespace

// HAR 전용: HTTP/HTTPS만 9991로 redirect, WS/WSS는 절대 건드리지 않음.
std::string redirect_url_cpp(std::string_view url) {
    if (url.empty()) return std::string(url);

    if (har_starts_with_ci(url, "wss://") || har_starts_with_ci(url, "ws://"))
        return std::string(url);

    if (url.find(".lockincomp.com") != std::string_view::npos)
        return std::string(kLocalHttpBase) + std::string(har_path_suffix(url));

    for (auto& d : kHarDomains) {
        if (url.find(d) != std::string_view::npos) {
            if (har_starts_with_ci(url, "https://") || har_starts_with_ci(url, "http://"))
                return std::string(kLocalHttpBase) + std::string(har_path_suffix(url));
        }
    }

    return std::string(url);
}

} // namespace eversoul::url_redirect
#endif // EVERSOUL_HAR_MODE
#endif // __ANDROID__
