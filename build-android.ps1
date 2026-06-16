#Requires -Version 5
$j   = [Environment]::ProcessorCount
$root = $PSScriptRoot
$ndk  = 'C:\Users\koiya\AppData\Local\Android\Sdk\ndk\29.0.14206865'

cmake -B "$root\build\android" `
  -DCMAKE_TOOLCHAIN_FILE="$ndk\build\cmake\android.toolchain.cmake" `
  -DANDROID_ABI=arm64-v8a `
  -DANDROID_PLATFORM=android-29 `
  -DCMAKE_BUILD_TYPE=Release
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
cmake --build "$root\build\android" --target swappywrapper -j $j
exit $LASTEXITCODE
