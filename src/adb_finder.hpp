#pragma once

#include <string>

namespace eversoul
{

std::string load_saved_adb_path(const std::string& data_dir);
void save_adb_path(const std::string& data_dir, const std::string& path);
std::string resolve_adb_path(const std::string& data_dir = ".");

} // namespace eversoul
