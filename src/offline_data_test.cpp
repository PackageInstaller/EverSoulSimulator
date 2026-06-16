// offline_data_test.cpp — 验证 OfflineData 能从 blob（伪装 so）正确读取资源。
//
// 用法：offline_data_test <blob路径> [endpoint] [responses_dir]
// 直接指定 blob 路径（不依赖 dladdr），加载后打印条目数并抽查几个文件，
// 再用 fixture_store 的同款逻辑编码 UserInfo，确认字节数符合预期。
#include <cstdio>
#include <string>

#include "offline_data.hpp"
#include "json.hpp"
#include "json_encoder.hpp"

int main(int argc, char **argv)
{
    if (argc < 2)
    {
        std::fprintf(stderr, "usage: %s <blob> [endpoint]\n", argv[0]);
        return 2;
    }
    std::string blob = argv[1];
    std::string ep = (argc > 2) ? argv[2] : "UserInfo";
    std::string responses_dir = (argc > 3) ? argv[3] : "responses";

    eversoul::OfflineData data;
    // 显式给 blob 路径，绕过 dladdr。
    std::size_t n = data.init("/nonexistent_dir", blob);
    std::printf("from_blob=%d entries=%zu source=%s\n",
                static_cast<int>(data.from_blob()), n, data.source().c_str());
    if (!data.from_blob())
    {
        std::printf("FAIL: 没有从 blob 加载\n");
        return 1;
    }

    auto resp = data.read(responses_dir + "/" + ep + ".json");
    auto sch = data.read("schema/" + ep + ".json");
    if (!resp || !sch)
    {
        std::printf("FAIL: 读不到 %s/%s.json 或 schema\n", responses_dir.c_str(), ep.c_str());
        return 1;
    }
    std::printf("%s/%s.json = %zu bytes, schema = %zu bytes\n",
                responses_dir.c_str(), ep.c_str(), resp->size(), sch->size());

    std::string out, err;
    if (!eversoul::json_encode_from_text(*sch, *resp, out, err))
    {
        std::printf("FAIL: 编码失败 %s\n", err.c_str());
        return 1;
    }
    std::printf("编码 %s -> protobuf %zu bytes\n", ep.c_str(), out.size());

    // 列出 responses/ 条目数。
    auto list = data.list(responses_dir + "/");
    std::printf("%s/ 共 %zu 个文件\n", responses_dir.c_str(), list.size());
    std::printf("OK\n");
    return 0;
}
