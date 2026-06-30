#pragma once

#include <string>

namespace eversoul
{
namespace ini
{
    std::string get(const std::string &key, const std::string &def = "");
    void set(const std::string &key, const std::string &value);
} // namespace ini
} // namespace eversoul
