// adb_runner.cpp — ADB 명령 동기 실행 및 로그 브로드캐스트 구현.
#include "adb_runner.hpp"
#ifndef __ANDROID__

#include <windows.h>
#include <shellapi.h>

#include <map>
#include <mutex>
#include <sstream>
#include <string>
#include <vector>

#include "log.hpp"

namespace eversoul::adb_runner
{
    namespace
    {
        std::mutex g_mu;
        std::string g_adb_path;
        std::string g_serial;
        int g_next_id = 0;
        std::map<int, LineFn> g_subs;

        void broadcast(const std::string &line)
        {
            eversoul::log_adb_line(line);
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

        // CreateProcess로 adb를 실행하고 stdout+stderr를 문자열로 반환.
        std::string exec_adb(const std::string &adb, const std::vector<std::string> &args)
        {
            if (adb.empty())
                return "[adb path not set]";

            std::string cmd = "\"" + adb + "\"";
            for (const auto &a : args)
                cmd += " " + a;

            HANDLE read_pipe = INVALID_HANDLE_VALUE;
            HANDLE write_pipe = INVALID_HANDLE_VALUE;
            SECURITY_ATTRIBUTES sa{sizeof(SECURITY_ATTRIBUTES), nullptr, TRUE};
            if (!CreatePipe(&read_pipe, &write_pipe, &sa, 0))
                return "[CreatePipe failed]";
            SetHandleInformation(read_pipe, HANDLE_FLAG_INHERIT, 0);

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
                return "[CreateProcess failed]";
            }
            CloseHandle(pi.hThread);

            std::string out;
            char buf[4096];
            DWORD rd = 0;
            while (ReadFile(read_pipe, buf, sizeof(buf) - 1, &rd, nullptr) && rd > 0)
            {
                buf[rd] = '\0';
                out += buf;
            }
            CloseHandle(read_pipe);
            WaitForSingleObject(pi.hProcess, 5000);
            CloseHandle(pi.hProcess);
            return out;
        }
    }

    void set_adb_path(const std::string &path) { std::lock_guard lock(g_mu); g_adb_path = path; }
    std::string adb_path() { std::lock_guard lock(g_mu); return g_adb_path; }

    void set_serial(const std::string &s) { std::lock_guard lock(g_mu); g_serial = s; }
    std::string serial() { std::lock_guard lock(g_mu); return g_serial; }

    std::string run(const std::vector<std::string> &args)
    {
        std::string adb, ser;
        {
            std::lock_guard lock(g_mu);
            adb = g_adb_path;
            ser = g_serial;
        }

        std::vector<std::string> full_args;
        if (!ser.empty()) { full_args.push_back("-s"); full_args.push_back(ser); }
        full_args.insert(full_args.end(), args.begin(), args.end());

        std::string cmd_str = "adb";
        for (const auto &a : full_args) { cmd_str += " "; cmd_str += a; }
        broadcast("$ " + cmd_str);

        std::string result = exec_adb(adb, full_args);
        // 각 줄을 구독자에게 전송
        std::istringstream ss(result);
        std::string line;
        while (std::getline(ss, line))
        {
            if (!line.empty() && line.back() == '\r')
                line.pop_back();
            broadcast(line);
        }
        return result;
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

    void start_server()
    {
        std::string adb;
        { std::lock_guard lock(g_mu); adb = g_adb_path; }
        if (adb.empty())
            return;
        SHELLEXECUTEINFOA sei{};
        sei.cbSize      = sizeof(sei);
        sei.fMask       = SEE_MASK_NOCLOSEPROCESS;
        sei.lpVerb      = "runas";
        sei.lpFile      = adb.c_str();
        sei.lpParameters = "start-server";
        sei.nShow       = SW_HIDE;
        if (ShellExecuteExA(&sei) && sei.hProcess && sei.hProcess != INVALID_HANDLE_VALUE)
        {
            WaitForSingleObject(sei.hProcess, 5000);
            CloseHandle(sei.hProcess);
        }
    }

    void kill_server()
    {
        std::string adb;
        { std::lock_guard lock(g_mu); adb = g_adb_path; }
        if (!adb.empty())
            exec_adb(adb, {"kill-server"});
    }
}

#endif // !__ANDROID__
