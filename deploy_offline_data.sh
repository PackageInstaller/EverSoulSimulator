#!/usr/bin/env bash
# Push the built Android offline runtime to an installed Eversoul package.
#
# Requires:
#   ./build.sh
#
# Deploys:
#   build/android/libswappywrapper.so
#   build/offline_data/libofflinedata.so
set -euo pipefail

PKG="${PKG:-com.kakaogames.eversoul}"
ADB="${ADB:-adb}"
ANDROID_SO="${ANDROID_SO:-build/android/libswappywrapper.so}"
DATA_BLOB="${DATA_BLOB:-build/offline_data/libofflinedata.so}"

ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

for f in "$ANDROID_SO" "$DATA_BLOB"; do
  if [ ! -f "$f" ]; then
    echo "ERROR: missing $f; run ./build.sh first" >&2
    exit 1
  fi
done

if ! grep -a -q 'responses_newbie/' "$DATA_BLOB"; then
  echo "ERROR: $DATA_BLOB does not contain responses_newbie/ entries; rerun ./build.sh" >&2
  exit 1
fi
if ! grep -a -q 'web/account_select.html' "$DATA_BLOB"; then
  echo "ERROR: $DATA_BLOB does not contain web/account_select.html; rerun ./build.sh" >&2
  exit 1
fi

echo "== Resolve installed native lib directory =="
APK_PATH="$($ADB shell pm path "$PKG" | tr -d '\r' | sed -n 's/^package://p' | head -n 1)"
if [ -z "$APK_PATH" ]; then
  echo "ERROR: package not installed: $PKG" >&2
  exit 1
fi

LIBDIR="$($ADB shell "su -c 'ls -d /data/app/*/${PKG}*/lib/arm64 2>/dev/null | head -n 1'" | tr -d '\r')"
if [ -z "$LIBDIR" ]; then
  echo "ERROR: cannot find native lib dir for $PKG" >&2
  echo "apk: $APK_PATH" >&2
  exit 1
fi
echo "apk:    $APK_PATH"
echo "libdir: $LIBDIR"

echo "== Stop app =="
$ADB shell am force-stop "$PKG" >/dev/null || true

echo "== Stage files =="
$ADB push "$ANDROID_SO" /data/local/tmp/libswappywrapper.so >/dev/null
$ADB push "$DATA_BLOB" /data/local/tmp/libofflinedata.so >/dev/null

echo "== Install files =="
$ADB shell "su -c '
  set -e
  cp /data/local/tmp/libswappywrapper.so \"$LIBDIR/libswappywrapper.so\"
  cp /data/local/tmp/libofflinedata.so \"$LIBDIR/libofflinedata.so\"
  chmod 755 \"$LIBDIR/libswappywrapper.so\" \"$LIBDIR/libofflinedata.so\"
  chown system:system \"$LIBDIR/libswappywrapper.so\" \"$LIBDIR/libofflinedata.so\" 2>/dev/null || true
  restorecon \"$LIBDIR/libswappywrapper.so\" \"$LIBDIR/libofflinedata.so\" 2>/dev/null || true
'"

echo "== Verify hashes =="
LOCAL_SWAPPY="$(sha256sum "$ANDROID_SO" | awk '{print $1}')"
LOCAL_DATA="$(sha256sum "$DATA_BLOB" | awk '{print $1}')"
REMOTE_HASHES="$($ADB shell "su -c 'sha256sum \"$LIBDIR/libswappywrapper.so\" \"$LIBDIR/libofflinedata.so\"'" | tr -d '\r')"
echo "$REMOTE_HASHES"

REMOTE_SWAPPY="$(printf '%s\n' "$REMOTE_HASHES" | awk '/libswappywrapper\.so/ {print $1}')"
REMOTE_DATA="$(printf '%s\n' "$REMOTE_HASHES" | awk '/libofflinedata\.so/ {print $1}')"

if [ "$LOCAL_SWAPPY" != "$REMOTE_SWAPPY" ]; then
  echo "ERROR: libswappywrapper.so hash mismatch: local=$LOCAL_SWAPPY remote=$REMOTE_SWAPPY" >&2
  exit 1
fi
if [ "$LOCAL_DATA" != "$REMOTE_DATA" ]; then
  echo "ERROR: libofflinedata.so hash mismatch: local=$LOCAL_DATA remote=$REMOTE_DATA" >&2
  exit 1
fi

$ADB shell "rm -f /data/local/tmp/libswappywrapper.so /data/local/tmp/libofflinedata.so" >/dev/null 2>&1 || true
echo "Done. Start the game to use the updated offline runtime."
