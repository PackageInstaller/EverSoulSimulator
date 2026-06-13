// injector_main.cpp — EverSoul offline injector (Windows / macOS / Linux).
//
// Pipeline:
//   1. Start eversoul_offline_server in the background (if not already up).
//   2. Locate adb and find the connected emulator/device.
//      If none found, prompt the user for a host:port and adb-connect to it.
//   3. adb install-multiple <exe_dir>/apk/change_only/base_patched.apk
//                           <exe_dir>/apk/origin/split_config.arm64_v8a.apk
//   4. Push <exe_dir>/apk/change_only/libcawwyayy_orig.so -> /data/local/tmp/
//   5. adb reverse tcp:9999 tcp:9999.
//   6. force-stop the game, then am start.
//   7. Stream adb logcat filtered to the libswappywrapper tag.
//
// All APK/SO paths resolve relative to the injector executable.
// Pre-patched APKs must already exist in apk/ — the injector never patches.

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
#include "i18n.hpp"

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
// Path helpers
// ---------------------------------------------------------------------------

static bool path_exists(const std::string& p)
{
#ifdef _WIN32
    return GetFileAttributesA(p.c_str()) != INVALID_FILE_ATTRIBUTES;
#else
    return access(p.c_str(), F_OK) == 0;
#endif
}

static std::string dir_of(const std::string& path)
{
    auto sep = path.find_last_of("/\\");
    return sep == std::string::npos ? "." : path.substr(0, sep);
}

static std::string exe_dir()
{
#ifdef _WIN32
    char buf[MAX_PATH] = {};
    GetModuleFileNameA(nullptr, buf, MAX_PATH);
    return dir_of(std::string(buf));
#else
    char buf[4096] = {};
    ssize_t n = readlink("/proc/self/exe", buf, sizeof(buf) - 1);
    if (n <= 0) return ".";
    return dir_of(std::string(buf, static_cast<std::size_t>(n)));
#endif
}

// ---------------------------------------------------------------------------
// System locale detection
// ---------------------------------------------------------------------------

static std::string detect_system_lang()
{
#ifdef _WIN32
    LANGID lid     = GetUserDefaultUILanguage();
    WORD   primary = PRIMARYLANGID(lid);
    if (primary == LANG_KOREAN) return "ko";
    if (primary == LANG_CHINESE) return "zh";
    return "en";
#else
    const char* lc = getenv("LANG");
    if (!lc) return "en";
    std::string s(lc);
    if (s.rfind("ko", 0) == 0) return "ko";
    if (s.rfind("zh", 0) == 0) return "zh";
    return "en";
#endif
}

// ---------------------------------------------------------------------------
// Injector config  (injector.cfg, exe 옆에 저장)
// ---------------------------------------------------------------------------

struct InjectorConfig {
    std::string adb_path;
    std::string adb_port;
    std::string lang;
};

static InjectorConfig load_config(const std::string& cfg_path)
{
    InjectorConfig cfg;
    FILE* f = fopen(cfg_path.c_str(), "r");
    if (!f) return cfg;
    char line[2048];
    while (fgets(line, sizeof(line), f)) {
        std::string s = line;
        while (!s.empty() && (s.back() == '\n' || s.back() == '\r' || s.back() == ' '))
            s.pop_back();
        auto eq = s.find('=');
        if (eq == std::string::npos) continue;
        std::string key = s.substr(0, eq);
        std::string val = s.substr(eq + 1);
        if      (key == "adb_path") cfg.adb_path = val;
        else if (key == "adb_port") cfg.adb_port = val;
        else if (key == "lang")     cfg.lang      = val;
    }
    fclose(f);
    return cfg;
}

static void save_config(const std::string& cfg_path, const InjectorConfig& cfg)
{
    FILE* f = fopen(cfg_path.c_str(), "w");
    if (!f) {
        printf("%s\n", eversoul::i18n::T("injector.warn_cfg_write", "path", cfg_path).c_str());
        return;
    }
    fprintf(f, "adb_path=%s\n", cfg.adb_path.c_str());
    fprintf(f, "adb_port=%s\n", cfg.adb_port.c_str());
    fprintf(f, "lang=%s\n",     cfg.lang.c_str());
    fclose(f);
}

static InjectorConfig prompt_config()
{
    using namespace eversoul::i18n;
    InjectorConfig cfg;
    cfg.lang = detect_system_lang();
    set_lang(cfg.lang);

    printf("[config] %s\n", T("injector.config_needed").c_str());

    printf("  %s\n  %s\n  > ", T("injector.adb_path_prompt").c_str(),
                                T("injector.adb_path_example").c_str());
    std::getline(std::cin, cfg.adb_path);
    while (!cfg.adb_path.empty() && cfg.adb_path.back() == ' ')
        cfg.adb_path.pop_back();

    printf("  %s\n  %s\n  > ", T("injector.adb_port_prompt").c_str(),
                                T("injector.adb_port_example").c_str());
    std::getline(std::cin, cfg.adb_port);
    while (!cfg.adb_port.empty() && cfg.adb_port.back() == ' ')
        cfg.adb_port.pop_back();

    return cfg;
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
    using namespace eversoul::i18n;
    if (probe_port(9999)) {
        printf("%s\n", T("injector.server_running").c_str());
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
        printf("%s\n", T("injector.server_started").c_str());
        Sleep(600);
    } else {
        fprintf(stderr, "%s\n",
            T("injector.server_fail", "err", std::to_string(GetLastError())).c_str());
    }
#else
    pid_t pid = fork();
    if (pid == 0) {
        setsid();
        execl(exe_path.c_str(), exe_path.c_str(), "--mock-only", nullptr);
        _exit(1);
    } else if (pid > 0) {
        printf("%s\n", T("injector.server_started").c_str());
        usleep(600000);
    } else {
        fprintf(stderr, "%s\n", T("injector.server_fail", "err", "fork").c_str());
    }
#endif
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
    std::string server_exe;
    bool opt_no_wait      = false;
    bool opt_reset_config = false;
    bool opt_check        = false;

    for (int i = 1; i < argc; ++i) {
        std::string a = argv[i];
        if      (a == "--no-wait")      { opt_no_wait = true; }
        else if (a == "--reset-config") { opt_reset_config = true; }
        else if (a == "--check")        { opt_check = true; }
        else if (server_exe.empty())    { server_exe = a; }
    }

    const std::string base_dir    = exe_dir();
    const std::string cfg_path    = base_dir + "/injector.cfg";
    const std::string patched_apk = base_dir + "/apk/change_only/base_patched.apk";
    const std::string split_apk   = base_dir + "/apk/origin/split_config.arm64_v8a.apk";
    const std::string cawwyayy_so = base_dir + "/apk/change_only/libcawwyayy_orig.so";

    // --- config: load / prompt -----------------------------------------------
    bool first_run = false;
    InjectorConfig cfg = {};
    if (!opt_reset_config) cfg = load_config(cfg_path);
    if (cfg.lang.empty()) cfg.lang = detect_system_lang();
    eversoul::i18n::set_lang(cfg.lang);

    if (cfg.adb_path.empty() || cfg.adb_port.empty()) {
        cfg = prompt_config();
        save_config(cfg_path, cfg);
        printf("%s\n", eversoul::i18n::T("injector.config_saved", "path", cfg_path).c_str());
        first_run = true;
    }

    const std::string& adb    = cfg.adb_path;
    const std::string  serial = "127.0.0.1:" + cfg.adb_port;

    if (opt_check) {
        std::string pm = run_adb(adb,
            "-s " + serial + " shell pm list packages com.kakaogames.eversoul 2>&1");
        bool has_eversoul = pm.find("com.kakaogames.eversoul") != std::string::npos;
        printf("{\"adb\":\"%s\",\"serial\":\"%s\",\"eversoul\":%s,"
               "\"patched_apk\":%s,\"split_apk\":%s,\"cawwyayy_so\":%s}\n",
            adb.c_str(), serial.c_str(),
            has_eversoul ? "true" : "false",
            path_exists(patched_apk) ? "true" : "false",
            path_exists(split_apk)   ? "true" : "false",
            path_exists(cawwyayy_so) ? "true" : "false");
        return 0;
    }

    if (!path_exists(patched_apk)) {
        fprintf(stderr, "%s\n", eversoul::i18n::T("injector.err_patched_apk", "path", patched_apk).c_str());
        return 1;
    }
    if (!path_exists(split_apk)) {
        fprintf(stderr, "%s\n", eversoul::i18n::T("injector.err_split_apk", "path", split_apk).c_str());
        return 1;
    }
    if (!path_exists(cawwyayy_so)) {
        fprintf(stderr, "%s\n", eversoul::i18n::T("injector.err_so", "path", cawwyayy_so).c_str());
        return 1;
    }

    if (server_exe.empty()) {
#ifdef _WIN32
        server_exe = base_dir + "\\eversoul_offline_server.exe";
#else
        server_exe = base_dir + "/eversoul_offline_server";
#endif
        if (!path_exists(server_exe)) server_exe.clear();
    }

    // --- 결정: SO가 기기에 있으면 간소 모드, 없으면 전체 설치 ---------------
    // (최초 설정이면 무조건 전체 설치)
    auto check_so_on_device = [&]() -> bool {
        std::string out = run_adb(adb,
            "-s " + serial +
            " shell ls /data/local/tmp/libcawwyayy_orig.so 2>&1");
        return out.find("No such file") == std::string::npos &&
               out.find("not found")    == std::string::npos &&
               !out.empty();
    };

    auto do_adb_connect = [&]() -> bool {
        printf("%s\n", eversoul::i18n::T("injector.step_connect", "serial", serial).c_str());
        std::string out = run_adb(adb, "connect " + serial);
        printf("  %s", out.c_str());
        return out.find("connected") != std::string::npos ||
               out.find("already")   != std::string::npos;
    };

    auto do_install = [&]() -> bool {
        printf("%s\n", eversoul::i18n::T("injector.step_install").c_str());
        printf("%s\n", eversoul::i18n::T("injector.apk_base",  "path", patched_apk).c_str());
        printf("%s\n", eversoul::i18n::T("injector.apk_split", "path", split_apk).c_str());
        std::string result = run_adb(adb,
            "-s " + serial +
            " install-multiple -r"
            " \"" + patched_apk + "\""
            " \"" + split_apk   + "\"");
        printf("  %s", result.c_str());
        if (result.find("Success") == std::string::npos) {
            fprintf(stderr, "%s\n", eversoul::i18n::T("injector.err_install").c_str());
            return false;
        }
        printf("%s\n", eversoul::i18n::T("injector.install_ok").c_str());
        return true;
    };

    auto do_verify = [&]() -> bool {
        printf("%s\n", eversoul::i18n::T("injector.step_verify").c_str());
        std::string pm = run_adb(adb,
            "-s " + serial + " shell pm list packages com.kakaogames.eversoul 2>&1");
        if (pm.find("com.kakaogames.eversoul") == std::string::npos) {
            fprintf(stderr, "%s\n", eversoul::i18n::T("injector.err_verify").c_str());
            return false;
        }
        printf("%s\n", eversoul::i18n::T("injector.verify_ok").c_str());
        return true;
    };

    auto do_push_reverse = [&](const std::string& step_key) {
        printf("%s\n", eversoul::i18n::T(step_key).c_str());
        run_adb(adb, "-s " + serial +
            " push \"" + cawwyayy_so + "\" /data/local/tmp/libcawwyayy_orig.so");
        printf("%s\n", eversoul::i18n::T("injector.push_ok").c_str());
        run_adb(adb, "-s " + serial + " reverse tcp:9999 tcp:9999");
        printf("%s\n", eversoul::i18n::T("injector.reverse_ok").c_str());
    };

    auto do_launch = [&](const std::string& step_key) {
        printf("%s\n", eversoul::i18n::T(step_key).c_str());
        run_adb(adb, "-s " + serial + " shell am force-stop com.kakaogames.eversoul");
#ifdef _WIN32
        Sleep(800);
#else
        usleep(800000);
#endif
        run_adb(adb, "-s " + serial +
            " shell am start -n com.kakaogames.eversoul/com.kakaogame.KGUnityPlayerActivity"
            " -a android.intent.action.MAIN -c android.intent.category.LAUNCHER");
        printf("%s\n", eversoul::i18n::T("injector.launch_ok").c_str());
    };

    // --- 1. offline server ---------------------------------------------------
    printf("%s\n", eversoul::i18n::T("injector.step_server").c_str());
    start_offline_server(server_exe);

    // --- 2. adb connect ------------------------------------------------------
    if (!do_adb_connect()) {
        fprintf(stderr, "%s\n", eversoul::i18n::T("injector.err_connect").c_str());
        return 1;
    }
    printf("%s\n", eversoul::i18n::T("injector.connect_ok", "serial", serial).c_str());

    if (first_run) {
        // 전체 파이프라인: install → verify → push SO → reverse → launch
        if (!do_install())  return 1;
        if (!do_verify())   return 1;
        do_push_reverse("injector.step_push_rev");
        do_launch("injector.step_launch");
    } else {
        // SO 존재 확인 → 있으면 간소, 없으면 전체
        printf("%s\n", eversoul::i18n::T("injector.step_check_so").c_str());
        if (check_so_on_device()) {
            printf("%s\n", eversoul::i18n::T("injector.so_ok", "path",
                "/data/local/tmp/libcawwyayy_orig.so").c_str());
            do_push_reverse("injector.step_push_rev2");
            do_launch("injector.step_launch2");
        } else {
            printf("%s\n", eversoul::i18n::T("injector.so_missing_fallback").c_str());
            if (!do_install())  return 1;
            if (!do_verify())   return 1;
            do_push_reverse("injector.step_push_rev");
            do_launch("injector.step_launch");
        }
    }

    std::thread logcat_thr([&]() { stream_logcat(adb, serial); });
    logcat_thr.detach();

    if (opt_no_wait) {
        printf("\n%s\n", eversoul::i18n::T("injector.running_nowait").c_str());
        fflush(stdout);
        for (;;) {
#ifdef _WIN32
            Sleep(2000);
#else
            sleep(2);
#endif
        }
    } else {
        printf("\n%s\n", eversoul::i18n::T("injector.running_wait").c_str());
        std::cin.get();
    }

    return 0;
}
