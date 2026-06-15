#Requires -Version 5.1
$ErrorActionPreference = "Stop"

$ROOT = Split-Path -Parent $MyInvocation.MyCommand.Definition
Push-Location $ROOT

git config core.hooksPath .githooks

try {

$PYTHON = $null
foreach ($py in @("python", "python3")) {
    $cmd = Get-Command $py -ErrorAction SilentlyContinue
    if ($cmd) {
        & $cmd.Source -c "import sys; sys.exit(0)" 2>$null | Out-Null
        if ($LASTEXITCODE -eq 0) {
            $PYTHON = $cmd.Source
            break
        }
    }
}
if (-not $PYTHON) {
    Write-Error "ERROR: python3 or python not found or not functional in PATH"
    exit 1
}

$HAR          = if ($env:EVERSOUL_HAR)          { $env:EVERSOUL_HAR }          else { "cdp.cloud.unity3d.com_2026_06_10_09_18_58.har" }
$NEWBIE_HAR   = if ($env:EVERSOUL_NEWBIE_HAR)   { $env:EVERSOUL_NEWBIE_HAR }   else { "cdp.cloud.unity3d.com_2026_06_11_01_37_55.har" }
$BASELINE_HAR = if ($env:EVERSOUL_BASELINE_HAR) { $env:EVERSOUL_BASELINE_HAR } else { "cdp.cloud.unity3d.com_2026_06_08_08_38_04.har" }

$NDK_ROOT = $env:NDK_ROOT
if (-not $NDK_ROOT) {
    $ndkBase = Join-Path $env:LOCALAPPDATA "Android\Sdk\ndk"
    if (Test-Path $ndkBase) {
        $NDK_ROOT = Get-ChildItem $ndkBase -Directory |
            Sort-Object Name | Select-Object -Last 1 | Select-Object -ExpandProperty FullName
    }
}

$ANDROID_API       = if ($env:ANDROID_API)       { $env:ANDROID_API }       else { "21" }
$DESKTOP_BUILD_DIR = if ($env:DESKTOP_BUILD_DIR) { $env:DESKTOP_BUILD_DIR } else { "build/desktop" }
$ANDROID_BUILD_DIR = if ($env:ANDROID_BUILD_DIR) { $env:ANDROID_BUILD_DIR } else { "build/android" }
$JOBS              = if ($env:JOBS)              { [int]$env:JOBS }          else { [Environment]::ProcessorCount }

$SKIP_HAR_MERGE = $env:SKIP_HAR_MERGE
if ($SKIP_HAR_MERGE -ne "1" -and -not (Test-Path $HAR)) {
    Write-Host "NOTICE: HAR file '$HAR' not found. Skipping HAR merge step and using existing responses/."
    $SKIP_HAR_MERGE = "1"
}

if ($SKIP_HAR_MERGE -ne "1") {
    Write-Host "== Merge full-account HAR fixtures =="
    if (Test-Path $BASELINE_HAR) {
        & $PYTHON tools/merge_har.py $HAR --baseline $BASELINE_HAR --force --clean --out-dir responses
    } else {
        & $PYTHON tools/merge_har.py $HAR --force --clean --out-dir responses
    }
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

    if (Test-Path $NEWBIE_HAR) {
        Write-Host "== Merge newbie HAR fixtures =="
        & $PYTHON tools/merge_har.py $NEWBIE_HAR --force --clean --out-dir responses_newbie
        if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    } else {
        Write-Warning "newbie HAR not found: $NEWBIE_HAR"
    }
} else {
    Write-Host "== Merge HAR fixtures skipped =="
}

Write-Host "== Regenerate schema/ =="
& $PYTHON tools/export_schema.py
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host "== Regenerate expected/ =="
& $PYTHON tools/dump_expected.py
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host "== Pack offline data =="
& $PYTHON tools/pack_offline_data.py
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

$CURL_CMAKE_ARGS = @()
if ($env:CURL_ROOT) {
    $cr = $env:CURL_ROOT -replace '\\', '/'
    if (Test-Path "$cr/lib/libcurl.dll.a") {
        $CURL_CMAKE_ARGS = @("-DCURL_INCLUDE_DIR=$cr/include", "-DCURL_LIBRARY=$cr/lib/libcurl.dll.a")
    } elseif (Test-Path "$cr/lib/libcurl.a") {
        $CURL_CMAKE_ARGS = @("-DCURL_INCLUDE_DIR=$cr/include", "-DCURL_LIBRARY=$cr/lib/libcurl.a")
    }
}
if ($CURL_CMAKE_ARGS.Count -eq 0) {
    $wingetBase = Join-Path $env:LOCALAPPDATA "Microsoft\WinGet\Packages"
    if (Test-Path $wingetBase) {
        $curlDll = Get-ChildItem $wingetBase -Recurse -Filter "libcurl.dll.a" -ErrorAction SilentlyContinue |
            Select-Object -First 1
        if ($curlDll) {
            $libDir = $curlDll.DirectoryName
            $incDir = (Resolve-Path (Join-Path $libDir "..\include")).Path
            $CURL_CMAKE_ARGS = @("-DCURL_INCLUDE_DIR=$incDir", "-DCURL_LIBRARY=$($curlDll.FullName)")
        }
    }
}

Write-Host "== Configure desktop =="
& cmake -S . -B $DESKTOP_BUILD_DIR -DCMAKE_BUILD_TYPE=Release -G "Ninja" @CURL_CMAKE_ARGS
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host "== Build desktop =="
& cmake --build $DESKTOP_BUILD_DIR --target eversoul_offline_server encoder_validate offline_data_test -j $JOBS
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

New-Item -ItemType Directory -Force -Path "build" | Out-Null

$serverExe = Join-Path $DESKTOP_BUILD_DIR "eversoul_offline_server.exe"
Copy-Item -Force $serverExe "build\eversoul_offline_server.exe"
Write-Host "Built: build/eversoul_offline_server.exe"

Get-ChildItem "$DESKTOP_BUILD_DIR\*.dll" -ErrorAction SilentlyContinue | ForEach-Object {
    Copy-Item -Force $_.FullName "build\"
    Write-Host "Copied DLL: $($_.Name)"
}

foreach ($d in @("web", "wss", "responses", "responses_newbie", "schema")) {
    if (Test-Path $d) {
        Copy-Item -Force -Recurse $d "build\$d"
        Write-Host "Synced: build/$d"
    }
}

New-Item -ItemType Directory -Force -Path "build\web" | Out-Null

Write-Host "== Build Tailwind CSS =="
& (Join-Path $ROOT "tools\tailwindcss.exe") -i "src\web\input.css" -o "src\web\style.css" --minify
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

foreach ($f in @("index.html", "app.js", "style.css", "account_select.html", "account_select.js")) {
    $src = Join-Path $ROOT "src\web\$f"
    if (Test-Path $src) {
        Copy-Item -Force $src "build\web\$f"
        Write-Host "Copied: build/web/$f"
    }
}

foreach ($f in @("logo.png", "main_bg.png", "loading.png", "lang.png")) {
    $src = Join-Path $ROOT "src\assets\$f"
    if (Test-Path $src) {
        Copy-Item -Force $src "build\web\$f"
        Write-Host "Copied: build/web/$f"
    }
}

New-Item -ItemType Directory -Force -Path "build\offline_data" | Out-Null

Write-Host "== Build injector (MSVC) =="
$VSWHERE = $null
foreach ($p in @(
    "${env:ProgramFiles(x86)}\Microsoft Visual Studio\Installer\vswhere.exe",
    "${env:ProgramFiles}\Microsoft Visual Studio\Installer\vswhere.exe")) {
    if (Test-Path $p) { $VSWHERE = $p; break }
}
if (-not $VSWHERE) {
    Write-Warning "vswhere.exe not found. Skipping injector build."
} else {
    $VS_PATH = (& $VSWHERE -latest -property installationPath).Trim()
    $VCVARS  = Join-Path $VS_PATH "VC\Auxiliary\Build\vcvars64.bat"
    if (-not (Test-Path $VCVARS)) {
        Write-Warning "vcvars64.bat not found at: $VCVARS. Skipping injector build."
    } else {
        $OUT_DIR   = "build"
        $env:CLINK_NOAUTORUN = "1"
        $env:_INJECTOR_CMD = (
            "call `"$VCVARS`" >nul 2>&1 && " +
            "rc.exe /nologo /fo `"$OUT_DIR\injector.res`" src\injector_resources.rc && " +
            "cl.exe /nologo /O2 /MT /EHsc /std:c++17 /utf-8 " +
            "/I`"src`" " +
            "src\injector_main.cpp src\adb_finder.cpp src\i18n.cpp " +
            "`"$OUT_DIR\injector.res`" " +
            "/link /OUT:`"$OUT_DIR\eversoul_injector.exe`" /SUBSYSTEM:CONSOLE " +
            "ws2_32.lib"
        )
        cmd.exe /c "%_INJECTOR_CMD%"
        Remove-Item Env:_INJECTOR_CMD
        if ($LASTEXITCODE -eq 0) {
            Write-Host "Built: build/eversoul_injector.exe"
        } else {
            Write-Warning "eversoul_injector build failed (non-fatal)"
        }
    }
}

Write-Host "== Validate encoder =="
& "$DESKTOP_BUILD_DIR\encoder_validate.exe"
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
& "$DESKTOP_BUILD_DIR\offline_data_test.exe" "build\offline_data\libofflinedata.so" "UserInfo"
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
& "$DESKTOP_BUILD_DIR\offline_data_test.exe" "build\offline_data\libofflinedata.so" "UserInfo" "responses_newbie"
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

if ($NDK_ROOT -and (Test-Path $NDK_ROOT)) {
    Write-Host "== Configure Android =="
    & cmake -S . -B $ANDROID_BUILD_DIR `
        "-DCMAKE_TOOLCHAIN_FILE=$NDK_ROOT/build/cmake/android.toolchain.cmake" `
        "-DANDROID_ABI=arm64-v8a" `
        "-DANDROID_PLATFORM=android-$ANDROID_API" `
        "-DCMAKE_BUILD_TYPE=Release"
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

    Write-Host "== Build Android ARM64 =="
    $cleanFirst = if ($env:CLEAN_ANDROID -eq "1") { @("--clean-first") } else { @() }
    & cmake --build $ANDROID_BUILD_DIR --target swappywrapper @cleanFirst -j $JOBS
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    Write-Host "Built: $ANDROID_BUILD_DIR/libswappywrapper.so (arm64-v8a)"

    $ANDROID_X86_BUILD_DIR = "build/android_x86"
    & cmake -S . -B $ANDROID_X86_BUILD_DIR `
        "-DCMAKE_TOOLCHAIN_FILE=$NDK_ROOT/build/cmake/android.toolchain.cmake" `
        "-DANDROID_ABI=x86_64" `
        "-DANDROID_PLATFORM=android-$ANDROID_API" `
        "-DCMAKE_BUILD_TYPE=Release"
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    & cmake --build $ANDROID_X86_BUILD_DIR --target swappywrapper inject_helper -j $JOBS
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    Copy-Item -Force "$ANDROID_X86_BUILD_DIR\libswappywrapper.so" "$ANDROID_BUILD_DIR\libswappywrapper_x86_64.so"
    Write-Host "Built: $ANDROID_BUILD_DIR/libswappywrapper_x86_64.so (x86_64)"
    Copy-Item -Force "$ANDROID_X86_BUILD_DIR\inject_helper" "$ANDROID_BUILD_DIR\inject_helper"
    Write-Host "Built: $ANDROID_BUILD_DIR/inject_helper (x86_64)"

    Write-Host "== Patch APK =="
    New-Item -ItemType Directory -Force -Path "build\apk" | Out-Null

    $APKTOOL    = Join-Path $ROOT "tools\apktool_3.0.2.jar"
    $SMALI_WORK = Join-Path $ROOT "sample2\smali_work"
    $PATCHED_SO = Join-Path $ROOT "$ANDROID_BUILD_DIR\libswappywrapper.so"

    if (-not (Test-Path $APKTOOL))    { Write-Error "apktool not found: $APKTOOL"; exit 1 }
    if (-not (Test-Path $SMALI_WORK)) { Write-Error "smali_work not found: $SMALI_WORK"; exit 1 }

    $LIB_DIR = Join-Path $SMALI_WORK "lib\arm64-v8a"
    New-Item -ItemType Directory -Force -Path $LIB_DIR | Out-Null
    Copy-Item -Force $PATCHED_SO (Join-Path $LIB_DIR "libswappywrapper.so")
    Write-Host "  libswappywrapper.so -> smali_work/lib/arm64-v8a/"

    $LIAPP_JAR_SRC = Join-Path $ROOT "sample\test\origin\liapp_jar_extracted.jar"
    if (-not (Test-Path $LIAPP_JAR_SRC)) { Write-Error "liapp_jar_extracted.jar not found: $LIAPP_JAR_SRC"; exit 1 }
    Copy-Item -Force $LIAPP_JAR_SRC (Join-Path $SMALI_WORK "assets\liapp.jar")
    Write-Host "  liapp.jar -> smali_work/assets/"

    $PATCHED_APK_OUT = Join-Path $ROOT "build\apk\base_patched.apk"
    Write-Host "  apktool build (smali_work)..."
    & java -jar $APKTOOL b $SMALI_WORK -o $PATCHED_APK_OUT
    if ($LASTEXITCODE -ne 0) { Write-Error "apktool build failed"; exit 1 }
    Write-Host "Patched: build/apk/base_patched.apk (unsigned — root replace)"

    $ORIGIN_SPLIT = Join-Path $ROOT "apk\origin\split_config.arm64_v8a.apk"
    if (Test-Path $ORIGIN_SPLIT) {
        Add-Type -AssemblyName System.IO.Compression.FileSystem
        $CAWWYAYY_OUT = Join-Path $ROOT "build\apk\libcawwyayy_patched.so"
        $zip = [System.IO.Compression.ZipFile]::OpenRead($ORIGIN_SPLIT)
        $entry = $zip.Entries | Where-Object { $_.FullName -eq "lib/arm64-v8a/libcawwyayy.so" } | Select-Object -First 1
        if ($entry) {
            [System.IO.Compression.ZipFileExtensions]::ExtractToFile($entry, $CAWWYAYY_OUT, $true)
            Write-Host "Extracted: build/apk/libcawwyayy_patched.so"
        } else {
            Write-Warning "libcawwyayy.so not found in origin split APK"
        }
        $zip.Dispose()
        Copy-Item -Force $ORIGIN_SPLIT "build\apk\split_config.arm64_v8a.apk"
        Write-Host "Copied: build/apk/split_config.arm64_v8a.apk"
    }

    Write-Host "== Output hashes =="
    foreach ($f in @(
        "build\eversoul_offline_server.exe",
        "$ANDROID_BUILD_DIR\libswappywrapper.so",
        "$ANDROID_BUILD_DIR\inject_helper",
        "build\offline_data\libofflinedata.so",
        "build\apk\base_patched.apk",
        "build\apk\libcawwyayy_patched.so"
    )) {
        if (Test-Path $f) {
            $h = (Get-FileHash $f -Algorithm SHA256).Hash.ToLower()
            Write-Host "$h  $f"
        }
    }
} else {
    Write-Warning "NDK_ROOT not found or not set. Skipping Android build."

    Write-Host "== Output hashes =="
    foreach ($f in @("build\eversoul_offline_server.exe", "build\offline_data\libofflinedata.so")) {
        $h = (Get-FileHash $f -Algorithm SHA256).Hash.ToLower()
        Write-Host "$h  $f"
    }
}

} finally {
    Pop-Location
}
