// http.hpp — minimal blocking HTTP/1.1 request parsing and response writing.
#pragma once

#include <string>

#include "common.hpp"

namespace eversoul
{

    [[nodiscard]] std::string recv_until_headers(int fd, std::string &extra);
    [[nodiscard]] bool parse_request(int fd, HttpRequest &req);
    void send_all(int fd, const std::string &data);
    [[nodiscard]] std::string status_text(long status);
    void send_response(int fd, const HttpResponse &res);

} // namespace eversoul
