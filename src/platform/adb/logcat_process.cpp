// logcat_process.cpp — Windows CreateProcess로 adb logcat 실행 후 stdout을 SSE 구독자에게 전달.
#include "logcat_process.hpp"

#include <windows.h>

#include <atomic>
#include <chrono>
#include <fstream>
#include <iostream>
#include <map>
#include <mutex>
#include <string>
#include <thread>

#include "log.hpp"

namespace eversoul::logcat
{
    namespace
    {
        std::mutex g_mu;
        HANDLE g_proc = INVALID_HANDLE_VALUE;
        HANDLE g_read_pipe = INVALID_HANDLE_VALUE;
        std::atomic<bool> g_running{false};
        std::atomic<bool> g_stop_requested{false};
        std::string g_saved_adb_path;
        std::string g_saved_serial;
        int g_next_id = 0;
        std::map<int, LineFn> g_subs;

        bool is_eversoul_line(const std::string &line)
        {
            return line.find("com.kakaogames.eversoul") != std::string::npos ||
                   line.find("libswappywrapper") != std::string::npos;
        }

        void format_and_print_runtime_dbg(const std::string &line)
        {
            bool is_tbl = (line.find("Tables_json") != std::string::npos ||
                           line.find("tbl_") != std::string::npos ||
                           line.find(".json") != std::string::npos ||
                           line.find("Table") != std::string::npos);
            bool is_bundle = (line.find("catalog_eversoul") != std::string::npos ||
                              line.find(".bundle") != std::string::npos ||
                              line.find("Addressables") != std::string::npos ||
                              line.find("AssetBundle") != std::string::npos);
            bool is_meta = (line.find("Zinny") != std::string::npos ||
                            line.find("Kakao") != std::string::npos ||
                            line.find("AccessToken") != std::string::npos ||
                            line.find("login") != std::string::npos ||
                            line.find("zd3") != std::string::npos ||
                            line.find("agreement") != std::string::npos ||
                            line.find("maintenance") != std::string::npos ||
                            line.find("auth://") != std::string::npos);

            if (!is_tbl && !is_bundle && !is_meta)
                return;

            std::string category;
            std::string ansi_color;
            if (is_tbl) {
                category = "TBL QUERY";
                ansi_color = "\033[1;36m"; // Bold Cyan
            } else if (is_bundle) {
                category = "BUNDLE/CATALOG";
                ansi_color = "\033[1;32m"; // Bold Green
            } else {
                category = "GLOBAL META/AUTH";
                ansi_color = "\033[1;33m"; // Bold Yellow
            }

            std::string dbg_output = "\033[1;35m[RUNTIME DBG - " + category + "]\033[0m " + ansi_color + line + "\033[0m";
            std::cout << dbg_output << std::endl;

            static std::ofstream dbg_file;
            static std::mutex dbg_file_mu;
            std::lock_guard<std::mutex> lock(dbg_file_mu);
            if (!dbg_file.is_open())
            {
                dbg_file.open("logs/runtime_debug.log", std::ios::app);
            }
            if (dbg_file.is_open())
            {
                dbg_file << "[RUNTIME DBG - " << category << "] " << line << "\n";
                dbg_file.flush();
            }
        }

        void broadcast(const std::string &line)
        {
            if (!is_eversoul_line(line))
                return;
            eversoul::log_adb_line(line);
            format_and_print_runtime_dbg(line);
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

            if (!g_stop_requested.load())
            {
                std::string adb_path, serial;
                {
                    std::lock_guard lock(g_mu);
                    adb_path = g_saved_adb_path;
                    serial   = g_saved_serial;
                }
                if (!adb_path.empty())
                {
                    std::thread([adb_path, serial]()
                    {
                        std::this_thread::sleep_for(std::chrono::seconds(2));
                        start(adb_path, serial);
                    }).detach();
                }
            }
        }
    }

    void start(const std::string &adb_path, const std::string &serial)
    {
        std::lock_guard lock(g_mu);
        if (g_running.load())
            return;
        g_stop_requested = false;
        g_saved_adb_path = adb_path;
        g_saved_serial   = serial;

        {
            std::string clr_cmd = "\"" + adb_path + "\"";
            if (!serial.empty())
                clr_cmd += " -s " + serial;
            clr_cmd += " logcat -c";
            STARTUPINFOA clr_si{};
            clr_si.cb = sizeof(clr_si);
            PROCESS_INFORMATION clr_pi{};
            if (CreateProcessA(nullptr, clr_cmd.data(), nullptr, nullptr,
                               FALSE, CREATE_NO_WINDOW, nullptr, nullptr, &clr_si, &clr_pi))
            {
                WaitForSingleObject(clr_pi.hProcess, 2000);
                CloseHandle(clr_pi.hThread);
                CloseHandle(clr_pi.hProcess);
            }
        }

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
            g_stop_requested = true;
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

    void start_in_new_console(const std::string &adb_path, const std::string &serial)
    {
        if (adb_path.empty())
            return;
        std::string cmd = "\"" + adb_path + "\"";
        if (!serial.empty())
            cmd += " -s " + serial;
        cmd += " logcat";

        STARTUPINFOA si{};
        si.cb = sizeof(si);
        PROCESS_INFORMATION pi{};
        std::string cmd_buf = cmd;
        BOOL ok = CreateProcessA(
            nullptr, cmd_buf.data(), nullptr, nullptr,
            FALSE, CREATE_NEW_CONSOLE, nullptr, nullptr, &si, &pi);
        if (ok)
        {
            CloseHandle(pi.hThread);
            CloseHandle(pi.hProcess);
        }
    }
}
