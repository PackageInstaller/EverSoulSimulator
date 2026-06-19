// har_server_main.cpp — Windows 전용 HAR 캡처 서버 진입점.
// 흐름: APK → [이 서버 포트 9991 리슨] → [요청 기록] → 실제 Kakao 서버
//       → [응답 기록] → APK 로 그대로 반환
// 빌드: bs.ps1 --har → build/har/eversoul_har_recorder.exe
// 저장: <exe위치>/har/log/{net|account|content|bundle|runtime}/{id}_{METHOD}_{slug}.json
#ifndef _WIN32
#error "eversoul_har_recorder is Windows-only"
#endif

#include <atomic>
#include <chrono>
#include <cstdio>
#include <string>
#include <thread>

#include "common.hpp"
#include "har_recorder.hpp"
#include "http.hpp"
#include "log.hpp"
#include "platform.hpp"
#include "proxy.hpp"
#include "util.hpp"

#include <curl/curl.h>
#include <windows.h>
#include <winsock2.h>
#include <ws2tcpip.h>

// common.hpp에 선언된 process-wide 싱글턴 — HAR 서버 단독 실행파일이므로 여기 정의.
namespace eversoul
{
    Config &config()
    {
        static Config cfg;
        return cfg;
    }
    std::atomic<bool> &running()
    {
        static std::atomic<bool> r{true};
        return r;
    }
    std::atomic<std::uint64_t> &request_id()
    {
        static std::atomic<std::uint64_t> id{0};
        return id;
    }
}

namespace
{
    eversoul::har::HarRecorder *g_recorder = nullptr;

    bool local_is_ws_upgrade(const eversoul::HttpRequest &req)
    {
        for (const auto &[k, v] : req.headers)
        {
            std::string lk = k;
            for (char &c : lk)
                c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
            if (lk == "upgrade")
            {
                std::string lv = v;
                for (char &c : lv)
                    c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
                if (lv.find("websocket") != std::string::npos) return true;
            }
        }
        return false;
    }

    void handle_client(int fd, sockaddr_in peer)
    {
        std::uint64_t id = ++eversoul::request_id();
        char ip[INET_ADDRSTRLEN] = {};
        inet_ntop(AF_INET, &peer.sin_addr, ip, sizeof(ip));

        eversoul::HttpRequest req;
        if (!eversoul::parse_request(fd, req))
        {
            eversoul::log_line(id, "오류", "요청 파싱 실패");
            eversoul::send_response(fd,
                eversoul::HttpResponse{400, {}, R"({"error":"bad request"})"});
            platform_close(fd);
            return;
        }

        if (local_is_ws_upgrade(req))
        {
            std::string ws_upstream = eversoul::upstream_for_path(req.path);

            eversoul::har::RequestCapture ws_rc;
            ws_rc.method       = req.method;
            ws_rc.path         = req.path;
            ws_rc.upstream_url = ws_upstream;
            ws_rc.headers      = req.headers;
            ws_rc.body         = req.body;

            eversoul::har::ResponseCapture ws_rsc;
            ws_rsc.status    = 503;
            ws_rsc.headers   = {{"Content-Type", "application/json"}};
            ws_rsc.body      = R"({"error":"ws_relay_not_supported","note":"HAR recorder captures WS request headers only; WSS relay requires TLS passthrough"})";
            ws_rsc.timing_ms = 0.0;

            g_recorder->record(id, ws_rc, ws_rsc);
            eversoul::log_line(id, "웹소켓",
                "WS 업그레이드 캡처 (WSS 릴레이 불가) path=" + req.path);
            eversoul::send_response(fd, eversoul::HttpResponse{503,
                {{"Content-Type", "application/json"}}, ws_rsc.body});
            platform_close(fd);
            return;
        }

        std::string upstream_url = eversoul::upstream_for_path(req.path);

        eversoul::log_line(id, "요청",
            std::string(ip) + " " + req.method + " " + req.path +
            " → " + upstream_url);

        auto t_start = std::chrono::steady_clock::now();
        eversoul::HttpResponse res = eversoul::proxy_request(id, req);
        auto t_end   = std::chrono::steady_clock::now();
        double timing_ms =
            std::chrono::duration<double, std::milli>(t_end - t_start).count();

        eversoul::har::RequestCapture rc;
        rc.method       = req.method;
        rc.path         = req.path;
        rc.upstream_url = upstream_url;
        rc.headers      = req.headers;
        rc.body         = req.body;

        eversoul::har::ResponseCapture rsc;
        rsc.status     = res.status;
        rsc.headers    = res.headers;
        rsc.body       = res.body;
        rsc.timing_ms  = timing_ms;

        g_recorder->record(id, rc, rsc);

        eversoul::log_line(id, "응답",
            "상태=" + std::to_string(res.status) +
            " 바이트=" + std::to_string(res.body.size()) +
            " 지연=" + std::to_string(static_cast<int>(timing_ms)) + "ms");

        eversoul::send_response(fd, res);
        platform_close(fd);
    }
} // anonymous namespace

// 갈색 배경 + 굵은 강조 ANSI 코드
#define HAR_BG       "\033[48;5;94m"
#define HAR_FG       "\033[38;5;230m"
#define HAR_BOLD     "\033[1m"
#define HAR_ACCENT   "\033[38;5;214m\033[1m"
#define HAR_RESET    "\033[0m"
#define HAR_STYLE    HAR_BG HAR_FG

static void har_enable_ansi()
{
    HANDLE h = GetStdHandle(STD_OUTPUT_HANDLE);
    DWORD mode = 0;
    if (GetConsoleMode(h, &mode))
        SetConsoleMode(h, mode | ENABLE_VIRTUAL_TERMINAL_PROCESSING);
    HANDLE he = GetStdHandle(STD_ERROR_HANDLE);
    DWORD emode = 0;
    if (GetConsoleMode(he, &emode))
        SetConsoleMode(he, emode | ENABLE_VIRTUAL_TERMINAL_PROCESSING);
}

int main()
{
    SetConsoleOutputCP(CP_UTF8);
    SetConsoleCP(CP_UTF8);
    har_enable_ansi();

    WSADATA wsa{};
    WSAStartup(MAKEWORD(2, 2), &wsa);
    curl_global_init(CURL_GLOBAL_DEFAULT);
    eversoul::open_log_file();

    char exe_buf[MAX_PATH] = {};
    GetModuleFileNameA(nullptr, exe_buf, MAX_PATH);
    std::string exe_dir(exe_buf);
    {
        auto sep = exe_dir.rfind('\\');
        if (sep != std::string::npos) exe_dir = exe_dir.substr(0, sep);
    }

    // 동일 경로 adb.exe로 reverse 설정 (이미 연결된 상태 검증 포함)
    {
        std::string adb_path = exe_dir + "\\adb.exe";
        DWORD fa = GetFileAttributesA(adb_path.c_str());
        if (fa == INVALID_FILE_ATTRIBUTES)
        {
            std::fprintf(stderr, HAR_STYLE "\xe2\x9a\xa0  adb.exe \xeb\xaf\xb8\xec\xa1\xb4\xec\x9e\xac \xe2\x80\x94 ADB \xec\x97\xb0\xea\xb2\xb0 \xec\x83\x9d\xeb\x9e\xb5\n" HAR_RESET);
        }
        else
        {
            std::printf(HAR_STYLE HAR_BOLD "\n  \xe2\x96\xba ADB \xed\x8f\xac\xed\x8a\xb8 \xeb\xb2\x88\xed\x98\xb8 \xec\x9e\x85\xeb\xa0\xa5 (\xec\x98\x88: 5559): " HAR_RESET HAR_STYLE);
            std::fflush(stdout);
            char device_buf[256] = {};
            if (std::fgets(device_buf, sizeof(device_buf), stdin))
            {
                for (char &c : device_buf) { if (c == '\r' || c == '\n') { c = '\0'; break; } }
                std::string device = "127.0.0.1:" + std::string(device_buf);

                // 이미 tcp:9991 연결됐는지 adb reverse --list 출력으로 검증
                bool already_connected = false;
                {
                    SECURITY_ATTRIBUTES sa{};
                    sa.nLength        = sizeof(sa);
                    sa.bInheritHandle = TRUE;
                    HANDLE hRead = nullptr, hWrite = nullptr;
                    if (CreatePipe(&hRead, &hWrite, &sa, 0))
                    {
                        SetHandleInformation(hRead, HANDLE_FLAG_INHERIT, 0);
                        std::string list_cmd = "\"" + adb_path + "\" -s " + device + " reverse --list";
                        STARTUPINFOA si_l{};
                        si_l.cb         = sizeof(si_l);
                        si_l.dwFlags    = STARTF_USESTDHANDLES;
                        si_l.hStdOutput = hWrite;
                        si_l.hStdError  = hWrite;
                        PROCESS_INFORMATION pi_l{};
                        if (CreateProcessA(nullptr, const_cast<char *>(list_cmd.c_str()),
                                           nullptr, nullptr, TRUE, CREATE_NO_WINDOW,
                                           nullptr, nullptr, &si_l, &pi_l))
                        {
                            CloseHandle(hWrite); hWrite = nullptr;
                            WaitForSingleObject(pi_l.hProcess, 5000);
                            CloseHandle(pi_l.hProcess);
                            CloseHandle(pi_l.hThread);
                            char rbuf[4096] = {};
                            DWORD rb = 0;
                            ReadFile(hRead, rbuf, sizeof(rbuf) - 1, &rb, nullptr);
                            if (std::string(rbuf, rb).find("tcp:9991") != std::string::npos)
                                already_connected = true;
                        }
                        if (hWrite) CloseHandle(hWrite);
                        CloseHandle(hRead);
                    }
                }

                if (already_connected)
                {
                    std::printf(HAR_STYLE HAR_ACCENT "  \xe2\x9c\x94  tcp:9991 \xec\x9d\xb4\xeb\xaf\xb8 \xec\x97\xb0\xea\xb2\xb0\xeb\x90\xa8 \xe2\x80\x94 \xec\x9e\xac\xec\x97\xb0\xea\xb2\xb0 \xec\x83\x9d\xeb\x9e\xb5 (device=%s)\n" HAR_RESET HAR_STYLE, device.c_str());
                    std::fflush(stdout);
                }
                else
                {
                    std::string cmd = "\"" + adb_path + "\" -s " + device + " reverse tcp:9991 tcp:9991";
                    STARTUPINFOA si{};
                    si.cb = sizeof(si);
                    PROCESS_INFORMATION pi{};
                    if (CreateProcessA(nullptr, const_cast<char *>(cmd.c_str()),
                                       nullptr, nullptr, FALSE, 0, nullptr, nullptr, &si, &pi))
                    {
                        WaitForSingleObject(pi.hProcess, 10000);
                        DWORD ec = 0;
                        GetExitCodeProcess(pi.hProcess, &ec);
                        CloseHandle(pi.hProcess);
                        CloseHandle(pi.hThread);
                        if (ec != 0)
                            std::fprintf(stderr, HAR_STYLE "\xe2\x9a\xa0  ADB \xeb\xa6\xac\xeb\xb2\x84\xec\x8a\xa4 \xec\x8b\xa4\xed\x8c\xa8 (\xec\xa2\x85\xeb\xa3\x8c\xcf\xbd\xeb\x93\x9c=%lu) \xe2\x80\x94 \xec\x84\x9c\xeb\xb2\x84 \xea\xb3\x84\xec\x86\x8d \xec\x8b\xa4\xed\x96\x89\n" HAR_RESET, ec);
                        else
                        {
                            std::printf(HAR_STYLE HAR_ACCENT "  \xe2\x9c\x94  ADB \xeb\xa6\xac\xeb\xb2\x84\xec\x8a\xa4 \xec\x97\xb0\xea\xb2\xb0 \xec\x84\xb1\xea\xb3\xb5 (device=%s)\n" HAR_RESET HAR_STYLE, device.c_str());
                            std::fflush(stdout);
                        }
                    }
                    else
                        std::fprintf(stderr, HAR_STYLE "\xe2\x9a\xa0  adb.exe \xec\x8b\xa4\xed\x96\x89 \xec\x8b\xa4\xed\x8c\xa8 \xe2\x80\x94 \xec\x84\x9c\xeb\xb2\x84 \xea\xb3\x84\xec\x86\x8d \xec\x8b\xa4\xed\x96\x89\n" HAR_RESET);
                }
            }
        }
    }

    eversoul::har::HarRecorder recorder(exe_dir);
    g_recorder = &recorder;

    const int port = eversoul::kServerListenPort; // 9991

    int server_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (server_fd < 0)
    {
        std::fprintf(stderr, HAR_STYLE "❌  소켓 생성 실패\n" HAR_RESET);
        return 1;
    }

    int yes = 1;
    setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR,
               reinterpret_cast<const char *>(&yes), sizeof(yes));

    sockaddr_in addr{};
    addr.sin_family      = AF_INET;
    addr.sin_addr.s_addr = htonl(INADDR_ANY);
    addr.sin_port        = htons(static_cast<std::uint16_t>(port));

    if (bind(server_fd, reinterpret_cast<sockaddr *>(&addr), sizeof(addr)) < 0)
    {
        std::fprintf(stderr, HAR_STYLE "❌  포트 %d 바인드 실패\n" HAR_RESET, port);
        platform_close(server_fd);
        return 1;
    }
    if (listen(server_fd, 64) < 0)
    {
        std::fprintf(stderr, HAR_STYLE "❌  리슨 실패\n" HAR_RESET);
        platform_close(server_fd);
        return 1;
    }

    std::printf(HAR_STYLE HAR_ACCENT
        "\n  \xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\n"
        "    \xe2\x97\x8f  \xec\x97\x90\xeb\xb2\x84\xec\x86\x8c\xec\x9a\xb8 \xec\x98\xa4\xed\x94\x84\xeb\x9d\xbc\xec\x9d\xb8 HAR \xec\xba\xa1\xec\xb2\x98 \xec\x84\x9c\xeb\xb2\x84\n"
        "  \xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\xe2\x96\x88\n"
        HAR_RESET HAR_STYLE HAR_FG
        "  \xe2\x96\xba \xeb\xa6\xac\xec\x8a\xa4\xeb\x8b\x9d \xed\x8f\xac\xed\x8a\xb8 : %d\n"
        "  \xe2\x96\xba \xec\xb6\x9c\xeb\xa0\xa5 \xeb\xa3\xa8\xed\x8a\xb8 : %s\n"
        "  \xe2\x96\xba \xec\xb9\xb4\xed\x85\x8c\xea\xb3\xa0\xeb\xa6\xac : net / account / content / bundle / runtime\n"
        "  \xe2\x96\xba \xed\x9a\x8c\xeb\xa6\x84 \xec\xa0\x95\xeb\xb3\xb4 : APK \xe2\x86\x92 [\xec\xba\xa1\xec\xb2\x98] \xe2\x86\x92 \xec\xb9\xb4\xec\xb9\xb4\xec\x98\xa4 \xec\x84\x9c\xeb\xb2\x84 \xe2\x86\x92 [\xec\xba\xa1\xec\xb2\x98] \xe2\x86\x92 APK\n\n"
        HAR_RESET HAR_STYLE,
        port, exe_dir.c_str());
    std::fflush(stdout);

    while (eversoul::running())
    {
        sockaddr_in peer{};
        socklen_t   len = sizeof(peer);
        int client_fd = accept(server_fd,
                               reinterpret_cast<sockaddr *>(&peer), &len);
        if (client_fd < 0)
        {
            if (eversoul::running())
                eversoul::log_line(0, "오류", "클라이언트 연결 수락 실패");
            continue;
        }
        std::thread(handle_client, client_fd, peer).detach();
    }

    platform_close(server_fd);
    curl_global_cleanup();
    WSACleanup();
    return 0;
}
