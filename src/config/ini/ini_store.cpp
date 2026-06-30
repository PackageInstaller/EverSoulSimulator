#include "ini_store.hpp"

#include <filesystem>
#include <fstream>
#include <map>
#include <mutex>
#include <string>

#include "common.hpp"

namespace eversoul::ini
{
    namespace
    {
        std::mutex g_mu;

        std::filesystem::path ini_path()
        {
            return std::filesystem::path(config().data_dir) / "eversoul.ini";
        }

        std::map<std::string, std::string> load_all()
        {
            std::map<std::string, std::string> m;
            std::ifstream f(ini_path());
            std::string line;
            while (std::getline(f, line))
            {
                if (line.empty() || line[0] == '#') continue;
                auto pos = line.find('=');
                if (pos == std::string::npos) continue;
                m[line.substr(0, pos)] = line.substr(pos + 1);
            }
            return m;
        }

        void save_all(const std::map<std::string, std::string> &m)
        {
            std::ofstream f(ini_path(), std::ios::trunc);
            for (const auto &[k, v] : m)
                f << k << '=' << v << '\n';
        }
    }

    std::string get(const std::string &key, const std::string &def)
    {
        std::lock_guard lock(g_mu);
        auto m = load_all();
        auto it = m.find(key);
        return it != m.end() ? it->second : def;
    }

    void set(const std::string &key, const std::string &value)
    {
        std::lock_guard lock(g_mu);
        auto m = load_all();
        m[key] = value;
        save_all(m);
    }
}
