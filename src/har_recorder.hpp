// har_recorder.hpp — Windows 전용 HAR 패킷 캡처 레코더.
// 흐름: APK → PC 9991 [요청 기록] → 실제 Kakao 서버 → [응답 기록] → APK
// 저장: build/har/har/log/{category}/{id}_{METHOD}_{slug}.json
// AI 분석용 메타데이터 포함: URL 구조, 요청/응답, 구현 힌트, TBL/번들 플래그
#pragma once

#include <cstdint>
#include <map>
#include <mutex>
#include <string>

#include "common.hpp"

namespace eversoul
{
namespace har
{

enum class Category
{
    net,      // 일반 API — gc-openapi-zinny3.kakaogames.com
    account,  // 인증/계정/세션 — auth, login, token, session, register 패턴
    content,  // 게임 컨텐츠/TBL 테이블/에셋 — tbl, table, masterdata, content 패턴
    bundle,   // Unity AssetBundle 패치 다운로드 — /Live/ 패턴
    runtime,  // Unity 런타임 info desk — /v2/ 패턴 (gc-infodesk-zinny3)
};

struct RequestCapture
{
    std::string method;
    std::string path;
    std::string upstream_url;
    std::map<std::string, std::string> headers;
    std::string body;
};

struct ResponseCapture
{
    long status;
    std::map<std::string, std::string> headers;
    std::string body;
    double timing_ms;
};

class HarRecorder
{
public:
    // output_dir: 실행파일 위치. 내부적으로 {output_dir}/har/log/{category}/ 를 생성한다.
    explicit HarRecorder(const std::string &output_dir);

    // 요청+응답 쌍 1개를 카테고리 디렉토리에 AI 분석 JSON으로 저장.
    // 스레드 안전 (내부 mutex 보호).
    void record(std::uint64_t id,
                const RequestCapture &req,
                const ResponseCapture &res);

private:
    std::string output_dir_;
    std::mutex  mu_;

    static Category    classify(const std::string &path);
    static std::string category_name(Category c);
    static std::string path_to_slug(const std::string &path);

    std::string build_json(std::uint64_t id,
                           const RequestCapture &req,
                           const ResponseCapture &res,
                           Category cat) const;

    void ensure_dir(const std::string &dir);
};

} // namespace har
} // namespace eversoul
