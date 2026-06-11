// offline_data.hpp — 离线资源数据源（blob 伪装 so 或文件系统目录）。
//
// 资源（responses/*.json、schema/*.json、wss/*.json）在设备上被打包成
// libofflinedata.so（一个自定义归档，非 ELF）放在 APK 的 lib 目录里。安装时
// extractNativeLibs 把它解压到 app 私有 native lib 目录，和 libswappywrapper.so
// 同目录。运行时用 dladdr 定位自身 .so 路径 -> 同目录拼出 libofflinedata.so
// -> mmap/读取解析。全程不碰 /data/local/tmp 或外部存储。
//
// 桌面调试时没有 blob，则回退到从一个目录读散文件。
#pragma once

#include <map>
#include <optional>
#include <string>
#include <vector>

namespace eversoul
{

    class OfflineData
    {
    public:
        // 初始化数据源。优先级：
        //   1) blob_path 指向的归档文件（若存在且 magic 正确）
        //   2) dir 目录下的散文件
        // blob_path 为空时自动用 dladdr 推断（同目录的 libofflinedata.so）。
        // 返回加载到的条目数。
        std::size_t init(const std::string &dir, const std::string &blob_path = "");

        // 读取一个相对路径（如 "responses/UserInfo.json"）。不存在返回 nullopt。
        std::optional<std::string> read(const std::string &rel) const;

        // 列出某前缀下的所有相对路径（如 "responses/"）。
        std::vector<std::string> list(const std::string &prefix) const;

        bool from_blob() const { return from_blob_; }
        std::size_t size() const { return blob_entries_.size(); }
        const std::string &source() const { return source_; }

    private:
        bool load_blob(const std::string &path);

        bool from_blob_ = false;
        std::string source_; // 诊断用：blob 路径或目录
        std::string dir_;    // 文件系统后端的根目录
        // blob 后端：相对路径 -> 内容
        std::map<std::string, std::string> blob_entries_;
    };

    // 进程级全局数据源。
    OfflineData &offline_data();

    // 用 dladdr 推断当前 .so 所在目录，拼出同目录的 libofflinedata.so 路径。
    // 失败（如桌面非 .so 环境）返回空串。
    std::string guess_blob_path();

} // namespace eversoul
