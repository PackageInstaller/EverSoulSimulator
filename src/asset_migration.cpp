#include "asset_migration.hpp"

#include <android/log.h>
#include <dirent.h>
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <sys/sendfile.h>
#include <sys/stat.h>
#include <unistd.h>

#include <string>
#include <vector>

namespace eversoul::asset_migration
{

    namespace
    {
        constexpr const char *kTag = "libswappywrapper";
        constexpr const char *kDstPkg = "offline.eversoul";

        void logi(const char *fmt, ...) __attribute__((format(printf, 1, 2)));
        void logi(const char *fmt, ...)
        {
            va_list ap;
            va_start(ap, fmt);
            __android_log_vprint(ANDROID_LOG_INFO, kTag, fmt, ap);
            va_end(ap);
        }

        void loge(const char *fmt, ...) __attribute__((format(printf, 1, 2)));
        void loge(const char *fmt, ...)
        {
            va_list ap;
            va_start(ap, fmt);
            __android_log_vprint(ANDROID_LOG_ERROR, kTag, fmt, ap);
            va_end(ap);
        }

        bool dir_exists(const std::string &path)
        {
            struct stat st{};
            return stat(path.c_str(), &st) == 0 && S_ISDIR(st.st_mode);
        }

        bool mkdirs(const std::string &path)
        {
            if (dir_exists(path)) return true;
            std::string tmp = path;
            for (std::size_t i = 1; i < tmp.size(); ++i)
            {
                if (tmp[i] == '/')
                {
                    tmp[i] = '\0';
                    mkdir(tmp.c_str(), 0755);
                    tmp[i] = '/';
                }
            }
            return mkdir(path.c_str(), 0755) == 0 || errno == EEXIST;
        }

        bool copy_file(const std::string &src, const std::string &dst)
        {
            int fd_src = open(src.c_str(), O_RDONLY);
            if (fd_src < 0) return false;
            struct stat st{};
            fstat(fd_src, &st);
            int fd_dst = open(dst.c_str(), O_WRONLY | O_CREAT | O_TRUNC, 0644);
            if (fd_dst < 0) { close(fd_src); return false; }
            off_t offset = 0;
            bool ok = sendfile(fd_dst, fd_src, &offset, static_cast<std::size_t>(st.st_size)) >= 0;
            close(fd_src);
            close(fd_dst);
            return ok;
        }

        void copy_tree(const std::string &src, const std::string &dst)
        {
            mkdirs(dst);
            DIR *d = opendir(src.c_str());
            if (!d) return;
            dirent *e;
            while ((e = readdir(d)) != nullptr)
            {
                if (strcmp(e->d_name, ".") == 0 || strcmp(e->d_name, "..") == 0) continue;
                std::string s = src + "/" + e->d_name;
                std::string t = dst + "/" + e->d_name;
                struct stat st{};
                if (stat(s.c_str(), &st) != 0) continue;
                if (S_ISDIR(st.st_mode))
                    copy_tree(s, t);
                else
                    copy_file(s, t);
            }
            closedir(d);
        }

        bool try_rename(const std::string &src, const std::string &dst)
        {
            mkdirs(dst.substr(0, dst.rfind('/')));
            return rename(src.c_str(), dst.c_str()) == 0;
        }

        void move_tree(const std::string &src, const std::string &dst)
        {
            if (try_rename(src, dst))
            {
                logi("asset_migration: renamed %s -> %s", src.c_str(), dst.c_str());
                return;
            }
            logi("asset_migration: rename failed (%s), falling back to copy", strerror(errno));
            copy_tree(src, dst);
            logi("asset_migration: copy done, removing source %s", src.c_str());
        }
    } // namespace

    void migrate()
    {
        const std::string dst_base =
            std::string("/sdcard/Android/data/") + kDstPkg;

        if (dir_exists(dst_base))
        {
            logi("asset_migration: dst %s already exists, skip", dst_base.c_str());
            return;
        }

        const std::vector<std::string> candidates = {
            "/sdcard/Android/data/com.kakaogames.eversoul",
            "/storage/emulated/0/Android/data/com.kakaogames.eversoul",
            "/sdcard/EverSoul",
            "/sdcard/Download/EverSoul",
        };

        for (const auto &src : candidates)
        {
            if (!dir_exists(src)) continue;
            logi("asset_migration: found source %s -> %s", src.c_str(), dst_base.c_str());
            mkdirs("/sdcard/Android/data");
            move_tree(src, dst_base);
            return;
        }

        logi("asset_migration: no source found, user must place data at %s", dst_base.c_str());
    }

} // namespace eversoul::asset_migration
