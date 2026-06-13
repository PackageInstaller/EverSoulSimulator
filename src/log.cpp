#include "log.hpp"

#include <cstdio>
#include <mutex>
#include <string>
#include <sys/stat.h>

#include "admin_log_sink.hpp"
#include "common.hpp"
#include "util.hpp"

#ifdef _WIN32
#include <direct.h>
#include <windows.h>
#endif

#ifdef __ANDROID__
#include <android/log.h>
#include <pthread.h>
#else
#include <iostream>
#endif

namespace eversoul
{
    namespace
    {
        std::mutex g_log_mutex;
        FILE      *g_server_fp = nullptr;

#ifdef __ANDROID__
        static constexpr const char *kDataDir    = "/data/data/com.kakaogames.eversoul/files";
        static constexpr const char *kServerLog  = "/data/data/com.kakaogames.eversoul/files/server.log";
        static constexpr const char *kLogcatLog  = "/data/data/com.kakaogames.eversoul/files/logcat.log";

        static void *logcat_capture_thread(void *)
        {
            FILE *out = fopen(kLogcatLog, "w");
            if (!out) return nullptr;
            FILE *lc = popen("logcat -v threadtime", "r");
            if (!lc) { fclose(out); return nullptr; }
            char buf[1024];
            while (fgets(buf, sizeof(buf), lc))
            {
                fputs(buf, out);
                fflush(out);
            }
            pclose(lc);
            fclose(out);
            return nullptr;
        }
#endif
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
        std::string ts   = now_string();
        std::string line = "[" + ts + "][#" + std::to_string(id) + "][" + tag + "] " + text + "\n";
#ifdef __ANDROID__
        __android_log_print(ANDROID_LOG_INFO, "eversoul_offline", "%s", line.c_str());
#else
        std::cout << line;
        std::cout.flush();
#endif
        if (g_server_fp)
        {
            fputs(line.c_str(), g_server_fp);
            fflush(g_server_fp);
        }
        admin::log_sink_push(admin::LogEntry{id, ts, tag, text});
    }

    void open_log_file()
    {
#ifdef __ANDROID__
        mkdir(kDataDir, 0700);
        g_server_fp = fopen(kServerLog, "w");
        pthread_t thr;
        pthread_create(&thr, nullptr, logcat_capture_thread, nullptr);
        pthread_detach(thr);
#elif defined(_WIN32)
        SetConsoleOutputCP(CP_UTF8);
        SetConsoleCP(CP_UTF8);
        _mkdir("logs");
        g_server_fp = fopen("logs/server.log", "w");
#else
        mkdir("logs", 0755);
        g_server_fp = fopen("logs/server.log", "w");
#endif
    }

} // namespace eversoul
