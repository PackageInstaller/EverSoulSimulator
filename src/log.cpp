// log.cpp — logging sink shared by the server and router.
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
        std::ofstream g_log_file;
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
#endif
        if (g_log_file.is_open())
        {
            g_log_file << line;
            g_log_file.flush();
        }
#ifndef __ANDROID__
        std::string json = "{\"timestamp\":\"" + ts + "\",\"id\":" + std::to_string(id) +
                           ",\"tag\":\"" + json_escape(tag) + "\",\"text\":\"" + json_escape(text) + "\"}";
        sse_log::broadcast(json);
#endif
    }

    void open_log_file()
    {
#ifdef __ANDROID__
        mkdir("/data/data/com.kakaogames.eversoul/files", 0700);
        const std::string path = "/data/data/com.kakaogames.eversoul/files/offline_server.log";
#else
        platform_mkdir("logs");
        const std::string path = "logs/offline_server.log";
#endif
        g_log_file.open(path, std::ios::trunc);
    }

} // namespace eversoul
