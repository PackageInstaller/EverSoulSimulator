// redirect.cpp — URL redirect logic implementation.
// Handles LIAPP lockincomp.com, Kakao domains, and WebSocket domains.
#include "redirect.hpp"

#include <algorithm>
#include <regex>
#include <string>

#include <android/log.h>

namespace eversoul::redirect
{
    namespace
    {
        constexpr const char *kLogTag = "libswappywrapper/redirect";

        void logi(const char *msg) { __android_log_print(ANDROID_LOG_INFO, kLogTag, "%s", msg); }

        // Construct a case-insensitive regex for LIAPP's *.lockincomp.com pattern.
        std::regex make_lockincomp_regex()
        {
            return std::regex(R"(https?://[a-zA-Z0-9-]+\.lockincomp\.com(:\d+)?)",
                              std::regex::icase | std::regex::optimize);
        }

        // Build a regex for a specific WebSocket domain: scheme://domain[:port]
        std::regex make_ws_regex(std::string_view domain)
        {
            std::string escaped(domain);
            // Escape dots for regex
            for (size_t i = 0; i < escaped.size(); ++i)
            {
                if (escaped[i] == '.') escaped.insert(i++, "\\");
            }
            std::string pattern = "wss?://" + escaped + "(:\\d+)?";
            return std::regex(pattern, std::regex::icase | std::regex::optimize);
        }

        std::regex make_http_regex(std::string_view domain)
        {
            std::string escaped(domain);
            for (size_t i = 0; i < escaped.size(); ++i)
            {
                if (escaped[i] == '.') escaped.insert(i++, "\\");
            }
            std::string pattern = "https?://" + escaped + "(:\\d+)?";
            return std::regex(pattern, std::regex::icase | std::regex::optimize);
        }
    } // anonymous namespace

    bool is_interesting_url(std::string_view url)
    {
        if (url.empty()) return false;

        // 127.0.0.1:9999 is our own server — always interesting for logging but never needs redirect
        if (url.find("127.0.0.1:9999") != std::string_view::npos) return true;
        if (url.find(".lockincomp.com") != std::string_view::npos) return true;

        for (auto &d : kDomains)
        {
            if (url.find(d) != std::string_view::npos) return true;
        }
        for (auto &d : kWsDomains)
        {
            if (url.find(d) != std::string_view::npos) return true;
        }
        return false;
    }

    bool is_target_host(std::string_view host)
    {
        if (host.empty()) return false;
        // LIAPP device-auth posts to a random *.lockincomp.com subdomain.
        if (host.find(".lockincomp.com") != std::string_view::npos) return true;
        for (auto &d : kDomains)
        {
            if (host.find(d) != std::string_view::npos) return true;
        }
        for (auto &d : kWsDomains)
        {
            if (host.find(d) != std::string_view::npos) return true;
        }
        return false;
    }

    std::string rewrite_url(std::string_view url)
    {
        std::string out(url);

        // LIAPP lockincomp.com — any subdomain
        if (out.find(".lockincomp.com") != std::string::npos)
        {
            static const std::regex lockincomp_re = make_lockincomp_regex();
            std::string before = out;
            out = std::regex_replace(out, lockincomp_re, std::string(kLocalHttpBase));
            if (out != before)
            {
                logi(("lockincomp: " + before + " -> " + out).c_str());
            }
            return out;
        }

        // WebSocket domains first (they have higher specificity)
        for (auto &domain : kWsDomains)
        {
            if (out.find(domain) != std::string::npos)
            {
                std::regex ws_re = make_ws_regex(domain);
                std::regex http_re = make_http_regex(domain);
                out = std::regex_replace(out, ws_re, std::string(kLocalWsBase));
                out = std::regex_replace(out, http_re, std::string(kLocalHttpBase));
            }
        }

        // HTTP domains — simple string replacement
        for (auto &domain : kDomains)
        {
            std::string https_prefix = "https://" + std::string(domain);
            std::string http_prefix = "http://" + std::string(domain);
            for (size_t pos = 0; (pos = out.find(https_prefix, pos)) != std::string::npos;)
            {
                out.replace(pos, https_prefix.size(), kLocalHttpBase);
            }
            for (size_t pos = 0; (pos = out.find(http_prefix, pos)) != std::string::npos;)
            {
                out.replace(pos, http_prefix.size(), kLocalHttpBase);
            }
        }

        if (out != url && !url.empty())
        {
            std::string msg = std::string("redirect: ") + std::string(url) + " -> " + out;
            logi(msg.c_str());
        }

        return out;
    }

} // namespace eversoul::redirect
