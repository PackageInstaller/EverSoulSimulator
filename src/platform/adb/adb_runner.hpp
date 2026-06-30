// adb_runner.hpp — ADB 명령 실행 및 결과 SSE 스트리밍.
#pragma once

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
    std::string run_for_serial(const std::string &serial, const std::vector<std::string> &args);

    // 에뮬레이터 파일시스템에서 파일 내용을 직접 읽어 반환 (broadcast 없음).
    // adb -s <serial> shell cat <device_path> 실행. 실패 시 빈 문자열.
    std::string pull_bytes(const std::string &serial, const std::string &device_path, int timeout_ms = 30000);

    std::string kill_server();

    // ADB 로그 구독 (반환값 false 이면 자동 제거).
    int  subscribe(LineFn fn);
    void unsubscribe(int id);

    struct AdbProbeState
    {
        bool connected = false;
        bool rooted = false;
        bool reversed = false;
        bool eversoul = false;
        bool game_running = false;
        int host_port = 9991;
        std::string serial;
        std::string output;
        std::vector<std::string> devices;
        std::vector<std::string> reverse_entries;
    };

    std::vector<std::string> parse_adb_devices(const std::string &output);
    std::vector<std::string> parse_adb_reverse_entries(const std::string &output);
    
    AdbProbeState probe_adb_target(const std::string &raw_target);
    std::string adb_probe_json(const AdbProbeState &state);
    
    
    std::vector<std::string> cached_adb_reverse_entries();
    void cache_adb_reverse_entries(const std::vector<std::string> &entries);
    void cache_adb_game_running(bool running);
    std::string active_adb_serial();
    bool adb_output_ok(const std::string &output);
    bool reverse_entries_have_port(const std::vector<std::string> &entries, int port);

    void initialize_adb_from_ini();
}
