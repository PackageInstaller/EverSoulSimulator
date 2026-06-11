#!/usr/bin/env bash
# Unified build pipeline:
#   1. merge the selected full-account HAR into responses/
#      and the selected newbie HAR into responses_newbie/
#   2. regenerate schema/ and expected/
#   3. pack libofflinedata.so
#   4. build desktop server/tools and Android libswappywrapper.so
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

_gxx=$(command -v g++ 2>/dev/null || command -v c++ 2>/dev/null || true)
if [ -n "$_gxx" ]; then
    export PATH="$(dirname "$_gxx"):$PATH"
fi

PYTHON=""
for _py in python3 python; do
  if command -v "$_py" &>/dev/null && "$_py" -c "import sys; sys.exit(0)" &>/dev/null 2>&1; then
    PYTHON="$_py"
    break
  fi
done
if [ -z "$PYTHON" ]; then
  echo "ERROR: python3 or python not found or not functional in PATH" >&2
  exit 1
fi

HAR="${EVERSOUL_HAR:-cdp.cloud.unity3d.com_2026_06_10_09_18_58.har}"
NEWBIE_HAR="${EVERSOUL_NEWBIE_HAR:-cdp.cloud.unity3d.com_2026_06_11_01_37_55.har}"
BASELINE_HAR="${EVERSOUL_BASELINE_HAR:-cdp.cloud.unity3d.com_2026_06_08_08_38_04.har}"
if [ -z "${NDK_ROOT:-}" ]; then
    case "$(uname -s)" in
        MINGW*|MSYS*|CYGWIN*)
            NDK_ROOT="$(ls -d "/c/Users/$USERNAME/AppData/Local/Android/Sdk/ndk"/*/ 2>/dev/null | sort -V | tail -1)"
            NDK_ROOT="${NDK_ROOT%/}"
            ;;
        Darwin)
            NDK_ROOT="$(ls -d "$HOME/Library/Android/sdk/ndk"/*/ 2>/dev/null | sort -V | tail -1)"
            NDK_ROOT="${NDK_ROOT%/}"
            ;;
        *)
            NDK_ROOT="/opt/android-ndk"
            ;;
    esac
fi
if [ -z "${NDK_ROOT:-}" ] || [ ! -d "$NDK_ROOT" ]; then
    echo "ERROR: Android NDK not found. Set NDK_ROOT to your NDK installation path." >&2
    exit 1
fi
ANDROID_API="${ANDROID_API:-21}"
DESKTOP_BUILD_DIR="${DESKTOP_BUILD_DIR:-build/desktop}"
ANDROID_BUILD_DIR="${ANDROID_BUILD_DIR:-build/android}"
JOBS="${JOBS:-$(nproc)}"

if [ "${SKIP_HAR_MERGE:-0}" != "1" ]; then
  if [ ! -f "$HAR" ]; then
    echo "NOTICE: HAR file '$HAR' not found. Skipping HAR merge step and using existing responses/."
    SKIP_HAR_MERGE=1
  fi
fi

if [ "${SKIP_HAR_MERGE:-0}" != "1" ]; then
  echo "== Merge full-account HAR fixtures =="
  if [ -f "$BASELINE_HAR" ]; then
    $PYTHON tools/merge_har.py "$HAR" --baseline "$BASELINE_HAR" --force --clean --out-dir responses
  else
    $PYTHON tools/merge_har.py "$HAR" --force --clean --out-dir responses
  fi
  if [ -f "$NEWBIE_HAR" ]; then
    echo "== Merge newbie HAR fixtures =="
    $PYTHON tools/merge_har.py "$NEWBIE_HAR" --force --clean --out-dir responses_newbie
  else
    echo "WARNING: newbie HAR not found: $NEWBIE_HAR" >&2
  fi
else
  echo "== Merge HAR fixtures skipped =="
fi

echo "== Regenerate schema/ =="
$PYTHON tools/export_schema.py

echo "== Regenerate expected/ =="
$PYTHON tools/dump_expected.py

echo "== Pack offline data =="
$PYTHON tools/pack_offline_data.py

CURL_CMAKE_ARGS=""
if [ -n "${CURL_ROOT:-}" ]; then
  CURL_WIN="${CURL_ROOT//\\/\/}"
  if [ -f "$CURL_WIN/lib/libcurl.dll.a" ]; then
    CURL_CMAKE_ARGS="-DCURL_INCLUDE_DIR=$CURL_WIN/include -DCURL_LIBRARY=$CURL_WIN/lib/libcurl.dll.a"
  elif [ -f "$CURL_WIN/lib/libcurl.a" ]; then
    CURL_CMAKE_ARGS="-DCURL_INCLUDE_DIR=$CURL_WIN/include -DCURL_LIBRARY=$CURL_WIN/lib/libcurl.a"
  fi
fi
if [ -z "$CURL_CMAKE_ARGS" ]; then
  WINGET_CURL=$(find "/c/Users/$USERNAME/AppData/Local/Microsoft/WinGet/Packages" \
    -name "libcurl.dll.a" 2>/dev/null | head -1)
  if [ -n "$WINGET_CURL" ]; then
    CURL_LIB_DIR="$(dirname "$WINGET_CURL")"
    CURL_INC_DIR="$(dirname "$CURL_LIB_DIR")/include"
    CURL_CMAKE_ARGS="-DCURL_INCLUDE_DIR=$CURL_INC_DIR -DCURL_LIBRARY=$WINGET_CURL"
  fi
fi

echo "== Configure desktop =="
cmake -S . -B "$DESKTOP_BUILD_DIR" -DCMAKE_BUILD_TYPE=Release $CURL_CMAKE_ARGS

echo "== Build desktop =="
cmake --build "$DESKTOP_BUILD_DIR" --target eversoul_offline_server encoder_validate offline_data_test -j"$JOBS"

mkdir -p build
cp "$DESKTOP_BUILD_DIR/eversoul_offline_server" build/eversoul_offline_server.new
mv -f build/eversoul_offline_server.new build/eversoul_offline_server
echo "Built: build/eversoul_offline_server"

echo "== Validate encoder =="
"$DESKTOP_BUILD_DIR/encoder_validate"
"$DESKTOP_BUILD_DIR/offline_data_test" build/offline_data/libofflinedata.so UserInfo
"$DESKTOP_BUILD_DIR/offline_data_test" build/offline_data/libofflinedata.so UserInfo responses_newbie

echo "== Configure Android =="
cmake -S . -B "$ANDROID_BUILD_DIR" \
  -DCMAKE_TOOLCHAIN_FILE="$NDK_ROOT/build/cmake/android.toolchain.cmake" \
  -DANDROID_ABI=arm64-v8a \
  -DANDROID_PLATFORM="android-$ANDROID_API" \
  -DCMAKE_BUILD_TYPE=Release

echo "== Build Android =="
if [ "${CLEAN_ANDROID:-0}" = "1" ]; then
  cmake --build "$ANDROID_BUILD_DIR" --target swappywrapper --clean-first -j"$JOBS"
else
  cmake --build "$ANDROID_BUILD_DIR" --target swappywrapper -j"$JOBS"
fi

echo "Built: $ANDROID_BUILD_DIR/libswappywrapper.so"
if command -v readelf >/dev/null 2>&1; then
  echo "NEEDED for libswappywrapper.so:"
  readelf -d "$ANDROID_BUILD_DIR/libswappywrapper.so" | grep NEEDED || true
fi

echo "== Output hashes =="
sha256sum \
  build/eversoul_offline_server \
  "$ANDROID_BUILD_DIR/libswappywrapper.so" \
  build/offline_data/libofflinedata.so
