// offline_data.hpp — 오프라인 리소스 데이터 소스 (blob 위장 so 또는 파일 시스템 디렉토리).
//
// 리소스(responses/*.json, schema/*.json, wss/*.json)는 기기에서 libofflinedata.so
// (커스텀 아카이브, ELF 아님)로 패키징되어 APK lib 디렉토리에 포함됨. 설치 시
// extractNativeLibs가 앱 전용 native lib 디렉토리에 압축 해제 → libswappywrapper.so와
// 동일 디렉토리. 런타임에 dladdr로 자신의 .so 경로 추론 → 같은 디렉토리의
// libofflinedata.so 경로 조합 → 읽기/파싱. /data/local/tmp 또는 외부 저장소 불사용.
//
// 데스크톱 디버그 시 blob 없으면 디렉토리 파일로 폴백.
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
        // 데이터 소스 초기화. 우선순위:
        //   1) blob_path 가 가리키는 아카이브 파일 (존재하고 magic 정상인 경우)
        //   2) dir 디렉토리 내 파일
        // blob_path 비어있으면 dladdr로 자동 추론 (같은 디렉토리의 libofflinedata.so).
        // 로드된 항목 수 반환.
        std::size_t init(const std::string &dir, const std::string &blob_path = "");

        // 상대 경로 읽기 (예: "responses/UserInfo.json"). 없으면 nullopt.
        std::optional<std::string> read(const std::string &rel) const;

        // 특정 접두사 하위의 모든 상대 경로 열거 (예: "responses/").
        std::vector<std::string> list(const std::string &prefix) const;

        bool from_blob() const { return from_blob_; }
        std::size_t size() const { return blob_entries_.size(); }
        const std::string &source() const { return source_; }

    private:
        bool load_blob(const std::string &path);

        bool from_blob_ = false;
        std::string source_; // 진단용: blob 경로 또는 디렉토리
        std::string dir_;    // 파일 시스템 백엔드 루트 디렉토리
        // blob 백엔드: 상대경로 → 내용
        std::map<std::string, std::string> blob_entries_;
    };

    // 프로세스 전역 데이터 소스.
    OfflineData &offline_data();

    // dladdr로 현재 .so 디렉토리 추론 → 같은 디렉토리의 libofflinedata.so 경로 반환.
    // 실패 시 (데스크톱 비-.so 환경 등) 빈 문자열 반환.
    std::string guess_blob_path();

} // namespace eversoul
