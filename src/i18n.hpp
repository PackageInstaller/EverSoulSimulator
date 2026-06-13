#pragma once

#include <string>

// Compile-time key resolution matching tools/i18n.py key schema.
// Keys mirror the Python dict exactly so tooling stays in sync.
// T(key) returns the current-language string; T(key, pairs...) formats it.
// Supported langs: ko (default), en, zh.

namespace eversoul::i18n
{

enum class Lang { Korean, English, Chinese };

void        set_lang(Lang lang);
void        set_lang(const std::string& code);   // "ko" | "en" | "zh"
Lang        current_lang();
std::string lang_code();                          // "ko" | "en" | "zh"

// Returns the localized string for key.  Unknown key → key itself.
std::string T(const std::string& key);

// Formats the localized string: every {placeholder} is replaced.
// Args must be passed as pairs: T("key", "placeholder", value, ...).
// Implemented as a variadic template below.

namespace detail
{
    std::string format(std::string tpl,
                       const std::string* keys,
                       const std::string* vals,
                       std::size_t count);
} // namespace detail

template <typename... KVPairs>
std::string T(const std::string& key, KVPairs&&... pairs)
{
    static_assert(sizeof...(pairs) % 2 == 0, "T() requires key-value pairs");
    std::string raw = T(key);
    constexpr std::size_t n = sizeof...(pairs) / 2;
    std::string ks[n], vs[n];
    std::size_t idx = 0;
    bool is_key = true;
    auto fill = [&](auto&& v) {
        if (is_key) ks[idx]   = std::string(v);
        else      { vs[idx++] = std::string(v); }
        is_key = !is_key;
    };
    (fill(std::forward<KVPairs>(pairs)), ...);
    return detail::format(std::move(raw), ks, vs, n);
}

// Returns all strings as a JSON object for the web UI (keyed by "ko"/"en"/"zh").
std::string all_strings_json();

} // namespace eversoul::i18n
