#!/usr/bin/env bash
# Push the built Android SO to an installed Eversoul package.
#
# The offline server is the PC-side EXE (eversoul_console, port 9991).
# This script only deploys libswappywrapper.so (hook/redirect layer).
#
# Requires: ba.ps1 (builds build/android/libswappywrapper.so)
set -euo pipefail

PKG="${PKG:-com.kakaogames.eversoul}"
ADB="${ADB:-D:/MuMuPlayer/nx_device/12.0/shell/adb.exe}"
ANDROID_SO="${ANDROID_SO:-build/android/libswappywrapper.so}"

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

if [ ! -f "$ANDROID_SO" ]; then
  echo "ERROR: missing $ANDROID_SO; run ba.ps1 first" >&2
  exit 1
fi

echo "== Resolve installed native lib directory =="
APK_PATH="$("$ADB" shell pm path "$PKG" | tr -d '\r' | sed -n 's/^package://p' | head -n 1)"
if [ -z "$APK_PATH" ]; then
  echo "ERROR: package not installed: $PKG" >&2
  exit 1
fi

LIBDIR="$("$ADB" shell "su -c 'ls -d /data/app/*/${PKG}*/lib/arm64 2>/dev/null | head -n 1'" | tr -d '\r')"
if [ -z "$LIBDIR" ]; then
  echo "ERROR: cannot find native lib dir for $PKG" >&2
  echo "apk: $APK_PATH" >&2
  exit 1
fi
echo "apk:    $APK_PATH"
echo "libdir: $LIBDIR"

echo "== Stop app =="
"$ADB" shell am force-stop "$PKG" >/dev/null || true

echo "== Stage file =="
"$ADB" push "$ANDROID_SO" /data/local/tmp/libswappywrapper.so >/dev/null

echo "== Install file =="
"$ADB" shell "su -c '
  set -e
  cp /data/local/tmp/libswappywrapper.so \"$LIBDIR/libswappywrapper.so\"
  chmod 755 \"$LIBDIR/libswappywrapper.so\"
  chown system:system \"$LIBDIR/libswappywrapper.so\" 2>/dev/null || true
  restorecon \"$LIBDIR/libswappywrapper.so\" 2>/dev/null || true
'"

echo "== Verify hash =="
LOCAL_HASH="$(sha256sum "$ANDROID_SO" | awk '{print $1}')"
REMOTE_HASH="$("$ADB" shell "su -c 'sha256sum \"$LIBDIR/libswappywrapper.so\"'" | tr -d '\r' | awk '{print $1}')"
echo "local:  $LOCAL_HASH"
echo "remote: $REMOTE_HASH"

if [ "$LOCAL_HASH" != "$REMOTE_HASH" ]; then
  echo "ERROR: hash mismatch" >&2
  exit 1
fi

"$ADB" shell "rm -f /data/local/tmp/libswappywrapper.so" >/dev/null 2>&1 || true
echo "Done. Start the game — offline server must be running on PC (port 9991)."
