#!/usr/bin/env python3
"""dump_expected.py — write expected/<Endpoint>.bin: the CANONICAL protobuf
payload the C++ descriptor-driven encoder must reproduce.

For each proto endpoint we re-encode the parsed fixture via the Python registry
(json_to_proto.build_payload). That yields the proto3-canonical bytes (schema
field order, explicit-zero scalars dropped) — exactly the form the C++ encoder
emits. The desktop validator (encoder_validate.cpp) compares against these.

We also keep expected bytes for empty/raw endpoints so the validator can cover
the full set if extended later.

Usage: python3 tools/dump_expected.py
"""
import json
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, HERE)
from proto_registry import ProtoRegistry           # noqa: E402
from json_to_proto import build_payload, load_fixture  # noqa: E402


def main():
    reg = ProtoRegistry()
    man = json.load(open(os.path.join(ROOT, "responses", "_manifest.json"), encoding="utf-8"))
    out_dir = os.path.join(ROOT, "expected")
    if os.path.isdir(out_dir):
        for fn in os.listdir(out_dir):
            if fn.endswith(".bin"):
                os.remove(os.path.join(out_dir, fn))
    os.makedirs(out_dir, exist_ok=True)

    count = 0
    for ep, info in sorted(man.items()):
        if info["format"] != "proto":
            continue
        fx = load_fixture(ep)
        payload = build_payload(ep, fx, reg)
        with open(os.path.join(out_dir, ep + ".bin"), "wb") as f:
            f.write(payload)
        count += 1
    print(f"wrote expected/ canonical payloads for {count} proto endpoints")


if __name__ == "__main__":
    main()
