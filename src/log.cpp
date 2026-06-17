// log.cpp — logging sink: Server 채널(game API) + Adb 채널(adb/logcat) 분리.
#include "log.hpp"

#include "platform.hpp"
#include <sys/stat.h>

#include <fstream>
#include <mutex>
#include <string>

#include "common.hpp"
#include "util.hpp"
#ifndef __ANDROID__
#include "sse_log.hpp"
#endif

#ifdef __ANDROID__
#include <android/log.h>
#else
#include <iostream>
#ifdef _WIN32
#include <io.h>
#endif
#endif

namespace eversoul
{
    namespace
    {
        std::mutex g_log_mutex;
        std::ofstream g_server_log;  // logs/server.log
        std::ofstream g_adb_log;     // logs/adb.log
        bool g_ansi_enabled = false;

        const char* tag_ansi(const std::string& tag)
        {
            if (tag == "ERROR")                       return "\033[1;91m";
            if (tag == "WARN")                        return "\033[93m";
            if (tag == "REQUEST")                     return "\033[96m";
            if (tag == "RESPONSE")                    return "\033[2;96m";
            if (tag == "WS")                          return "\033[95m";
            if (tag == "START" || tag == "STOP")      return "\033[92m";
            return "\033[37m";
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
#ifdef __ANDROID__
        __android_log_print(ANDROID_LOG_INFO, "libswappywrapper/eversoul_offline", "%s", line.c_str());
#else
        if (g_ansi_enabled) {
            std::cout << "\033[2;37m[" << ts << "][#" << std::to_string(id) << "]\033[0m"
                      << tag_ansi(tag) << "[" << tag << "]\033[0m "
                      << (tag == "ERROR" ? "\033[91m" : "\033[37m") << text << "\033[0m\n";
        } else {
            std::cout << line;
        }
        std::cout.flush();
        if (g_server_log.is_open()) { g_server_log << line; g_server_log.flush(); }
        std::string json = "{\"timestamp\":\"" + ts + "\",\"id\":" + std::to_string(id) +
                           ",\"tag\":\"" + json_escape(tag) + "\",\"text\":\"" + json_escape(text) + "\"}";
        sse_log::broadcast_server(json);
#endif
    }

    void log_adb_line(const std::string &text)
    {
#ifndef __ANDROID__
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
#endif
    }

    void open_log_file()
    {
#ifdef __ANDROID__
        mkdir("/data/data/com.kakaogames.eversoul/files", 0700);
        const std::string path = "/data/data/com.kakaogames.eversoul/files/offline_server.log";
        g_server_log.open(path, std::ios::trunc);
#else
        platform_mkdir("logs");
        g_server_log.open("logs/server.log", std::ios::trunc);
        g_adb_log.open("logs/adb.log", std::ios::trunc);
#ifdef _WIN32
        g_ansi_enabled = (_isatty(_fileno(stdout)) != 0);
#else
        g_ansi_enabled = (isatty(fileno(stdout)) != 0);
#endif
#endif
    }

} // namespace eversoul
