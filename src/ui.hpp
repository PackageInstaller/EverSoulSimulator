#pragma once

#include <string>

namespace eversoul::ui
{

enum class Lang { Korean, English };

struct Strings
{
    const char* title;
    const char* label_port;
    const char* label_mode;
    const char* label_data;
    const char* label_url;
    const char* mode_offline;
    const char* mode_proxy;
    const char* status_starting;
    const char* status_ready;
    const char* status_stopped;
    const char* lang_prompt;
    const char* lang_opt_ko;
    const char* lang_opt_en;
    const char* err_socket;
    const char* err_bind;
    const char* err_listen;
};

void         set_lang(Lang lang);
Lang         current_lang();
const Strings& str();

void enable_ansi();

void print_banner(int port, const std::string& data_dir,
                  bool proxy_enabled, const std::string& game_server_url);

void print_status(const char* label, const std::string& value);

#ifdef _WIN32
Lang select_language_interactive();
#endif

} // namespace eversoul::ui
