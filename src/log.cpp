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
            if (tag == "\xec\x98\xa4\xeb\xa5\x98"  || tag == "ERROR")    return "\033[48;5;94m\033[38;5;203m\033[1m";
            if (tag == "\xea\xb2\xbd\xea\xb3\xa0"  || tag == "WARN")     return "\033[48;5;94m\033[38;5;220m\033[1m";
            if (tag == "\xec\x9a\x94\xec\xb2\xad"  || tag == "REQUEST")  return "\033[48;5;94m\033[38;5;214m\033[1m";
            if (tag == "\xec\x9d\x91\xeb\x8b\xb5"  || tag == "RESPONSE") return "\033[48;5;94m\033[38;5;222m\033[1m";
            if (tag == "\xec\x9b\xb9\xec\x86\x8c\xec\xbc\x93" || tag == "WS") return "\033[48;5;94m\033[38;5;218m\033[1m";
            if (tag == "\xec\x8b\x9c\xec\x9e\x91"  || tag == "START")   return "\033[48;5;94m\033[38;5;156m\033[1m";
            if (tag == "\xec\xa2\x85\xeb\xa3\x8c"  || tag == "STOP")    return "\033[48;5;94m\033[38;5;210m\033[1m";
            if (tag == "\xec\xa4\x91\xea\xb3\x84")                       return "\033[48;5;94m\033[38;5;87m\033[1m";
            return "\033[48;5;94m\033[38;5;230m\033[1m";
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
            std::cout << "\033[48;5;94m\033[38;5;180m[" << ts << "][#" << std::to_string(id) << "]\033[0m"
                      << tag_ansi(tag) << "[" << tag << "]\033[0m"
                      << "\033[48;5;94m\033[38;5;230m " << text << "\033[0m\n";
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
