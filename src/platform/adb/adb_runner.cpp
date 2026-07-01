// adb_runner.cpp — ADB 명령 동기 실행 및 로그 브로드캐스트 구현.
#include "adb_runner.hpp"

#include <windows.h>

#include <map>
#include <mutex>
#include <sstream>
#include <string>
#include <utility>
#include <vector>

#include "log.hpp"
#include "json.hpp"
#include "ini_store.hpp"
#include "common.hpp"
#include "util.hpp"

namespace eversoul::adb_runner
{
    namespace
    {
        std::string json_str_array(const std::vector<std::string> &v)
        {
            std::string r = "[";
            for (std::size_t i = 0; i < v.size(); ++i)
            {
                if (i) r += ",";
                r += "\"" + json_escape(v[i]) + "\"";
            }
            return r + "]";
        }

        std::string json_int_string_or_default(const std::string &value, int fallback)
        {
            if (value.empty())
                return std::to_string(fallback);
            for (char c : value)
            {
                if (!std::isdigit(static_cast<unsigned char>(c)))
                    return std::to_string(fallback);
            }
            const int parsed = std::atoi(value.c_str());
            return std::to_string(parsed);
        }

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

        std::string exec_adb(const std::string &adb, const std::vector<std::string> &args, int timeout_ms = 10000)
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

            HANDLE hProcWatch = INVALID_HANDLE_VALUE;
            DuplicateHandle(GetCurrentProcess(), pi.hProcess,
                            GetCurrentProcess(), &hProcWatch,
                            0, FALSE, DUPLICATE_SAME_ACCESS);

            DWORD deadline = static_cast<DWORD>(timeout_ms);
            HANDLE watchdog = CreateThread(nullptr, 0, [](LPVOID p) -> DWORD {
                auto* pair = static_cast<std::pair<HANDLE, DWORD>*>(p);
                if (WaitForSingleObject(pair->first, pair->second) == WAIT_TIMEOUT)
                    TerminateProcess(pair->first, 1);
                CloseHandle(pair->first);
                delete pair;
                return 0;
            }, new std::pair<HANDLE, DWORD>{hProcWatch, deadline}, 0, nullptr);

            std::string out;
            char buf[65536];
            DWORD rd = 0;
            while (ReadFile(read_pipe, buf, sizeof(buf), &rd, nullptr) && rd > 0)
                out.append(buf, rd);
            CloseHandle(read_pipe);

            WaitForSingleObject(pi.hProcess, INFINITE);
            CloseHandle(pi.hProcess);
            if (watchdog) CloseHandle(watchdog);
            return out;
        }
    }

    void set_adb_path(const std::string &path) { std::lock_guard lock(g_mu); g_adb_path = path; }
    std::string adb_path() { std::lock_guard lock(g_mu); return g_adb_path; }

    void set_serial(const std::string &s) { std::lock_guard lock(g_mu); g_serial = s; }
    std::string serial() { std::lock_guard lock(g_mu); return g_serial; }

    std::string run_for_serial(const std::string &serial, const std::vector<std::string> &args)
    {
        std::string adb;
        {
            std::lock_guard lock(g_mu);
            adb = g_adb_path;
        }

        std::vector<std::string> full_args;
        if (!serial.empty()) { full_args.push_back("-s"); full_args.push_back(serial); }
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

    std::string run(const std::vector<std::string> &args)
    {
        std::string ser;
        {
            std::lock_guard lock(g_mu);
            ser = g_serial;
        }
        return run_for_serial(ser, args);
    }

    std::string pull_bytes(const std::string &serial, const std::string &device_path, int timeout_ms)
    {
        std::string adb;
        {
            std::lock_guard lock(g_mu);
            adb = g_adb_path;
        }

        std::vector<std::string> full_args;
        if (!serial.empty()) { full_args.push_back("-s"); full_args.push_back(serial); }
        full_args.push_back("shell");
        full_args.push_back("cat");
        full_args.push_back(device_path);

        return exec_adb(adb, full_args, timeout_ms);
    }

    std::string kill_server()
    {
        set_serial("");
        return run({"kill-server"});
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

        std::vector<std::string> parse_adb_devices(const std::string &output)
        {
            std::vector<std::string> result;
            std::istringstream ss(output);
            std::string line;
            while (std::getline(ss, line))
            {
                if (line.empty() || line.rfind("List of devices", 0) == 0) continue;
                std::istringstream ls(line);
                std::string serial, status;
                ls >> serial >> status;
                if (!serial.empty() && status == "device")
                    result.push_back(serial);
            }
            return result;
        }

        bool adb_output_ok(const std::string &output)
        {
            return output.find("error") == std::string::npos &&
                   output.find("failed") == std::string::npos &&
                   output.find("cannot") == std::string::npos;
        }

        std::string adb_target_from_port_or_serial(const std::string &value)
        {
            if (value.empty())
                return "";
            if (value.find(':') != std::string::npos)
                return value;
            bool numeric = true;
            for (char c : value)
            {
                if (!std::isdigit(static_cast<unsigned char>(c)))
                {
                    numeric = false;
                    break;
                }
            }
            return numeric ? "127.0.0.1:" + value : value;
        }

        std::string adb_port_from_target(const std::string &target)
        {
            const std::size_t pos = target.rfind(':');
            return pos == std::string::npos ? "" : target.substr(pos + 1);
        }

        std::vector<std::string> parse_adb_reverse_entries(const std::string &output)
        {
            std::vector<std::string> entries;
            std::istringstream ss(output);
            std::string line;
            while (std::getline(ss, line))
            {
                if (!line.empty() && line.back() == '\r')
                    line.pop_back();
                if (!line.empty())
                    entries.push_back(line);
            }
            return entries;
        }

        std::vector<std::string> cached_adb_reverse_entries()
        {
            std::vector<std::string> entries;
            json::Value root;
            std::string error;
            if (!json::parse(ini::get("adb_reverse_entries", "[]"), root, error) || !root.is_array())
                return entries;
            for (const json::Value &entry : root.arr)
            {
                if (entry.is_string())
                    entries.push_back(entry.str);
            }
            return entries;
        }

        void cache_adb_reverse_entries(const std::vector<std::string> &entries)
        {
            ini::set("adb_reverse_entries", json_str_array(entries));
        }

        void cache_adb_game_running(bool running)
        {
            ini::set("adb_game_running", running ? "true" : "false");
            ini::set("adb_game_updated_at_ms", std::to_string(unix_ms()));
        }

        bool reverse_entries_have_port(const std::vector<std::string> &entries, int port)
        {
            const std::string needle = "tcp:" + std::to_string(port);
            for (const std::string &entry : entries)
            {
                if (entry.find(needle) != std::string::npos)
                    return true;
            }
            return false;
        }

        std::string active_adb_serial()
        {
            const std::string saved = ini::get("adb_serial", "");
            return saved.empty() ? adb_runner::serial() : saved;
        }

        void refresh_cached_adb_state()
        {
            const std::string serial = active_adb_serial();
            if (serial.empty())
                return;

            std::string out = adb_runner::run_for_serial(serial, {"get-state"});
            const bool connected = out.find("device") != std::string::npos;
            bool rooted = false;
            bool reversed = false;
            bool game_running = false;
            std::vector<std::string> entries;
            const int host_port = std::atoi(json_int_string_or_default(ini::get("adb_host_port", ""), kServerListenPort).c_str());

            if (connected)
            {
                out = adb_runner::run_for_serial(serial, {"shell", "id"});
                rooted = out.find("uid=0") != std::string::npos;

                out = adb_runner::run_for_serial(serial, {"reverse", "--list"});
                entries = parse_adb_reverse_entries(out);
                reversed = reverse_entries_have_port(entries, host_port);

                out = adb_runner::run_for_serial(serial, {"shell", "pidof", "com.kakaogames.eversoul"});
                for (char c : out)
                {
                    if (std::isdigit(static_cast<unsigned char>(c)))
                    {
                        game_running = true;
                        break;
                    }
                }
            }

            ini::set("adb_connected", connected ? "true" : "false");
            ini::set("adb_rooted", rooted ? "true" : "false");
            ini::set("adb_reverse", reversed ? "true" : "false");
            ini::set("adb_updated_at_ms", std::to_string(unix_ms()));
            cache_adb_reverse_entries(entries);
            cache_adb_game_running(game_running);
        }

        void append_adb_output(std::string &dst, const std::string &label, const std::string &output)
        {
            if (!dst.empty())
                dst += "\n";
            dst += "$ " + label + "\n" + output;
        }

        AdbProbeState probe_adb_target(const std::string &raw_target)
        {
            AdbProbeState state;
            state.host_port = std::atoi(json_int_string_or_default(ini::get("server_port", ""), kServerListenPort).c_str());
            
            std::string parsed_serial = adb_target_from_port_or_serial(raw_target);
            if (parsed_serial.empty())
                return state;

            std::string out = adb_runner::run({"start-server"});
            append_adb_output(state.output, "adb start-server", out);

            out = adb_runner::run({"devices"});
            append_adb_output(state.output, "adb devices", out);
            state.devices = parse_adb_devices(out);

            // Prevent double attach bug (e.g. 127.0.0.1:5555 vs emulator-5554)
            if (parsed_serial.find("127.0.0.1:") == 0 || parsed_serial.find("localhost:") == 0)
            {
                std::string port_str = parsed_serial.substr(parsed_serial.find(':') + 1);
                int port = std::atoi(port_str.c_str());
                if (port > 0)
                {
                    std::string emu_serial = "emulator-" + std::to_string(port - 1);
                    if (out.find(emu_serial) != std::string::npos)
                    {
                        parsed_serial = emu_serial;
                    }
                }
            }
            state.serial = parsed_serial;

            // Ensure only 1 device is active and saved to INI
            std::string old_serial = ini::get("adb_serial", "");
            if (!old_serial.empty() && old_serial != state.serial)
            {
                adb_runner::run_for_serial(old_serial, {"reverse", "--remove-all"});
            }
            
            // Disconnect all TCP/IP devices to strictly enforce single connection
            adb_runner::run({"disconnect"});
            
            ini::set("adb_serial", state.serial);

            const bool network_device = state.serial.find(':') != std::string::npos;
            if (network_device)
            {
                for (int attempt = 0; attempt < 20 && !state.connected; ++attempt)
                {
                    out = adb_runner::run({"connect", state.serial});
                    append_adb_output(state.output, "adb connect " + state.serial, out);
                    state.connected = out.find("connected") != std::string::npos ||
                                      out.find("already connected") != std::string::npos;
                    if (!state.connected)
                        Sleep(500);
                }
            }
            else
            {
                state.connected = true;
            }

            if (!state.connected)
                return state;

            out = adb_runner::run_for_serial(state.serial, {"get-state"});
            append_adb_output(state.output, "adb -s " + state.serial + " get-state", out);
            state.connected = out.find("device") != std::string::npos;
            if (!state.connected)
                return state;

            out = adb_runner::run_for_serial(state.serial, {"root"});
            append_adb_output(state.output, "adb -s " + state.serial + " root", out);
            state.rooted = out.find("restarting") != std::string::npos ||
                           out.find("already running as root") != std::string::npos ||
                           out.find("adbd is already running as root") != std::string::npos;

            if (out.find("restarting") != std::string::npos)
            {
                out = adb_runner::run_for_serial(state.serial, {"wait-for-device"});
                append_adb_output(state.output, "adb -s " + state.serial + " wait-for-device", out);
                if (network_device)
                {
                    state.connected = false;
                    for (int attempt = 0; attempt < 20 && !state.connected; ++attempt)
                    {
                        out = adb_runner::run({"connect", state.serial});
                        append_adb_output(state.output, "adb connect " + state.serial, out);
                        state.connected = out.find("connected") != std::string::npos ||
                                          out.find("already connected") != std::string::npos;
                        if (!state.connected)
                            Sleep(500);
                    }
                }
            }

            out = adb_runner::run_for_serial(state.serial, {"shell", "id"});
            append_adb_output(state.output, "adb -s " + state.serial + " shell id", out);
            if (out.find("uid=0") != std::string::npos)
                state.rooted = true;

            if (state.connected && state.rooted)
            {
                const std::string tcp = "tcp:" + std::to_string(state.host_port);
                out = adb_runner::run_for_serial(state.serial, {"reverse", tcp, tcp});
                append_adb_output(state.output, "adb -s " + state.serial + " reverse " + tcp + " " + tcp, out);
                state.reversed = adb_output_ok(out);
            }

            out = adb_runner::run_for_serial(state.serial, {"reverse", "--list"});
            append_adb_output(state.output, "adb -s " + state.serial + " reverse --list", out);
            state.reverse_entries = parse_adb_reverse_entries(out);
            state.reversed = state.reversed && reverse_entries_have_port(state.reverse_entries, state.host_port);

            out = adb_runner::run_for_serial(state.serial, {"shell", "pm", "list", "packages", "com.kakaogames.eversoul"});
            append_adb_output(state.output, "adb -s " + state.serial + " shell pm list packages com.kakaogames.eversoul", out);
            state.eversoul = out.find("com.kakaogames.eversoul") != std::string::npos;

            out = adb_runner::run_for_serial(state.serial, {"shell", "pidof", "com.kakaogames.eversoul"});
            append_adb_output(state.output, "adb -s " + state.serial + " shell pidof com.kakaogames.eversoul", out);
            for (char c : out)
            {
                if (std::isdigit(static_cast<unsigned char>(c)))
                {
                    state.game_running = true;
                    break;
                }
            }

            ini::set("adb_serial", state.serial);
            adb_runner::set_serial(state.serial);
            ini::set("adb_connected", state.connected ? "true" : "false");
            ini::set("adb_rooted", state.rooted ? "true" : "false");
            ini::set("adb_reverse", state.reversed ? "true" : "false");
            ini::set("adb_host_port", std::to_string(state.host_port));
            ini::set("adb_updated_at_ms", std::to_string(unix_ms()));
            cache_adb_reverse_entries(state.reverse_entries);
            cache_adb_game_running(state.game_running);
            const std::string port = adb_port_from_target(state.serial);
            if (!port.empty())
                ini::set("adb_port", port);

            return state;
        }

        std::string adb_probe_json(const AdbProbeState &state)
        {
            return "{\"ok\":" + std::string(state.connected && state.rooted && state.reversed ? "true" : "false") +
                ",\"connected\":" + std::string(state.connected ? "true" : "false") +
                ",\"rooted\":" + std::string(state.rooted ? "true" : "false") +
                ",\"adb_root\":" + std::string(state.rooted ? "true" : "false") +
                ",\"adb_rooted\":" + std::string(state.rooted ? "true" : "false") +
                ",\"reverse\":" + std::string(state.reversed ? "true" : "false") +
                ",\"reversed\":" + std::string(state.reversed ? "true" : "false") +
                ",\"eversoul\":" + std::string(state.eversoul ? "true" : "false") +
                ",\"game_running\":" + std::string(state.game_running ? "true" : "false") +
                ",\"serial\":\"" + json_escape(state.serial) + "\"" +
                ",\"host_port\":" + std::to_string(state.host_port) +
                ",\"device_ports\":[" + std::to_string(state.host_port) + "]" +
                ",\"entries\":" + json_str_array(state.reverse_entries) +
                ",\"reverse_entries\":" + json_str_array(state.reverse_entries) +
                ",\"devices\":" + json_str_array(state.devices) +
                ",\"output\":\"" + json_escape(state.output) + "\"}";
        }

    void initialize_adb_from_ini()
    {
        std::string serial = ini::get("adb_serial", "");
        if (serial.empty())
            return;

        log_line(0, "ADB_INIT", "initializing ADB for serial: " + serial);

        adb_runner::run({"start-server"});

        // Prevent ADB double attach bug (e.g. connecting to 127.0.0.1:5555 when emulator-5554 is already attached)
        if (serial.find("127.0.0.1:") == 0 || serial.find("localhost:") == 0)
        {
            std::string port_str = serial.substr(serial.find(':') + 1);
            int port = std::atoi(port_str.c_str());
            if (port > 0)
            {
                std::string emu_serial = "emulator-" + std::to_string(port - 1);
                std::string devices_out = adb_runner::run({"devices"});
                if (devices_out.find(emu_serial) != std::string::npos)
                {
                    log_line(0, "ADB_INIT", "detected double attach risk, swapping serial " + serial + " to " + emu_serial);
                    serial = emu_serial;
                }
            }
        }

        if (serial.find(':') != std::string::npos)
        {
            for (int attempt = 0; attempt < 20; ++attempt)
            {
                std::string out = adb_runner::run({"connect", serial});
                if (out.find("connected") != std::string::npos ||
                    out.find("already connected") != std::string::npos)
                    break;
                Sleep(500);
            }
        }

        adb_runner::run_for_serial(serial, {"root"});
        Sleep(1000);

        const int host_port = std::atoi(
            json_int_string_or_default(ini::get("adb_host_port", ""), kServerListenPort).c_str());
        adb_runner::run_for_serial(serial, {"reverse",
            "tcp:" + std::to_string(host_port),
            "tcp:" + std::to_string(host_port)});

        refresh_cached_adb_state();
        log_line(0, "ADB_INIT", "ADB initialization complete");
    }

}
