// adb_runner.hpp — ADB 명령 실행 및 결과 SSE 스트리밍.
#pragma once
#ifndef __ANDROID__

#include <functional>
#include <string>
#include <vector>

namespace eversoul::adb_runner
{
    using LineFn = std::function<bool(const std::string &line)>;

    // adb.exe 경로 설정 (서버 설정에서 읽어 초기화).
    void set_adb_path(const std::string &path);
    std::string adb_path();

    // adb 기기 시리얼 설정.
    void set_serial(const std::string &serial);
    std::string serial();

    // adb 명령 실행 (동기). args: "devices", "reverse tcp:9991 tcp:9991" 등.
    // 표준 출력+에러 반환. 실행 기록은 ADB 로그 구독자에게 브로드캐스트.
    std::string run(const std::vector<std::string> &args);

    // ADB 로그 구독 (반환값 false 이면 자동 제거).
    int  subscribe(LineFn fn);
    void unsubscribe(int id);

    // ADB 서버를 관리자 권한(runas)으로 기동. 이미 실행 중이면 무해.
    void start_server();
    // ADB 서버 종료 (kill-server).
    void kill_server();
}

#endif // !__ANDROID__
