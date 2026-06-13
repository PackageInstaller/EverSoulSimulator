// injector_main.cpp — EverSoul offline injector (Windows / macOS / Linux).
//
// Pipeline:
//   1. Start eversoul_offline_server in the background (if not already up).
//   2. Locate adb and find the connected emulator/device.
//      If none found, prompt the user for a host:port and adb-connect to it.
//   3. Push libswappywrapper.so to /data/local/tmp/.
//   4. su -c cp -> replace SO in /data/app/<pkg>/lib/arm64/ directly (root).
//   5. setenforce 0 + adb reverse tcp:9999 tcp:9999.
//   6. force-stop the game, then am start.
//   7. Stream adb logcat filtered to the libswappywrapper tag.

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
    std::wstring wcmd = wexe + L" --mock-only";
    if (CreateProcessW(
            nullptr, wcmd.data(), nullptr, nullptr,
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
        execl(exe_path.c_str(), exe_path.c_str(), "--mock-only", nullptr);
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
// Logcat stream
// ---------------------------------------------------------------------------

static std::string find_app_lib_dir(const std::string& adb, const std::string& serial)
{
    std::string pm = run_adb(adb,
        "-s " + serial + " shell pm path com.kakaogames.eversoul 2>&1");
    // "package:/data/app/~~.../com.kakaogames.eversoul-.../base.apk"
    auto prefix = pm.find("/data/app/");
    if (prefix == std::string::npos) return {};
    std::string path = pm.substr(prefix);
    while (!path.empty() && (path.back() == '\n' || path.back() == '\r' || path.back() == ' '))
        path.pop_back();
    // strip /base.apk -> get package dir
    auto slash = path.rfind('/');
    if (slash == std::string::npos) return {};
    return path.substr(0, slash) + "/lib/arm64";
}

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
        if (has_device) {
            std::string pm = run_adb(adb,
                "-s " + serial + " shell pm list packages com.kakaogames.eversoul 2>&1");
            has_eversoul = pm.find("com.kakaogames.eversoul") != std::string::npos;
        }
        printf("{\"adb\":\"%s\",\"serial\":\"%s\",\"eversoul\":%s}\n",
            adb.c_str(), serial.c_str(),
            has_eversoul ? "true" : "false");
        return 0;
    }

    if (so_path.empty()) {
        fprintf(stderr,
            "usage: eversoul_injector"
            " <libswappywrapper.so>"
            " [<eversoul_offline_server>]"
            " [--serial <serial>] [--adb <adb>] [--no-wait] [--list-devices] [--check]\n");
        return 1;
    }

    if (server_exe.empty()) {
        std::string dir = dir_of(so_path);
#ifdef _WIN32
        server_exe = dir + "\\..\\eversoul_offline_server.exe";
#else
        server_exe = dir + "/../eversoul_offline_server";
#endif
        if (!path_exists(server_exe)) server_exe.clear();
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

    // --- 3. push SO to /data/local/tmp/ -------------------------------------
    printf("[3/5] push libswappywrapper.so\n");
    run_adb(adb, "-s " + serial +
        " push \"" + so_path + "\" /data/local/tmp/libswappywrapper.so");
    run_adb(adb, "-s " + serial +
        " shell chmod 755 /data/local/tmp/libswappywrapper.so");
    printf("  pushed libswappywrapper.so\n");

    // --- 4. resolve /data/app lib dir + su cp + SELinux + reverse -----------
    printf("[4/5] resolve app lib dir, su cp, setenforce 0, reverse tcp:9999\n");
    std::string lib_dir = find_app_lib_dir(adb, serial);
    if (lib_dir.empty()) {
        fprintf(stderr, "  ERROR: cannot resolve /data/app lib dir for com.kakaogames.eversoul\n"
                        "         is the game installed?\n");
        return 1;
    }
    printf("  lib dir: %s\n", lib_dir.c_str());

    std::string dst = lib_dir + "/libswappywrapper.so";
    run_adb(adb, "-s " + serial +
        " shell \"su -c 'cp /data/local/tmp/libswappywrapper.so " + dst +
        " && chmod 755 " + dst + "'\"");
    printf("  su cp done -> %s\n", dst.c_str());

    run_adb(adb, "-s " + serial + " shell su -c setenforce 0");
    run_adb(adb, "-s " + serial + " reverse tcp:9999 tcp:9999");
    printf("  SELinux permissive, reverse tcp:9999\n");

    // --- 5. force-stop + launch game ----------------------------------------
    printf("[5/5] launch game\n");
    run_adb(adb, "-s " + serial + " shell am force-stop com.kakaogames.eversoul");
#ifdef _WIN32
    Sleep(800);
#else
    usleep(800000);
#endif
    run_adb(adb, "-s " + serial +
        " shell am start -n com.kakaogames.eversoul/com.kakaogame.KGUnityPlayerActivity"
        " -a android.intent.action.MAIN -c android.intent.category.LAUNCHER");
    printf("  game started\n");

    std::thread logcat_thr([&]() { stream_logcat(adb, serial); });
    logcat_thr.detach();

    if (opt_no_wait) {
        printf("\n[OK] running (--no-wait).\n");
        fflush(stdout);
        for (;;) {
#ifdef _WIN32
            Sleep(2000);
#else
            sleep(2);
#endif
        }
    } else {
        printf("\n[OK] running. press Enter to exit...\n");
        std::cin.get();
    }

    return 0;
}
