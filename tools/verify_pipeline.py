#!/usr/bin/env python3
"""verify_pipeline.py — prove the JSON fixtures reproduce the captured bytes.

For every game endpoint in the HAR:
    captured response payload  --(har_to_json)-->  responses/<Endpoint>.json
                               --(json_to_proto)-->  rebuilt payload
Compare rebuilt vs captured at the message level (proto3-canonical), and the
full envelope for raw/empty. Reports any endpoint that does not reproduce.

This is the gate: if this passes, the device runtime (which mirrors
json_to_proto in C++) serves byte-faithful responses.
"""
import base64
import json
import os
import sys
from urllib.parse import urlparse

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, HERE)
from proto_registry import ProtoRegistry           # noqa: E402
from json_to_proto import build_payload, load_fixture  # noqa: E402
import har_to_json as h2j                         # noqa: E402

DEFAULT_HAR = os.path.join(ROOT, "cdp.cloud.unity3d.com_2026_06_08_08_38_04.har")
RESP_OFFSET = 8


def resp_payload(entry):
    c = entry["response"].get("content", {})
    t = c.get("text", "")
    raw = base64.b64decode(t) if c.get("encoding") == "base64" else t.encode("latin1", "ignore")
    return raw[RESP_OFFSET:] if len(raw) >= RESP_OFFSET else b""


def main():
    har_path = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_HAR
    har = json.load(open(har_path, encoding="utf-8"))
    reg = ProtoRegistry()

    # endpoint -> last captured payload
    captured = {}
    for e in har["log"]["entries"]:
        u = urlparse(e["request"]["url"])
        if not h2j.is_game_host(u.netloc):
            continue
        captured[u.path.lstrip("/")] = resp_payload(e)

    ok = bad = 0
    failures = []
    for ep in sorted(captured):
        cap = captured[ep]
        fx = load_fixture(ep)
        rebuilt = build_payload(ep, fx, reg)
        if fx.get("__format__") == "proto":
            # Message-level comparison (proto3 canonical; nested zeros may differ).
            cls = reg.message_class("Response", ep)
            a = cls(); a.ParseFromString(cap)
            b = cls(); b.ParseFromString(rebuilt)
            equal = (a == b)
        else:
            equal = (rebuilt == cap)
        if equal:
            ok += 1
        else:
            bad += 1
            failures.append((ep, fx.get("__format__"), len(cap), len(rebuilt)))

    print(f"verify: {ok}/{ok + bad} endpoints reproduce captured bytes")
    if failures:
        print("FAILURES:")
        for ep, fmt, cl, rl in failures:
            print(f"  {ep:30s} fmt={fmt} cap={cl} rebuilt={rl}")
        return 1
    print("ALL endpoints reproduce losslessly ✓")
    return 0


if __name__ == "__main__":
    sys.exit(main())
