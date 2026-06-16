// logcat_process.hpp — adb logcat 프로세스 실행 및 SSE 스트리밍 관리.
#pragma once
#ifndef __ANDROID__

#include <functional>
#include <string>

namespace eversoul::logcat
{
    using LineFn = std::function<bool(const std::string &line)>;

    // adb logcat 시작. adb_path: adb.exe 경로, serial: 기기 시리얼(빈 문자열=기본).
    // 이미 실행 중이면 무시.
    void start(const std::string &adb_path, const std::string &serial);

    // adb logcat 중지.
    void stop();

    // 현재 실행 여부.
    bool running();

    // 출력 라인 구독 (반환값 false 이면 자동 제거).
    int  subscribe(LineFn fn);
    void unsubscribe(int id);
}

#endif // !__ANDROID__
