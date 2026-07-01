#!/usr/bin/env python3
"""json_to_proto.py — reverse of har_to_json: a responses/<Endpoint>.json fixture
back into the exact game-server response bytes.

Fixture formats (tagged by "__format__"):
    "proto" : decoded message as JSON (real field names). Re-encode via the
              endpoint's Response proto (with the same string->bytes blob patch).
    "raw"   : {"hex": "..."} verbatim payload bytes.
    "empty" : envelope-only (zero-length payload).

build_payload()  -> protobuf payload bytes (no envelope)
build_response() -> full response body: [4-byte seq=0][4-byte LE size][payload]
                    matching game_binary_response() in payloads.cpp.

Used by verify_pipeline.py and (its logic mirrored in C++) by the device runtime.
"""
import json
import os
import struct
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, HERE)
from proto_registry import ProtoRegistry  # noqa: E402

RESPONSES = os.path.join(ROOT, "responses")


def build_payload(endpoint, fixture, reg):
    fmt = fixture.get("__format__")
    if fmt == "empty":
        return b""
    if fmt == "raw":
        return bytes.fromhex(fixture["hex"])
    if fmt == "proto":
        data = {k: v for k, v in fixture.items() if not k.startswith("__")}
        return reg.encode("Response", endpoint, data)
    raise ValueError(f"{endpoint}: unknown __format__ {fmt!r}")


def build_response(endpoint, fixture, reg, seq=0):
    payload = build_payload(endpoint, fixture, reg)
    return struct.pack("<I", seq) + struct.pack("<I", len(payload)) + payload


def load_fixture(endpoint):
    with open(os.path.join(RESPONSES, endpoint + ".json"), encoding='utf-8') as f:
        return json.load(f)


if __name__ == "__main__":
    reg = ProtoRegistry()
    if len(sys.argv) >= 2:
        ep = sys.argv[1]
        fx = load_fixture(ep)
        payload = build_payload(ep, fx, reg)
        print(f"{ep}: format={fx.get('__format__')} payload={len(payload)} bytes")
        print(payload.hex())
