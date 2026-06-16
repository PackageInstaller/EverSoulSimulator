// logcat_process.cpp — Windows CreateProcess로 adb logcat 실행 후 stdout을 SSE 구독자에게 전달.
#include "logcat_process.hpp"
#ifndef __ANDROID__

#define WIN32_LEAN_AND_MEAN
#include <windows.h>

#include <atomic>
#include <map>
#include <mutex>
#include <string>
#include <thread>

namespace eversoul::logcat
{
    namespace
    {
        std::mutex g_mu;
        HANDLE g_proc = INVALID_HANDLE_VALUE;
        HANDLE g_read_pipe = INVALID_HANDLE_VALUE;
        std::atomic<bool> g_running{false};
        int g_next_id = 0;
        std::map<int, LineFn> g_subs;

        void broadcast(const std::string &line)
        {
            std::lock_guard lock(g_mu);
            for (auto it = g_subs.begin(); it != g_subs.end(); )
            {
                bool ok = it->second(line);
                if (!ok)
                    it = g_subs.erase(it);
                else
                    ++it;
            }
        }

        void reader_thread(HANDLE read_pipe)
        {
            char buf[4096];
            std::string partial;
            DWORD read = 0;
            while (g_running.load())
            {
                BOOL ok = ReadFile(read_pipe, buf, sizeof(buf) - 1, &read, nullptr);
                if (!ok || read == 0)
                    break;
                buf[read] = '\0';
                partial += buf;
                std::size_t pos;
                while ((pos = partial.find('\n')) != std::string::npos)
                {
                    std::string line = partial.substr(0, pos);
                    if (!line.empty() && line.back() == '\r')
                        line.pop_back();
                    broadcast(line);
                    partial.erase(0, pos + 1);
                }
            }
            if (!partial.empty())
                broadcast(partial);
            g_running = false;
        }
    }

    void start(const std::string &adb_path, const std::string &serial)
    {
        std::lock_guard lock(g_mu);
        if (g_running.load())
            return;

        HANDLE read_pipe = INVALID_HANDLE_VALUE;
        HANDLE write_pipe = INVALID_HANDLE_VALUE;
        SECURITY_ATTRIBUTES sa{sizeof(SECURITY_ATTRIBUTES), nullptr, TRUE};
        if (!CreatePipe(&read_pipe, &write_pipe, &sa, 0))
            return;
        SetHandleInformation(read_pipe, HANDLE_FLAG_INHERIT, 0);

        std::string cmd = "\"" + adb_path + "\"";
        if (!serial.empty())
            cmd += " -s " + serial;
        cmd += " logcat";

        STARTUPINFOA si{};
        si.cb = sizeof(si);
        si.dwFlags = STARTF_USESTDHANDLES;
        si.hStdOutput = write_pipe;
        si.hStdError  = write_pipe;
        si.hStdInput  = INVALID_HANDLE_VALUE;

        PROCESS_INFORMATION pi{};
        std::string cmd_buf = cmd;
        BOOL ok = CreateProcessA(
            nullptr, cmd_buf.data(), nullptr, nullptr,
            TRUE, CREATE_NO_WINDOW, nullptr, nullptr, &si, &pi);
        CloseHandle(write_pipe);
        if (!ok)
        {
            CloseHandle(read_pipe);
            return;
        }
        CloseHandle(pi.hThread);
        g_proc = pi.hProcess;
        g_read_pipe = read_pipe;
        g_running = true;
        std::thread(reader_thread, read_pipe).detach();
    }

    void stop()
    {
        HANDLE proc = INVALID_HANDLE_VALUE;
        HANDLE pipe = INVALID_HANDLE_VALUE;
        {
            std::lock_guard lock(g_mu);
            if (!g_running.load())
                return;
            g_running = false;
            proc = g_proc;
            pipe = g_read_pipe;
            g_proc = INVALID_HANDLE_VALUE;
            g_read_pipe = INVALID_HANDLE_VALUE;
        }
        if (proc != INVALID_HANDLE_VALUE)
        {
            TerminateProcess(proc, 0);
            CloseHandle(proc);
        }
        if (pipe != INVALID_HANDLE_VALUE)
            CloseHandle(pipe);
    }

    bool running()
    {
        return g_running.load();
    }

    int subscribe(LineFn fn)
    {
        std::lock_guard lock(g_mu);
        int id = ++g_next_id;
        g_subs.emplace(id, std::move(fn));
        return id;
    }

    void unsubscribe(int id)
    {
        std::lock_guard lock(g_mu);
        g_subs.erase(id);
    }
}

#endif // !__ANDROID__
