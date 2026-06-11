#!/usr/bin/env python3
"""har_to_json.py — turn the captured HAR into editable JSON fixtures.

Three outputs (all under the project root):

  responses/<Endpoint>.json
        One file per game endpoint seen on live-sea.esoul…:1739. The decoded
        protobuf RESPONSE payload as formatted JSON with real field names.
        These are the human-editable source of truth; the runtime re-encodes
        them to protobuf + envelope. For endpoints hit multiple times we keep
        the LAST occurrence (final account state in the session).

  responses/_manifest.json
        Index: endpoint -> {hits, resp_bytes, roundtrip, empty, kind}. Also
        records the request payload (decoded if a Request proto exists) for
        reference, and any endpoint that failed to decode.

  wss/<name>.json
        Full decoded transcript of each WebSocket conversation (session-zinny3
        JSON-RPC and live-sea-chat socket.io/engine.io), plus the socket.io
        long-poll HTTP entries, so the WSS server can be built from ground truth.

Usage:  python3 tools/har_to_json.py [path/to.har]
"""
import base64
import json
import os
import sys
from urllib.parse import urlparse

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, HERE)
from proto_registry import ProtoRegistry  # noqa: E402

DEFAULT_HAR = os.path.join(ROOT, "cdp.cloud.unity3d.com_2026_06_08_08_38_04.har")
GAME_HOST = "live-sea.esoul"
CHAT_HOST = "live-sea-chat.esoul"
SESSION_HOST = "gc-session-zinny3"

# Envelopes (confirmed against read_binary.py and game_binary_response):
#   request  body = [4-byte seq] + protobuf
#   response body = [4-byte seq][4-byte size] + protobuf
REQ_OFFSET = 4
RESP_OFFSET = 8


def content_bytes(msg):
    """Decode a HAR request.postData / response.content to raw bytes."""
    text = msg.get("text", "")
    if msg.get("encoding") == "base64":
        return base64.b64decode(text)
    return text.encode("latin1", "ignore")


def resp_bytes(entry):
    return content_bytes(entry["response"].get("content", {}))


def req_bytes(entry):
    return content_bytes(entry["request"].get("postData", {}))


def is_game_host(netloc):
    return "live-kr.esoul" in netloc or "live-sea.esoul" in netloc


def build_fixture(reg, ep, req_payload, resp_payload):
    """Single endpoint -> (out_obj, info).

    out_obj is the dict serialized to responses/<ep>.json ("proto"/"empty"/"raw").
    info is the manifest entry WITHOUT 'hits' (the caller fills that in).
    Shared by extract_game (full rebuild) and merge_har.py (incremental merge),
    so both produce byte-identical fixtures for the same captured payload.
    """
    info = {
        "resp_bytes": len(resp_payload),
        "empty": len(resp_payload) == 0,
        "has_response_proto": reg.has("Response", ep),
        "has_request_proto": reg.has("Request", ep),
        "format": None,       # "empty" | "proto" | "raw"
        "roundtrip": None,
    }

    def raw(reason):
        # Verbatim hex passthrough: the runtime emits these bytes unchanged.
        info["format"] = "raw"
        info["roundtrip"] = True  # identity by construction
        info["note"] = reason
        return {"__format__": "raw", "hex": resp_payload.hex(), "__note__": reason}

    if len(resp_payload) == 0:
        obj = {"__format__": "empty"}
        info["format"] = "empty"
        info["roundtrip"] = True
    elif reg.has("Response", ep):
        try:
            if not reg.roundtrip_ok("Response", ep, resp_payload):
                obj = raw("proto present but decode!=encode; raw passthrough")
            else:
                obj = reg.decode("Response", ep, resp_payload)
                obj["__format__"] = "proto"
                info["format"] = "proto"
                info["roundtrip"] = True
        except Exception as exc:  # noqa: BLE001
            info["decode_error"] = f"{type(exc).__name__}: {exc}"
            obj = raw(f"decode failed ({type(exc).__name__}); raw passthrough")
    else:
        obj = raw("no Response .proto; raw passthrough")

    # Decode request payload for reference (best effort).
    if req_payload and reg.has("Request", ep):
        try:
            info["request_decoded"] = reg.decode("Request", ep, req_payload)
        except Exception as exc:  # noqa: BLE001
            info["request_decoded_error"] = f"{type(exc).__name__}: {exc}"
            info["request_hex"] = req_payload.hex()
    elif req_payload:
        info["request_hex"] = req_payload.hex()

    return obj, info


def game_endpoints(entries):
    """{endpoint: (req_payload, resp_payload)} keeping the LAST occurrence."""
    seen = {}
    for e in entries:
        u = urlparse(e["request"]["url"])
        if not is_game_host(u.netloc):
            continue
        ep = u.path.lstrip("/")
        if not ep:
            continue
        rb = resp_bytes(e)
        qb = req_bytes(e)
        resp_payload = rb[RESP_OFFSET:] if len(rb) >= RESP_OFFSET else b""
        req_payload = qb[REQ_OFFSET:] if len(qb) >= REQ_OFFSET else b""
        seen[ep] = (req_payload, resp_payload)  # last wins = final session state
    return seen


def extract_game(entries, reg, out_dir):
    # Start clean so stale fixtures from older runs never linger.
    if os.path.isdir(out_dir):
        for fn in os.listdir(out_dir):
            if fn.endswith((".json", ".hex")):
                os.remove(os.path.join(out_dir, fn))
    os.makedirs(out_dir, exist_ok=True)
    # endpoint -> list of (request_payload, response_payload) in capture order
    seen = {}
    for e in entries:
        u = urlparse(e["request"]["url"])
        if not is_game_host(u.netloc):
            continue
        ep = u.path.lstrip("/")
        if not ep:
            continue
        rb = resp_bytes(e)
        qb = req_bytes(e)
        resp_payload = rb[RESP_OFFSET:] if len(rb) >= RESP_OFFSET else b""
        req_payload = qb[REQ_OFFSET:] if len(qb) >= REQ_OFFSET else b""
        seen.setdefault(ep, []).append((req_payload, resp_payload))

    manifest = {}
    for ep in sorted(seen):
        hits = seen[ep]
        req_payload, resp_payload = hits[-1]  # last occurrence = final state
        obj, info = build_fixture(reg, ep, req_payload, resp_payload)
        info = {"hits": len(hits), **info}
        with open(os.path.join(out_dir, ep + ".json"), "w", encoding="utf-8") as f:
            json.dump(obj, f, indent=2, ensure_ascii=False)
        manifest[ep] = info

    with open(os.path.join(out_dir, "_manifest.json"), "w", encoding="utf-8") as f:
        json.dump(manifest, f, indent=2, ensure_ascii=False)
    return manifest


def extract_ws(entries, out_dir):
    os.makedirs(out_dir, exist_ok=True)
    convos = {SESSION_HOST: [], CHAT_HOST: []}
    polls = {SESSION_HOST: [], CHAT_HOST: []}
    for e in entries:
        u = urlparse(e["request"]["url"])
        host = None
        if SESSION_HOST in u.netloc:
            host = SESSION_HOST
        elif CHAT_HOST in u.netloc:
            host = CHAT_HOST
        if host is None:
            continue
        wsm = e.get("_webSocketMessages")
        if wsm:
            for m in wsm:
                p = m.get("payload", {})
                frame = {
                    "dir": "C2S" if m.get("flow") == 0 else "S2C",
                    "ts": m.get("timestamp"),
                    "type": p.get("type"),
                }
                if "text" in p:
                    frame["text"] = p["text"]
                elif "data" in p:
                    frame["b64"] = p["data"]
                convos[host].append(frame)
        else:
            # socket.io long-poll handshake/data over plain HTTP.
            polls[host].append({
                "method": e["request"]["method"],
                "url": e["request"]["url"],
                "status": e["response"]["status"],
                "req_text": e["request"].get("postData", {}).get("text", ""),
                "resp_text": e["response"].get("content", {}).get("text", ""),
            })

    for host in convos:
        name = "session-zinny3" if host == SESSION_HOST else "live-sea-chat"
        out = {
            "host": host,
            "ws_frames": convos[host],
            "poll_http": polls[host],
        }
        with open(os.path.join(out_dir, name + ".json"), "w", encoding="utf-8") as f:
            json.dump(out, f, indent=2, ensure_ascii=False)
    return {host: len(convos[host]) for host in convos}


def main():
    har_path = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_HAR
    har = json.load(open(har_path, encoding="utf-8"))
    entries = har["log"]["entries"]
    reg = ProtoRegistry()

    manifest = extract_game(entries, reg, os.path.join(ROOT, "responses"))
    ws_counts = extract_ws(entries, os.path.join(ROOT, "wss"))

    from collections import Counter
    fmts = Counter(v["format"] for v in manifest.values())
    rt_bad = [k for k, v in manifest.items() if v["roundtrip"] is not True]
    raw_eps = [k for k, v in manifest.items() if v["format"] == "raw"]
    print(f"game endpoints: {len(manifest)}  "
          f"proto={fmts['proto']} empty={fmts['empty']} raw={fmts['raw']}")
    print(f"  raw passthrough (lossless verbatim): {raw_eps}")
    if rt_bad:
        print(f"  NOT reproducible (investigate): {rt_bad}")
    else:
        print("  all endpoints reproduce their captured bytes losslessly")
    print(f"wss frames: {ws_counts}")
    print("wrote responses/ and wss/")


if __name__ == "__main__":
    main()
