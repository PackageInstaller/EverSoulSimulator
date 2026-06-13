// websocket.hpp — minimal RFC 6455 WebSocket: handshake + frame codec + the
// two Eversoul WS protocol handlers (Kakao session JSON-RPC, socket.io chat).
#pragma once

#include <cstdint>
#include <string>

#include "common.hpp"
#include "platform.hpp"

namespace eversoul
{

    // True if the parsed HTTP request is a WebSocket upgrade.
    [[nodiscard]] bool is_websocket_upgrade(const HttpRequest &req);

    // Handle a WebSocket connection end-to-end on `fd`: completes the RFC 6455
    // handshake (using the captured request) and runs the per-protocol frame loop
    // until the peer disconnects. `pre` holds any bytes already read past the
    // request headers. Picks the protocol from the request path/host.
    void handle_websocket(std::uint64_t id, socket_fd_t fd, const HttpRequest &req,
                          const std::string &pre);

    // --- frame codec (exposed for tests) ---
    enum class WsOpcode : std::uint8_t
    {
        Continuation = 0x0,
        Text = 0x1,
        Binary = 0x2,
        Close = 0x8,
        Ping = 0x9,
        Pong = 0xA,
    };

    // Encode a single (unfragmented, server->client, unmasked) frame.
    [[nodiscard]] std::string ws_encode_frame(WsOpcode op, const std::string &payload);

    // Parse one frame from `buf` starting at `pos`. On success advances `pos`,
    // sets op/payload, and returns true. Returns false if more bytes are needed.
    bool ws_parse_frame(const std::string &buf, std::size_t &pos, WsOpcode &op,
                        std::string &payload, bool &fin);

} // namespace eversoul
