#Requires -Version 5
param(
    [Parameter(Position=0)]
    [ValidateSet('--gui','--cmd')]
    [string]$Mode
)

$j    = [Environment]::ProcessorCount
$root = $PSScriptRoot

& "$root\third_party\tailwindcss.exe" --input "$root\src\web\input.css" --output "$root\src\web\style.css"
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

function Build-Cmd {
    $out = "$root\build\cmd"
    cmake -S $root -B $out -DCMAKE_BUILD_TYPE=Release
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    cmake --build $out --target eversoul_console -j $j
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    Copy-Item "$root\copy_only\dll\*" $out -Force
    Copy-Item "$root\copy_only\adb\*" $out -Force
}

function Build-Gui {
    $out = "$root\build\gui"
    cmake -S $root -B $out -DCMAKE_BUILD_TYPE=Release
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    cmake --build $out --target eversoul_gui -j $j
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    Copy-Item "$root\copy_only\dll\*" $out -Force
    Copy-Item "$root\copy_only\adb\*" $out -Force
}

if ($Mode -eq '--cmd') {
    Build-Cmd
} elseif ($Mode -eq '--gui') {
    Build-Gui
} else {
    Build-Gui
    Build-Cmd
}
