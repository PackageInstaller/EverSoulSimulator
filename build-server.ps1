#Requires -Version 5
$j    = [Environment]::ProcessorCount
$root = $PSScriptRoot
$out  = "$root\build\desktop"

& "$root\third_party\tailwindcss.exe" --input "$root\src\web\input.css" --output "$root\src\web\style.css"
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

python "$root\cmake\gen_web_blob.py" "$root\src\web" "$out\web_embedded.cpp"
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

cmake -S $root -B $out -DCMAKE_BUILD_TYPE=Release
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
cmake --build $out --target eversoul_gui -j $j
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
