// ws_session.cpp — Eversoul WS protocol reply builders.
#include "ws_session.hpp"

#include <mutex>
#include <set>

#include "account_registry.hpp"
#include "http.hpp"
#include "json.hpp"
#include "log.hpp"
#include "offline_data.hpp"
#include "util.hpp"
#include "websocket.hpp"

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
        WsFixtures &f = fixtures();
        OfflineData &data = offline_data();
        if (data.source().empty())
            data.init(data_dir);
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
        const json::Value *meta  = push->find("meta");
        const json::Value *body  = push->find("body");
        if (!topic || !meta || !body)
            return {};

        const std::string aid = account_registry().active_account_id();
        const auto sess = aid.empty() ? std::nullopt : account_registry().find_session(aid);

        json::Value arr;
        arr.type = json::Type::Array;
        arr.arr.push_back(*topic);

        json::Value meta_copy = *meta;
        meta_copy.set_number("publishTime", unix_ms());
        if (sess) {
            if (!sess->player_id.empty())  meta_copy.set_string("playerId",       sess->player_id);
            if (!sess->idp_code.empty())   meta_copy.set_string("idpCode",        sess->idp_code);
            if (!sess->zat.empty())        meta_copy.set_string("zat",            sess->zat);
            if (!sess->market.empty())     meta_copy.set_string("market",         sess->market);
            if (!sess->app_id.empty())     meta_copy.set_string("appId",          sess->app_id);
            if (!sess->lang.empty())       meta_copy.set_string("lang",           sess->lang);
            if (sess->last_login_ms)       meta_copy.set_number("loginTime",      sess->last_login_ms);
            if (sess->first_login_ms)      meta_copy.set_number("firstLoginTime", sess->first_login_ms);
        }
        arr.arr.push_back(meta_copy);

        json::Value body_copy = *body;
        if (sess) {
            json::Value *content = body_copy.find_mut("content");
            if (content) {
                if (sess->zat_expiry_ms)           content->set_number("zatExpiryTime",  sess->zat_expiry_ms);
                if (sess->zrt_expiry_ms)           content->set_number("zrtExpiryTime",  sess->zrt_expiry_ms);
                if (!sess->external_token.empty()) content->set_string("externalToken",  sess->external_token);
                if (!sess->zat.empty())            content->set_string("zat",            sess->zat);
                if (!sess->zrt.empty())            content->set_string("zrt",            sess->zrt);
                json::Value *player = content->find_mut("player");
                if (player) {
                    if (!sess->player_id.empty())  player->set_string("playerId",       sess->player_id);
                    if (!sess->idp_code.empty())   player->set_string("idpCode",        sess->idp_code);
                    if (!sess->idp_id.empty())     player->set_string("idpId",          sess->idp_id);
                    if (!sess->member_key.empty()) player->set_string("memberKey",      sess->member_key);
                    if (!sess->app_id.empty())     player->set_string("appId",          sess->app_id);
                    if (!sess->market.empty())     player->set_string("market",         sess->market);
                    if (!sess->lang.empty())       player->set_string("lang",           sess->lang);
                    if (!sess->push_token.empty()) player->set_string("pushToken",      sess->push_token);
                    if (sess->last_login_ms)       player->set_number("lastLoginTime",  sess->last_login_ms);
                    if (sess->first_login_ms)      player->set_number("firstLoginTime", sess->first_login_ms);
                }
            }
        }
        arr.arr.push_back(body_copy);
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

        const std::string aid = account_registry().active_account_id();
        const auto sess = aid.empty() ? std::nullopt : account_registry().find_session(aid);

        const json::Value *replies = f.session.find("replies");
        const json::Value *entry =
            (replies && replies->is_object()) ? replies->find(topic) : nullptr;

        json::Value arr;
        arr.type = json::Type::Array;
        json::Value topic_v;
        topic_v.type = json::Type::String;
        topic_v.str = topic;
        arr.arr.push_back(topic_v);

        if (entry && entry->is_object())
        {
            const json::Value *meta_tpl = entry->find("meta_template");
            const json::Value *body_tpl = entry->find("body");
            if (meta_tpl && body_tpl)
            {
                json::Value meta_copy = *meta_tpl;
                meta_copy.set_number("publishTime", unix_ms());
                if (has_txno)
                    meta_copy.set_number("txNo", txno);
                if (sess) {
                    if (!sess->player_id.empty())  meta_copy.set_string("playerId",       sess->player_id);
                    if (!sess->idp_code.empty())   meta_copy.set_string("idpCode",        sess->idp_code);
                    if (!sess->zat.empty())        meta_copy.set_string("zat",            sess->zat);
                    if (!sess->market.empty())     meta_copy.set_string("market",         sess->market);
                    if (!sess->app_id.empty())     meta_copy.set_string("appId",          sess->app_id);
                    if (!sess->lang.empty())       meta_copy.set_string("lang",           sess->lang);
                    if (sess->last_login_ms)       meta_copy.set_number("loginTime",      sess->last_login_ms);
                    if (sess->first_login_ms)      meta_copy.set_number("firstLoginTime", sess->first_login_ms);
                }
                arr.arr.push_back(meta_copy);

                json::Value body_copy = *body_tpl;
                if (sess && topic == "profile://v2/player/getUUID") {
                    json::Value *content = body_copy.find_mut("content");
                    if (content && !sess->zinny_uuid.empty())
                        content->set_string("zinnyUuid", sess->zinny_uuid);
                }
                arr.arr.push_back(body_copy);
                reply = arr.dump();
                return true;
            }
        }

        json::Value meta;
        meta.type = json::Type::Object;
        meta.set_number("publishTime", unix_ms());
        if (has_txno)
            meta.set_number("txNo", txno);
        if (sess) {
            if (!sess->player_id.empty())  meta.set_string("playerId",       sess->player_id);
            if (!sess->idp_code.empty())   meta.set_string("idpCode",        sess->idp_code);
            if (!sess->market.empty())     meta.set_string("market",         sess->market);
            if (!sess->app_id.empty())     meta.set_string("appId",          sess->app_id);
            if (!sess->lang.empty())       meta.set_string("lang",           sess->lang);
        }
        arr.arr.push_back(meta);

        json::Value body;
        body.type = json::Type::Object;
        body.set_number("status", 200);
        body.set_string("desc", "OK");
        json::Value content;
        content.type = json::Type::Object;
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

    AccountSessionRow ws_session_default_row()
    {
        AccountSessionRow row;
        WsFixtures &f = fixtures();
        const json::Value *push = f.session.find("initial_push");
        if (!push) return row;

        const json::Value *meta = push->find("meta");
        if (meta) {
            if (const json::Value *v = meta->find("playerId"))     row.player_id      = v->str;
            if (const json::Value *v = meta->find("idpCode"))      row.idp_code       = v->str;
            if (const json::Value *v = meta->find("market"))       row.market         = v->str;
            if (const json::Value *v = meta->find("appId"))        row.app_id         = v->str;
            if (const json::Value *v = meta->find("lang"))         row.lang           = v->str;
            if (const json::Value *v = meta->find("loginTime"))    row.last_login_ms  = v->as_int64();
            if (const json::Value *v = meta->find("firstLoginTime")) row.first_login_ms = v->as_int64();
        }

        const json::Value *body = push->find("body");
        if (!body) return row;
        const json::Value *content = body->find("content");
        if (!content) return row;

        if (const json::Value *v = content->find("zatExpiryTime"))  row.zat_expiry_ms  = v->as_int64();
        if (const json::Value *v = content->find("zrtExpiryTime"))  row.zrt_expiry_ms  = v->as_int64();
        if (const json::Value *v = content->find("externalToken"))  row.external_token = v->str;
        if (const json::Value *v = content->find("zat"))            row.zat            = v->str;
        if (const json::Value *v = content->find("zrt"))            row.zrt            = v->str;

        const json::Value *player = content->find("player");
        if (player) {
            if (const json::Value *v = player->find("playerId"))        row.player_id      = v->str;
            if (const json::Value *v = player->find("idpCode"))         row.idp_code       = v->str;
            if (const json::Value *v = player->find("idpId"))           row.idp_id         = v->str;
            if (const json::Value *v = player->find("memberKey"))       row.member_key     = v->str;
            if (const json::Value *v = player->find("appId"))           row.app_id         = v->str;
            if (const json::Value *v = player->find("market"))          row.market         = v->str;
            if (const json::Value *v = player->find("lang"))            row.lang           = v->str;
            if (const json::Value *v = player->find("pushToken"))       row.push_token     = v->str;
            if (const json::Value *v = player->find("lastLoginTime"))   row.last_login_ms  = v->as_int64();
            if (const json::Value *v = player->find("firstLoginTime"))  row.first_login_ms = v->as_int64();
        }

        // profile://v2/player/getUUID replies에서 zinnyUuid 추출
        const json::Value *replies = f.session.find("replies");
        if (replies) {
            const json::Value *uuid_entry = replies->find("profile://v2/player/getUUID");
            if (uuid_entry) {
                const json::Value *uuid_body = uuid_entry->find("body");
                if (uuid_body) {
                    const json::Value *uuid_content = uuid_body->find("content");
                    if (uuid_content) {
                        if (const json::Value *v = uuid_content->find("zinnyUuid"))
                            row.zinny_uuid = v->str;
                    }
                }
            }
        }

        return row;
    }

    namespace
    {
        std::mutex g_ws_fd_mu;
        std::set<int> g_ws_active_fds;
    }

    void ws_register_fd(int fd)
    {
        std::lock_guard<std::mutex> lk(g_ws_fd_mu);
        g_ws_active_fds.insert(fd);
    }

    void ws_unregister_fd(int fd)
    {
        std::lock_guard<std::mutex> lk(g_ws_fd_mu);
        g_ws_active_fds.erase(fd);
    }

    void ws_broadcast_session_push()
    {
        std::string push = ws_session_initial_push();
        if (push.empty()) return;
        std::string frame = ws_encode_frame(WsOpcode::Text, push);
        std::set<int> fds;
        {
            std::lock_guard<std::mutex> lk(g_ws_fd_mu);
            fds = g_ws_active_fds;
        }
        for (int fd : fds)
            send_all(fd, frame);
    }

} // namespace eversoul
