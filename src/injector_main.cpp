// injector_main.cpp — EverSoul offline injector (Windows-first implementation).
//
// Pipeline:
//   1. Start eversoul_offline_server in the background (if not already up).
//   2. Locate adb.exe and find the connected emulator/device.
//      If none found, prompt the user for a host:port and adb-connect to it.
//   3. Push libswappywrapper.so to /data/local/tmp/ on the device.
//   4. Ensure frida-server is running on the device (push + start if needed).
//      Forward tcp:27042 to the host.
//   5. Use the Frida C API to spawn (or attach to) com.kakaogames.eversoul,
//      load a tiny JS snippet that calls Module.load() on our .so, then resume.
//   6. Stream adb logcat filtered to the libswappywrapper tag.
//
// TODO(platform): Windows-only sections are guarded with #ifdef _WIN32.
//   macOS/Linux equivalents are noted inline where the POSIX path differs.

#ifdef _WIN32
#  define WIN32_LEAN_AND_MEAN
#  include <winsock2.h>
#  include <ws2tcpip.h>
#  include <windows.h>
#  pragma comment(lib, "ws2_32")
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

static std::string exec(const std::string& cmd)
{
    // TODO(platform): on POSIX use popen() — same call, different flush/wait
    //                 semantics on some shells; replace _pclose with pclose.
#ifdef _WIN32
    FILE* pipe = _popen(cmd.c_str(), "r");
#else
    FILE* pipe = popen(cmd.c_str(), "r");
#endif
    if (!pipe) return {};
    std::string out;
    char buf[512];
    while (fgets(buf, sizeof(buf), pipe))
        out += buf;
#ifdef _WIN32
    _pclose(pipe);
#else
    pclose(pipe);
#endif
    return out;
}

static std::string run_adb(const std::string& adb, const std::string& args)
{
    return exec("\"" + adb + "\" " + args + " 2>&1");
}

// ---------------------------------------------------------------------------
// ADB discovery
// ---------------------------------------------------------------------------

static bool path_exists(const std::string& p)
{
#ifdef _WIN32
    return GetFileAttributesA(p.c_str()) != INVALID_FILE_ATTRIBUTES;
#else
    // TODO(platform): use access(p.c_str(), F_OK)
    return false;
#endif
}

static std::string find_adb()
{
    return eversoul::resolve_adb_path(".");
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
    // Try a quick TCP connect to decide whether the server is already up.
    // TODO(platform): on POSIX use a raw POSIX socket instead of winsock.
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
    return false;
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
    // TODO(platform): posix_spawn() or fork()+exec() + setsid()
    (void)exe_path;
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

    // Start in daemon mode via root shell.
    // TODO(platform): adb shell works identically on macOS/Linux.
    printf("[frida-server] starting...\n");
    run_adb(adb, "-s " + serial +
        " shell \"su -c '/data/local/tmp/frida-server -D'\"");

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
    // Runs on a detached thread; exits when the pipe closes (emulator stopped).
    // TODO(platform): identical on macOS/Linux.
    std::string cmd = "\"" + adb + "\" -s " + serial +
                      " logcat -s libswappywrapper:V *:S";
#ifdef _WIN32
    FILE* pipe = _popen(cmd.c_str(), "r");
#else
    FILE* pipe = popen(cmd.c_str(), "r");
#endif
    if (!pipe) return;
    char buf[512];
    while (fgets(buf, sizeof(buf), pipe))
        printf("[logcat] %s", buf);
#ifdef _WIN32
    _pclose(pipe);
#else
    pclose(pipe);
#endif
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
    if (argc < 4) {
        fprintf(stderr,
            "usage: eversoul_injector"
            " <libswappywrapper.so>"
            " <eversoul_offline_server>"
            " <frida-server-android-x86_64>\n");
        return 1;
    }

    const std::string so_path       = argv[1];
    const std::string server_exe    = argv[2];
    const std::string frida_srv_bin = argv[3];

    // --- 1. offline server ---------------------------------------------------
    printf("[1/5] offline server\n");
    start_offline_server(server_exe);

    // --- 2. adb + device -----------------------------------------------------
    printf("[2/5] adb / device\n");
    std::string adb = find_adb();
    printf("  adb: %s\n", adb.c_str());

    std::string serial = find_device(adb);
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

    // --- 3. push .so ---------------------------------------------------------
    printf("[3/5] push libswappywrapper.so\n");
    run_adb(adb, "-s " + serial +
        " push \"" + so_path + "\" /data/local/tmp/libswappywrapper.so");
    run_adb(adb, "-s " + serial +
        " shell chmod 755 /data/local/tmp/libswappywrapper.so");
    printf("  pushed\n");

    // --- 4. frida-server + port forward --------------------------------------
    printf("[4/5] frida-server\n");
    ensure_frida_server(adb, serial, frida_srv_bin);
    run_adb(adb, "-s " + serial + " forward tcp:27042 tcp:27042");
    printf("  port 27042 forwarded\n");

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

    bool spawned = false;
    FridaSession* session = nullptr;

    if (target_pid != 0) {
        printf("  game already running (pid=%u) — attaching\n", target_pid);
        session = frida_device_attach_sync(device, target_pid, nullptr, nullptr, &err);
    } else {
        printf("  game not running — spawning\n");
        target_pid = frida_device_spawn_sync(
            device, "com.kakaogames.eversoul", nullptr, nullptr, &err);
        if (err) {
            fprintf(stderr, "  spawn: %s\n", err->message);
            g_error_free(err);
            return 1;
        }
        spawned = true;
        session = frida_device_attach_sync(device, target_pid, nullptr, nullptr, &err);
    }

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

    if (spawned)
        frida_device_resume_sync(device, target_pid, nullptr, nullptr);

    std::thread logcat_thr([&]() { stream_logcat(adb, serial); });
    logcat_thr.detach();

    printf("\n[OK] injected. press Enter to detach...\n");
    std::cin.get();

    frida_script_unload_sync(script, nullptr, nullptr);
    frida_unref(script);
    frida_session_detach_sync(session, nullptr, nullptr);
    frida_unref(session);
    frida_unref(device);
    frida_device_manager_close_sync(mgr, nullptr, nullptr);
    frida_unref(mgr);

    return 0;
}
