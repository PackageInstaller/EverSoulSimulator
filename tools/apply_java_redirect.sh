#!/usr/bin/env bash
# apply_java_redirect.sh — 方案 A: build URLHook from Java source and inject the
# Java-layer URL redirect (REST `new URL()` sites + WebSocketManager head) into a
# dex, producing a patched dex. Pairs with the native transport redirect
# (net_redirect.cpp); both point at the local plaintext server 127.0.0.1:9999.
#
# Usage: tools/apply_java_redirect.sh [in.dex] [out.dex]
#        defaults: classes3.dex -> classes3_patched.dex
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

IN_DEX="${1:-classes3.dex}"
OUT_DEX="${2:-classes3_patched.dex}"
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

[ -f "$IN_DEX" ] || { echo "input dex not found: $IN_DEX" >&2; exit 1; }

echo "== [1/5] compile URLHook.java -> verified smali =="
javac --release 8 -d "$WORK/classes" smali_inject/URLHook.java
d8 --min-api 21 --output "$WORK" "$WORK/classes/com/rikka/redirect/URLHook.class"
baksmali d "$WORK/classes.dex" -o "$WORK/hook"
mkdir -p smali_inject/com/rikka/redirect
cp "$WORK/hook/com/rikka/redirect/URLHook.smali" smali_inject/com/rikka/redirect/URLHook.smali

echo "== [2/5] baksmali $IN_DEX =="
baksmali d "$IN_DEX" -o "$WORK/smali"

echo "== [3/5] drop in URLHook.smali =="
mkdir -p "$WORK/smali/com/rikka/redirect"
cp smali_inject/com/rikka/redirect/URLHook.smali "$WORK/smali/com/rikka/redirect/"

echo "== [4/5] inject redirect (REST + WS) =="
python3 tools/patch_java_redirect.py "$WORK/smali"

echo "== [5/5] assemble -> $OUT_DEX =="
smali a "$WORK/smali" -o "$OUT_DEX"
echo
echo "Built: $OUT_DEX"
echo "Next: swap this in as classes3.dex inside the APK and re-sign, e.g."
echo "  zip -j \"\$APK\" \"$OUT_DEX\"   # store as classes3.dex (use a proper repack/sign flow)"
echo "  apksigner sign --ks <keystore> \"\$APK\""
