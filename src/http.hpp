// http.hpp — minimal blocking HTTP/1.1 request parsing and response writing.
#pragma once

#include <string>

#include "common.hpp"
#include "platform.hpp"

namespace eversoul
{

    [[nodiscard]] std::string recv_until_headers(socket_fd_t fd, std::string &extra);
    [[nodiscard]] bool parse_request(socket_fd_t fd, HttpRequest &req);
    void send_all(socket_fd_t fd, const std::string &data);
    [[nodiscard]] std::string status_text(long status);
    void send_response(socket_fd_t fd, const HttpResponse &res);

} // namespace eversoul
