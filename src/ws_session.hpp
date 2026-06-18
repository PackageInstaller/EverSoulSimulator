// ws_session.hpp — Eversoul WS protocol reply builders (loaded from wss/*.json).
#pragma once

#include <string>

#include "account_registry.hpp"

namespace eversoul
{

    // Load wss/session_replies.json + wss/chat_engineio.json from `data_dir`/wss.
    // Called once at startup (alongside the fixture store). Returns true on success.
    bool ws_load_fixtures(const std::string &data_dir);

    // --- gc-session-zinny3 (Kakao SDK JSON-RPC over WebSocket) ---
    // The unsolicited initial server push sent right after connect (loginGoogle).
    [[nodiscard]] std::string ws_session_initial_push();
    // Build a reply for a client JSON-RPC frame ["topic",{txNo},{data}]. Returns
    // true and sets `reply` if the topic is known; echoes txNo, fresh publishTime.
    bool ws_session_reply(const std::string &client_text, std::string &reply);

    // --- live-sea-chat (socket.io v4 / engine.io v4) over WebSocket ---
    // Handle an engine.io packet text frame; sets `reply` (may be empty). Returns
    // true if a reply should be sent.
    bool ws_chat_reply(const std::string &client_text, std::string &reply);

    // socket.io long-poll bootstrap over plain HTTP (before the WS upgrade). Given
    // the request method and query string, returns the engine.io body to send:
    //   GET  without sid  -> "0{sid,upgrades,pingInterval,...}"   (engine.io OPEN)
    //   POST              -> "ok"
    //   GET  with sid     -> "40{sid}" then "6" (namespace connect / noop)
    // Returns true and sets `body` if this looks like a socket.io poll.
    bool socketio_poll_response(const std::string &method, const std::string &query,
                                std::string &body);

    // session_replies.json initial_push body에서 AccountSessionRow 기본값 추출.
    // account_id / player_id / idp_code는 호출자가 덮어써야 한다.
    AccountSessionRow ws_session_default_row();

} // namespace eversoul
