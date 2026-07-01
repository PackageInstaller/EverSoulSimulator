#!/usr/bin/env python3
"""pack_offline_data.py — 把 responses/ + responses_newbie/ + schema/ + wss/ + web/ 打包成单个
二进制 blob，命名为 libofflinedata.so，放进 APK 的 lib/arm64-v8a/ 目录。

游戏开启了 extractNativeLibs，安装时系统会把 lib 目录里所有 *.so 解压到
app 的私有 native lib 目录（/data/app/<pkg>/lib/arm64/）。我们的 libofflinedata.so
其实不是 ELF，而是一个自定义归档；libswappywrapper.so 启动时用 dladdr 定位
自身路径 -> 同目录拼出 libofflinedata.so -> 读取解析。全程不碰 /data/local/tmp
或任何外部目录。

归档格式（小端）：
    magic   : 8 bytes  = "ESOFLND1"
    count   : uint32   条目数
    然后 count 个条目：
        path_len : uint32
        path     : path_len bytes (相对路径，如 "responses/UserInfo.json")
        data_len : uint32
        data     : data_len bytes (文件原始字节)

用法：python3 tools/pack_offline_data.py [输出路径]
默认输出 build/offline_data/libofflinedata.so
"""
import os
import struct
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)

MAGIC = b"ESOFLND1"
JSON_DIRS = ["responses", "responses_newbie", "schema"]
WEB_DIST_DIR = os.path.join(ROOT, "src", "web", "dist")
WSS_FILES = ["wss/session_replies.json", "wss/chat_engineio.json"]


def collect():
    """返回 [(相对路径, 字节内容)]。"""
    entries = []
    for d in JSON_DIRS:
        dpath = os.path.join(ROOT, d)
        if not os.path.isdir(dpath):
            print(f"警告：缺少目录 {d}/", file=sys.stderr)
            continue
        for fn in sorted(os.listdir(dpath)):
            if not fn.endswith(".json"):
                continue
            rel = f"{d}/{fn}"
            with open(os.path.join(dpath, fn), "rb") as f:
                entries.append((rel, f.read()))
    if not os.path.isdir(WEB_DIST_DIR):
        print(f"警告：缺少 src/web/dist/", file=sys.stderr)
    else:
        for dirpath, dirnames, filenames in os.walk(WEB_DIST_DIR):
            dirnames.sort()
            for fn in sorted(filenames):
                full = os.path.join(dirpath, fn)
                rel_from_dist = os.path.relpath(full, WEB_DIST_DIR).replace("\\", "/")
                rel = f"web/{rel_from_dist}"
                with open(full, "rb") as f:
                    entries.append((rel, f.read()))
    for rel in WSS_FILES:
        fpath = os.path.join(ROOT, rel)
        if os.path.exists(fpath):
            with open(fpath, "rb") as f:
                entries.append((rel, f.read()))
        else:
            print(f"警告：缺少 {rel}", file=sys.stderr)
    return entries


def pack(entries):
    out = bytearray()
    out += MAGIC
    out += struct.pack("<I", len(entries))
    for rel, data in entries:
        rb = rel.encode("utf-8")
        out += struct.pack("<I", len(rb))
        out += rb
        out += struct.pack("<I", len(data))
        out += data
    return bytes(out)


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else \
        os.path.join(ROOT, "build", "offline_data", "libofflinedata.so")
    entries = collect()
    blob = pack(entries)
    os.makedirs(os.path.dirname(out_path), exist_ok=True)
    with open(out_path, "wb") as f:
        f.write(blob)
    total = sum(len(d) for _, d in entries)
    print(f"packed {len(entries)} files, raw {total} bytes -> {len(blob)} bytes")
    print(f"output: {out_path}")
    import collections
    by_dir = collections.Counter(rel.split("/")[0] for rel, _ in entries)
    for d, c in sorted(by_dir.items()):
        print(f"  {d}/: {c} files")


if __name__ == "__main__":
    main()
