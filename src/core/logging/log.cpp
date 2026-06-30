// log.cpp — 4채널 로깅: server.log / runtime.log / runtime_net.log / adb.log
#include "log.hpp"

#include "platform.hpp"
#include <sys/stat.h>

#include <fstream>
#include <mutex>
#include <string>

#include "common.hpp"
#include "sse_log.hpp"
#include "util.hpp"

#include <iostream>
#ifdef _WIN32
#include <io.h>
#endif

namespace eversoul
{
    namespace
    {
        std::mutex g_log_mutex;
        std::ofstream g_server_log;      // logs/server.log      — 시스템 이벤트
        std::ofstream g_runtime_log;     // logs/runtime.log     — 게임 API 요청/응답
        std::ofstream g_runtime_net_log; // logs/runtime_net.log — CDN·upstream·패치
        std::ofstream g_adb_log;         // logs/adb.log         — ADB/로그캣
        bool g_ansi_enabled = false;

        bool is_runtime_tag(const std::string& tag)
        {
            return tag == "REQUEST" || tag == "RESPONSE" || tag == "MOCK" ||
                   tag == "MOCK_GAME" || tag == "WS" || tag == "OK" ||
                   tag == "INJECT" || tag == "BLOCK" || tag == "HOOK";
        }
        bool is_net_tag(const std::string& tag)
        {
            return tag == "CDN" || tag == "PROXY" || tag == "NET" || tag == "HAR";
        }

        struct TagMeta { const char* ansi; const char* kr; };
        TagMeta tag_meta(const std::string& tag)
        {
            if (tag == "ERROR")    return {"\033[1;91m",  "오류"};
            if (tag == "WARN")     return {"\033[93m",    "경고"};
            if (tag == "REQUEST")  return {"\033[38;5;75m","요청"};
            if (tag == "RESPONSE") return {"\033[2;37m",  "응답"};
            if (tag == "WS")       return {"\033[95m",    "소켓"};
            if (tag == "START")    return {"\033[1;92m",  "시작"};
            if (tag == "STOP")     return {"\033[91m",    "종료"};
            if (tag == "MOCK")     return {"\033[1;32m",  "모크"};
            if (tag == "ORM")      return {"\033[35m",    "DB"};
            if (tag == "HOOK")     return {"\033[1;93m",  "훅"};
            if (tag == "INJECT")   return {"\033[1;93m",  "주입"};
            if (tag == "BLOCK")    return {"\033[1;91m",  "차단"};
            if (tag == "OK")       return {"\033[1;92m",  "성공"};
            if (tag == "CDN")      return {"\033[38;5;214m", "CDN"};
            if (tag == "PROXY")    return {"\033[38;5;208m", "프록시"};
            if (tag == "NET")      return {"\033[38;5;220m", "네트워크"};
            if (tag == "HAR")      return {"\033[38;5;220m", "HAR"};
            if (tag == "MOCK_GAME") return {"\033[1;36m", "게임"};
            return {"\033[37m", tag.c_str()};
        }

        char adb_log_level(const std::string& text)
        {
            // logcat: "MM-DD HH:MM:SS.ms PID TID L TAG: ..."
            std::size_t pos = 0;
            for (int t = 0; t < 4; ++t) {
                while (pos < text.size() && text[pos] == ' ') ++pos;
                while (pos < text.size() && text[pos] != ' ') ++pos;
            }
            while (pos < text.size() && text[pos] == ' ') ++pos;
            return (pos < text.size()) ? text[pos] : '\0';
        }

        const char* adb_level_ansi(char lvl)
        {
            switch (lvl) {
                case 'F': return "\033[1;91m";
                case 'E': return "\033[91m";
                case 'W': return "\033[93m";
                case 'I': return "\033[37m";
                case 'D': return "\033[90m";
                case 'V': return "\033[2;37m";
                default:  return "\033[90m";
            }
        }
    } // namespace

    std::string clip_body(const std::string &body)
    {
        if (body.size() <= kMaxLogBody)
            return body;
        return body.substr(0, kMaxLogBody) + "\n<truncated " + std::to_string(body.size()) + " bytes>";
    }

    void log_line(std::uint64_t id, const std::string &tag, const std::string &text)
    {
        std::lock_guard<std::mutex> lock(g_log_mutex);
        std::string ts = now_string();
        std::string line = "[" + ts + "][#" + std::to_string(id) + "][" + tag + "] " + text + "\n";
        if (g_ansi_enabled) {
            auto meta = tag_meta(tag);
            const bool prominent = tag == "MOCK" || tag == "MOCK_GAME" ||
                                   tag == "OK" || tag == "INJECT" || tag == "BLOCK";
            std::cout << "\033[2;37m[" << ts << "][#" << std::to_string(id) << "]\033[0m"
                      << meta.ansi << "[" << meta.kr << "]\033[0m "
                      << (tag == "ERROR"  ? "\033[91m"   :
                          prominent       ? "\033[1;37m" : "\033[37m") << text << "\033[0m\n";
        } else {
            std::cout << line;
        }
        std::cout.flush();
        if (is_runtime_tag(tag)) {
            if (g_runtime_log.is_open())     { g_runtime_log << line; g_runtime_log.flush(); }
        } else if (is_net_tag(tag)) {
            if (g_runtime_net_log.is_open()) { g_runtime_net_log << line; g_runtime_net_log.flush(); }
        } else {
            if (g_server_log.is_open())      { g_server_log << line; g_server_log.flush(); }
        }
        std::string json = "{\"timestamp\":\"" + ts + "\",\"id\":" + std::to_string(id) +
                           ",\"tag\":\"" + json_escape(tag) + "\",\"text\":\"" + json_escape(text) + "\"}";
        sse_log::broadcast_server(json);
    }

    void log_net_line(std::uint64_t id, const std::string &tag, const std::string &text)
    {
        log_line(id, tag, text);
    }

    void log_adb_line(const std::string &text)
    {
        std::lock_guard<std::mutex> lock(g_log_mutex);
        std::string ts = now_string();
        if (g_ansi_enabled) {
            char lvl = adb_log_level(text);
            std::cout << adb_level_ansi(lvl) << text << "\033[0m\n";
        } else {
            std::cout << text << "\n";
        }
        std::cout.flush();
        if (g_adb_log.is_open()) { g_adb_log << text << "\n"; g_adb_log.flush(); }
        std::string json = "{\"timestamp\":\"" + ts + "\",\"text\":\"" + json_escape(text) + "\"}";
        sse_log::broadcast_adb(json);
    }

    void open_log_file()
    {
        platform_mkdir("logs");
        g_server_log.open("logs/server.log",          std::ios::trunc);
        g_runtime_log.open("logs/runtime.log",        std::ios::trunc);
        g_runtime_net_log.open("logs/runtime_net.log", std::ios::trunc);
        g_adb_log.open("logs/adb.log",                std::ios::trunc);
#ifdef _WIN32
        g_ansi_enabled = (_isatty(_fileno(stdout)) != 0);
#else
        g_ansi_enabled = (isatty(fileno(stdout)) != 0);
#endif
    }

} // namespace eversoul
