// userinfo_repository.hpp — AccountDatabase에서 /UserInfo 응답 페이로드 재구성.
#pragma once

#include <string>

namespace eversoul {

class AccountDatabase;

class UserInfoRepository {
public:
    explicit UserInfoRepository(AccountDatabase& db, const std::string& data_dir);

    [[nodiscard]] std::string build_payload() const;
    [[nodiscard]] std::string build_json()    const;

private:
    AccountDatabase& db_;
    std::string      data_dir_;
};

} // namespace eversoul
