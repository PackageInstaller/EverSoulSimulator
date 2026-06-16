// ws_session.cpp — Eversoul WS protocol reply builders.
#include "ws_session.hpp"

#include "json.hpp"
#include "log.hpp"
#include "offline_data.hpp"
#include "util.hpp"

namespace eversoul
{
    namespace
    {

        struct WsFixtures
        {
            bool loaded = false;
            json::Value session; // session_replies.json
            json::Value chat;    // chat_engineio.json
        };

        WsFixtures &fixtures()
        {
            static WsFixtures f;
            return f;
        }

        // Parse a JSON-RPC array text into topic + txNo. Returns false if malformed.
        bool parse_rpc(const std::string &text, std::string &topic, std::int64_t &txno,
                       bool &has_txno)
        {
            json::Value v;
            std::string err;
            if (!json::parse(text, v, err))
                return false;
            if (!v.is_array() || v.arr.empty() || !v.arr[0].is_string())
                return false;
            topic = v.arr[0].str;
            has_txno = false;
            if (v.arr.size() > 1 && v.arr[1].is_object())
            {
                if (const json::Value *t = v.arr[1].find("txNo"))
                {
                    txno = t->as_int64();
                    has_txno = true;
                }
            }
            return true;
        }

    } // namespace

    bool ws_load_fixtures(const std::string &data_dir)
    {
        (void)data_dir; // 데이터 소스는 fixture_store에서 이미 초기화됨 (blob 또는 디렉토리), 직접 읽기.
        WsFixtures &f = fixtures();
        OfflineData &data = offline_data();
        std::string serr, cerr;
        auto s = data.read("wss/session_replies.json");
        auto c = data.read("wss/chat_engineio.json");
        bool ok = true;
        if (s && json::parse(*s, f.session, serr))
        {
            // ok
        }
        else
        {
            log_line(0, "WS", "session_replies.json load failed: " + serr);
            ok = false;
        }
        if (c && json::parse(*c, f.chat, cerr))
        {
            // ok
        }
        else
        {
            log_line(0, "WS", "chat_engineio.json load failed: " + cerr);
            ok = false;
        }
        f.loaded = ok;
        log_line(0, "WS", std::string("ws fixtures ") + (ok ? "loaded" : "PARTIAL") + " from " + data.source());
        return ok;
    }

    std::string ws_session_initial_push()
    {
        WsFixtures &f = fixtures();
        const json::Value *push = f.session.find("initial_push");
        if (!push || !push->is_object())
            return {};
        const json::Value *topic = push->find("topic");
        const json::Value *meta = push->find("meta");
        const json::Value *body = push->find("body");
        if (!topic || !meta || !body)
            return {};
        // Rebuild ["topic",{meta with fresh publishTime},{body}].
        json::Value arr;
        arr.type = json::Type::Array;
        arr.arr.push_back(*topic);
        json::Value meta_copy = *meta;
        meta_copy.set_number("publishTime", unix_ms());
        arr.arr.push_back(meta_copy);
        arr.arr.push_back(*body);
        return arr.dump();
    }

    bool ws_session_reply(const std::string &client_text, std::string &reply)
    {
        WsFixtures &f = fixtures();
        std::string topic;
        std::int64_t txno = 0;
        bool has_txno = false;
        if (!parse_rpc(client_text, topic, txno, has_txno))
            return false;

        const json::Value *replies = f.session.find("replies");
        const json::Value *entry =
            (replies && replies->is_object()) ? replies->find(topic) : nullptr;

        // Common envelope head: ["<topic>", <meta>, <body>].
        json::Value arr;
        arr.type = json::Type::Array;
        json::Value topic_v;
        topic_v.type = json::Type::String;
        topic_v.str = topic;
        arr.arr.push_back(topic_v);

        if (entry && entry->is_object())
        {
            const json::Value *meta_tpl = entry->find("meta_template");
            const json::Value *body = entry->find("body");
            if (meta_tpl && body)
            {
                // Captured reply: reuse the real meta template + body verbatim.
                json::Value meta_copy = *meta_tpl;
                meta_copy.set_number("publishTime", unix_ms());
                if (has_txno)
                    meta_copy.set_number("txNo", txno);
                arr.arr.push_back(meta_copy);
                arr.arr.push_back(*body);
                reply = arr.dump();
                return true;
            }
        }

        // Fallback for uncaptured session control frames (e.g.
        // Zinny://Session.loadAppInfos): the capture never recorded these, so
        // synthesize a generic success envelope — echo txNo, fresh publishTime,
        // status 200, empty content. Without a reply the SDK times the call out and
        // reports NETWORK_FAILURE (1001) -> the game's "system reset failed" -> exit.
        json::Value meta;
        meta.type = json::Type::Object;
        meta.set_number("publishTime", unix_ms());
        if (has_txno)
            meta.set_number("txNo", txno);
        arr.arr.push_back(meta);

        json::Value body;
        body.type = json::Type::Object;
        body.set_number("status", 200);
        body.set_string("desc", "OK");
        json::Value content;
        content.type = json::Type::Object; // empty {}
        body.obj.emplace_back("content", content);
        arr.arr.push_back(body);

        reply = arr.dump();
        log_line(0, "WS", "session generic-OK for uncaptured topic " + topic);
        return true;
    }

    bool ws_chat_reply(const std::string &client_text, std::string &reply)
    {
        // socket.io v4 / engine.io v4 packet types are a leading digit:
        //   "2" engine.io PING -> reply "3" PONG
        //   "2probe" upgrade probe -> "3probe"
        //   "40" namespace connect -> ack with captured "40{sid}"
        //   "5" upgrade noop -> ignore
        WsFixtures &f = fixtures();
        if (client_text.empty())
            return false;

        if (client_text == "2probe")
        {
            reply = "3probe";
            return true;
        }
        if (client_text == "2")
        {
            reply = "3";
            return true;
        } // ping -> pong
        if (client_text.rfind("40", 0) == 0)
        {
            const json::Value *ack = f.chat.find("namespace_connect_ack");
            reply = (ack && ack->is_string()) ? ack->str : "40";
            return true;
        }
        if (client_text == "5")
        {
            reply.clear();
            return false;
        } // upgrade done, nothing to send
        // Any other packet (e.g. message events) — no scripted reply in this capture.
        reply.clear();
        return false;
    }

    namespace
    {
        // A monotonically-varying suffix for engine.io session ids (no Math.random on
        // device; we just need uniqueness across connects within a run).
        std::int64_t g_sio_counter = 0;

        bool query_has_sid(const std::string &query)
        {
            return query.find("sid=") != std::string::npos;
        }
    } // namespace

    bool socketio_poll_response(const std::string &method, const std::string &query,
                                std::string &body)
    {
        WsFixtures &f = fixtures();
        if (method == "POST")
        {
            body = "ok";
            return true;
        }
        // GET.
        if (!query_has_sid(query))
        {
            // engine.io OPEN. Build "0" + JSON{sid,upgrades,pingInterval,...}.
            const json::Value *open = f.chat.find("engineio_open");
            json::Value open_copy;
            if (open && open->is_object())
            {
                open_copy = *open;
            }
            else
            {
                open_copy.type = json::Type::Object;
            }
            // Fresh sid so repeated connects don't collide.
            open_copy.set_string("sid", "offline-sio-" + std::to_string(++g_sio_counter));
            body = "0" + open_copy.dump();
            return true;
        }
        // GET with sid: first poll returns the namespace connect ack, later polls a
        // noop ("6"). We don't track per-sid state in the stateless HTTP poll, so
        // return the namespace ack which the client accepts; the subsequent WS
        // upgrade carries the real traffic.
        const json::Value *ack = f.chat.find("namespace_connect_ack");
        body = (ack && ack->is_string()) ? ack->str : "40";
        return true;
    }

} // namespace eversoul
