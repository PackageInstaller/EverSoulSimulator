#Requires -Version 5
param(
    [Parameter(Position=0)]
    [ValidateSet('--gui','--cmd','--har')]
    [string]$Mode
)

$j    = [Environment]::ProcessorCount
$root = $PSScriptRoot

if ($Mode -ne '--har') {
    Push-Location "$root\src\web"
    npm run build
    $webExit = $LASTEXITCODE
    Pop-Location
    if ($webExit -ne 0) { exit $webExit }
}

function Build-Cmd {
    $out = "$root\build\cmd"
    cmake -S $root -B $out -DCMAKE_BUILD_TYPE=Release
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    cmake --build $out --target eversoul_console -j $j
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    Copy-Item "$root\copy_only\dll\*" $out -Exclude "*.so" -Force
    Copy-Item "$root\copy_only\adb\*" $out -Exclude "*.so" -Force
    $rel = "$root\release\cmd"
    New-Item -ItemType Directory -Path $rel -Force | Out-Null
    Copy-Item "$out\eversoul_console.exe" $rel -Force
    Copy-Item "$root\copy_only\dll\*" $rel -Exclude "*.so" -Force
    Copy-Item "$root\copy_only\adb\*" $rel -Exclude "*.so" -Force
}

function Build-Gui {
    $out = "$root\build\gui"
    cmake -S $root -B $out -DCMAKE_BUILD_TYPE=Release
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    cmake --build $out --target eversoul_gui -j $j
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    Copy-Item "$root\copy_only\dll\*" $out -Exclude "*.so" -Force
    Copy-Item "$root\copy_only\adb\*" $out -Exclude "*.so" -Force
    $rel = "$root\release\webview"
    New-Item -ItemType Directory -Path $rel -Force | Out-Null
    Copy-Item "$out\eversoul_gui.exe" $rel -Force
    Copy-Item "$root\copy_only\dll\*" $rel -Exclude "*.so" -Force
    Copy-Item "$root\copy_only\adb\*" $rel -Exclude "*.so" -Force
}

function Build-Har {
    $out = "$root\build\har"
    cmake -S $root -B $out -DCMAKE_BUILD_TYPE=Release
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    cmake --build $out --target eversoul_har_recorder -j $j
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    Copy-Item "$root\copy_only\dll\*" $out -Exclude "*.so" -Force
    Copy-Item "$root\copy_only\adb\*" $out -Exclude "*.so" -Force
    $rel = "$root\release\har"
    New-Item -ItemType Directory -Path $rel -Force | Out-Null
    Copy-Item "$out\eversoul_har_recorder.exe" $rel -Force
    Copy-Item "$root\copy_only\dll\*" $rel -Exclude "*.so" -Force
    Copy-Item "$root\copy_only\adb\*" $rel -Exclude "*.so" -Force
}

if ($Mode -eq '--cmd') {
    Build-Cmd
} elseif ($Mode -eq '--gui') {
    Build-Gui
} elseif ($Mode -eq '--har') {
    Build-Har
} else {
    Build-Gui
    Build-Cmd
}
