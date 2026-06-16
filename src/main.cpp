// main.cpp — desktop entry point (capture/proxy/mock CLI).
#include <csignal>
#include <string>

#include "common.hpp"
#include "server.hpp"

int main(int argc, char **argv)
{
    using namespace eversoul;
    int port = kDefaultPort;
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
        else if (arg == "--game-server-url" && i + 1 < argc)
        {
            config().game_server_url = argv[++i];
        }
        else if (arg == "--data-dir" && i + 1 < argc)
        {
            config().data_dir = argv[++i];
        }
    }

    std::signal(SIGINT, [](int)
                { eversoul::request_shutdown(); });
    std::signal(SIGTERM, [](int)
                { eversoul::request_shutdown(); });
    return run_server(port);
}
