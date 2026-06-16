// console_main.cpp — CMD 전용 모드 진입점.
//   - 메인 콘솔 창: 서버 로그 (stdout)
//   - 새 콘솔 창 자동 생성: adb logcat 전용
//   - 기본 브라우저 자동 열기: http://127.0.0.1:9991/web/
//   - Ctrl+C: 정상 종료
#ifndef __ANDROID__
#include <windows.h>
#include <shellapi.h>
#include <filesystem>
#include <string>

#include "common.hpp"
#include "server.hpp"
#include "offline_data.hpp"
#include "adb_runner.hpp"
#include "logcat_process.hpp"
#include "log.hpp"

extern const unsigned char kWebBlobData[];
extern const std::size_t   kWebBlobSize;

static std::string exe_dir()
{
    char buf[MAX_PATH] = {};
    GetModuleFileNameA(nullptr, buf, MAX_PATH);
    return std::filesystem::path(buf).parent_path().string();
}

static BOOL WINAPI ctrl_handler(DWORD type)
{
    if (type == CTRL_C_EVENT || type == CTRL_CLOSE_EVENT ||
        type == CTRL_BREAK_EVENT || type == CTRL_SHUTDOWN_EVENT)
    {
        eversoul::logcat::stop();
        eversoul::request_shutdown();
        return TRUE;
    }
    return FALSE;
}

int main()
{
    const std::string dir = exe_dir();
    const std::string adb = (std::filesystem::path(dir) / "adb" / "adb.exe").string();

    eversoul::offline_data().load_embedded_web(kWebBlobData, kWebBlobSize);
    eversoul::adb_runner::set_adb_path(adb);
    eversoul::start_async(eversoul::kServerListenPort);

    SetConsoleCtrlHandler(ctrl_handler, TRUE);

    // ADB logcat: 파이프 방식으로 SSE 채널에 연결 — 웹 UI ADB 탭에서 실시간 확인 가능.
    // 프로세스가 종료되면 logcat_process.cpp watchdog이 2초 후 자동 재시작.
    eversoul::logcat::start(adb, "");

    // 서버 준비 후 기본 브라우저로 웹 UI 열기
    Sleep(1200);
    ShellExecuteW(nullptr, L"open", L"http://127.0.0.1:9991/web/", nullptr, nullptr, SW_SHOW);

    while (eversoul::running())
        Sleep(500);

    return 0;
}
#endif // !__ANDROID__
