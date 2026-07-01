#!/usr/bin/env bash
# RedirectHooks.java → classes.dex → redirect_hooks.o (aarch64 ELF relocatable)
# CMake custom_command에서 호출됨: bash scripts/build_redirect_dex.sh <SRC_DIR> <BUILD_DIR>
set -euo pipefail

SRC_DIR="$1"
BUILD_DIR="$2"

JAVA_SRC="$SRC_DIR/src/apk/smali_inject/RedirectHooks.java"
CLASSES_DIR="$BUILD_DIR/redirect_dex_classes"
DEX_JAR="$BUILD_DIR/classes.jar"
DEX_OUT="$BUILD_DIR/redirect_hooks.dex"
OBJ_OUT="$BUILD_DIR/redirect_hooks.o"

# javac --release 8: ART가 DEX minApi 26을 요구하지만 소스는 8로 충분
mkdir -p "$CLASSES_DIR"
javac --release 8 -d "$CLASSES_DIR" "$JAVA_SRC"

# d8 위치 탐색: ANDROID_HOME 또는 Windows 기본 SDK 경로
SDK_ROOT="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-}}"
if [ -z "$SDK_ROOT" ]; then
    SDK_ROOT="${LOCALAPPDATA}/Android/Sdk"
fi

D8=""
for bt in "$SDK_ROOT"/build-tools/*/; do
    [ -f "$bt/d8" ]     && D8="$bt/d8"     && break
    [ -f "$bt/d8.bat" ] && D8="$bt/d8.bat" && break
done

if [ -z "$D8" ]; then
    echo "오류: d8 를 찾을 수 없습니다 — $SDK_ROOT/build-tools/ 확인" >&2
    exit 1
fi

# d8: .class → classes.dex, minApi 26 = Android 8.0 (ART 2.x 이상)
CLASS_FILES=$(find "$CLASSES_DIR" -name "*.class")
"$D8" --min-api 26 --release --output "$BUILD_DIR" $CLASS_FILES

# d8 출력 파일명이 classes.dex이므로 rename
mv "$BUILD_DIR/classes.dex" "$DEX_OUT"

# NDK llvm-objcopy로 DEX 바이너리 → aarch64 ELF relocatable object
# 링크 후 _binary_redirect_hooks_dex_start / _end / _size 심볼로 접근
NDK="${ANDROID_NDK_HOME:-${ANDROID_NDK:-}}"
if [ -z "$NDK" ]; then
    NDK="C:/Users/koiya/AppData/Local/Android/Sdk/ndk/29.0.14206865"
fi

OBJCOPY="$NDK/toolchains/llvm/prebuilt/windows-x86_64/bin/llvm-objcopy"
if [ ! -f "$OBJCOPY" ]; then
    echo "오류: llvm-objcopy 를 찾을 수 없습니다 — $OBJCOPY" >&2
    exit 1
fi

# 상대 경로로 실행해야 심볼명이 _binary_redirect_hooks_dex_start 가 됨
# 절대 경로 사용 시 경로 전체가 심볼명에 포함되어 dex_loader.hpp extern 선언과 불일치
cd "$BUILD_DIR"
"$OBJCOPY" \
    -I binary \
    -O elf64-littleaarch64 \
    -B aarch64 \
    redirect_hooks.dex \
    redirect_hooks.o

echo "[build_redirect_dex] 완료: $OBJ_OUT"
