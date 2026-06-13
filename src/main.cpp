// main.cpp — desktop entry point (capture/proxy/mock CLI).
#include <chrono>
#include <csignal>
#include <string>
#include <thread>

#ifdef _WIN32
#  include <windows.h>
#  include <shellapi.h>
#endif

#include "admin_server.hpp"
#include "common.hpp"
#include "i18n.hpp"
#include "server.hpp"

static void open_browser(int port)
{
    std::thread([port]() {
        std::this_thread::sleep_for(std::chrono::milliseconds(500));
        std::string url = "http://localhost:" + std::to_string(port) + "/admin";
#ifdef _WIN32
        ShellExecuteA(nullptr, "open", url.c_str(), nullptr, nullptr, SW_SHOWNORMAL);
#elif defined(__APPLE__)
        std::system(("open " + url).c_str());
#else
        std::system(("xdg-open " + url + " &").c_str());
#endif
    }).detach();
}

int main(int argc, char **argv)
{
    using namespace eversoul;
    int port       = kPcForwardPort;
    int admin_port = admin::kDefaultAdminPort;

    for (int i = 1; i < argc; ++i)
    {
        std::string arg = argv[i];
        if (arg == "--mock-only")
        {
            config().proxy_enabled = false;
        }
        else if (arg == "--proxy")
        {
            config().proxy_enabled = true;
        }
        else if (arg == "--port" && i + 1 < argc)
        {
            port = std::stoi(argv[++i]);
        }
        else if (arg == "--admin-port" && i + 1 < argc)
        {
            admin_port = std::stoi(argv[++i]);
        }
        else if (arg == "--game-server-url" && i + 1 < argc)
        {
            config().game_server_url = argv[++i];
        }
        else if (arg == "--data-dir" && i + 1 < argc)
        {
            config().data_dir = argv[++i];
        }
        else if (arg == "--lang" && i + 1 < argc)
        {
            i18n::set_lang(argv[++i]);
        }
    }

    std::signal(SIGINT,  [](int) { eversoul::request_shutdown(); });
    std::signal(SIGTERM, [](int) { eversoul::request_shutdown(); });

    admin::start_admin(admin_port);
    open_browser(admin_port);
    int rc = run_server(port);
    admin::stop_admin();
    return rc;
}
