// offline_data_test.cpp — OfflineData가 blob(위장 so)에서 리소스를 올바르게 읽는지 검증.
//
// 사용법: offline_data_test <blob경로> [endpoint] [responses_dir]
// blob 경로를 직접 지정(dladdr 불의존), 로드 후 항목 수 출력 및 몇 가지 파일 점검,
// fixture_store 동일 로직으로 UserInfo 인코딩 후 바이트 수 예상 값 확인.
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
    // blob 경로 명시 지정, dladdr 우회.
    std::size_t n = data.init("/nonexistent_dir", blob);
    std::printf("from_blob=%d entries=%zu source=%s\n",
                static_cast<int>(data.from_blob()), n, data.source().c_str());
    if (!data.from_blob())
    {
        std::printf("FAIL: blob 로드 안 됨\n");
        return 1;
    }

    auto resp = data.read(responses_dir + "/" + ep + ".json");
    auto sch = data.read("schema/" + ep + ".json");
    if (!resp || !sch)
    {
        std::printf("FAIL: %s/%s.json 또는 schema 읽기 실패\n", responses_dir.c_str(), ep.c_str());
        return 1;
    }
    std::printf("%s/%s.json = %zu bytes, schema = %zu bytes\n",
                responses_dir.c_str(), ep.c_str(), resp->size(), sch->size());

    std::string out, err;
    if (!eversoul::json_encode_from_text(*sch, *resp, out, err))
    {
        std::printf("FAIL: 인코딩 실패 %s\n", err.c_str());
        return 1;
    }
    std::printf("인코딩 %s -> protobuf %zu bytes\n", ep.c_str(), out.size());

    // responses/ 항목 수 열거.
    auto list = data.list(responses_dir + "/");
    std::printf("%s/ 총 %zu 개 파일\n", responses_dir.c_str(), list.size());
    std::printf("OK\n");
    return 0;
}
