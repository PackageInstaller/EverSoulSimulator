#!/usr/bin/env python3
"""proto_registry.py — compile Eversoul .proto files and convert between
protobuf wire bytes and formatted JSON (with real field names).

Why isolated pools: every Response/*.proto declares `package EsPb`, and many
nested message names repeat across files (e.g. sAchievement appears in several).
Loading them all into one descriptor pool collides. So — exactly like the
original read_binary.py — each endpoint's .proto is compiled in its OWN pool.

Public API:
    reg = ProtoRegistry()
    msg_cls = reg.message_class("Response", "UserInfo")
    d = reg.decode("Response", "UserInfo", payload_bytes)   # -> dict (real names)
    b = reg.encode("Response", "UserInfo", d)               # -> bytes
    ok = reg.roundtrip_ok("Response", "UserInfo", payload_bytes)

The dict form uses proto field names (preserving_proto_field_name=True) and is
what we serialise to responses/<Endpoint>.json — the human-editable fixture.
"""
import glob
import json
import os
import shutil
import subprocess
import sys
import tempfile
from functools import lru_cache

from google.protobuf import descriptor_pb2, descriptor_pool, message_factory
from google.protobuf import json_format

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
PROTO_ROOT = os.path.join(ROOT, "ProtocolBuffers", "Global")


def _find_protoc():
    p = shutil.which("protoc")
    if p:
        return p
    if sys.platform == "win32":
        winget_base = os.path.expandvars(
            r"%LOCALAPPDATA%\Microsoft\WinGet\Packages"
        )
        for match in glob.glob(
            os.path.join(winget_base, "Google.Protobuf*", "**", "protoc.exe"),
            recursive=True,
        ):
            return match
        user_path = os.environ.get("PATH", "")
        for segment in user_path.split(os.pathsep):
            candidate = os.path.join(segment, "protoc.exe")
            if os.path.isfile(candidate):
                return candidate
    raise FileNotFoundError(
        "protoc not found. Install with: winget install Google.Protobuf  "
        "then open a new terminal."
    )


_PROTOC = _find_protoc()

# il2cpp-dump artifact: several Response messages declare a `string` field whose
# name ends in `_` (arbeitList_, friendTotalList_, vistaInfo_, newMailCnt_, ...).
# These do NOT hold UTF-8 text — they carry packed nested-message / binary blobs,
# or in a few cases the proto's wire type is simply wrong. Python's protobuf
# enforces UTF-8 on `string` and rejects them ("String field had bad UTF-8"),
# even though the real C# client parses them fine. Flipping TYPE_STRING ->
# TYPE_BYTES keeps the wire type identical (both length-delimited, wire type 2)
# but drops UTF-8 validation, so the blob round-trips losslessly as base64 in the
# JSON fixture. We restrict this to trailing-underscore field names to avoid
# touching genuine text fields (nickName, about, ...).
_TYPE_STRING = descriptor_pb2.FieldDescriptorProto.TYPE_STRING
_TYPE_BYTES = descriptor_pb2.FieldDescriptorProto.TYPE_BYTES


def _patch_blob_string_fields(fds):
    """In-place: convert trailing-underscore string fields to bytes."""
    def patch_message(msg):
        for field in msg.field:
            if field.type == _TYPE_STRING and field.name.endswith("_"):
                field.type = _TYPE_BYTES
        for nested in msg.nested_type:
            patch_message(nested)
    for fdp in fds.file:
        for msg in fdp.message_type:
            patch_message(msg)


class ProtoRegistry:
    """Lazily compiles and caches one isolated message class per (kind, endpoint)."""

    def __init__(self, proto_root=PROTO_ROOT):
        self.proto_root = proto_root
        self._cache = {}

    def proto_dir(self, kind):
        # kind is "Request" or "Response"
        return os.path.join(self.proto_root, kind)

    def has(self, kind, endpoint):
        return os.path.exists(os.path.join(self.proto_dir(kind), endpoint + ".proto"))

    def _file_descriptor_set(self, kind, endpoint):
        proto_dir = self.proto_dir(kind)
        with tempfile.TemporaryDirectory() as td:
            out = os.path.join(td, "fds.pb")
            subprocess.run(
                [_PROTOC, "--proto_path", proto_dir,
                 "--descriptor_set_out", out,
                 "--include_imports", endpoint + ".proto"],
                check=True, capture_output=True)
            fds = descriptor_pb2.FileDescriptorSet()
            with open(out, "rb") as f:
                fds.ParseFromString(f.read())
        _patch_blob_string_fields(fds)
        return fds

    def file_descriptor_set_bytes(self, kind, endpoint):
        """Serialized FileDescriptorSet for this endpoint — shipped to the device
        so the C++ runtime can rebuild the exact same isolated pool."""
        return self._file_descriptor_set(kind, endpoint).SerializeToString()

    def message_class(self, kind, endpoint):
        key = (kind, endpoint)
        if key in self._cache:
            return self._cache[key]
        fds = self._file_descriptor_set(kind, endpoint)
        pool = descriptor_pool.DescriptorPool()
        for fdp in fds.file:
            pool.Add(fdp)
        # The top-level message is named after the endpoint, package EsPb (Response)
        # or ReqPb (Request).
        pkg = "EsPb" if kind == "Response" else "ReqPb"
        desc = pool.FindMessageTypeByName(f"{pkg}.{endpoint}")
        cls = message_factory.GetMessageClass(desc)
        self._cache[key] = cls
        return cls

    def decode(self, kind, endpoint, payload):
        msg = self.message_class(kind, endpoint)()
        msg.ParseFromString(payload)
        # Default (no including-defaults flag): proto3-canonical — omit
        # explicit-zero scalars. That is exactly what re-encodes 1:1.
        return json_format.MessageToDict(msg, preserving_proto_field_name=True)

    def encode(self, kind, endpoint, data):
        msg = self.message_class(kind, endpoint)()
        json_format.ParseDict(data, msg, ignore_unknown_fields=False)
        return msg.SerializeToString()

    def roundtrip_ok(self, kind, endpoint, payload):
        """True if decode->encode reproduces a *semantically* identical message.

        proto3 drops nested explicit-zero scalars, so bytes can differ while the
        message is equal. We compare parsed messages, which is the correct notion
        of fidelity for replay.
        """
        cls = self.message_class(kind, endpoint)
        original = cls()
        original.ParseFromString(payload)
        data = json_format.MessageToDict(
            original, preserving_proto_field_name=True)
        rebuilt = cls()
        json_format.ParseDict(data, rebuilt)
        return original == rebuilt


_DEFAULT = None


def default_registry():
    global _DEFAULT
    if _DEFAULT is None:
        _DEFAULT = ProtoRegistry()
    return _DEFAULT


if __name__ == "__main__":
    import sys
    # Smoke test: decode a hex payload for an endpoint.
    #   proto_registry.py Response UserInfo <hexfile-or->
    if len(sys.argv) >= 3:
        kind, endpoint = sys.argv[1], sys.argv[2]
        reg = default_registry()
        print(f"has {kind}/{endpoint}: {reg.has(kind, endpoint)}")
        cls = reg.message_class(kind, endpoint)
        print(f"message class: {cls.DESCRIPTOR.full_name}")
        print(f"top-level fields: {[f.name for f in cls.DESCRIPTOR.fields]}")
