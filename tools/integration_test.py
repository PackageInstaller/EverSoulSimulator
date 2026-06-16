#!/usr/bin/env python3
"""integration_test.py — exercise the running desktop server over TCP and
confirm each endpoint returns the captured response bytes (envelope + payload).

Starts nothing itself; expects the server already listening (caller manages it).
For each proto/empty endpoint it sends a minimal game request
([4-byte seq] + optional body) and checks the response envelope payload decodes
to the same message as the HAR capture.
"""
import base64
import json
import os
import socket
import struct
import sys
from urllib.parse import urlparse

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, HERE)
from proto_registry import ProtoRegistry  # noqa: E402
import har_to_json as h2j                 # noqa: E402

HOST = "127.0.0.1"
PORT = int(sys.argv[1]) if len(sys.argv) > 1 else 9999
HAR = os.path.join(ROOT, "cdp.cloud.unity3d.com_2026_06_08_08_38_04.har")


def http_post(path, body):
    req = (f"POST {path} HTTP/1.1\r\n"
           f"Host: {HOST}:{PORT}\r\n"
           f"Content-Type: application/octet-stream\r\n"
           f"Content-Length: {len(body)}\r\n"
           f"Connection: close\r\n\r\n").encode() + body
    s = socket.create_connection((HOST, PORT), timeout=5)
    s.sendall(req)
    chunks = []
    while True:
        d = s.recv(65536)
        if not d:
            break
        chunks.append(d)
    s.close()
    raw = b"".join(chunks)
    head, _, payload = raw.partition(b"\r\n\r\n")
    return head.decode("latin1", "ignore"), payload


def main():
    har = json.load(open(HAR))
    reg = ProtoRegistry()
    man = json.load(open(os.path.join(ROOT, "responses", "_manifest.json")))

    # Build a request body per endpoint from the HAR (last occurrence).
    reqs = {}
    for e in har["log"]["entries"]:
        u = urlparse(e["request"]["url"])
        if not h2j.is_game_host(u.netloc):
            continue
        pd = e["request"].get("postData", {})
        t = pd.get("text", "")
        raw = base64.b64decode(t) if pd.get("encoding") == "base64" else t.encode("latin1", "ignore")
        reqs[u.path.lstrip("/")] = raw

    ok = bad = 0
    fails = []
    # ServerTime is intentionally dynamic (current wall-clock), so its payload
    # value differs from the capture by design — exclude from byte comparison.
    DYNAMIC = {"ServerTime"}
    # Test a representative spread including the big ones and dynamic ones.
    test_eps = [ep for ep, v in man.items() if v["format"] in ("proto", "empty")]
    for ep in sorted(test_eps):
        body = reqs.get(ep, b"\x00\x00\x00\x00")
        try:
            head, payload = http_post("/" + ep, body)
        except Exception as exc:  # noqa: BLE001
            bad += 1; fails.append(f"{ep}: connect/recv {exc}"); continue
        if "200" not in head.split("\r\n")[0]:
            bad += 1; fails.append(f"{ep}: status {head.splitlines()[0]}"); continue
        if len(payload) < 8:
            bad += 1; fails.append(f"{ep}: short envelope {len(payload)}"); continue
        size = struct.unpack("<I", payload[4:8])[0]
        got = payload[8:8 + size]

        if ep in DYNAMIC:
            # Just require a well-formed, non-empty envelope.
            if size > 0:
                ok += 1
            else:
                bad += 1; fails.append(f"{ep}: dynamic but empty")
            continue

        if man[ep]["format"] == "empty":
            if size == 0:
                ok += 1
            else:
                bad += 1; fails.append(f"{ep}: expected empty, got {size}")
            continue

        # proto: compare to canonical expected at message level.
        exp = open(os.path.join(ROOT, "expected", ep + ".bin"), "rb").read()
        try:
            cls = reg.message_class("Response", ep)
            a = cls(); a.ParseFromString(got)
            b = cls(); b.ParseFromString(exp)
            if a == b:
                ok += 1
            else:
                bad += 1; fails.append(f"{ep}: message differs (got {len(got)} want {len(exp)})")
        except Exception as exc:  # noqa: BLE001
            bad += 1; fails.append(f"{ep}: decode {exc}")

    print(f"integration: {ok}/{ok + bad} endpoints served correct bytes over TCP")
    for f in fails[:40]:
        print("  FAIL", f)
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main())
