// proxy.cpp — upstream forwarding via libcurl to live Kakao upstream.
#include "proxy.hpp"

#include <curl/curl.h>
#include <map>

#include "log.hpp"
#include "util.hpp"

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
        log_net_line(id, "PROXY", req.method + " " + url);

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

} // namespace eversoul
