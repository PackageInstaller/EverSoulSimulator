// main.cpp — desktop entry point (capture/proxy/mock CLI).
#include <csignal>
#include <cstddef>
#include <atomic>
#include <cstdlib>
#include <filesystem>
#include <string>

#include "common.hpp"
#include "offline_data.hpp"
#include "server.hpp"
#include "adb_runner.hpp"

#ifdef _WIN32
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
// EXE 내장 web blob — cmake/gen_web_blob.py 가 빌드 시 생성한 web_embedded.cpp 에서 정의.
extern const unsigned char kWebBlobData[];
extern const std::size_t kWebBlobSize;
#endif

namespace
{
    std::atomic<bool> g_adb_cleanup_done{false};

    std::string exe_dir()
    {
#ifdef _WIN32
        char buf[MAX_PATH] = {};
        GetModuleFileNameA(nullptr, buf, MAX_PATH);
        return std::filesystem::path(buf).parent_path().string();
#else
        return std::filesystem::canonical("/proc/self/exe").parent_path().string();
#endif
    }

    void cleanup_adb()
    {
        bool expected = false;
        if (!g_adb_cleanup_done.compare_exchange_strong(expected, true))
            return;
        eversoul::adb_runner::kill_server();
    }
}

int main(int argc, char **argv)
{
    using namespace eversoul;

#ifdef _WIN32
    offline_data().load_embedded_web(kWebBlobData, kWebBlobSize);
    {
        HANDLE hOut = GetStdHandle(STD_OUTPUT_HANDLE);
        if (hOut != INVALID_HANDLE_VALUE) {
            DWORD mode = 0;
            if (GetConsoleMode(hOut, &mode))
                SetConsoleMode(hOut, mode | ENABLE_VIRTUAL_TERMINAL_PROCESSING | ENABLE_PROCESSED_OUTPUT);
        }
    }
#endif

    // adb 경로: EXE 위치를 동적으로 구해 copy_only/adb/adb.exe 절대 경로 설정.
    adb_runner::set_adb_path(
        (std::filesystem::path(exe_dir()) / "adb" / "adb.exe").string());
    std::atexit(cleanup_adb);

    int port = kServerListenPort;
    for (int i = 1; i < argc; ++i)
    {
        std::string arg = argv[i];
        if (arg == "--mock-only")
        {
            config().proxy_enabled = false;
        }
        else if (arg == "--proxy")
        {
            config().proxy_enabled = true;
        }
        else if (arg == "--port" && i + 1 < argc)
        {
            port = std::stoi(argv[++i]);
        }
        else if (arg == "--game-server-url" && i + 1 < argc)
        {
            config().game_server_url = argv[++i];
        }
        else if (arg == "--data-dir" && i + 1 < argc)
        {
            config().data_dir = argv[++i];
        }
    }

    std::signal(SIGINT, [](int)
                { eversoul::request_shutdown(); });
    std::signal(SIGTERM, [](int)
                { eversoul::request_shutdown(); });
    return run_server(port);
}
