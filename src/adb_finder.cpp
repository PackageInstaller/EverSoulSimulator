#include "adb_finder.hpp"

#include <cstdio>
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

static std::string adb_port_txt_path(const std::string& data_dir)
{
    if (data_dir.empty()) return "adb_port.txt";
#ifdef _WIN32
    return data_dir + "\\adb_port.txt";
#else
    return data_dir + "/adb_port.txt";
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
    if (!saved.empty()) {
        std::ifstream direct(saved);
        if (direct.good()) return saved;

#ifdef _WIN32
        char sep = '\\';
#else
        char sep = '/';
#endif
        std::string candidate = saved;
        if (!candidate.empty() && candidate.back() != '\\' && candidate.back() != '/')
            candidate += sep;
#ifdef _WIN32
        candidate += "adb.exe";
#else
        candidate += "adb";
#endif
        std::ifstream probe(candidate);
        if (probe.good()) return candidate;

        return saved;
    }

    return "adb";
}

std::string load_adb_port(const std::string& data_dir)
{
    std::ifstream f(adb_port_txt_path(data_dir));
    if (!f.is_open()) return {};
    std::string line;
    if (!std::getline(f, line)) return {};
    while (!line.empty() && (line.back() == '\r' || line.back() == '\n' || line.back() == ' '))
        line.pop_back();
    return line;
}

void save_adb_port(const std::string& data_dir, const std::string& port)
{
    std::ofstream f(adb_port_txt_path(data_dir), std::ios::trunc);
    if (f.is_open()) f << port << "\n";
}

FILE* adb_popen(const std::string& adb_path, const std::string& args)
{
#ifdef _WIN32
    std::string cmd = "chcp 65001 > nul 2>&1 && \"" + adb_path + "\" " + args + " 2>&1";
    return _popen(cmd.c_str(), "r");
#else
    std::string cmd = "\"" + adb_path + "\" " + args + " 2>&1";
    return popen(cmd.c_str(), "r");
#endif
}

void adb_pclose(FILE* pipe)
{
#ifdef _WIN32
    _pclose(pipe);
#else
    pclose(pipe);
#endif
}

} // namespace eversoul
