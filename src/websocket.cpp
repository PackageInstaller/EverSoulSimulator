// websocket.cpp — RFC 6455 handshake + frame codec + Eversoul WS handlers.
#include "websocket.hpp"

#include "platform.hpp"

#include <cstring>
#include <string>

#include "crypto.hpp"
#include "http.hpp"
#include "json.hpp"
#include "log.hpp"
#include "util.hpp"
#include "ws_session.hpp"

namespace eversoul
{

    bool is_websocket_upgrade(const HttpRequest &req)
    {
        for (const auto &[k, v] : req.headers)
        {
            if (lower(k) == "upgrade" && lower(v).find("websocket") != std::string::npos)
            {
                return true;
            }
        }
        return false;
    }

    namespace
    {

        std::string header_value(const HttpRequest &req, const std::string &name)
        {
            for (const auto &[k, v] : req.headers)
            {
                if (lower(k) == name)
                    return v;
            }
            return {};
        }

        bool send_handshake(socket_fd_t fd, const HttpRequest &req)
        {
            std::string key = header_value(req, "sec-websocket-key");
            if (key.empty())
                return false;
            std::string accept = websocket_accept(key);
            std::string resp = "HTTP/1.1 101 Switching Protocols\r\n"
                               "Upgrade: websocket\r\n"
                               "Connection: Upgrade\r\n"
                               "Sec-WebSocket-Accept: " +
                               accept + "\r\n\r\n";
            send_all(fd, resp);
            return true;
        }

    } // namespace

    std::string ws_encode_frame(WsOpcode op, const std::string &payload)
    {
        std::string out;
        out.push_back(static_cast<char>(0x80 | static_cast<std::uint8_t>(op))); // FIN + opcode
        std::size_t n = payload.size();
        if (n < 126)
        {
            out.push_back(static_cast<char>(n));
        }
        else if (n <= 0xFFFF)
        {
            out.push_back(126);
            out.push_back(static_cast<char>((n >> 8) & 0xFF));
            out.push_back(static_cast<char>(n & 0xFF));
        }
        else
        {
            out.push_back(127);
            for (int i = 7; i >= 0; --i)
                out.push_back(static_cast<char>((n >> (8 * i)) & 0xFF));
        }
        out += payload; // server->client frames are unmasked
        return out;
    }

    bool ws_parse_frame(const std::string &buf, std::size_t &pos, WsOpcode &op,
                        std::string &payload, bool &fin)
    {
        if (pos + 2 > buf.size())
            return false;
        std::size_t p = pos;
        std::uint8_t b0 = static_cast<std::uint8_t>(buf[p++]);
        std::uint8_t b1 = static_cast<std::uint8_t>(buf[p++]);
        fin = (b0 & 0x80) != 0;
        op = static_cast<WsOpcode>(b0 & 0x0F);
        bool masked = (b1 & 0x80) != 0;
        std::uint64_t len = b1 & 0x7F;
        if (len == 126)
        {
            if (p + 2 > buf.size())
                return false;
            len = (std::uint64_t(static_cast<std::uint8_t>(buf[p])) << 8) |
                  std::uint8_t(buf[p + 1]);
            p += 2;
        }
        else if (len == 127)
        {
            if (p + 8 > buf.size())
                return false;
            len = 0;
            for (int i = 0; i < 8; ++i)
                len = (len << 8) | std::uint8_t(buf[p + i]);
            p += 8;
        }
        std::uint8_t mask[4] = {0, 0, 0, 0};
        if (masked)
        {
            if (p + 4 > buf.size())
                return false;
            for (int i = 0; i < 4; ++i)
                mask[i] = static_cast<std::uint8_t>(buf[p + i]);
            p += 4;
        }
        if (p + len > buf.size())
            return false;
        payload.assign(len, '\0');
        for (std::uint64_t i = 0; i < len; ++i)
        {
            payload[i] = static_cast<char>(static_cast<std::uint8_t>(buf[p + i]) ^
                                           (masked ? mask[i & 3] : 0));
        }
        p += len;
        pos = p;
        return true;
    }

    namespace
    {

        // Receive loop shared by both protocols: reads frames, answers control frames
        // (ping->pong, close->close), and hands text frames to `on_text`.
        template <typename OnText>
        void ws_loop(std::uint64_t id, socket_fd_t fd, const std::string &pre, OnText on_text)
        {
            std::string buf = pre;
            char rbuf[8192];
            bool open = true;
            while (open)
            {
                // Drain any complete frames currently buffered.
                std::size_t pos = 0;
                WsOpcode op;
                std::string payload;
                bool fin = false;
                while (ws_parse_frame(buf, pos, op, payload, fin))
                {
                    switch (op)
                    {
                    case WsOpcode::Ping:
                        send_all(fd, ws_encode_frame(WsOpcode::Pong, payload));
                        break;
                    case WsOpcode::Close:
                        send_all(fd, ws_encode_frame(WsOpcode::Close, payload));
                        open = false;
                        break;
                    case WsOpcode::Text:
                        on_text(fd, payload);
                        break;
                    case WsOpcode::Binary:
                    case WsOpcode::Continuation:
                    case WsOpcode::Pong:
                        break;
                    }
                    if (!open)
                        break;
                }
                buf.erase(0, pos);
                if (!open)
                    break;
                ssize_t n = platform_recv(fd, rbuf, sizeof(rbuf));
                if (n <= 0)
                    break;
                buf.append(rbuf, static_cast<std::size_t>(n));
            }
            log_line(id, "WS", "connection closed");
        }

        void handle_session_ws(std::uint64_t id, socket_fd_t fd, const std::string &pre)
        {
            log_line(id, "WS", "gc-session-zinny3 JSON-RPC session");
            // Send the unsolicited initial push (auth://v3/auth/loginGoogle) right away.
            std::string push = ws_session_initial_push();
            if (!push.empty())
            {
                send_all(fd, ws_encode_frame(WsOpcode::Text, push));
                log_line(id, "WS_TX", "initial_push " + push.substr(0, 60));
            }
            ws_loop(id, fd, pre, [id](socket_fd_t cfd, const std::string &text)
                    {
        std::string reply;
        if (ws_session_reply(text, reply)) {
            send_all(cfd, ws_encode_frame(WsOpcode::Text, reply));
            log_line(id, "WS_TX", reply.substr(0, 80));
        } else {
            log_line(id, "WS_RX", "no reply for " + text.substr(0, 60));
        } });
        }

        void handle_chat_ws(std::uint64_t id, socket_fd_t fd, const std::string &pre)
        {
            log_line(id, "WS", "live-sea-chat socket.io/engine.io");
            ws_loop(id, fd, pre, [id](socket_fd_t cfd, const std::string &text)
                    {
        std::string reply;
        if (ws_chat_reply(text, reply)) {
            if (!reply.empty()) {
                send_all(cfd, ws_encode_frame(WsOpcode::Text, reply));
                log_line(id, "WS_TX", reply.substr(0, 40));
            }
        } });
        }

    } // namespace

    void handle_websocket(std::uint64_t id, socket_fd_t fd, const HttpRequest &req,
                          const std::string &pre)
    {
        if (!send_handshake(fd, req))
        {
            log_line(id, "WS", "handshake failed (no key)");
            return;
        }
        log_line(id, "WS", "handshake ok path=" + req.path);
        // Route by path: socket.io uses /socket.io/, Kakao session uses /session.
        if (req.path.find("/socket.io") != std::string::npos)
        {
            handle_chat_ws(id, fd, pre);
        }
        else
        {
            handle_session_ws(id, fd, pre);
        }
    }

} // namespace eversoul
