#ifdef __ANDROID__
#include "url_redirect.hpp"
#include <cctype>

namespace eversoul::url_redirect {

namespace {

// HTTP 대상 도메인 (monitor_unity_web_request.js 기준)
inline constexpr std::string_view kDomains[] = {
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

// WebSocket 대상 도메인
inline constexpr std::string_view kWsDomains[] = {
    "live-kr-chat.esoul.kakaogames.com",
    "live-sea-chat.esoul.kakaogames.com",
    "live-sea.esoul.kakaogames.com",
    "gc-session-zinny3.kakaogames.com",
};

// url에서 scheme("://") 이후 첫 경로 구분자 위치까지의 경로 suffix 반환
std::string_view path_suffix(std::string_view url) {
    auto s = url.find("://");
    if (s == std::string_view::npos) return {};
    auto host_start = s + 3;
    auto slash = url.find('/', host_start);
    if (slash == std::string_view::npos) return {};
    return url.substr(slash);
}

bool starts_with_ci(std::string_view url, std::string_view prefix) {
    if (url.size() < prefix.size()) return false;
    for (size_t i = 0; i < prefix.size(); ++i)
        if (std::tolower(static_cast<unsigned char>(url[i])) !=
            std::tolower(static_cast<unsigned char>(prefix[i]))) return false;
    return true;
}

} // anonymous namespace

std::string redirect_url_cpp(std::string_view url) {
    if (url.empty()) return std::string(url);

    // lockincomp.com → 무조건 HTTP base로 교체
    if (url.find(".lockincomp.com") != std::string_view::npos) {
        return std::string(kLocalHttpBase) + std::string(path_suffix(url));
    }

    // WS 도메인 검사
    for (auto& d : kWsDomains) {
        if (url.find(d) != std::string_view::npos) {
            if (starts_with_ci(url, "wss://") || starts_with_ci(url, "ws://")) {
                return std::string(kLocalWsBase) + std::string(path_suffix(url));
            }
            if (starts_with_ci(url, "https://") || starts_with_ci(url, "http://")) {
                return std::string(kLocalHttpBase) + std::string(path_suffix(url));
            }
        }
    }

    // HTTP 도메인 검사
    for (auto& d : kDomains) {
        if (url.find(d) != std::string_view::npos) {
            if (starts_with_ci(url, "https://") || starts_with_ci(url, "http://")) {
                return std::string(kLocalHttpBase) + std::string(path_suffix(url));
            }
        }
    }

    return std::string(url);
}

} // namespace eversoul::url_redirect
#endif
