// proxy.cpp — upstream forwarding. Desktop uses libcurl; Android uses raw TCP to 127.0.0.1:9991
// (adb reverse tcp:9991 tcp:9991 routes that to the PC server).
#include "proxy.hpp"

#include <map>

#include "log.hpp"
#include "util.hpp"

#ifndef __ANDROID__
#include <curl/curl.h>
#else
#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/select.h>
#include <sys/socket.h>
#include <unistd.h>
#include <cerrno>
#include <cstring>
#endif

namespace eversoul
{

    std::string upstream_for_path(const std::string &path)
    {
        if (path.rfind("/Live/", 0) == 0)
        {
            return "https://patch.esoul.kakaogames.com" + path;
        }
        if (path.rfind("/v2/", 0) == 0)
        {
            return "https://gc-infodesk-zinny3.kakaogames.com" + path;
        }
        return "https://gc-openapi-zinny3.kakaogames.com" + path;
    }

#ifndef __ANDROID__
    namespace
    {
        std::size_t curl_write_body(char *ptr, std::size_t size, std::size_t nmemb, void *userdata)
        {
            auto *body = static_cast<std::string *>(userdata);
            body->append(ptr, size * nmemb);
            return size * nmemb;
        }

        std::size_t curl_write_header(char *ptr, std::size_t size, std::size_t nmemb, void *userdata)
        {
            auto *headers = static_cast<std::map<std::string, std::string> *>(userdata);
            std::string line(ptr, size * nmemb);
            std::size_t colon = line.find(':');
            if (colon != std::string::npos)
            {
                (*headers)[trim(line.substr(0, colon))] = trim(line.substr(colon + 1));
            }
            return size * nmemb;
        }
    } // namespace

    HttpResponse proxy_request(std::uint64_t id, const HttpRequest &req)
    {
        HttpResponse out;
        CURL *curl = curl_easy_init();
        if (!curl)
        {
            out.status = 502;
            out.body = R"({"error":"curl_easy_init failed"})";
            return out;
        }

        std::string url = upstream_for_path(req.path);
        log_line(id, "PROXY", req.method + " " + url);

        struct curl_slist *header_list = nullptr;
        for (const auto &[k, v] : req.headers)
        {
            std::string lk = lower(k);
            if (lk == "host" || lk == "connection" || lk == "content-length")
                continue;
            std::string line = k + ": " + v;
            header_list = curl_slist_append(header_list, line.c_str());
        }

        curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
        curl_easy_setopt(curl, CURLOPT_CUSTOMREQUEST, req.method.c_str());
        curl_easy_setopt(curl, CURLOPT_HTTPHEADER, header_list);
        curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 0L);
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, curl_write_body);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &out.body);
        curl_easy_setopt(curl, CURLOPT_HEADERFUNCTION, curl_write_header);
        curl_easy_setopt(curl, CURLOPT_HEADERDATA, &out.headers);
        curl_easy_setopt(curl, CURLOPT_TIMEOUT, 30L);
        if (!req.body.empty())
        {
            curl_easy_setopt(curl, CURLOPT_POSTFIELDS, req.body.data());
            curl_easy_setopt(curl, CURLOPT_POSTFIELDSIZE, static_cast<long>(req.body.size()));
        }

        CURLcode code = curl_easy_perform(curl);
        if (code != CURLE_OK)
        {
            out.status = 502;
            out.body = std::string(R"({"error":")") + curl_easy_strerror(code) + R"("})";
        }
        else
        {
            curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &out.status);
        }

        if (header_list)
            curl_slist_free_all(header_list);
        curl_easy_cleanup(curl);
        return out;
    }
#else
    HttpResponse proxy_request(std::uint64_t id, const HttpRequest &req)
    {
        int sockfd = ::socket(AF_INET, SOCK_STREAM, 0);
        if (sockfd < 0)
        {
            log_line(id, "PROXY_ERR", std::string("socket: ") + std::strerror(errno));
            return HttpResponse{502, {{"Content-Type", "application/json;charset=UTF-8"}}, R"({"error":"socket failed"})"};
        }

        sockaddr_in addr{};
        addr.sin_family = AF_INET;
        addr.sin_port = htons(static_cast<uint16_t>(kServerListenPort));
        addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);

        if (::connect(sockfd, reinterpret_cast<sockaddr *>(&addr), sizeof(addr)) < 0)
        {
            log_line(id, "PROXY_ERR", std::string("connect 127.0.0.1:") + std::to_string(kServerListenPort) + " " + std::strerror(errno));
            ::close(sockfd);
            return HttpResponse{502, {{"Content-Type", "application/json;charset=UTF-8"}}, R"({"error":"connect to PC server failed"})"};
        }

        std::string raw;
        raw += req.method + " " + req.path + " HTTP/1.1\r\n";
        raw += "Host: 127.0.0.1:" + std::to_string(kServerListenPort) + "\r\n";
        raw += "Connection: close\r\n";
        for (const auto &[k, v] : req.headers)
        {
            std::string lk = lower(k);
            if (lk == "host" || lk == "connection" || lk == "content-length") continue;
            raw += k + ": " + v + "\r\n";
        }
        if (!req.body.empty())
            raw += "Content-Length: " + std::to_string(req.body.size()) + "\r\n";
        raw += "\r\n";
        raw += req.body;

        const char *ptr = raw.data();
        std::size_t remaining = raw.size();
        while (remaining > 0)
        {
            ssize_t sent = ::send(sockfd, ptr, remaining, 0);
            if (sent <= 0) break;
            ptr += sent;
            remaining -= static_cast<std::size_t>(sent);
        }

        std::string resp_raw;
        char buf[8192];
        ssize_t n;
        while ((n = ::recv(sockfd, buf, sizeof(buf), 0)) > 0)
            resp_raw.append(buf, static_cast<std::size_t>(n));
        ::close(sockfd);

        HttpResponse out;
        auto hdr_end = resp_raw.find("\r\n\r\n");
        if (hdr_end == std::string::npos)
        {
            out.status = 502;
            out.body = R"({"error":"invalid HTTP response from PC server"})";
            return out;
        }

        std::string hdr_section = resp_raw.substr(0, hdr_end);
        out.body = resp_raw.substr(hdr_end + 4);

        auto first_crlf = hdr_section.find("\r\n");
        if (first_crlf != std::string::npos)
        {
            std::string status_line = hdr_section.substr(0, first_crlf);
            auto sp1 = status_line.find(' ');
            if (sp1 != std::string::npos)
            {
                auto sp2 = status_line.find(' ', sp1 + 1);
                try { out.status = std::stol(status_line.substr(sp1 + 1, sp2 - sp1 - 1)); }
                catch (...) { out.status = 502; }
            }
        }

        std::size_t pos = hdr_section.find("\r\n");
        while (pos != std::string::npos)
        {
            std::size_t ls = pos + 2;
            std::size_t le = hdr_section.find("\r\n", ls);
            if (le == std::string::npos) le = hdr_section.size();
            std::string line = hdr_section.substr(ls, le - ls);
            std::size_t colon = line.find(':');
            if (colon != std::string::npos)
                out.headers[trim(line.substr(0, colon))] = trim(line.substr(colon + 1));
            pos = (le == hdr_section.size()) ? std::string::npos : le;
        }

        log_line(id, "PROXY_FWD", req.method + " " + req.path + " -> " + std::to_string(out.status));
        return out;
    }

    void proxy_websocket(std::uint64_t id, int client_fd, const HttpRequest &req,
                         const std::string &pre)
    {
        int pc_fd = ::socket(AF_INET, SOCK_STREAM, 0);
        if (pc_fd < 0)
        {
            log_line(id, "WS_PROXY_ERR", std::string("socket: ") + std::strerror(errno));
            return;
        }

        sockaddr_in addr{};
        addr.sin_family = AF_INET;
        addr.sin_port = htons(static_cast<uint16_t>(kServerListenPort));
        addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);

        if (::connect(pc_fd, reinterpret_cast<sockaddr *>(&addr), sizeof(addr)) < 0)
        {
            log_line(id, "WS_PROXY_ERR", std::string("connect 127.0.0.1:") +
                         std::to_string(kServerListenPort) + " " + std::strerror(errno));
            ::close(pc_fd);
            return;
        }

        // Reconstruct the HTTP upgrade request and forward it to PC server.
        std::string raw;
        raw += req.method + " " + req.path + " HTTP/1.1\r\n";
        raw += "Host: 127.0.0.1:" + std::to_string(kServerListenPort) + "\r\n";
        for (const auto &[k, v] : req.headers)
        {
            if (lower(k) == "host")
                continue;
            raw += k + ": " + v + "\r\n";
        }
        raw += "\r\n";

        auto send_all_raw = [](int fd, const char *p, std::size_t rem) -> bool
        {
            while (rem > 0)
            {
                ssize_t s = ::send(fd, p, rem, 0);
                if (s <= 0)
                    return false;
                p += s;
                rem -= static_cast<std::size_t>(s);
            }
            return true;
        };

        if (!send_all_raw(pc_fd, raw.data(), raw.size()))
        {
            ::close(pc_fd);
            return;
        }
        if (!pre.empty() && !send_all_raw(pc_fd, pre.data(), pre.size()))
        {
            ::close(pc_fd);
            return;
        }

        log_line(id, "WS_PROXY", "tunnel open " + req.path);

        // Bidirectional byte relay: client_fd ↔ pc_fd.
        char buf[8192];
        bool alive = true;
        while (alive)
        {
            fd_set rfds;
            FD_ZERO(&rfds);
            FD_SET(client_fd, &rfds);
            FD_SET(pc_fd, &rfds);
            int maxfd = (client_fd > pc_fd ? client_fd : pc_fd) + 1;
            if (::select(maxfd, &rfds, nullptr, nullptr, nullptr) <= 0)
                break;

            if (FD_ISSET(pc_fd, &rfds))
            {
                ssize_t n = ::recv(pc_fd, buf, sizeof(buf), 0);
                if (n <= 0) { alive = false; break; }
                if (!send_all_raw(client_fd, buf, static_cast<std::size_t>(n)))
                    alive = false;
            }
            if (alive && FD_ISSET(client_fd, &rfds))
            {
                ssize_t n = ::recv(client_fd, buf, sizeof(buf), 0);
                if (n <= 0) { alive = false; break; }
                if (!send_all_raw(pc_fd, buf, static_cast<std::size_t>(n)))
                    alive = false;
            }
        }

        ::close(pc_fd);
        log_line(id, "WS_PROXY", "tunnel closed " + req.path);
    }
#endif

} // namespace eversoul
