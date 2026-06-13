// injector_main.cpp — EverSoul offline injector (Windows / macOS / Linux).
//
// Pipeline:
//   1. Start eversoul_offline_server in the background (if not already up).
//   2. adb connect to the emulator.
//   3. pm path -> extract device APK paths -> adb pull -> %TEMP%/previous/
//   4. Copy pulled APKs to <exe_dir>/apk/backup/
//   5. adb install-multiple <exe_dir>/apk/base_patched.apk
//                           <exe_dir>/apk/split_config.arm64_v8a.apk
//   6. Push <exe_dir>/apk/libcawwyayy_patched.so -> /data/local/tmp/
//   7. adb reverse tcp:9999 tcp:9999.
//   8. force-stop the game, then am start.
//   9. Stream adb logcat filtered to the libswappywrapper tag.

#ifdef _WIN32
#  define WIN32_LEAN_AND_MEAN
#  include <winsock2.h>
#  include <ws2tcpip.h>
#  include <windows.h>
#  pragma comment(lib, "ws2_32")
#else
#  include <arpa/inet.h>
#  include <errno.h>
#  include <netinet/in.h>
#  include <sys/socket.h>
#  include <sys/stat.h>
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

static std::string filename_of(const std::string& path)
{
    auto sep = path.find_last_of("/\\");
    return sep == std::string::npos ? path : path.substr(sep + 1);
}

static bool make_dir(const std::string& path)
{
#ifdef _WIN32
    int wlen = MultiByteToWideChar(CP_UTF8, 0, path.c_str(), -1, nullptr, 0);
    std::wstring wpath(wlen, L'\0');
    MultiByteToWideChar(CP_UTF8, 0, path.c_str(), -1, wpath.data(), wlen);
    return CreateDirectoryW(wpath.c_str(), nullptr) ||
           GetLastError() == ERROR_ALREADY_EXISTS;
#else
    return mkdir(path.c_str(), 0755) == 0 || errno == EEXIST;
#endif
}

static bool copy_file(const std::string& src, const std::string& dst)
{
#ifdef _WIN32
    int slen = MultiByteToWideChar(CP_UTF8, 0, src.c_str(), -1, nullptr, 0);
    std::wstring wsrc(slen, L'\0');
    MultiByteToWideChar(CP_UTF8, 0, src.c_str(), -1, wsrc.data(), slen);
    int dlen = MultiByteToWideChar(CP_UTF8, 0, dst.c_str(), -1, nullptr, 0);
    std::wstring wdst(dlen, L'\0');
    MultiByteToWideChar(CP_UTF8, 0, dst.c_str(), -1, wdst.data(), dlen);
    return CopyFileW(wsrc.c_str(), wdst.c_str(), FALSE) != 0;
#else
    FILE* in  = fopen(src.c_str(), "rb");
    if (!in) return false;
    FILE* out = fopen(dst.c_str(), "wb");
    if (!out) { fclose(in); return false; }
    char buf[65536];
    std::size_t n;
    while ((n = fread(buf, 1, sizeof(buf), in)) > 0)
        fwrite(buf, 1, n, out);
    fclose(in);
    fclose(out);
    return true;
#endif
}

static std::string temp_dir()
{
#ifdef _WIN32
    char buf[MAX_PATH] = {};
    GetTempPathA(MAX_PATH, buf);
    std::string t = buf;
    if (!t.empty() && (t.back() == '\\' || t.back() == '/'))
        t.pop_back();
    return t;
#else
    return "/tmp";
#endif
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
    std::string so_path;
    std::string server_exe;
    std::string arg_serial;
    std::string arg_adb;
    bool opt_reset_config = false;
    bool opt_check        = false;

    for (int i = 1; i < argc; ++i) {
        std::string a = argv[i];
        if      (a == "--no-wait")                    { /* logcat_thr.join()으로 대체 */ }
        else if (a == "--reset-config")               { opt_reset_config = true; }
        else if (a == "--check")                      { opt_check = true; }
        else if (a == "--serial" && i + 1 < argc)     { arg_serial = argv[++i]; }
        else if (a == "--adb"    && i + 1 < argc)     { arg_adb    = argv[++i]; }
        else if (so_path.empty())                     { so_path = a; }
        else if (server_exe.empty())                  { server_exe = a; }
    }

    const std::string base_dir    = exe_dir();
    const std::string cfg_path    = base_dir + "/injector.cfg";
    const std::string patched_apk = base_dir + "/apk/base_patched.apk";
    const std::string split_apk   = base_dir + "/apk/split_config.arm64_v8a.apk";
    const std::string cawwyayy_so = base_dir + "/apk/libcawwyayy_patched.so";
    const std::string backup_dir  = base_dir + "/apk/backup";

    std::string device_base_apk;
    std::string device_app_dir;

    // --- config: load / prompt -----------------------------------------------
    InjectorConfig cfg = {};
    if (!opt_reset_config) cfg = load_config(cfg_path);
    if (cfg.lang.empty()) cfg.lang = detect_system_lang();
    eversoul::i18n::set_lang(cfg.lang);

    if (!arg_adb.empty())    cfg.adb_path = arg_adb;
    if (!arg_serial.empty()) cfg.adb_port = {};

    if (cfg.adb_path.empty() || (cfg.adb_port.empty() && arg_serial.empty())) {
        cfg = prompt_config();
        save_config(cfg_path, cfg);
        printf("%s\n", eversoul::i18n::T("injector.config_saved", "path", cfg_path).c_str());
    }

    const std::string& adb    = cfg.adb_path;
    const std::string  serial = arg_serial.empty() ? "127.0.0.1:" + cfg.adb_port : arg_serial;

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

    auto do_adb_connect = [&]() -> bool {
        printf("%s\n", eversoul::i18n::T("injector.step_connect", "serial", serial).c_str());
        std::string out = run_adb(adb, "connect " + serial);
        printf("  %s", out.c_str());
        return out.find("connected") != std::string::npos ||
               out.find("already")   != std::string::npos;
    };

    auto do_backup_pull = [&]() -> bool {
        using namespace eversoul::i18n;

        printf("%s\n", T("injector.step_query_apk").c_str());
        std::string pm_out = run_adb(adb,
            "-s " + serial + " shell pm path com.kakaogames.eversoul 2>&1");
        if (pm_out.empty() || pm_out.find("package:") == std::string::npos) {
            fprintf(stderr, "%s\n", T("injector.err_pm_path").c_str());
            return false;
        }

        std::vector<std::string> device_apks;
        {
            std::istringstream ss(pm_out);
            std::string line;
            while (std::getline(ss, line)) {
                while (!line.empty() && (line.back() == '\r' || line.back() == '\n'))
                    line.pop_back();
                auto pos = line.find("package:");
                if (pos != std::string::npos)
                    device_apks.push_back(line.substr(pos + 8));
            }
        }

        const std::string prev_dir = temp_dir() + "/previous";
        make_dir(prev_dir);

        for (const auto& apk_path : device_apks) {
            if (device_base_apk.empty() &&
                apk_path.find("base.apk") != std::string::npos) {
                device_base_apk = apk_path;
                auto last_slash = apk_path.rfind('/');
                if (last_slash != std::string::npos)
                    device_app_dir = apk_path.substr(0, last_slash + 1);
            }
        }

        printf("%s\n", T("injector.step_pull_apk").c_str());
        for (const auto& apk_path : device_apks) {
            std::string fname  = filename_of(apk_path);
            std::string local  = prev_dir + "/" + fname;
            std::string result = run_adb(adb,
                "-s " + serial + " pull \"" + apk_path + "\" \"" + local + "\" 2>&1");
            if (result.find("error") != std::string::npos ||
                result.find("failed") != std::string::npos) {
                printf("  %s\n", T("injector.warn_pull_fail", "path", apk_path).c_str());
            } else {
                printf("  %s\n", T("injector.pull_apk_ok", "path", local).c_str());
            }
        }

        printf("%s\n", T("injector.step_backup_apk").c_str());
        make_dir(backup_dir);
        for (const auto& apk_path : device_apks) {
            std::string fname = filename_of(apk_path);
            std::string src   = prev_dir + "/" + fname;
            std::string dst   = backup_dir + "/" + fname;
            if (path_exists(src)) {
                copy_file(src, dst);
                printf("  %s\n", T("injector.backup_apk_ok", "path", dst).c_str());
            }
        }

        return true;
    };

    auto do_install = [&]() -> bool {
        printf("%s\n", eversoul::i18n::T("injector.step_install2").c_str());
        printf("%s\n", eversoul::i18n::T("injector.apk_base", "path", patched_apk).c_str());
        if (device_base_apk.empty()) {
            fprintf(stderr, "%s\n", eversoul::i18n::T("injector.err_root_no_base").c_str());
            return false;
        }
        std::string push_result = run_adb(adb,
            "-s " + serial + " push \"" + patched_apk + "\" /data/local/tmp/base_patched.apk");
        if (push_result.find("error") != std::string::npos ||
            push_result.find("failed") != std::string::npos) {
            fprintf(stderr, "%s\n", eversoul::i18n::T("injector.err_root_replace").c_str());
            return false;
        }
        printf("%s\n", eversoul::i18n::T("injector.push_apk_ok").c_str());
        std::string cp_result = run_adb(adb,
            "-s " + serial + " shell su -c"
            " \"cp /data/local/tmp/base_patched.apk '" + device_base_apk + "'"
            " && chmod 644 '" + device_base_apk + "'\"");
        if (cp_result.find("error") != std::string::npos ||
            cp_result.find("Permission denied") != std::string::npos ||
            cp_result.find("failed") != std::string::npos) {
            fprintf(stderr, "%s\n", eversoul::i18n::T("injector.err_root_replace").c_str());
            return false;
        }
        printf("%s\n", eversoul::i18n::T("injector.root_replace_ok", "path", device_base_apk).c_str());
        return true;
    };

    auto do_verify = [&]() -> bool {
        printf("%s\n", eversoul::i18n::T("injector.step_verify2").c_str());
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
        if (!so_path.empty() && path_exists(so_path) && !device_app_dir.empty()) {
            run_adb(adb, "-s " + serial +
                " push \"" + so_path + "\" /data/local/tmp/libswappywrapper.so");
            printf("%s\n", eversoul::i18n::T("injector.push_swapper_ok").c_str());
            run_adb(adb, "-s " + serial + " shell su -c"
                " \"cp /data/local/tmp/libswappywrapper.so"
                " '" + device_app_dir + "lib/arm64/libswappywrapper.so'"
                " && chmod 644 '" + device_app_dir + "lib/arm64/libswappywrapper.so'\"");
            printf("%s\n", eversoul::i18n::T("injector.root_swapper_ok").c_str());
        }
        run_adb(adb, "-s " + serial +
            " push \"" + cawwyayy_so + "\" /data/local/tmp/libcawwyayy_patched.so");
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

    // 항상 전체 파이프라인: 백업 pull → install → verify → push SO → reverse → launch
    if (!do_backup_pull()) return 1;
    if (!do_install())     return 1;
    if (!do_verify())      return 1;
    do_push_reverse("injector.step_push_rev3");
    do_launch("injector.step_launch3");

    std::thread logcat_thr([&]() { stream_logcat(adb, serial); });

    printf("\n%s\n", eversoul::i18n::T("injector.running_nowait").c_str());
    fflush(stdout);
    logcat_thr.join();

    return 0;
}
