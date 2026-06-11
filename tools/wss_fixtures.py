#!/usr/bin/env python3
"""wss_fixtures.py — turn the decoded WSS transcripts into replay fixtures the
C++ WebSocket servers use.

Two protocols, two fixtures:

  wss/session_replies.json   (gc-session-zinny3 — Kakao SDK JSON-RPC over WS)
      The client sends ["topic://path",{"txNo":N},{data}]. The server answers
      ["topic://path",{...meta, "txNo":N},{"status":200,"desc":"OK","content":{...}}].
      We capture, per topic, the response meta-template and the content object
      from the real S2C frame. At runtime the C++ server echoes txNo and fills a
      fresh publishTime. The first server PUSH (auth://v3/auth/loginGoogle, sent
      unsolicited right after connect) is captured separately as "initial_push".

  wss/chat_engineio.json     (live-sea-chat — socket.io v4 / engine.io v4)
      Pure transport: engine.io OPEN handshake params + the socket.io namespace
      connect ack. No real chat events occur in this capture, so the C++ server
      only needs to satisfy the handshake + ping/pong, which keeps the client's
      chat socket "connected".

Both fixtures are JSON the WS server loads at startup (same json parser).
"""
import json
import os
import sys
from urllib.parse import urlparse, parse_qs

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
DEFAULT_HAR = os.path.join(ROOT, "cdp.cloud.unity3d.com_2026_06_08_08_38_04.har")
WSS_DIR = os.path.join(ROOT, "wss")


def topic_of(text):
    try:
        arr = json.loads(text)
        if isinstance(arr, list) and arr:
            return arr[0], arr
    except Exception:  # noqa: BLE001
        pass
    return None, None


def build_session(har):
    frames = []
    for e in har["log"]["entries"]:
        u = urlparse(e["request"]["url"])
        if "gc-session-zinny3" not in u.netloc:
            continue
        for m in e.get("_webSocketMessages", []) or []:
            p = m.get("payload", {})
            if "text" not in p:
                continue
            frames.append((m.get("flow"), p["text"]))

    initial_push = None
    replies = {}  # topic -> {meta_template, content}
    for flow, text in frames:
        topic, arr = topic_of(text)
        if topic is None:
            continue
        if flow == 1:  # S2C
            meta = arr[1] if len(arr) > 1 else {}
            content = arr[2] if len(arr) > 2 else {"status": 200, "desc": "OK", "content": {}}
            if initial_push is None and topic.startswith("auth://"):
                # The unsolicited login push (no preceding C2S with same txNo).
                initial_push = {"topic": topic, "meta": meta, "body": content}
            replies[topic] = {"meta_template": meta, "body": content}

    return {
        "host": "gc-session-zinny3.kakaogames.com",
        "note": "Kakao SDK JSON-RPC over WS. Server echoes txNo; publishTime is "
                "refreshed at runtime. content bodies captured from the real "
                "session (playerId 431921183232).",
        "initial_push": initial_push,
        "replies": replies,
    }


def build_chat(har):
    open_params = None
    ns_connect_ack = None
    for e in har["log"]["entries"]:
        u = urlparse(e["request"]["url"])
        if "live-sea-chat" not in u.netloc:
            continue
        # engine.io OPEN ("0{...}") arrives on the polling GET; namespace connect
        # ack ("40{...}") on a later poll.
        resp = e["response"].get("content", {}).get("text", "")
        if resp.startswith("0{") and open_params is None:
            try:
                open_params = json.loads(resp[1:])
            except Exception:  # noqa: BLE001
                pass
        if resp.startswith("40{") and ns_connect_ack is None:
            ns_connect_ack = resp  # e.g. 40{"sid":"..."}
    return {
        "host": "live-sea-chat.esoul.kakaogames.com:1739",
        "note": "socket.io v4 / engine.io v4. Only transport handshake + "
                "heartbeat in this capture (no chat events). The C++ server "
                "answers OPEN/probe/ping so the client's chat socket stays up.",
        "engineio_open": open_params or {
            "upgrades": ["websocket"], "pingInterval": 25000,
            "pingTimeout": 20000, "maxPayload": 1000000},
        "namespace_connect_ack": ns_connect_ack or '40',
    }


def main():
    har_path = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_HAR
    har = json.load(open(har_path, encoding="utf-8"))
    os.makedirs(WSS_DIR, exist_ok=True)

    session = build_session(har)
    with open(os.path.join(WSS_DIR, "session_replies.json"), "w", encoding="utf-8") as f:
        json.dump(session, f, indent=2, ensure_ascii=False)

    chat = build_chat(har)
    with open(os.path.join(WSS_DIR, "chat_engineio.json"), "w", encoding="utf-8") as f:
        json.dump(chat, f, indent=2, ensure_ascii=False)

    print(f"session_replies: {len(session['replies'])} topics, "
          f"initial_push={'yes' if session['initial_push'] else 'no'}")
    print(f"chat_engineio: open={session is not None}, "
          f"ns_ack={chat['namespace_connect_ack'][:24]!r}")


if __name__ == "__main__":
    main()
