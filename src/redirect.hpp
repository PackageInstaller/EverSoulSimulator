// redirect.hpp — URL redirect logic shared between Java-layer (LSPlant) and
// native-layer (IL2CPP) hooks. Mirrors monitor_unity_web_request.js config.
#pragma once

#include <string>
#include <string_view>
#include <vector>

namespace eversoul::redirect
{

    // Check if a URL is a known target domain for redirect.
    bool is_interesting_url(std::string_view url);

    // Check if a bare hostname (no scheme, e.g. "gc-openapi-zinny3.kakaogames.com")
    // belongs to a redirect target. Used by the transport-layer connect/getaddrinfo
    // hooks, which only ever see hostnames/IPs, never full URLs.
    bool is_target_host(std::string_view host);

    // Rewrite a URL to point at the local offline server (127.0.0.1:9991).
    // Returns the original string if no rewrite applies.
    std::string rewrite_url(std::string_view url);

    // HTTP targets
    inline const std::vector<std::string_view> kDomains = {
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

    // WebSocket targets
    inline const std::vector<std::string_view> kWsDomains = {
        "live-kr-chat.esoul.kakaogames.com",
        "live-sea-chat.esoul.kakaogames.com",
        "live-sea.esoul.kakaogames.com",
        "gc-session-zinny3.kakaogames.com",
        "session-zinny3.game.kakao.com",
    };

    inline constexpr std::string_view kLocalHttpBase = "http://127.0.0.1:9991";
    inline constexpr std::string_view kLocalWsBase = "ws://127.0.0.1:9991";

} // namespace eversoul::redirect
