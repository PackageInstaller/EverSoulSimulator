#pragma once

#include <string>

namespace eversoul
{

// Reads the user-saved ADB path from {data_dir}/adb_path.txt.
// Returns empty string if the file is absent.
std::string load_saved_adb_path(const std::string& data_dir);

// Writes the user-specified ADB path to {data_dir}/adb_path.txt.
void save_adb_path(const std::string& data_dir, const std::string& path);

// Resolves the effective ADB path using this priority order:
//   1. Environment variable EVERSOUL_ADB
//   2. User-saved path in {data_dir}/adb_path.txt
//   3. "adb" (rely on system PATH)
std::string resolve_adb_path(const std::string& data_dir = ".");

} // namespace eversoul
