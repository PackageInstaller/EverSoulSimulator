#include "har_log.hpp"

#include "crypto.hpp"
#include "log.hpp"
#include "platform.hpp"
#include "util.hpp"

#include <algorithm>
#include <fstream>
#include <map>
#include <mutex>
#include <string>
#include <vector>

namespace eversoul::har_log
{
    namespace
    {
        std::mutex g_mu;
        std::vector<std::string> g_entries;

        bool is_text_content(const std::string& content_type, const std::string& body)
        {
            const std::string ct = lower(content_type);
            if (ct.find("text/") != std::string::npos ||
                ct.find("json") != std::string::npos ||
                ct.find("xml") != std::string::npos ||
                ct.find("javascript") != std::string::npos ||
                ct.find("x-www-form-urlencoded") != std::string::npos)
                return true;
            return std::all_of(body.begin(), body.end(), [](unsigned char c) {
                return c == '\n' || c == '\r' || c == '\t' || c >= 0x20;
            });
        }

        std::string header_value(const std::map<std::string, std::string>& headers, const std::string& name)
        {
            for (const auto& [k, v] : headers)
                if (lower(k) == lower(name)) return v;
            return "";
        }

        std::string headers_json(const std::map<std::string, std::string>& headers)
        {
            std::string out = "[";
            bool first = true;
            for (const auto& [k, v] : headers)
            {
                if (!first) out += ",";
                first = false;
                out += "{\"name\":\"" + json_escape(k) + "\",\"value\":\"" + json_escape(v) + "\"}";
            }
            out += "]";
            return out;
        }

        std::string content_json(const std::string& mime, const std::string& body)
        {
            const bool text = is_text_content(mime, body);
            std::string out = "{\"size\":" + std::to_string(body.size()) +
                ",\"mimeType\":\"" + json_escape(mime) + "\",\"text\":\"" +
                json_escape(text ? body : base64_encode(body)) + "\"";
            if (!text) out += ",\"encoding\":\"base64\"";
            out += "}";
            return out;
        }

        void write_file()
        {
            platform_mkdir("logs");
            platform_mkdir("logs/har");
            std::ofstream f("logs/har/eversoul-session.har", std::ios::binary | std::ios::trunc);
            if (!f) return;
            f << "{\"log\":{\"version\":\"1.2\",\"creator\":{\"name\":\"eversoul_console\",\"version\":\"1\"},\"entries\":[";
            for (std::size_t i = 0; i < g_entries.size(); ++i)
            {
                if (i) f << ",";
                f << g_entries[i];
            }
            f << "]}}";
        }
    }

    void record(std::uint64_t id, const std::string& client_ip,
                const HttpRequest& req, const HttpResponse& res)
    {
        const std::string host = header_value(req.headers, "Host");
        const std::string url = "http://" + (host.empty() ? "127.0.0.1:9991" : host) + req.path;
        const std::string req_mime = header_value(req.headers, "Content-Type");
        const std::string res_mime = header_value(res.headers, "Content-Type");
        std::string entry = "{\"startedDateTime\":\"" + json_escape(now_string()) + "\"";
        entry += ",\"time\":0";
        entry += ",\"_id\":" + std::to_string(id);
        entry += ",\"_clientIp\":\"" + json_escape(client_ip) + "\"";
        entry += ",\"request\":{\"method\":\"" + json_escape(req.method) + "\",\"url\":\"" + json_escape(url) + "\",\"httpVersion\":\"" + json_escape(req.version) + "\"";
        entry += ",\"headers\":" + headers_json(req.headers);
        entry += ",\"queryString\":[]";
        entry += ",\"headersSize\":-1,\"bodySize\":" + std::to_string(req.body.size());
        if (!req.body.empty())
            entry += ",\"postData\":{\"mimeType\":\"" + json_escape(req_mime) + "\",\"text\":\"" +
                     json_escape(is_text_content(req_mime, req.body) ? req.body : base64_encode(req.body)) + "\"" +
                     (is_text_content(req_mime, req.body) ? "" : ",\"encoding\":\"base64\"") + "}";
        entry += "}";
        entry += ",\"response\":{\"status\":" + std::to_string(res.status) + ",\"statusText\":\"\",\"httpVersion\":\"HTTP/1.1\"";
        entry += ",\"headers\":" + headers_json(res.headers);
        entry += ",\"content\":" + content_json(res_mime, res.body);
        entry += ",\"redirectURL\":\"\",\"headersSize\":-1,\"bodySize\":" + std::to_string(res.body.size()) + "}";
        entry += ",\"cache\":{},\"timings\":{\"send\":0,\"wait\":0,\"receive\":0}}";

        {
            std::lock_guard lock(g_mu);
            g_entries.push_back(std::move(entry));
            write_file();
        }
        log_line(id, "HAR", "saved " + req.method + " " + req.path + " -> logs/har/eversoul-session.har");
    }
}
