// har_recorder.cpp — Windows 전용 HAR 패킷 레코더 구현.
// 패킷 흐름: APK → [요청 캡처] → 실제서버 → [응답 캡처] → APK
// 저장: har/log/{net|account|content|bundle|runtime}/{id}_{METHOD}_{slug}.json
// AI 기준 포맷: URL 구조 + 요청/응답 전체 + TBL/번들/Unity 플래그 + 구현 우선순위 힌트
#include "har_recorder.hpp"

#include <algorithm>
#include <cctype>
#include <fstream>
#include <iomanip>
#include <sstream>
#include <string>

#include "util.hpp"

#ifdef _WIN32
#include <direct.h>
#define HAR_MKDIR(p) _mkdir(p)
#else
#include <sys/stat.h>
#define HAR_MKDIR(p) mkdir((p), 0755)
#endif

namespace eversoul
{
namespace har
{

namespace
{
    std::string header_value(const std::map<std::string, std::string> &headers,
                             const std::string &name)
    {
        for (const auto &[k, v] : headers)
        {
            std::string lk = k;
            for (char &c : lk)
                c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
            if (lk == name) return v;
        }
        return {};
    }

    bool is_gzip_encoded(const std::map<std::string, std::string> &headers)
    {
        std::string ce = header_value(headers, "content-encoding");
        std::string lce = ce;
        for (char &c : lce)
            c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
        return lce.find("gzip") != std::string::npos;
    }

    bool is_utf8_printable(const std::string &s)
    {
        for (unsigned char c : s)
            if (c < 0x20 && c != '\n' && c != '\r' && c != '\t') return false;
        return true;
    }

    std::string base64_encode(const std::string &in)
    {
        static constexpr char kTable[] =
            "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
        std::string out;
        out.reserve(((in.size() + 2) / 3) * 4);
        auto p   = reinterpret_cast<const unsigned char *>(in.data());
        auto rem = in.size();
        while (rem >= 3)
        {
            out += kTable[p[0] >> 2];
            out += kTable[((p[0] & 3) << 4) | (p[1] >> 4)];
            out += kTable[((p[1] & 15) << 2) | (p[2] >> 6)];
            out += kTable[p[2] & 63];
            p += 3; rem -= 3;
        }
        if (rem == 2)
        {
            out += kTable[p[0] >> 2];
            out += kTable[((p[0] & 3) << 4) | (p[1] >> 4)];
            out += kTable[(p[1] & 15) << 2];
            out += '=';
        }
        else if (rem == 1)
        {
            out += kTable[p[0] >> 2];
            out += kTable[(p[0] & 3) << 4];
            out += '='; out += '=';
        }
        return out;
    }

    struct BodyRepr
    {
        std::string encoding;   // "plain" | "base64" | "gzip_base64"
        std::string value;
        bool        is_protobuf;
        bool        is_gzip;
    };

    BodyRepr encode_body(const std::string &body,
                         const std::map<std::string, std::string> &headers)
    {
        BodyRepr r{};
        r.is_gzip = is_gzip_encoded(headers);
        std::string ct = header_value(headers, "content-type");
        std::string lct = ct;
        for (char &c : lct)
            c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
        r.is_protobuf = lct.find("protobuf") != std::string::npos ||
                        lct.find("octet-stream") != std::string::npos;

        if (body.empty()) { r.encoding = "plain"; r.value = ""; return r; }

        if (r.is_gzip)
        {
            r.encoding = "gzip_base64";
            r.value    = base64_encode(body);
            return r;
        }
        if (r.is_protobuf || !is_utf8_printable(body))
        {
            r.encoding = "base64";
            r.value    = base64_encode(body);
            return r;
        }
        r.encoding = "plain";
        r.value    = body;
        return r;
    }

    std::string headers_to_json(const std::map<std::string, std::string> &h)
    {
        std::string s = "{";
        bool first = true;
        for (const auto &[k, v] : h)
        {
            if (!first) s += ",";
            s += "\"" + json_escape(k) + "\":\"" + json_escape(v) + "\"";
            first = false;
        }
        return s + "}";
    }

    std::string segments_json(const std::string &path)
    {
        std::string s = "[";
        bool   first = true;
        std::string seg;
        for (char c : path)
        {
            if (c == '/') {
                if (!seg.empty()) {
                    if (!first) s += ",";
                    s += "\"" + json_escape(seg) + "\"";
                    first = false; seg.clear();
                }
            } else if (c == '?') break;
            else seg += c;
        }
        if (!seg.empty()) {
            if (!first) s += ",";
            s += "\"" + json_escape(seg) + "\"";
        }
        return s + "]";
    }

    std::string query_json(const std::string &path)
    {
        auto q = path.find('?');
        if (q == std::string::npos) return "{}";
        std::string s = "{";
        bool   first = true;
        std::string pair;
        auto emit = [&](const std::string &kv) {
            auto eq = kv.find('=');
            std::string k = eq == std::string::npos ? kv : kv.substr(0, eq);
            std::string v = eq == std::string::npos ? "" : kv.substr(eq + 1);
            if (!k.empty()) {
                if (!first) s += ",";
                s += "\"" + json_escape(k) + "\":\"" + json_escape(v) + "\"";
                first = false;
            }
        };
        for (char c : path.substr(q + 1)) {
            if (c == '&') { emit(pair); pair.clear(); }
            else pair += c;
        }
        if (!pair.empty()) emit(pair);
        return s + "}";
    }

    bool is_tbl_related(const std::string &path)
    {
        std::string lp = path;
        for (char &c : lp)
            c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
        return lp.find("tbl") != std::string::npos ||
               lp.find("table") != std::string::npos ||
               lp.find("masterdata") != std::string::npos;
    }

    bool is_bundle_related(const std::string &path)
    {
        std::string lp = path;
        for (char &c : lp)
            c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
        return lp.find("/live/") != std::string::npos ||
               lp.find("assetbundle") != std::string::npos ||
               lp.find("bundle") != std::string::npos;
    }

    std::string endpoint_purpose(Category cat, const std::string &path)
    {
        std::string lp = path;
        for (char &c : lp)
            c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
        if (cat == Category::bundle)  return "Unity AssetBundle download via patch server";
        if (cat == Category::runtime) return "Unity runtime info desk: version/config query";
        if (cat == Category::account) {
            if (lp.find("login")    != std::string::npos) return "user login — returns session/auth token";
            if (lp.find("logout")   != std::string::npos) return "session logout";
            if (lp.find("token")    != std::string::npos) return "token refresh or validation";
            if (lp.find("register") != std::string::npos) return "new account registration";
            return "account/auth management";
        }
        if (is_tbl_related(path))
            return "TBL master table data — AES-encrypted binary; decrypt before use";
        if (lp.find("gacha")   != std::string::npos) return "gacha/summon endpoint";
        if (lp.find("hero")    != std::string::npos) return "hero/spirit management";
        if (lp.find("stage")   != std::string::npos ||
            lp.find("battle")  != std::string::npos) return "stage/battle progression";
        if (lp.find("shop")    != std::string::npos) return "in-game shop";
        if (lp.find("mission") != std::string::npos ||
            lp.find("quest")   != std::string::npos) return "mission/quest system";
        if (lp.find("mail")    != std::string::npos) return "in-game mail/inbox";
        if (lp.find("guild")   != std::string::npos) return "guild system";
        return "game API endpoint";
    }

    std::string impl_priority(Category cat, const std::string &path)
    {
        if (cat == Category::account) return "critical";
        if (is_tbl_related(path))     return "critical";
        if (cat == Category::runtime) return "high";
        if (cat == Category::bundle)  return "high";
        std::string lp = path;
        for (char &c : lp)
            c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
        if (lp.find("gacha") != std::string::npos ||
            lp.find("hero")  != std::string::npos) return "high";
        return "medium";
    }

    std::string extract_host(const std::string &url)
    {
        auto p = url.find("://");
        if (p == std::string::npos) return url;
        auto start = p + 3;
        auto end   = url.find('/', start);
        return end == std::string::npos ? url.substr(start)
                                        : url.substr(start, end - start);
    }
} // anonymous namespace

// ─── HarRecorder ────────────────────────────────────────────────────────────

HarRecorder::HarRecorder(const std::string &output_dir)
    : output_dir_(output_dir)
{
}

Category HarRecorder::classify(const std::string &path)
{
    if (path.rfind("/Live/", 0) == 0) return Category::bundle;
    if (path.rfind("/v2/",   0) == 0) return Category::runtime;

    std::string lp = path;
    for (char &c : lp)
        c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));

    if (lp.find("auth")       != std::string::npos ||
        lp.find("login")      != std::string::npos ||
        lp.find("logout")     != std::string::npos ||
        lp.find("token")      != std::string::npos ||
        lp.find("session")    != std::string::npos ||
        lp.find("account")    != std::string::npos ||
        lp.find("register")   != std::string::npos ||
        lp.find("credential") != std::string::npos)
        return Category::account;

    if (lp.find("tbl")        != std::string::npos ||
        lp.find("table")      != std::string::npos ||
        lp.find("masterdata") != std::string::npos ||
        lp.find("asset")      != std::string::npos ||
        lp.find("content")    != std::string::npos ||
        lp.find("catalog")    != std::string::npos)
        return Category::content;

    return Category::net;
}

std::string HarRecorder::category_name(Category c)
{
    switch (c)
    {
    case Category::net:     return "net";
    case Category::account: return "account";
    case Category::content: return "content";
    case Category::bundle:  return "bundle";
    case Category::runtime: return "runtime";
    }
    return "net";
}

std::string HarRecorder::path_to_slug(const std::string &path)
{
    std::string slug;
    for (char c : path)
    {
        if (c == '?') break;
        if (std::isalnum(static_cast<unsigned char>(c)) || c == '-' || c == '_')
            slug += static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
        else if (c == '/')
            slug += '_';
    }
    if (slug.size() > 60) slug = slug.substr(0, 60);
    while (!slug.empty() && slug.front() == '_') slug.erase(slug.begin());
    return slug.empty() ? "root" : slug;
}

void HarRecorder::ensure_dir(const std::string &dir)
{
    std::string cur;
    for (char c : dir)
    {
        cur += c;
        if (c == '/' || c == '\\')
            HAR_MKDIR(cur.c_str());
    }
    HAR_MKDIR(cur.c_str());
}

std::string HarRecorder::build_json(std::uint64_t id,
                                    const RequestCapture &req,
                                    const ResponseCapture &res,
                                    Category cat) const
{
    BodyRepr req_body = encode_body(req.body, req.headers);
    BodyRepr res_body = encode_body(res.body, res.headers);
    std::string req_ct = header_value(req.headers, "content-type");
    std::string res_ct = header_value(res.headers, "content-type");
    std::string host   = extract_host(req.upstream_url);

    std::ostringstream j;
    j << "{\n";
    j << "  \"schema_version\": \"1\",\n";
    j << "  \"id\": " << id << ",\n";
    j << "  \"timestamp_iso8601\": \"" << json_escape(now_string()) << "\",\n";
    j << "  \"timestamp_epoch_ms\": " << unix_ms() << ",\n";
    j << "  \"category\": \"" << category_name(cat) << "\",\n";
    j << "  \"method\": \"" << json_escape(req.method) << "\",\n";
    j << "  \"path\": \"" << json_escape(req.path) << "\",\n";
    j << "  \"path_segments\": " << segments_json(req.path) << ",\n";
    j << "  \"query\": " << query_json(req.path) << ",\n";
    j << "  \"upstream_url\": \"" << json_escape(req.upstream_url) << "\",\n";
    j << "  \"upstream_host\": \"" << json_escape(host) << "\",\n";

    j << "  \"request\": {\n";
    j << "    \"headers\": " << headers_to_json(req.headers) << ",\n";
    j << "    \"content_type\": \"" << json_escape(req_ct) << "\",\n";
    j << "    \"body_encoding\": \"" << req_body.encoding << "\",\n";
    j << "    \"body_size\": " << req.body.size() << ",\n";
    j << "    \"body\": \"" << json_escape(req_body.value) << "\",\n";
    j << "    \"is_protobuf\": " << (req_body.is_protobuf ? "true" : "false") << ",\n";
    j << "    \"is_gzip\": " << (req_body.is_gzip ? "true" : "false") << "\n";
    j << "  },\n";

    j << "  \"response\": {\n";
    j << "    \"status\": " << res.status << ",\n";
    j << "    \"headers\": " << headers_to_json(res.headers) << ",\n";
    j << "    \"content_type\": \"" << json_escape(res_ct) << "\",\n";
    j << "    \"body_encoding\": \"" << res_body.encoding << "\",\n";
    j << "    \"body_size\": " << res.body.size() << ",\n";
    j << "    \"body\": \"" << json_escape(res_body.value) << "\",\n";
    j << "    \"is_protobuf\": " << (res_body.is_protobuf ? "true" : "false") << ",\n";
    j << "    \"is_gzip\": " << (res_body.is_gzip ? "true" : "false") << "\n";
    j << "  },\n";

    j << "  \"timing_ms\": " << std::fixed << std::setprecision(3) << res.timing_ms << ",\n";

    j << "  \"unity_context\": {\n";
    j << "    \"is_asset_bundle\": " << (cat == Category::bundle ? "true" : "false") << ",\n";
    j << "    \"is_tbl_related\": " << (is_tbl_related(req.path) ? "true" : "false") << ",\n";
    j << "    \"tbl_decrypt_needed\": "
      << ((is_tbl_related(req.path) && (res_body.is_protobuf || res_body.is_gzip)) ? "true" : "false")
      << ",\n";
    j << "    \"bundle_download\": " << (is_bundle_related(req.path) ? "true" : "false") << "\n";
    j << "  },\n";

    j << "  \"ai_impl_notes\": {\n";
    j << "    \"endpoint_purpose\": \"" << json_escape(endpoint_purpose(cat, req.path)) << "\",\n";
    j << "    \"implementation_priority\": \"" << impl_priority(cat, req.path) << "\",\n";
    j << "    \"auth_required\": " << (cat != Category::bundle ? "true" : "false") << ",\n";
    j << "    \"request_is_binary\": "
      << ((req_body.is_protobuf || req_body.is_gzip) ? "true" : "false") << ",\n";
    j << "    \"response_is_binary\": "
      << ((res_body.is_protobuf || res_body.is_gzip) ? "true" : "false") << "\n";
    j << "  }\n";
    j << "}\n";

    return j.str();
}

void HarRecorder::record(std::uint64_t id,
                         const RequestCapture &req,
                         const ResponseCapture &res)
{
    Category    cat  = classify(req.path);
    std::string json = build_json(id, req, res, cat);
    std::string slug = path_to_slug(req.path);

    std::ostringstream fname;
    fname << std::setw(6) << std::setfill('0') << id
          << "_" << req.method
          << "_" << slug
          << ".json";

    std::string dir      = output_dir_ + "\\har\\log\\" + category_name(cat);
    std::string filepath = dir + "\\" + fname.str();

    std::lock_guard<std::mutex> lock(mu_);
    ensure_dir(dir);

    std::ofstream f(filepath, std::ios::out | std::ios::trunc);
    if (f) f << json;
}

} // namespace har
} // namespace eversoul
