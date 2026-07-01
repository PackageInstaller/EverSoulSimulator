#!/usr/bin/env python3
"""ws_test.py — exercise the offline WebSocket servers (session + chat).

Uses only the stdlib (manual RFC6455 client) so there's no websockets dep.
Verifies:
  - handshake (101 + correct Sec-WebSocket-Accept)
  - session: initial push arrives; a client JSON-RPC frame gets a reply that
    echoes txNo with the same topic and a 200 body
  - chat: 2probe->3probe, 2->3 (ping/pong), 40->40{sid}
"""
import base64
import hashlib
import json
import os
import socket
import struct
import sys

HOST = "127.0.0.1"
PORT = int(sys.argv[1]) if len(sys.argv) > 1 else 28081
GUID = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"


def handshake(path):
    s = socket.create_connection((HOST, PORT), timeout=5)
    key = base64.b64encode(b"0123456789abcdef").decode()
    req = (f"GET {path} HTTP/1.1\r\nHost: {HOST}:{PORT}\r\n"
           f"Upgrade: websocket\r\nConnection: Upgrade\r\n"
           f"Sec-WebSocket-Key: {key}\r\nSec-WebSocket-Version: 13\r\n\r\n")
    s.sendall(req.encode())
    # read until end of headers
    buf = b""
    while b"\r\n\r\n" not in buf:
        d = s.recv(4096)
        if not d:
            raise RuntimeError("no handshake response")
        buf += d
    head, _, rest = buf.partition(b"\r\n\r\n")
    expect = base64.b64encode(hashlib.sha1((key + GUID).encode()).digest()).decode()
    ok = (b"101" in head.split(b"\r\n")[0]) and (expect.encode() in head)
    return s, ok, rest


def send_text(s, text):
    payload = text.encode()
    header = bytearray([0x81])  # FIN + text
    n = len(payload)
    mask = b"\x12\x34\x56\x78"
    if n < 126:
        header.append(0x80 | n)
    elif n <= 0xFFFF:
        header.append(0x80 | 126)
        header += struct.pack(">H", n)
    else:
        header.append(0x80 | 127)
        header += struct.pack(">Q", n)
    masked = bytes(b ^ mask[i & 3] for i, b in enumerate(payload))
    s.sendall(bytes(header) + mask + masked)


def recv_frame(s, prebuf=b"", timeout=3):
    s.settimeout(timeout)
    buf = bytearray(prebuf)

    def need(n):
        nonlocal buf
        while len(buf) < n:
            d = s.recv(4096)
            if not d:
                raise RuntimeError("closed")
            buf += d
    need(2)
    b0, b1 = buf[0], buf[1]
    op = b0 & 0x0F
    masked = b1 & 0x80
    ln = b1 & 0x7F
    p = 2
    if ln == 126:
        need(4); ln = struct.unpack(">H", buf[2:4])[0]; p = 4
    elif ln == 127:
        need(10); ln = struct.unpack(">Q", buf[2:10])[0]; p = 10
    mask = b"\x00\x00\x00\x00"
    if masked:
        need(p + 4); mask = buf[p:p + 4]; p += 4
    need(p + ln)
    data = bytes(b ^ mask[i & 3] for i, b in enumerate(buf[p:p + ln]))
    rest = bytes(buf[p + ln:])
    return op, data.decode("utf-8", "replace"), rest


def test_session():
    s, ok, rest = handshake("/session?zipped=deflate")
    assert ok, "session handshake failed"
    results = []
    # 1) initial push
    op, text, rest = recv_frame(s, rest)
    arr = json.loads(text)
    results.append(("initial_push", arr[0] == "auth://v3/auth/loginGoogle"))
    # 2) send a getUUID request with a txNo, expect echoed reply
    txno = 12345678
    send_text(s, json.dumps(["profile://v2/player/getUUID", {"txNo": txno},
                             {"appId": "743491", "playerId": "431921183232"}]))
    op, text, rest = recv_frame(s, rest)
    arr = json.loads(text)
    echoed = (arr[0] == "profile://v2/player/getUUID" and
              arr[1].get("txNo") == txno and
              arr[2].get("status") == 200)
    results.append(("getUUID_txNo_echo", echoed))
    s.close()
    return results


def test_chat():
    s, ok, rest = handshake("/socket.io/?EIO=4&transport=websocket")
    assert ok, "chat handshake failed"
    results = []
    send_text(s, "2probe")
    op, text, rest = recv_frame(s, rest)
    results.append(("probe", text == "3probe"))
    send_text(s, "40")
    op, text, rest = recv_frame(s, rest)
    results.append(("ns_connect_ack", text.startswith("40")))
    send_text(s, "2")
    op, text, rest = recv_frame(s, rest)
    results.append(("ping_pong", text == "3"))
    s.close()
    return results


def main():
    allres = []
    for name, fn in [("SESSION", test_session), ("CHAT", test_chat)]:
        try:
            res = fn()
            for k, v in res:
                allres.append((f"{name}:{k}", v))
        except Exception as exc:  # noqa: BLE001
            allres.append((f"{name}:EXCEPTION", False))
            print(f"  {name} raised: {exc}")
    ok = sum(1 for _, v in allres if v)
    print(f"ws_test: {ok}/{len(allres)} checks passed")
    for k, v in allres:
        print(f"  {'PASS' if v else 'FAIL'} {k}")
    return 0 if ok == len(allres) else 1


if __name__ == "__main__":
    sys.exit(main())
