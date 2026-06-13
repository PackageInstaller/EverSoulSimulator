// offline_data.cpp — 离线资源数据源实现。
#include "offline_data.hpp"

#ifdef _WIN32
#include <windows.h>
#else
#include <dlfcn.h>
#endif

#include <cstdint>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <sstream>

#include "log.hpp"

namespace fs = std::filesystem;

namespace eversoul
{
    namespace
    {

        constexpr char kMagic[8] = {'E', 'S', 'O', 'F', 'L', 'N', 'D', '1'};
        constexpr const char *kBlobName = "libofflinedata.so";

        std::string read_file(const fs::path &p)
        {
            std::ifstream f(p, std::ios::binary);
            if (!f)
                return {};
            std::stringstream ss;
            ss << f.rdbuf();
            return ss.str();
        }

        bool read_u32(const std::string &buf, std::size_t &pos, std::uint32_t &out)
        {
            if (pos + 4 > buf.size())
                return false;
            out = static_cast<std::uint8_t>(buf[pos]) |
                  (static_cast<std::uint8_t>(buf[pos + 1]) << 8) |
                  (static_cast<std::uint8_t>(buf[pos + 2]) << 16) |
                  (static_cast<std::uint32_t>(static_cast<std::uint8_t>(buf[pos + 3])) << 24);
            pos += 4;
            return true;
        }

    } // namespace

    std::string guess_blob_path()
    {
#ifdef _WIN32
        HMODULE hmod = nullptr;
        if (!GetModuleHandleExA(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS |
                                    GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT,
                                reinterpret_cast<LPCSTR>(&guess_blob_path), &hmod))
            return {};
        char modpath[MAX_PATH];
        if (!GetModuleFileNameA(hmod, modpath, MAX_PATH))
            return {};
        fs::path self(modpath);
#else
        Dl_info info{};
        if (dladdr(reinterpret_cast<void *>(&guess_blob_path), &info) == 0 ||
            info.dli_fname == nullptr)
            return {};
        fs::path self(info.dli_fname);
#endif
        fs::path dir = self.parent_path();
        if (dir.empty())
            return {};
        return (dir / kBlobName).string();
    }

    bool OfflineData::load_blob(const std::string &path)
    {
        std::string buf = read_file(path);
        if (buf.size() < sizeof(kMagic) + 4)
            return false;
        if (std::memcmp(buf.data(), kMagic, sizeof(kMagic)) != 0)
            return false;

        std::size_t pos = sizeof(kMagic);
        std::uint32_t count = 0;
        if (!read_u32(buf, pos, count))
            return false;

        std::map<std::string, std::string> entries;
        for (std::uint32_t i = 0; i < count; ++i)
        {
            std::uint32_t plen = 0;
            if (!read_u32(buf, pos, plen))
                return false;
            if (pos + plen > buf.size())
                return false;
            std::string rel = buf.substr(pos, plen);
            pos += plen;
            std::uint32_t dlen = 0;
            if (!read_u32(buf, pos, dlen))
                return false;
            if (pos + dlen > buf.size())
                return false;
            entries.emplace(std::move(rel), buf.substr(pos, dlen));
            pos += dlen;
        }
        blob_entries_ = std::move(entries);
        return true;
    }

    std::size_t OfflineData::init(const std::string &dir, const std::string &blob_path)
    {
        from_blob_ = false;
        blob_entries_.clear();
        dir_.clear();
        source_.clear();

        // 1) 优先尝试 blob（伪装 so）。
        std::string bp = blob_path.empty() ? guess_blob_path() : blob_path;
        if (!bp.empty() && load_blob(bp))
        {
            from_blob_ = true;
            source_ = bp;
            log_line(0, "OFFLINE_DATA", "loaded blob " + bp + " entries=" + std::to_string(blob_entries_.size()));
            return blob_entries_.size();
        }

        // 2) 回退到目录散文件（桌面调试）。
        std::error_code ec;
        if (fs::is_directory(dir, ec))
        {
            dir_ = dir;
            source_ = dir;
            std::size_t n = 0;
            for (const char *sub : {"responses", "schema", "wss"})
            {
                fs::path sp = fs::path(dir) / sub;
                if (!fs::is_directory(sp, ec))
                    continue;
                for (const auto &e : fs::directory_iterator(sp, ec))
                {
                    if (e.path().extension() == ".json")
                        ++n;
                }
            }
            dir_count_ = n;
            log_line(0, "OFFLINE_DATA", "using dir " + dir + " json=" + std::to_string(n));
            return n;
        }

        log_line(0, "OFFLINE_DATA", "no blob (" + (bp.empty() ? "<none>" : bp) + ") and no dir " + dir);
        return 0;
    }

    std::optional<std::string> OfflineData::read(const std::string &rel) const
    {
        if (from_blob_)
        {
            auto it = blob_entries_.find(rel);
            if (it == blob_entries_.end())
                return std::nullopt;
            return it->second;
        }
        if (dir_.empty())
            return std::nullopt;
        fs::path p = fs::path(dir_) / rel;
        std::error_code ec;
        if (!fs::is_regular_file(p, ec))
            return std::nullopt;
        return read_file(p);
    }

    std::vector<std::string> OfflineData::list(const std::string &prefix) const
    {
        std::vector<std::string> out;
        if (from_blob_)
        {
            for (const auto &[rel, _] : blob_entries_)
            {
                if (rel.rfind(prefix, 0) == 0)
                    out.push_back(rel);
            }
            return out;
        }
        if (dir_.empty())
            return out;
        // prefix 形如 "responses/"，对应 dir_/responses 目录。
        std::string sub = prefix;
        if (!sub.empty() && sub.back() == '/')
            sub.pop_back();
        fs::path sp = fs::path(dir_) / sub;
        std::error_code ec;
        if (!fs::is_directory(sp, ec))
            return out;
        for (const auto &e : fs::directory_iterator(sp, ec))
        {
            if (e.path().extension() == ".json")
            {
                out.push_back(sub + "/" + e.path().filename().string());
            }
        }
        return out;
    }

    OfflineData &offline_data()
    {
        static OfflineData data;
        return data;
    }

} // namespace eversoul
