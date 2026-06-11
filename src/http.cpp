// http.cpp — HTTP/1.1 parse + response.
#include "http.hpp"

#include <sys/socket.h>

#include <sstream>

#include "util.hpp"

namespace eversoul
{

    std::string recv_until_headers(int fd, std::string &extra)
    {
        std::string data;
        char buf[4096];
        while (data.size() < kMaxHeaderBytes)
        {
            ssize_t n = recv(fd, buf, sizeof(buf), 0);
            if (n <= 0)
                break;
            data.append(buf, static_cast<std::size_t>(n));
            std::size_t pos = data.find("\r\n\r\n");
            if (pos != std::string::npos)
            {
                extra = data.substr(pos + 4);
                return data.substr(0, pos + 4);
            }
        }
        return data;
    }

    bool parse_request(int fd, HttpRequest &req)
    {
        std::string extra;
        std::string header_blob = recv_until_headers(fd, extra);
        if (header_blob.empty())
            return false;

        std::istringstream in(header_blob);
        if (!(in >> req.method >> req.path >> req.version))
            return false;
        std::string line;
        std::getline(in, line);
        while (std::getline(in, line))
        {
            if (line == "\r" || line.empty())
                break;
            std::size_t colon = line.find(':');
            if (colon == std::string::npos)
                continue;
            req.headers[trim(line.substr(0, colon))] = trim(line.substr(colon + 1));
        }

        std::size_t content_length = 0;
        bool has_content_length = false;
        bool is_upgrade = false;
        for (const auto &[k, v] : req.headers)
        {
            std::string lk = lower(k);
            if (lk == "content-length")
            {
                content_length = static_cast<std::size_t>(std::stoull(v));
                has_content_length = true;
            }
            else if (lk == "upgrade" && lower(v).find("websocket") != std::string::npos)
            {
                is_upgrade = true;
            }
        }
        req.body = extra;
        // WebSocket upgrade: no HTTP body. Keep whatever bytes already arrived past
        // the headers (the first WS frames) without truncating to Content-Length.
        if (is_upgrade && !has_content_length)
        {
            return true;
        }
        while (req.body.size() < content_length)
        {
            char buf[4096];
            ssize_t n = recv(fd, buf, sizeof(buf), 0);
            if (n <= 0)
                break;
            req.body.append(buf, static_cast<std::size_t>(n));
        }
        if (req.body.size() > content_length)
        {
            req.body.resize(content_length);
        }
        return true;
    }

    void send_all(int fd, const std::string &data)
    {
        const char *p = data.data();
        std::size_t left = data.size();
        while (left > 0)
        {
            ssize_t n = send(fd, p, left, 0);
            if (n <= 0)
                return;
            p += n;
            left -= static_cast<std::size_t>(n);
        }
    }

    std::string status_text(long status)
    {
        switch (status)
        {
        case 200:
            return "OK";
        case 400:
            return "Bad Request";
        case 404:
            return "Not Found";
        case 500:
            return "Internal Server Error";
        case 502:
            return "Bad Gateway";
        default:
            return "OK";
        }
    }

    void send_response(int fd, const HttpResponse &res)
    {
        std::ostringstream out;
        out << "HTTP/1.1 " << res.status << " " << status_text(res.status) << "\r\n";
        bool has_content_type = false;
        for (const auto &[k, v] : res.headers)
        {
            std::string lk = lower(k);
            if (lk == "content-length" || lk == "transfer-encoding" || lk == "connection")
                continue;
            if (lk == "content-type")
                has_content_type = true;
            out << k << ": " << v << "\r\n";
        }
        if (!has_content_type)
            out << "Content-Type: application/json;charset=UTF-8\r\n";
        out << "Content-Length: " << res.body.size() << "\r\n";
        out << "Connection: close\r\n\r\n";
        out << res.body;
        send_all(fd, out.str());
    }

} // namespace eversoul
