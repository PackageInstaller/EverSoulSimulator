// console_main.cpp — CMD 전용 모드 진입점.
//   - 메인 콘솔 창: 서버 로그 (stdout)
//   - 새 콘솔 창 자동 생성: adb logcat 전용
//   - 기본 브라우저 자동 열기: http://127.0.0.1:9991/web/
//   - Ctrl+C: 정상 종료
#include <windows.h>
#include <shellapi.h>
#include <atomic>
#include <cstdlib>
#include <filesystem>
#include <string>

#include "common.hpp"
#include "server.hpp"
#include "adb_runner.hpp"
#include "logcat_process.hpp"
#include "log.hpp"

static std::string exe_dir()
{
    char buf[MAX_PATH] = {};
    GetModuleFileNameA(nullptr, buf, MAX_PATH);
    return std::filesystem::path(buf).parent_path().string();
}

static std::atomic<bool> g_adb_cleanup_done{false};

static void cleanup_adb();

static BOOL WINAPI ctrl_handler(DWORD type)
{
    if (type == CTRL_C_EVENT || type == CTRL_CLOSE_EVENT ||
        type == CTRL_BREAK_EVENT || type == CTRL_SHUTDOWN_EVENT)
    {
        cleanup_adb();
        eversoul::request_shutdown();
        return TRUE;
    }
    return FALSE;
}

static void cleanup_adb()
{
    bool expected = false;
    if (!g_adb_cleanup_done.compare_exchange_strong(expected, true))
        return;
    eversoul::logcat::stop();
    eversoul::adb_runner::kill_server();
}

int main()
{
    SetConsoleOutputCP(CP_UTF8);
    SetConsoleCP(CP_UTF8);

    const std::string dir = exe_dir();
    const std::string adb = (std::filesystem::path(dir) / "adb.exe").string();

    eversoul::adb_runner::set_adb_path(adb);
    std::atexit(cleanup_adb);
    eversoul::start_async(eversoul::kServerListenPort);

    SetConsoleCtrlHandler(ctrl_handler, TRUE);

    Sleep(1200);
    ShellExecuteW(nullptr, L"open", L"http://127.0.0.1:9991/web/", nullptr, nullptr, SW_SHOW);

    while (eversoul::running())
        Sleep(500);

    return 0;
}
