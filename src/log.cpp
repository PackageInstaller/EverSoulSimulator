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
#endif

namespace eversoul
{
    namespace
    {
        std::mutex g_log_mutex;
        std::ofstream g_server_log;  // logs/server.log
        std::ofstream g_adb_log;     // logs/adb.log
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
        std::cout << line;
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
#endif
    }

} // namespace eversoul
