// router.hpp — request routing entry point.
#pragma once

#include <cstdint>

#include "common.hpp"

namespace eversoul
{

    // fd: 클라이언트 소켓 (SSE 스트림 직접 전송에 사용). status == -1 반환 시 server.cpp가 send_response 스킵.
    [[nodiscard]] HttpResponse route_request(std::uint64_t id, int fd, const HttpRequest &req);

} // namespace eversoul
