#ifdef __ANDROID__
#include "apk/hook/tbl_hook.hpp"
#include "type/common.hpp"

#include <android/log.h>
#include <arpa/inet.h>
#include <atomic>
#include <cstdlib>
#include <cstring>
#include <dlfcn.h>
#include <dobby.h>
#include <mutex>
#include <netinet/in.h>
#include <string>
#include <sys/socket.h>
#include <unistd.h>
#include <unordered_map>

#define TLOGI(fmt, ...) __android_log_print(ANDROID_LOG_INFO,  "libswappywrapper/tbl", fmt, ##__VA_ARGS__)
#define TLOGE(fmt, ...) __android_log_print(ANDROID_LOG_ERROR, "libswappywrapper/tbl", fmt, ##__VA_ARGS__)

namespace eversoul::tbl_hook
{
    namespace
    {

        // ---------- IL2CPP function types ----------

        using il2cpp_domain_get_t            = void *(*)();
        using il2cpp_domain_assembly_open_t  = void *(*)(void *, const char *);
        using il2cpp_assembly_get_image_t    = void *(*)(void *);
        using il2cpp_class_from_name_t       = void *(*)(void *, const char *, const char *);
        using il2cpp_class_get_methods_t     = void *(*)(void *, void **);
        using il2cpp_method_get_name_t       = const char *(*)(void *);
        using il2cpp_string_chars_t          = uint16_t *(*)(void *);
        using il2cpp_string_length_t         = int32_t (*)(void *);
        using il2cpp_array_new_t             = void *(*)(void *, std::size_t);
        using il2cpp_array_class_get_t       = void *(*)(void *, uint32_t);

        // ---------- Global state ----------

        il2cpp_string_chars_t   g_string_chars   = nullptr;
        il2cpp_string_length_t  g_string_length  = nullptr;
        il2cpp_array_new_t      g_array_new       = nullptr;
        void                   *g_byte_array_class = nullptr;

        using get_decrypt_data_t = void *(*)(void *, void *);
        get_decrypt_data_t g_orig_get_decrypt_data = nullptr;

        // ---------- Helpers ----------

        std::string string_to_utf8(void *s)
        {
            if (!s || !g_string_chars || !g_string_length) return {};
            int32_t len = g_string_length(s);
            if (len <= 0 || len > 0x10000) return {};
            uint16_t *chars = g_string_chars(s);
            if (!chars) return {};
            std::string out;
            out.reserve(static_cast<std::size_t>(len));
            for (int32_t i = 0; i < len; ++i)
            {
                uint16_t c = chars[i];
                if (c < 0x80)
                    out.push_back(static_cast<char>(c));
                else if (c < 0x800)
                {
                    out.push_back(static_cast<char>(0xc0 | (c >> 6)));
                    out.push_back(static_cast<char>(0x80 | (c & 0x3f)));
                }
                else
                {
                    out.push_back(static_cast<char>(0xe0 | (c >> 12)));
                    out.push_back(static_cast<char>(0x80 | ((c >> 6) & 0x3f)));
                    out.push_back(static_cast<char>(0x80 | (c & 0x3f)));
                }
            }
            return out;
        }

        // ---------- per-name TBL cache ----------

        std::mutex                                   g_cache_mu;
        std::unordered_map<std::string, std::string> g_tbl_cache;

        // ---------- Raw HTTP helper: one-shot GET → response body ----------

        static std::string http_get(const std::string &path)
        {
            int fd = ::socket(AF_INET, SOCK_STREAM, 0);
            if (fd < 0) return {};

            sockaddr_in addr{};
            addr.sin_family      = AF_INET;
            addr.sin_port        = htons(static_cast<uint16_t>(kServerListenPort));
            addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);

            if (::connect(fd, reinterpret_cast<sockaddr *>(&addr), sizeof(addr)) < 0)
            {
                ::close(fd); return {};
            }

            std::string req = "GET " + path + " HTTP/1.1\r\n"
                              "Host: 127.0.0.1:" + std::to_string(kServerListenPort) + "\r\n"
                              "Connection: close\r\n\r\n";
            const char *ptr = req.data();
            std::size_t rem = req.size();
            while (rem > 0)
            {
                ssize_t s = ::send(fd, ptr, rem, 0);
                if (s <= 0) { ::close(fd); return {}; }
                ptr += s; rem -= static_cast<std::size_t>(s);
            }

            std::string raw;
            char buf[8192];
            ssize_t n;
            while ((n = ::recv(fd, buf, sizeof(buf), 0)) > 0)
                raw.append(buf, static_cast<std::size_t>(n));
            ::close(fd);

            auto sep = raw.find("\r\n\r\n");
            if (sep == std::string::npos) return {};
            auto sp1 = raw.find(' ');
            if (sp1 == std::string::npos || sp1 > sep) return {};
            int status = static_cast<int>(std::strtol(raw.c_str() + sp1 + 1, nullptr, 10));
            if (status != 200) return {};
            return raw.substr(sep + 4);
        }

        // ---------- Check server-side TBL hook enable flag ----------

        static bool fetch_enabled()
        {
            std::string body = http_get("/api/tbl_enabled");
            return body.find("true") != std::string::npos;
        }

        // ---------- Raw HTTP GET 127.0.0.1:9991/api/tbl/{name} ----------

        static std::string fetch_tbl(const std::string &name)
        {
            return http_get("/api/tbl/" + name);
        }

        // ---------- Detour ----------

        void *detour_get_decrypt_data(void *__this, void *name_str)
        {
            std::string name = string_to_utf8(name_str);
            if (name.empty())
                return g_orig_get_decrypt_data(__this, name_str);

            // (c) 런타임 On/Off 즉시 반영: OFF 면 캐시도 무시하고 게임 원본을 그대로 사용한다.
            if (!fetch_enabled())
                return g_orig_get_decrypt_data(__this, name_str);

            {
                std::string cached;
                {
                    std::lock_guard<std::mutex> lk(g_cache_mu);
                    auto it = g_tbl_cache.find(name);
                    if (it != g_tbl_cache.end())
                        cached = it->second;
                }
                if (!cached.empty() && g_array_new && g_byte_array_class)
                {
                    void *arr = g_array_new(g_byte_array_class, cached.size());
                    if (arr)
                    {
                        std::uint8_t *data = reinterpret_cast<std::uint8_t *>(arr) + 32;
                        std::memcpy(data, cached.data(), cached.size());
                        return arr;
                    }
                }
            }

            std::string body = fetch_tbl(name);
            if (!body.empty() && g_array_new && g_byte_array_class)
            {
                void *arr = g_array_new(g_byte_array_class, body.size());
                if (arr)
                {
                    std::uint8_t *data = reinterpret_cast<std::uint8_t *>(arr) + 32;
                    std::memcpy(data, body.data(), body.size());
                    {
                        std::lock_guard<std::mutex> lk(g_cache_mu);
                        g_tbl_cache.emplace(name, std::move(body));
                    }
                    TLOGI("TBL hook: served %s", name.c_str());
                    return arr;
                }
            }

            TLOGE("TBL hook: fallback %s", name.c_str());
            return g_orig_get_decrypt_data(__this, name_str);
        }

    } // anonymous namespace

    void hook_table_manager(void *lib_handle)
    {
        if (!fetch_enabled())
        {
            TLOGI("TBL hook: disabled by server, skipping");
            return;
        }

        auto domain_get   = reinterpret_cast<il2cpp_domain_get_t>(dlsym(lib_handle, "il2cpp_domain_get"));
        auto assembly_open = reinterpret_cast<il2cpp_domain_assembly_open_t>(dlsym(lib_handle, "il2cpp_domain_assembly_open"));
        auto get_image    = reinterpret_cast<il2cpp_assembly_get_image_t>(dlsym(lib_handle, "il2cpp_assembly_get_image"));
        auto class_from_name = reinterpret_cast<il2cpp_class_from_name_t>(dlsym(lib_handle, "il2cpp_class_from_name"));
        auto get_methods  = reinterpret_cast<il2cpp_class_get_methods_t>(dlsym(lib_handle, "il2cpp_class_get_methods"));
        auto method_name  = reinterpret_cast<il2cpp_method_get_name_t>(dlsym(lib_handle, "il2cpp_method_get_name"));
        auto array_class_get = reinterpret_cast<il2cpp_array_class_get_t>(dlsym(lib_handle, "il2cpp_array_class_get"));

        g_string_chars  = reinterpret_cast<il2cpp_string_chars_t>(dlsym(lib_handle, "il2cpp_string_chars"));
        g_string_length = reinterpret_cast<il2cpp_string_length_t>(dlsym(lib_handle, "il2cpp_string_length"));
        g_array_new     = reinterpret_cast<il2cpp_array_new_t>(dlsym(lib_handle, "il2cpp_array_new"));

        if (!domain_get || !assembly_open || !get_image || !class_from_name ||
            !get_methods || !method_name || !array_class_get || !g_array_new)
        {
            TLOGE("TBL hook: missing IL2CPP APIs");
            return;
        }

        void *domain = domain_get();
        if (!domain) { TLOGE("TBL hook: null domain"); return; }

        // byte[] class
        void *corlib_asm   = assembly_open(domain, "mscorlib");
        void *corlib_image = corlib_asm ? get_image(corlib_asm) : nullptr;
        void *byte_class   = corlib_image ? class_from_name(corlib_image, "System", "Byte") : nullptr;
        if (!byte_class) { TLOGE("TBL hook: failed to get System.Byte class"); return; }
        g_byte_array_class = array_class_get(byte_class, 1);
        if (!g_byte_array_class) { TLOGE("TBL hook: failed to get byte[] class"); return; }

        // TableManager class
        void *game_asm   = assembly_open(domain, "Assembly-CSharp");
        void *game_image = game_asm ? get_image(game_asm) : nullptr;
        void *tbl_class  = game_image ? class_from_name(game_image, "", "TableManager") : nullptr;
        if (!tbl_class) { TLOGE("TBL hook: TableManager class not found"); return; }

        // GetDecryptData method
        void *iter = nullptr;
        void *method = nullptr;
        void *target_method = nullptr;
        while ((method = get_methods(tbl_class, &iter)) != nullptr)
        {
            const char *n = method_name(method);
            if (n && std::strcmp(n, "GetDecryptData") == 0)
            {
                target_method = method;
                break;
            }
        }
        if (!target_method) { TLOGE("TBL hook: GetDecryptData not found"); return; }

        void *method_ptr = *reinterpret_cast<void **>(target_method);
        if (!method_ptr) { TLOGE("TBL hook: null method pointer"); return; }

        void *origin = nullptr;
        int rc = DobbyHook(method_ptr,
                           reinterpret_cast<void *>(detour_get_decrypt_data),
                           &origin);
        if (rc == 0)
        {
            g_orig_get_decrypt_data = reinterpret_cast<get_decrypt_data_t>(origin);
            TLOGI("TBL hook: GetDecryptData hooked @ %p", method_ptr);
        }
        else
        {
            TLOGE("TBL hook: DobbyHook failed rc=%d", rc);
        }
    }

} // namespace eversoul::tbl_hook

#endif // __ANDROID__
