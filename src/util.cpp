// util.cpp — implementations of small string/time/JSON helpers.
#include "util.hpp"

#include <chrono>
#include <cctype>
#include <ctime>

namespace eversoul
{

    std::string now_string()
    {
        using namespace std::chrono;
        auto t = system_clock::to_time_t(system_clock::now());
        std::tm tm{};
#ifdef _WIN32
        localtime_s(&tm, &t);
#else
        localtime_r(&t, &tm);
#endif
        char buf[64];
        std::strftime(buf, sizeof(buf), "%Y-%m-%d %H:%M:%S", &tm);
        return buf;
    }

    std::string trim(std::string s)
    {
        while (!s.empty() && (s.back() == '\r' || s.back() == '\n' || s.back() == ' ' || s.back() == '\t'))
        {
            s.pop_back();
        }
        std::size_t start = 0;
        while (start < s.size() && (s[start] == ' ' || s[start] == '\t'))
        {
            ++start;
        }
        return s.substr(start);
    }

    std::string lower(std::string s)
    {
        for (char &c : s)
        {
            if (c >= 'A' && c <= 'Z')
                c = static_cast<char>(c - 'A' + 'a');
        }
        return s;
    }

    std::int64_t unix_ms()
    {
        using namespace std::chrono;
        return duration_cast<milliseconds>(system_clock::now().time_since_epoch()).count();
    }

    std::string json_escape(std::string_view s)
    {
        std::string out;
        out.reserve(s.size() + 16);
        for (char c : s)
        {
            switch (c)
            {
            case '\\':
                out += "\\\\";
                break;
            case '"':
                out += "\\\"";
                break;
            case '\n':
                out += "\\n";
                break;
            case '\r':
                out += "\\r";
                break;
            case '\t':
                out += "\\t";
                break;
            default:
                if (static_cast<unsigned char>(c) < 0x20)
                {
                    out += ' ';
                }
                else
                {
                    out += c;
                }
            }
        }
        return out;
    }

    std::string body_json_string(const std::string &body, const std::string &key, const std::string &fallback)
    {
        const std::string needle = "\"" + key + "\"";
        std::size_t pos = 0;
        while ((pos = body.find(needle, pos)) != std::string::npos)
        {
            std::size_t after_key = pos + needle.size();
            std::size_t colon = body.find(':', after_key);
            if (colon == std::string::npos)
                break;
            // Skip JSON array string elements like ["playerId", ...] — no ':' right after the key token.
            std::size_t gap = colon - after_key;
            if (gap > 0)
            {
                bool only_space = true;
                for (std::size_t i = after_key; i < colon; ++i)
                {
                    if (!std::isspace(static_cast<unsigned char>(body[i])))
                    {
                        only_space = false;
                        break;
                    }
                }
                if (!only_space)
                {
                    pos += needle.size();
                    continue;
                }
            }
            std::size_t quote = body.find('"', colon + 1);
            if (quote == std::string::npos)
                return fallback;
            std::size_t end = quote + 1;
            bool escaped = false;
            while (end < body.size())
            {
                char c = body[end];
                if (escaped)
                {
                    escaped = false;
                }
                else if (c == '\\')
                {
                    escaped = true;
                }
                else if (c == '"')
                {
                    return body.substr(quote + 1, end - quote - 1);
                }
                ++end;
            }
            return fallback;
        }
        return fallback;
    }

} // namespace eversoul
