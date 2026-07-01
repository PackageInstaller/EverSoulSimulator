// apk/type/log.cpp — Android logcat sink via __android_log_print.
#include "type/log.hpp"

#include "type/platform.hpp"
#include <sys/stat.h>

#include <fstream>
#include <mutex>
#include <string>

#include <android/log.h>

#include "type/common.hpp"
#include "common/util.hpp"

namespace eversoul
{
    namespace
    {
        std::mutex g_log_mutex;
        std::ofstream g_server_log;
    }

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
        __android_log_print(ANDROID_LOG_INFO, "libswappywrapper/eversoul_offline", "%s", line.c_str());
        if (g_server_log.is_open())
        {
            g_server_log << line;
            g_server_log.flush();
        }
    }

    void log_adb_line(const std::string &) {}

    void open_log_file()
    {
        mkdir("/data/data/com.kakaogames.eversoul/files", 0700);
        const std::string path = "/data/data/com.kakaogames.eversoul/files/offline_server.log";
        g_server_log.open(path, std::ios::trunc);
    }

} // namespace eversoul
