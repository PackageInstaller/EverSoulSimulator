#!/usr/bin/env python3
"""setup_env.py - verify build environment requirements for eversoul_offline.

Usage:
    python setup_env.py
"""
import io
import os
import platform
import shutil
import subprocess
import sys

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8", errors="replace")

OK   = "OK  "
WARN = "WARN"
FAIL = "FAIL"

_result = OK


def _mark(level):
    global _result
    if level == FAIL:
        _result = FAIL
    elif level == WARN and _result != FAIL:
        _result = WARN


def _run(*args):
    try:
        r = subprocess.run(list(args), capture_output=True, text=True, timeout=10)
        return r.returncode, r.stdout.strip(), r.stderr.strip()
    except FileNotFoundError:
        return -1, "", "not found"
    except subprocess.TimeoutExpired:
        return -1, "", "timed out"


def _check(level, label, detail=""):
    tag = f"[{level}]"
    line = f"  {tag}  {label}"
    if detail:
        line += f"  ({detail})"
    print(line)
    _mark(level)


def _header(title):
    print(f"\n=== {title} ===")


def _hint(msg):
    for line in msg.strip().splitlines():
        print(f"         {line}")


IS_WINDOWS = platform.system() == "Windows"


def _install_hint(winget=None, choco=None, apt=None, brew=None):
    if IS_WINDOWS:
        if winget:
            _hint(f"winget install {winget}")
        if choco:
            _hint(f"choco install {choco}")
    elif platform.system() == "Linux":
        if apt:
            _hint(f"sudo apt install {apt}")
    elif platform.system() == "Darwin":
        if brew:
            _hint(f"brew install {brew}")


# ── Python interpreter ────────────────────────────────────────────────────
_header("Python")
py_ver = f"{sys.version_info.major}.{sys.version_info.minor}.{sys.version_info.micro}"
_check(OK, f"python: {py_ver} ({sys.executable})")

# ── google-protobuf ───────────────────────────────────────────────────────
_header("Python package: google-protobuf")
try:
    import google.protobuf
    _check(OK, f"google-protobuf: {google.protobuf.__version__}")
except ImportError:
    _check(FAIL, "google-protobuf: not installed")
    _hint("pip install -r tools/requirements.txt")

# ── protoc ────────────────────────────────────────────────────────────────
_header("protoc (Protocol Buffers compiler)")
rc, out, _ = _run("protoc", "--version")
if rc == 0:
    _check(OK, f"protoc: {out}")
else:
    _check(FAIL, "protoc: not found")
    _install_hint(
        winget="Google.Protobuf",
        apt="protobuf-compiler",
        brew="protobuf",
    )

# ── CMake ─────────────────────────────────────────────────────────────────
_header("CMake (>= 3.21 required)")
rc, out, _ = _run("cmake", "--version")
if rc == 0:
    first_line = out.splitlines()[0]
    parts = first_line.split()
    ver_str = parts[-1] if parts else "0.0.0"
    major, minor = (int(x) for x in ver_str.split(".")[:2])
    if major > 3 or (major == 3 and minor >= 21):
        _check(OK, f"cmake: {first_line}")
    else:
        _check(FAIL, f"cmake too old (need >= 3.21): {first_line}")
        _install_hint(
            winget="Kitware.CMake",
            apt="cmake",
            brew="cmake",
        )
else:
    _check(FAIL, "cmake: not found")
    _install_hint(winget="Kitware.CMake", apt="cmake", brew="cmake")

# ── C++ compiler ──────────────────────────────────────────────────────────
_header("C++ compiler (C++23 required, GCC 11+ or Clang 14+)")
found_cxx = False
for exe in ("g++", "clang++"):
    rc, out, _ = _run(exe, "--version")
    if rc == 0:
        first_line = out.splitlines()[0]
        _check(OK, f"{exe}: {first_line}")
        found_cxx = True
        break
if not found_cxx:
    _check(FAIL, "no C++ compiler found (g++ or clang++)")
    _install_hint(
        winget="MSYS2.MSYS2",
        apt="build-essential",
        brew=None,
    )
    if IS_WINDOWS:
        _hint("After MSYS2 install, run:\n  pacman -S mingw-w64-x86_64-gcc")

# ── libcurl ───────────────────────────────────────────────────────────────
_header("libcurl (desktop server dependency)")
curl_ok = False

rc, out, _ = _run("curl-config", "--version")
if rc == 0:
    _check(OK, f"libcurl: {out}")
    curl_ok = True

if not curl_ok:
    rc, out, _ = _run("pkg-config", "--modversion", "libcurl")
    if rc == 0:
        _check(OK, f"libcurl: {out.strip()}")
        curl_ok = True

if not curl_ok:
    curl_root = os.environ.get("CURL_ROOT", "")
    if curl_root:
        candidates = [
            os.path.join(curl_root, "lib", "libcurl.dll.a"),
            os.path.join(curl_root, "lib", "libcurl.a"),
            os.path.join(curl_root, "lib", "libcurl.lib"),
        ]
        for c in candidates:
            if os.path.exists(c):
                header = os.path.join(curl_root, "include", "curl", "curl.h")
                if os.path.exists(header):
                    _check(OK, f"libcurl: found via CURL_ROOT ({c})")
                else:
                    _check(WARN, f"libcurl lib found but include/curl/curl.h missing ({curl_root})")
                curl_ok = True
                break
        if not curl_ok:
            _check(WARN, f"CURL_ROOT set but no lib found: {curl_root}")
            curl_ok = True

if not curl_ok and IS_WINDOWS:
    gcc_path = shutil.which("gcc") or shutil.which("g++")
    if gcc_path:
        mingw_lib = os.path.join(os.path.dirname(gcc_path), "..", "lib")
        candidates = [
            os.path.join(mingw_lib, "libcurl.a"),
            os.path.join(mingw_lib, "libcurl.dll.a"),
        ]
        for c in candidates:
            if os.path.exists(os.path.normpath(c)):
                _check(OK, f"libcurl: found in MinGW lib ({os.path.normpath(c)})")
                curl_ok = True
                break

if not curl_ok:
    _check(FAIL, "libcurl development files not found")
    _install_hint(
        winget="MSYS2.MSYS2",
        apt="libcurl4-openssl-dev",
        brew="curl",
    )
    if IS_WINDOWS:
        _hint("After MSYS2 install, run:\n  pacman -S mingw-w64-x86_64-curl")

# ── Android NDK (optional) ────────────────────────────────────────────────
_header("Android NDK (optional - required only for Android build)")
ndk_root = os.environ.get("NDK_ROOT", "/opt/android-ndk")
toolchain = os.path.join(ndk_root, "build", "cmake", "android.toolchain.cmake")
if os.path.isfile(toolchain):
    props = os.path.join(ndk_root, "source.properties")
    rev = "unknown revision"
    if os.path.isfile(props):
        with open(props) as f:
            for line in f:
                if "Revision" in line:
                    rev = line.strip()
                    break
    _check(OK, f"NDK at {ndk_root} ({rev})")
else:
    _check(WARN, f"NDK not found at {ndk_root} — Android build will be skipped")
    _hint("Set NDK_ROOT env var to your NDK path, or download from:")
    _hint("https://developer.android.com/ndk/downloads")

# ── Shell utilities ───────────────────────────────────────────────────────
_header("Shell utilities")
for tool in ("sha256sum",):
    rc, out, _ = _run(tool, "--version")
    if rc == 0 or shutil.which(tool):
        _check(OK, f"{tool}: available")
    else:
        _check(WARN, f"{tool}: not found")
        if IS_WINDOWS:
            _hint("Should be available in Git Bash / MSYS2 coreutils")

# ── Summary ───────────────────────────────────────────────────────────────
print("\n" + "=" * 50)
if _result == FAIL:
    print("  Result: FAIL — resolve errors above before running build.sh")
    sys.exit(1)
elif _result == WARN:
    print("  Result: WARN — desktop build may work; review warnings above")
    sys.exit(0)
else:
    print("  Result: OK — environment is ready")
    sys.exit(0)
