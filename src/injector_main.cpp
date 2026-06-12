// injector_main.cpp — EverSoul offline injector (Windows / macOS / Linux).
//
// Pipeline:
//   1. Start eversoul_offline_server in the background (if not already up).
//   2. Locate adb and find the connected emulator/device.
//      If none found, prompt the user for a host:port and adb-connect to it.
//   3. Push libswappywrapper.so + libofflinedata.so + monitor script to /data/local/tmp/.
//   4. Ensure frida-server is running on the device (push + start if needed).
//      Forward tcp:27042 to the host.
//   5. Use the Frida C API to spawn (or attach to) com.kakaogames.eversoul,
//      load a tiny JS snippet that calls Module.load() on our .so, then resume.
//   6. Stream adb logcat filtered to the libswappywrapper tag.

#ifdef _WIN32
#  define WIN32_LEAN_AND_MEAN
#  include <winsock2.h>
#  include <ws2tcpip.h>
#  include <windows.h>
#  pragma comment(lib, "ws2_32")
#else
#  include <arpa/inet.h>
#  include <netinet/in.h>
#  include <sys/socket.h>
#  include <sys/wait.h>
#  include <unistd.h>
#endif

#include "frida-core.h"

#include "adb_finder.hpp"

#include <algorithm>
#include <array>
#include <atomic>
#include <cstdio>
#include <cstring>
#include <functional>
#include <iostream>
#include <sstream>
#include <string>
#include <thread>
#include <vector>

namespace {

// ---------------------------------------------------------------------------
// Platform helpers
// ---------------------------------------------------------------------------

static std::string run_adb(const std::string& adb, const std::string& args)
{
    FILE* pipe = eversoul::adb_popen(adb, args);
    if (!pipe) return {};
    std::string out;
    char buf[512];
    while (fgets(buf, sizeof(buf), pipe))
        out += buf;
    eversoul::adb_pclose(pipe);
    return out;
}

// ---------------------------------------------------------------------------
// ADB discovery
// ---------------------------------------------------------------------------

static bool path_exists(const std::string& p)
{
#ifdef _WIN32
    return GetFileAttributesA(p.c_str()) != INVALID_FILE_ATTRIBUTES;
#else
    return access(p.c_str(), F_OK) == 0;
#endif
}

static std::string find_adb(const std::string& hint = {})
{
    if (!hint.empty()) return hint;
    return eversoul::resolve_adb_path(".");
}

static std::string read_file(const std::string& path)
{
    FILE* f = fopen(path.c_str(), "rb");
    if (!f) return {};
    fseek(f, 0, SEEK_END);
    long sz = ftell(f);
    rewind(f);
    if (sz <= 0) { fclose(f); return {}; }
    std::string buf(static_cast<std::size_t>(sz), '\0');
    fread(buf.data(), 1, static_cast<std::size_t>(sz), f);
    fclose(f);
    return buf;
}

static std::string dir_of(const std::string& path)
{
    auto sep = path.find_last_of("/\\");
    return sep == std::string::npos ? "." : path.substr(0, sep);
}

// ---------------------------------------------------------------------------
// Device discovery
// ---------------------------------------------------------------------------

static std::string find_device(const std::string& adb)
{
    std::string out = run_adb(adb, "devices");
    std::istringstream ss(out);
    std::string line;
    std::vector<std::string> all, emulators;
    while (std::getline(ss, line)) {
        if (line.find("List of") != std::string::npos) continue;
        if (line.find("offline")  != std::string::npos) continue;
        auto tab = line.find('\t');
        if (tab == std::string::npos) continue;
        if (line.find("device") == std::string::npos) continue;
        std::string serial = line.substr(0, tab);
        all.push_back(serial);
        if (serial.rfind("127.0.0.1", 0) == 0 ||
            serial.rfind("emulator",  0) == 0)
            emulators.push_back(serial);
    }
    if (!emulators.empty()) return emulators[0];
    if (!all.empty())       return all[0];
    return {};
}

// ---------------------------------------------------------------------------
// Offline server
// ---------------------------------------------------------------------------

static bool probe_port(int port)
{
#ifdef _WIN32
    WSADATA wsa;
    WSAStartup(MAKEWORD(2, 2), &wsa);
    SOCKET s = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    sockaddr_in addr{};
    addr.sin_family      = AF_INET;
    addr.sin_port        = htons(static_cast<u_short>(port));
    addr.sin_addr.s_addr = inet_addr("127.0.0.1");
    bool ok = (connect(s, reinterpret_cast<sockaddr*>(&addr), sizeof(addr)) == 0);
    closesocket(s);
    WSACleanup();
    return ok;
#else
    int s = ::socket(AF_INET, SOCK_STREAM, 0);
    if (s < 0) return false;
    sockaddr_in addr{};
    addr.sin_family      = AF_INET;
    addr.sin_port        = htons(static_cast<uint16_t>(port));
    addr.sin_addr.s_addr = inet_addr("127.0.0.1");
    bool ok = (::connect(s, reinterpret_cast<sockaddr*>(&addr), sizeof(addr)) == 0);
    ::close(s);
    return ok;
#endif
}

static void start_offline_server(const std::string& exe_path)
{
    if (probe_port(9999)) {
        printf("[server] already running on :9999\n");
        return;
    }
#ifdef _WIN32
    int wlen = MultiByteToWideChar(CP_UTF8, 0, exe_path.c_str(), -1, nullptr, 0);
    std::wstring wexe(wlen, L'\0');
    MultiByteToWideChar(CP_UTF8, 0, exe_path.c_str(), -1, wexe.data(), wlen);

    std::wstring wdir = wexe.substr(0, wexe.rfind(L'\\'));

    STARTUPINFOW si{};
    si.cb = sizeof(si);
    PROCESS_INFORMATION pi{};
    if (CreateProcessW(
            wexe.c_str(), nullptr, nullptr, nullptr,
            FALSE, DETACHED_PROCESS | CREATE_NEW_PROCESS_GROUP,
            nullptr, wdir.empty() ? nullptr : wdir.c_str(), &si, &pi)) {
        CloseHandle(pi.hProcess);
        CloseHandle(pi.hThread);
        printf("[server] started\n");
        Sleep(600);
    } else {
        fprintf(stderr, "[server] CreateProcess failed (err=%lu)\n", GetLastError());
    }
#else
    pid_t pid = fork();
    if (pid == 0) {
        setsid();
        execl(exe_path.c_str(), exe_path.c_str(), nullptr);
        _exit(1);
    } else if (pid > 0) {
        printf("[server] started (pid=%d)\n", static_cast<int>(pid));
        usleep(600000);
    } else {
        fprintf(stderr, "[server] fork failed\n");
    }
#endif
}

// ---------------------------------------------------------------------------
// Frida server management
// ---------------------------------------------------------------------------

static bool frida_server_running(const std::string& adb, const std::string& serial)
{
    std::string out = run_adb(adb, "-s " + serial + " shell pgrep -x frida-server");
    out.erase(std::remove_if(out.begin(), out.end(), ::isspace), out.end());
    return !out.empty();
}

static void ensure_frida_server(const std::string& adb,
                                 const std::string& serial,
                                 const std::string& server_bin)
{
    if (frida_server_running(adb, serial)) {
        printf("[frida-server] already running\n");
        return;
    }

    std::string check = run_adb(adb,
        "-s " + serial + " shell \"test -f /data/local/tmp/frida-server && echo ok\"");
    if (check.find("ok") == std::string::npos) {
        printf("[frida-server] pushing binary...\n");
        run_adb(adb, "-s " + serial +
            " push \"" + server_bin + "\" /data/local/tmp/frida-server");
        run_adb(adb, "-s " + serial +
            " shell chmod 755 /data/local/tmp/frida-server");
    }

    printf("[frida-server] starting...\n");
    std::string who = run_adb(adb, "-s " + serial + " shell whoami 2>&1");
    bool shell_is_root = who.find("root") != std::string::npos;
    if (shell_is_root) {
        run_adb(adb, "-s " + serial +
            " shell \"/data/local/tmp/frida-server -D &\"");
    } else {
        run_adb(adb, "-s " + serial +
            " shell \"su -c '/data/local/tmp/frida-server -D'\"");
    }

    for (int i = 0; i < 12; ++i) {
#ifdef _WIN32
        Sleep(500);
#else
        usleep(500000);
#endif
        if (frida_server_running(adb, serial)) {
            printf("[frida-server] running\n");
            return;
        }
    }
    fprintf(stderr, "[frida-server] ERROR: did not start within 6s\n");
}

// ---------------------------------------------------------------------------
// Logcat stream
// ---------------------------------------------------------------------------

static void stream_logcat(const std::string& adb, const std::string& serial)
{
    FILE* pipe = eversoul::adb_popen(adb,
        "-s " + serial + " logcat -s libswappywrapper:V *:S");
    if (!pipe) return;
    char buf[512];
    while (fgets(buf, sizeof(buf), pipe))
        printf("[logcat] %s", buf);
    eversoul::adb_pclose(pipe);
}

// ---------------------------------------------------------------------------
// Frida message handler
// ---------------------------------------------------------------------------

static void on_frida_message(FridaScript*, const gchar* message,
                              GBytes*, gpointer)
{
    printf("[frida] %s\n", message);
}

} // namespace

// ---------------------------------------------------------------------------
// main
// ---------------------------------------------------------------------------

int main(int argc, char* argv[])
{
#ifdef _WIN32
    SetConsoleOutputCP(CP_UTF8);
    SetConsoleCP(CP_UTF8);
#endif
    std::string so_path;
    std::string server_exe;
    std::string frida_srv_bin;
    std::string opt_serial;
    std::string opt_adb;
    bool opt_no_wait      = false;
    bool opt_list_devices = false;
    bool opt_check        = false;

    for (int i = 1; i < argc; ++i) {
        std::string a = argv[i];
        if      (a == "--no-wait")           { opt_no_wait = true; }
        else if (a == "--list-devices")       { opt_list_devices = true; }
        else if (a == "--check")              { opt_check = true; }
        else if (a == "--serial" && i+1<argc) { opt_serial = argv[++i]; }
        else if (a == "--adb"    && i+1<argc) { opt_adb    = argv[++i]; }
        else if (so_path.empty())             { so_path = a; }
        else if (server_exe.empty())          { server_exe = a; }
        else if (frida_srv_bin.empty())       { frida_srv_bin = a; }
    }

    if (opt_list_devices) {
        std::string adb = find_adb(opt_adb);
        printf("%s", run_adb(adb, "devices -l").c_str());
        return 0;
    }

    if (opt_check) {
        std::string adb    = find_adb(opt_adb);
        std::string serial = opt_serial.empty() ? find_device(adb) : opt_serial;
        bool has_device    = !serial.empty();
        bool has_eversoul  = false;
        bool frida_up      = false;
        if (has_device) {
            std::string pm = run_adb(adb,
                "-s " + serial + " shell pm list packages com.kakaogames.eversoul 2>&1");
            has_eversoul = pm.find("com.kakaogames.eversoul") != std::string::npos;
            frida_up     = frida_server_running(adb, serial);
        }
        printf("{\"adb\":\"%s\",\"serial\":\"%s\",\"eversoul\":%s,\"frida_server\":%s}\n",
            adb.c_str(), serial.c_str(),
            has_eversoul ? "true" : "false",
            frida_up     ? "true" : "false");
        return 0;
    }

    if (so_path.empty() || server_exe.empty() || frida_srv_bin.empty()) {
        fprintf(stderr,
            "usage: eversoul_injector"
            " <libswappywrapper.so>"
            " <eversoul_offline_server>"
            " <frida-server-android-arm64>"
            " [--serial <serial>] [--no-wait] [--list-devices] [--check]\n");
        return 1;
    }

    // --- 1. offline server ---------------------------------------------------
    printf("[1/5] offline server\n");
    start_offline_server(server_exe);

    // --- 2. adb + device -----------------------------------------------------
    printf("[2/5] adb / device\n");
    std::string adb = find_adb(opt_adb);
    printf("  adb: %s\n", adb.c_str());

    std::string serial = opt_serial.empty() ? find_device(adb) : opt_serial;
    if (serial.empty()) {
        printf("  no device found.\n"
               "  enter host:port (e.g. 127.0.0.1:5555): ");
        std::getline(std::cin, serial);
        run_adb(adb, "connect " + serial);
#ifdef _WIN32
        Sleep(1000);
#else
        sleep(1);
#endif
        serial = find_device(adb);
        if (serial.empty()) {
            fprintf(stderr, "  ERROR: no device after connect\n");
            return 1;
        }
    }
    printf("  device: %s\n", serial.c_str());

    // --- 3. push .so + offline data blob + monitor script --------------------
    printf("[3/5] push libswappywrapper.so + offline data\n");
    run_adb(adb, "-s " + serial +
        " push \"" + so_path + "\" /data/local/tmp/libswappywrapper.so");
    run_adb(adb, "-s " + serial +
        " shell chmod 755 /data/local/tmp/libswappywrapper.so");
    printf("  pushed libswappywrapper.so\n");

    // libofflinedata.so must land in the same /data/local/tmp/ dir because
    // guess_blob_path() resolves the blob relative to the loaded .so path.
    std::string offline_blob_host = dir_of(frida_srv_bin) + "/libofflinedata.so";
    if (path_exists(offline_blob_host)) {
        run_adb(adb, "-s " + serial +
            " push \"" + offline_blob_host + "\" /data/local/tmp/libofflinedata.so");
        run_adb(adb, "-s " + serial +
            " shell chmod 755 /data/local/tmp/libofflinedata.so");
        printf("  pushed libofflinedata.so\n");
    } else {
        fprintf(stderr, "  WARNING: libofflinedata.so not found at %s — run build.ps1 first\n",
            offline_blob_host.c_str());
    }

    std::string monitor_js_host = dir_of(frida_srv_bin) + "/monitor_unity_web_request.js";
    std::string monitor_js_src;
    if (path_exists(monitor_js_host)) {
        run_adb(adb, "-s " + serial +
            " push \"" + monitor_js_host + "\" /data/local/tmp/monitor_unity_web_request.js");
        monitor_js_src = read_file(monitor_js_host);
        printf("  pushed monitor_unity_web_request.js\n");
    } else {
        fprintf(stderr, "  WARNING: monitor_unity_web_request.js not found at %s\n",
            monitor_js_host.c_str());
    }

    // --- 4. frida-server + port forwarding ------------------------------------
    printf("[4/5] frida-server + port forwarding\n");
    ensure_frida_server(adb, serial, frida_srv_bin);
    run_adb(adb, "-s " + serial + " forward tcp:27042 tcp:27042");
    printf("  forward tcp:27042 -> device:27042 (frida-server)\n");
    run_adb(adb, "-s " + serial + " reverse tcp:9999 tcp:9999");
    printf("  reverse tcp:9999 -> host:9999 (offline server)\n");

    // --- 5. inject -----------------------------------------------------------
    printf("[5/5] inject\n");
    frida_init();

    GError* err = nullptr;
    FridaDeviceManager* mgr = frida_device_manager_new();

    FridaDevice* device = frida_device_manager_add_remote_device_sync(
        mgr, "127.0.0.1:27042", nullptr, nullptr, &err);
    if (err) {
        fprintf(stderr, "  add_remote_device: %s\n", err->message);
        g_error_free(err);
        return 1;
    }
    printf("  connected to frida device\n");

    guint target_pid = 0;
    FridaProcessList* procs = frida_device_enumerate_processes_sync(
        device, nullptr, nullptr, &err);
    if (!err && procs) {
        gint n = frida_process_list_size(procs);
        for (gint i = 0; i < n; ++i) {
            FridaProcess* p = frida_process_list_get(procs, i);
            if (strcmp(frida_process_get_name(p), "com.kakaogames.eversoul") == 0)
                target_pid = frida_process_get_pid(p);
            g_object_unref(p);
        }
        frida_unref(procs);
    }
    if (err) { g_error_free(err); err = nullptr; }

    if (target_pid != 0) {
        printf("  game running (pid=%u) — force-stopping before spawn\n", target_pid);
        run_adb(adb, "-s " + serial +
            " shell am force-stop com.kakaogames.eversoul");
#ifdef _WIN32
        Sleep(1500);
#else
        usleep(1500000);
#endif
    }

    printf("  spawning com.kakaogames.eversoul\n");
    target_pid = frida_device_spawn_sync(
        device, "com.kakaogames.eversoul", nullptr, nullptr, &err);
    if (err) {
        fprintf(stderr, "  spawn: %s\n", err->message);
        g_error_free(err);
        return 1;
    }

    FridaSession* session = nullptr;
    session = frida_device_attach_sync(device, target_pid, nullptr, nullptr, &err);

    if (err || !session) {
        fprintf(stderr, "  attach: %s\n", err ? err->message : "(null)");
        if (err) g_error_free(err);
        return 1;
    }
    printf("  attached (pid=%u)\n", target_pid);

    static const gchar kScript[] =
        "(function(){"
        "  var lib = Module.load('/data/local/tmp/libswappywrapper.so');"
        "  send({ event: 'loaded', name: lib.name });"
        "})();";

    FridaScriptOptions* opts = frida_script_options_new();
    frida_script_options_set_name(opts, "eversoul_inject");
    frida_script_options_set_runtime(opts, FRIDA_SCRIPT_RUNTIME_QJS);

    FridaScript* script = frida_session_create_script_sync(
        session, kScript, opts, nullptr, &err);
    g_clear_object(&opts);
    if (err) {
        fprintf(stderr, "  create_script: %s\n", err->message);
        g_error_free(err);
        return 1;
    }

    g_signal_connect(script, "message", G_CALLBACK(on_frida_message), nullptr);
    frida_script_load_sync(script, nullptr, &err);
    if (err) {
        fprintf(stderr, "  script_load: %s\n", err->message);
        g_error_free(err);
        return 1;
    }
    printf("  script loaded\n");

    FridaScript* monitor_script = nullptr;
    if (!monitor_js_src.empty()) {
        FridaScriptOptions* mopts = frida_script_options_new();
        frida_script_options_set_name(mopts, "eversoul_monitor");
        frida_script_options_set_runtime(mopts, FRIDA_SCRIPT_RUNTIME_QJS);
        monitor_script = frida_session_create_script_sync(
            session, monitor_js_src.c_str(), mopts, nullptr, &err);
        g_clear_object(&mopts);
        if (err) {
            fprintf(stderr, "  monitor create_script: %s\n", err->message);
            g_error_free(err); err = nullptr;
            monitor_script = nullptr;
        } else {
            g_signal_connect(monitor_script, "message", G_CALLBACK(on_frida_message), nullptr);
            frida_script_load_sync(monitor_script, nullptr, &err);
            if (err) {
                fprintf(stderr, "  monitor script_load: %s\n", err->message);
                g_error_free(err); err = nullptr;
                frida_unref(monitor_script);
                monitor_script = nullptr;
            } else {
                printf("  monitor script loaded\n");
            }
        }
    }

    frida_device_resume_sync(device, target_pid, nullptr, nullptr);

    std::thread logcat_thr([&]() { stream_logcat(adb, serial); });
    logcat_thr.detach();

    if (opt_no_wait) {
        printf("\n[OK] injected (--no-wait).\n");
        fflush(stdout);
        for (;;) {
#ifdef _WIN32
            Sleep(2000);
#else
            sleep(2);
#endif
        }
    } else {
        printf("\n[OK] injected. press Enter to detach...\n");
        std::cin.get();
    }

    frida_script_unload_sync(script, nullptr, nullptr);
    frida_unref(script);
    if (monitor_script) {
        frida_script_unload_sync(monitor_script, nullptr, nullptr);
        frida_unref(monitor_script);
    }
    frida_session_detach_sync(session, nullptr, nullptr);
    frida_unref(session);
    frida_unref(device);
    frida_device_manager_close_sync(mgr, nullptr, nullptr);
    frida_unref(mgr);

    return 0;
}
