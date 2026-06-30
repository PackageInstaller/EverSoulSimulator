// router.hpp — request routing entry point.
#pragma once

#include <cstdint>

#include "common.hpp"

namespace eversoul
{

    // fd: 클라이언트 소켓 (SSE 스트림 직접 전송에 사용). status == -1 반환 시 server.cpp가 send_response 스킵.
    [[nodiscard]] HttpResponse route_request(std::uint64_t id, int fd, const HttpRequest &req);

    // INI의 adb_serial 기반 ADB 초기화 루틴 — 서버 시작 시 1회 호출.
    // start-server → connect → root → reverse → 캐시 갱신 순서로 실행.
    void initialize_adb_from_ini();

} // namespace eversoul
