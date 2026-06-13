#!/usr/bin/env bash
# setup_env.sh — check and report build environment requirements.
# Runs on Linux, macOS, and Windows (Git Bash / MSYS2 MinGW64).
set -euo pipefail

OK=0
WARN=1
FAIL=2

_status=0

pass()  { echo "  [OK]   $*"; }
warn()  { echo "  [WARN] $*"; _status=$WARN; }
fail()  { echo "  [FAIL] $*"; _status=$FAIL; }
header(){ echo; echo "=== $* ==="; }

# Detect host OS and package manager
OS="$(uname -s)"
case "$OS" in
  MINGW*|MSYS*|CYGWIN*)
    HOST="windows"
    ;;
  Linux)
    HOST="linux"
    ;;
  Darwin)
    HOST="macos"
    ;;
  *)
    HOST="unknown"
    ;;
esac

_msys2_hint() {
  echo "         Install via MSYS2 MinGW64:"
  echo "           pacman -S $*"
  echo "         Then add C:\\msys64\\mingw64\\bin to your PATH."
}

_apt_hint() {
  echo "         Install via apt: sudo apt install $*"
}

_brew_hint() {
  echo "         Install via Homebrew: brew install $*"
}

_install_hint() {
  case "$HOST" in
    windows) _msys2_hint "$@" ;;
    linux)   _apt_hint   "$@" ;;
    macos)   _brew_hint  "$@" ;;
  esac
}

# ── Python 3 ────────────────────────────────────────────────────────────────
header "Python 3"
if command -v python3 &>/dev/null; then
  PY_VER="$(python3 --version 2>&1)"
  pass "python3: $PY_VER"

  if python3 -c "import google.protobuf" &>/dev/null; then
    PB_VER="$(python3 -c 'import google.protobuf; print(google.protobuf.__version__)')"
    pass "google-protobuf: $PB_VER"
  else
    fail "google-protobuf not installed"
    echo "         Install: pip install -r tools/requirements.txt"
  fi
else
  fail "python3 not found"
  case "$HOST" in
    windows)
      echo "         Install: https://www.python.org/downloads/"
      echo "         Or via MSYS2: pacman -S mingw-w64-x86_64-python"
      ;;
    linux)   _apt_hint "python3 python3-pip" ;;
    macos)   _brew_hint "python3" ;;
  esac
fi

# ── protoc ──────────────────────────────────────────────────────────────────
header "protoc (Protocol Buffers compiler)"
if command -v protoc &>/dev/null; then
  pass "protoc: $(protoc --version)"
else
  fail "protoc not found"
  case "$HOST" in
    windows) _msys2_hint "mingw-w64-x86_64-protobuf" ;;
    linux)   _apt_hint "protobuf-compiler" ;;
    macos)   _brew_hint "protobuf" ;;
  esac
fi

# ── CMake ───────────────────────────────────────────────────────────────────
header "CMake (>= 3.21 required)"
if command -v cmake &>/dev/null; then
  CMAKE_VER="$(cmake --version | head -1)"
  CMAKE_MAJOR="$(cmake --version | head -1 | grep -oP '\d+\.\d+' | head -1 | cut -d. -f1)"
  CMAKE_MINOR="$(cmake --version | head -1 | grep -oP '\d+\.\d+' | head -1 | cut -d. -f2)"
  if [ "$CMAKE_MAJOR" -gt 3 ] || { [ "$CMAKE_MAJOR" -eq 3 ] && [ "$CMAKE_MINOR" -ge 21 ]; }; then
    pass "cmake: $CMAKE_VER"
  else
    fail "cmake version too old (need >= 3.21): $CMAKE_VER"
    case "$HOST" in
      windows) _msys2_hint "mingw-w64-x86_64-cmake" ;;
      linux)   echo "         Install: https://cmake.org/download/ (PPA or direct binary)" ;;
      macos)   _brew_hint "cmake" ;;
    esac
  fi
else
  fail "cmake not found"
  case "$HOST" in
    windows) _msys2_hint "mingw-w64-x86_64-cmake" ;;
    linux)   _apt_hint "cmake" ;;
    macos)   _brew_hint "cmake" ;;
  esac
fi

# ── C++ compiler (C++23) ────────────────────────────────────────────────────
header "C++ compiler (C++23 required)"
CXX_FOUND=""
if command -v g++ &>/dev/null; then
  GCC_VER="$(g++ --version | head -1)"
  GCC_MAJOR="$(g++ -dumpversion | cut -d. -f1)"
  if [ "$GCC_MAJOR" -ge 11 ]; then
    pass "g++: $GCC_VER"
    CXX_FOUND="g++"
  else
    warn "g++ found but version may be too old for full C++23 (GCC 11+ recommended): $GCC_VER"
    CXX_FOUND="g++"
  fi
elif command -v clang++ &>/dev/null; then
  pass "clang++: $(clang++ --version | head -1)"
  CXX_FOUND="clang++"
else
  fail "no C++ compiler found (g++ or clang++)"
  case "$HOST" in
    windows) _msys2_hint "mingw-w64-x86_64-gcc" ;;
    linux)   _apt_hint "build-essential" ;;
    macos)   echo "         Install Xcode Command Line Tools: xcode-select --install" ;;
  esac
fi

# ── libcurl ─────────────────────────────────────────────────────────────────
header "libcurl (desktop server dependency)"
if command -v curl-config &>/dev/null; then
  pass "libcurl: $(curl-config --version)"
elif pkg-config --exists libcurl 2>/dev/null; then
  pass "libcurl: $(pkg-config --modversion libcurl)"
elif [ "$HOST" = "windows" ] && [ -f "$(command -v gcc 2>/dev/null | xargs dirname 2>/dev/null)/../lib/libcurl.a" ] 2>/dev/null; then
  pass "libcurl: found in MinGW lib"
else
  fail "libcurl development files not found"
  case "$HOST" in
    windows) _msys2_hint "mingw-w64-x86_64-curl" ;;
    linux)   _apt_hint "libcurl4-openssl-dev" ;;
    macos)   echo "         libcurl ships with macOS. If missing: brew install curl" ;;
  esac
fi

# ── Android NDK (optional) ──────────────────────────────────────────────────
header "Android NDK (optional — required only for Android build)"
NDK_ROOT="${NDK_ROOT:-/opt/android-ndk}"
if [ -f "$NDK_ROOT/build/cmake/android.toolchain.cmake" ]; then
  NDK_REV="$(cat "$NDK_ROOT/source.properties" 2>/dev/null | grep Revision | head -1 || echo 'unknown revision')"
  pass "NDK at $NDK_ROOT ($NDK_REV)"
else
  warn "NDK not found at $NDK_ROOT — Android build (libswappywrapper.so) will be skipped"
  echo "         Set NDK_ROOT env var to your NDK path, or download from:"
  echo "         https://developer.android.com/ndk/downloads"
fi

# ── nproc / sha256sum ───────────────────────────────────────────────────────
header "Shell utilities"
if command -v nproc &>/dev/null; then
  pass "nproc: $(nproc) cores"
else
  warn "nproc not found — build.sh will fall back to -j1"
fi

if command -v sha256sum &>/dev/null; then
  pass "sha256sum: available"
else
  fail "sha256sum not found"
  case "$HOST" in
    windows) echo "         Should be provided by Git Bash / MSYS2 coreutils" ;;
    macos)   echo "         Use: brew install coreutils  (provides gsha256sum; alias as sha256sum)" ;;
  esac
fi

# ── Summary ─────────────────────────────────────────────────────────────────
echo
echo "============================================"
if [ "$_status" -eq $FAIL ]; then
  echo "  Result: FAIL — resolve the above errors before running build.sh"
  exit 1
elif [ "$_status" -eq $WARN ]; then
  echo "  Result: WARN — desktop build may work; review warnings above"
  exit 0
else
  echo "  Result: OK — environment is ready"
  exit 0
fi
