// proxy.cpp — upstream forwarding. Desktop uses libcurl; Android is a stub.
#include "proxy.hpp"

#include <map>

#include "log.hpp"
#include "util.hpp"

#ifndef __ANDROID__
#include <curl/curl.h>
#else
#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <unistd.h>
#include <cctype>
#include <cstring>
#endif

namespace eversoul
{

    std::string upstream_for_path(const std::string &path)
    {
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
        int sock = ::socket(AF_INET, SOCK_STREAM, 0);
        if (sock < 0)
        {
            log_line(id, "PROXY_ERR", "socket() failed");
            return HttpResponse{502, {{"Content-Type", "application/json;charset=UTF-8"}}, R"({"error":"proxy socket failed"})"};
        }

        sockaddr_in addr{};
        addr.sin_family      = AF_INET;
        addr.sin_port        = htons(9999);
        addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);

        if (::connect(sock, reinterpret_cast<sockaddr *>(&addr), sizeof(addr)) < 0)
        {
            ::close(sock);
            log_line(id, "PROXY_ERR", "connect(127.0.0.1:9999) failed — is adb reverse tcp:9999 set?");
            return HttpResponse{502, {{"Content-Type", "application/json;charset=UTF-8"}}, R"({"error":"proxy connect failed"})"};
        }

        std::string raw;
        raw.reserve(512 + req.body.size());
        raw += req.method + " " + req.path + " HTTP/1.1\r\n";
        raw += "Host: 127.0.0.1:9999\r\n";
        for (const auto &[k, v] : req.headers)
        {
            std::string lk;
            lk.resize(k.size());
            for (std::size_t i = 0; i < k.size(); ++i)
                lk[i] = static_cast<char>(std::tolower(static_cast<unsigned char>(k[i])));
            if (lk == "host" || lk == "connection" || lk == "transfer-encoding")
                continue;
            raw += k + ": " + v + "\r\n";
        }
        if (!req.body.empty())
            raw += "Content-Length: " + std::to_string(req.body.size()) + "\r\n";
        raw += "Connection: close\r\n\r\n";
        raw += req.body;

        const char *ptr = raw.data();
        std::size_t left = raw.size();
        while (left > 0)
        {
            ssize_t n = ::send(sock, ptr, left, 0);
            if (n <= 0) break;
            ptr  += n;
            left -= static_cast<std::size_t>(n);
        }

        std::string resp;
        char buf[8192];
        while (true)
        {
            ssize_t n = ::recv(sock, buf, sizeof(buf), 0);
            if (n <= 0) break;
            resp.append(buf, static_cast<std::size_t>(n));
        }
        ::close(sock);

        HttpResponse out;
        out.status = 502;

        std::size_t hdr_end = resp.find("\r\n\r\n");
        if (hdr_end == std::string::npos)
        {
            log_line(id, "PROXY_ERR", "no header terminator in response");
            out.body = R"({"error":"bad proxy response"})";
            return out;
        }

        const std::string hdr_part = resp.substr(0, hdr_end);
        out.body                   = resp.substr(hdr_end + 4);

        std::size_t sp1 = hdr_part.find(' ');
        if (sp1 != std::string::npos)
        {
            std::size_t sp2 = hdr_part.find(' ', sp1 + 1);
            try { out.status = std::stol(hdr_part.substr(sp1 + 1, sp2 - sp1 - 1)); }
            catch (...) {}
        }

        std::size_t pos = hdr_part.find("\r\n");
        while (pos != std::string::npos)
        {
            pos += 2;
            std::size_t eol   = hdr_part.find("\r\n", pos);
            std::size_t limit = (eol == std::string::npos) ? hdr_part.size() : eol;
            std::string line  = hdr_part.substr(pos, limit - pos);
            std::size_t col   = line.find(':');
            if (col != std::string::npos)
            {
                std::string v = line.substr(col + 1);
                while (!v.empty() && v.front() == ' ') v.erase(v.begin());
                out.headers[line.substr(0, col)] = v;
            }
            pos = eol;
        }

        log_line(id, "PROXY", req.method + " " + req.path + " -> " + std::to_string(out.status));
        return out;
    }
#endif

} // namespace eversoul
