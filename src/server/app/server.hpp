// server.hpp — TCP accept loop and lifecycle for the offline mock server.
#pragma once

namespace eversoul
{

    // Blocking accept loop on 0.0.0.0:<port>. Returns non-zero on socket setup failure.
    int run_server(int port);

    // Start the server on a detached background thread (idempotent). Used by the Android constructor.
    void start_async(int port);

    // Request SIGINT/SIGTERM-style shutdown of the accept loop.
    void request_shutdown();

} // namespace eversoul
