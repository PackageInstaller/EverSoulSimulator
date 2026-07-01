#!/usr/bin/env python3
"""export_schema.py — emit a flattened, self-contained schema JSON per endpoint
that the C++ descriptor-driven encoder reads (alongside responses/<Endpoint>.json).

We deliberately do NOT ship raw FileDescriptorSet wire blobs: parsing
descriptor.proto in C++ would mean bootstrapping protobuf itself. Instead we
resolve everything in Python (which already has the descriptors) into a simple
shape the existing JSON parser can load:

    schema/<Endpoint>.json
    {
      "root": "UserInfo",
      "messages": {
        "UserInfo": {
          "fields": [
            {"name": "user", "number": 1, "type": "message",
             "type_name": "sUser", "repeated": false, "packed": false},
            {"name": "hero", "number": 3, "type": "message",
             "type_name": "sHero", "repeated": true, "packed": false},
            {"name": "currency", "number": 2, "type": "enum",
             "type_name": "E_CURRENCY", "repeated": false, "packed": false},
            ...
          ]
        },
        "sUser": { "fields": [...] },
        ...
      },
      "enums": { "E_CURRENCY": {"Gold": 1, "FreeDia": 2, ...}, ... }
    }

"type" is one of the protobuf scalar names (int32,int64,uint32,uint64,sint32,
sint64,bool,float,double,fixed32,fixed64,sfixed32,sfixed64,string,bytes) or
"message"/"enum" (then type_name names a key in messages/enums). "packed"
reflects proto3 defaults (numeric repeated scalars are packed).

The same string->bytes blob patch from proto_registry is applied, so fields like
arbeitList_ appear here as type "bytes" and the C++ side base64-decodes them.
"""
import json
import os
import sys

from google.protobuf.descriptor_pb2 import FieldDescriptorProto as FD

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")
if hasattr(sys.stderr, "reconfigure"):
    sys.stderr.reconfigure(encoding="utf-8")

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, HERE)
from proto_registry import ProtoRegistry  # noqa: E402

# protobuf C++ field type enum -> our scalar name (or 'message'/'enum').
_SCALAR = {
    FD.TYPE_DOUBLE: "double", FD.TYPE_FLOAT: "float",
    FD.TYPE_INT64: "int64", FD.TYPE_UINT64: "uint64",
    FD.TYPE_INT32: "int32", FD.TYPE_FIXED64: "fixed64",
    FD.TYPE_FIXED32: "fixed32", FD.TYPE_BOOL: "bool",
    FD.TYPE_STRING: "string", FD.TYPE_BYTES: "bytes",
    FD.TYPE_UINT32: "uint32", FD.TYPE_SFIXED32: "sfixed32",
    FD.TYPE_SFIXED64: "sfixed64", FD.TYPE_SINT32: "sint32",
    FD.TYPE_SINT64: "sint64",
}
# Numeric scalar types whose proto3 repeated form is packed.
_PACKABLE = {
    "double", "float", "int64", "uint64", "int32", "fixed64", "fixed32",
    "bool", "uint32", "sfixed32", "sfixed64", "sint32", "sint64",
}


def schema_for(reg, endpoint):
    cls = reg.message_class("Response", endpoint)
    desc = cls.DESCRIPTOR
    messages = {}
    enums = {}

    def visit_enum(ed):
        if ed.name in enums:
            return
        enums[ed.name] = {v.name: v.number for v in ed.values}

    def visit_message(md):
        if md.name in messages:
            return
        messages[md.name] = {"fields": []}
        for f in md.fields:
            repeated = bool(f.is_repeated)
            entry = {
                "name": f.name,
                "number": f.number,
                "repeated": repeated,
            }
            if f.type == f.TYPE_MESSAGE:
                entry["type"] = "message"
                entry["type_name"] = f.message_type.name
                entry["packed"] = False
                messages[md.name]["fields"].append(entry)
                visit_message(f.message_type)
            elif f.type == f.TYPE_ENUM:
                entry["type"] = "enum"
                entry["type_name"] = f.enum_type.name
                # proto3 enums are varints; repeated enums are packed.
                entry["packed"] = repeated
                messages[md.name]["fields"].append(entry)
                visit_enum(f.enum_type)
            else:
                scalar = _SCALAR[f.type]
                entry["type"] = scalar
                entry["packed"] = repeated and scalar in _PACKABLE
                messages[md.name]["fields"].append(entry)

    visit_message(desc)
    return {"root": desc.name, "messages": messages, "enums": enums}


def main():
    reg = ProtoRegistry()
    manifests = []
    for resp_dir in ("responses", "responses_newbie"):
        man_path = os.path.join(ROOT, resp_dir, "_manifest.json")
        if os.path.exists(man_path):
            manifests.append(json.load(open(man_path, encoding='utf-8')))
    out_dir = os.path.join(ROOT, "schema")
    os.makedirs(out_dir, exist_ok=True)

    count = 0
    endpoints = {}
    for man in manifests:
        for ep, info in man.items():
            if info["format"] == "proto":
                endpoints[ep] = info
    for ep in sorted(endpoints):
        if not reg.has("Response", ep):
            continue  # empty/raw need no schema
        sch = schema_for(reg, ep)
        with open(os.path.join(out_dir, ep + ".json"), "w", encoding="utf-8") as f:
            json.dump(sch, f, indent=1, ensure_ascii=False)
        count += 1
    print(f"wrote schema/ for {count} proto endpoints")


if __name__ == "__main__":
    main()
