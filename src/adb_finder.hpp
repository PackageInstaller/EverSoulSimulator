#pragma once

#include <cstdio>
#include <string>

namespace eversoul
{

std::string load_saved_adb_path(const std::string& data_dir);
void        save_adb_path(const std::string& data_dir, const std::string& path);
std::string resolve_adb_path(const std::string& data_dir = ".");

std::string load_adb_port(const std::string& data_dir);
void        save_adb_port(const std::string& data_dir, const std::string& port);

// Run an adb sub-command in a UTF-8–safe pipe (Windows: prepends `chcp 65001`).
// `args` is everything that follows the adb executable (e.g. "devices", "-s X shell ...").
// Caller must close with adb_pclose().
FILE*       adb_popen(const std::string& adb_path, const std::string& args);
void        adb_pclose(FILE* pipe);

} // namespace eversoul
