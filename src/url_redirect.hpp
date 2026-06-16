#pragma once
#ifdef __ANDROID__
#include <string>
#include <string_view>

namespace eversoul::url_redirect {

// HTTP 리다이렉트 대상 도메인 목록
inline constexpr std::string_view kLocalHttpBase = "http://127.0.0.1:9999";
inline constexpr std::string_view kLocalWsBase   = "ws://127.0.0.1:9999";

// Java / native 두 레이어에서 공통으로 사용하는 URL 재작성 순수 함수.
// lockincomp / DOMAINS / WS_DOMAINS 규칙 적용.
// 리다이렉트 대상이 아니면 원본 반환.
std::string redirect_url_cpp(std::string_view url);

} // namespace eversoul::url_redirect
#endif
