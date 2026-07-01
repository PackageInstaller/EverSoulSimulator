// userinfo_builder.hpp - rebuild /UserInfo from ORM state over the captured JSON base.
#pragma once

#include <string>

namespace eversoul::orm {

[[nodiscard]] std::string build_user_info_payload(const std::string& data_dir);

}  // namespace eversoul::orm
