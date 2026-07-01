// anticheat_patch.hpp — installs an ARM64 inline hook on pthread_create that neutralizes
// the anti-cheat library's (libcawwyayy.so) detection threads.
#pragma once

namespace eversoul::anticheat
{

    // Install the pthread_create inline hook. Idempotent; safe to call once from a constructor.
    // Must run before libcawwyayy.so spawns its threads (i.e. very early in process startup).
    void install();

} // namespace eversoul::anticheat
