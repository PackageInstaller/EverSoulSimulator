#include "adb_finder.hpp"

#include <cstdlib>
#include <fstream>
#include <string>

namespace eversoul
{

namespace
{

static std::string adb_txt_path(const std::string& data_dir)
{
    if (data_dir.empty()) return "adb_path.txt";
#ifdef _WIN32
    return data_dir + "\\adb_path.txt";
#else
    return data_dir + "/adb_path.txt";
#endif
}

} // namespace

std::string load_saved_adb_path(const std::string& data_dir)
{
    std::ifstream f(adb_txt_path(data_dir));
    if (!f.is_open()) return {};
    std::string line;
    if (!std::getline(f, line)) return {};
    while (!line.empty() && (line.back() == '\r' || line.back() == '\n' || line.back() == ' '))
        line.pop_back();
    return line;
}

void save_adb_path(const std::string& data_dir, const std::string& path)
{
    std::ofstream f(adb_txt_path(data_dir), std::ios::trunc);
    if (f.is_open()) f << path << "\n";
}

std::string resolve_adb_path(const std::string& data_dir)
{
    if (const char* env = std::getenv("EVERSOUL_ADB"))
        if (*env) return env;

    std::string saved = load_saved_adb_path(data_dir);
    if (!saved.empty()) return saved;

    return "adb";
}

} // namespace eversoul
