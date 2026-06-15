#pragma once

namespace eversoul::admin
{

static constexpr int kDefaultAdminPort = 9997;

// Starts the admin HTTP server on a detached background thread (idempotent).
// Must be called after orm::ensure_ready() and fixture_store().load().
void start_admin(int port = kDefaultAdminPort);

// Graceful shutdown.
void stop_admin();

} // namespace eversoul::admin
