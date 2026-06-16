# Eversoul Offline — 작업 가이드

## 아키텍처

```
[Android 게임] → http://127.0.0.1:9999 (libswappywrapper.so 내장 서버)
                         ↓ TCP 전면 릴레이 (proxy.cpp Android 분기)
              adb reverse tcp:9991 tcp:9991 터널
                         ↓
           [PC] 127.0.0.1:9991 (eversoul_offline_server.exe)
                   실제 mock/fixture/SQLite 처리
```

- **Android SO** (`libswappywrapper.so`): 게임 자동 로드, 내장 HTTP 서버 **9999** 리슨, 수신 요청 전부 9991로 raw TCP 포워딩 — mock/라우팅 없음
- **PC 서버** (`eversoul_offline_server.exe`): 포트 **9991**, 실제 오프라인 응답 처리 (fixture/SQLite/payloads)
- **adb reverse**: `tcp:9991 tcp:9991` — 기기 9991 → PC 9991 터널

## 포트 상수 (src/common.hpp)

| 상수 | 값 | 용도 |
|---|---|---|
| `kDefaultPort` | 9999 | Android SO 리슨 포트 |
| `kServerListenPort` | 9991 | PC 서버 포트 / Android TCP 포워딩 대상 |

## 터미널 규칙 (절대 준수)

- **ADB 명령**: 반드시 **PowerShell** 사용
- **그 외 모든 터미널**: 반드시 **Git Bash** 기본
- **Python 실행**: `python` (python3 금지)

## ADB 작업 루틴 (순서 고정)

1. 디바이스 확인 (`adb devices`)
2. 연결 확인
3. root 획득 (`adb root`)
4. 내부 탐색 필수 (대상 경로 확인 후 진행)
5. 몽키 금지 — **am만 사용**
6. push 후 권한: 무조건 `chmod 777` (보안 무시)
7. 소유자: 반드시 `chown system:system`

```powershell
# push 표준 절차 (PowerShell)
adb push libswappywrapper.so /data/local/tmp/libswappywrapper.so
adb shell "su -c 'cp /data/local/tmp/libswappywrapper.so /system/lib64/libswappywrapper.so && chmod 777 /system/lib64/libswappywrapper.so && chown system:system /system/lib64/libswappywrapper.so'"
```

## 덤프 규칙

- 덤프 전 로그캣 반드시 먼저 비우기: `adb logcat -c`
- 전체 덤프 기본 (필터 없이)
- 중간 sleep 삽입 금지

```powershell
# 덤프 표준 절차 (PowerShell)
adb logcat -c
adb logcat
```

## 빌드

빌드 시스템: **CMake 전용** — gradle, make, ninja 직접 호출 금지.

환경 요구사항:
- NDK: 환경변수 `$NDK` 또는 `$ANDROID_NDK_HOME` 으로 참조
- CMake 3.21+
- ABI: arm64-v8a / Platform: android-29

```bash
# Android SO (Git Bash)
cmake -B build/android \
      -DCMAKE_TOOLCHAIN_FILE=$NDK/build/cmake/android.toolchain.cmake \
      -DANDROID_ABI=arm64-v8a \
      -DANDROID_PLATFORM=android-29 \
      -DCMAKE_BUILD_TYPE=Release
cmake --build build/android --target swappywrapper -j$(nproc)

# PC 서버 (Git Bash)
cmake -B build/desktop -DCMAKE_BUILD_TYPE=Release
cmake --build build/desktop --target eversoul_offline_server -j$(nproc)
```

빌드 산출물:
- Android: `build/android/libswappywrapper.so`
- Desktop: `build/desktop/eversoul_offline_server(.exe)`

## 배포 절차

```powershell
# 1. adb reverse 설정 (PowerShell)
adb reverse tcp:9991 tcp:9991

# 2. SO 교체 (PowerShell)
adb push build/android/libswappywrapper.so /data/local/tmp/libswappywrapper.so
adb shell "su -c 'cp /data/local/tmp/libswappywrapper.so /system/lib64/libswappywrapper.so && chmod 777 /system/lib64/libswappywrapper.so && chown system:system /system/lib64/libswappywrapper.so'"
```

```bash
# 3. PC 서버 실행 (Git Bash)
./build/desktop/eversoul_offline_server
```

## 도구 목록

### tools/ — Python 유틸리티 (python 으로 실행, python3 금지)

| 파일 | 용도 |
|---|---|
| `dump_expected.py` | expected/ 바이너리 덤프 |
| `export_schema.py` | protobuf 스키마 추출 |
| `json_to_proto.py` | JSON → protobuf 변환 |
| `pack_offline_data.py` | offline_data 패키징 |
| `build_userinfo.py` | UserInfo 바이너리 빌드 |
| `patch_dex.py` | classes3.dex 패치 |
| `patch_java_redirect.py` | Java redirect 패치 |
| `patch_url_init.py` | URL init 패치 |
| `har_to_json.py` | HAR → JSON 변환 |
| `harvest_har.py` | HAR 수집 |
| `merge_har.py` | HAR 병합 |
| `proto_registry.py` | protobuf 레지스트리 (라이브러리) |
| `json_to_proto.py` | JSON↔proto 변환 (라이브러리) |
| `decode_tutorial_flow.py` | 튜토리얼 플로우 디코딩 |
| `download_probability.py` | 가챠 확률 다운로드 |
| `integration_test.py` | 통합 테스트 |
| `verify_pipeline.py` | 파이프라인 검증 |
| `ws_test.py` | WebSocket 테스트 |
| `wss_fixtures.py` | WSS fixture 생성 |
| `bump_version.py` | 버전 범프 |
| `apply_java_redirect.sh` | Java redirect 적용 (Bash) |

### third_party/ — 소스 의존성 (git 추적 대상)

| 디렉토리 | 용도 |
|---|---|
| `dobby/` | ARM64 inline hook 엔진 |
| `lsplant/` | LSPlant Java hook 프레임워크 |
| `sqlite/` | SQLite 아말감 |
| `sqlite_orm/` | SQLite ORM |

### third_party/ — 바이너리 도구 (.gitignore 제외)

| 파일/디렉토리 | 용도 |
|---|---|
| `apktool*.jar` | APK 디컴파일/리컴파일 |
| `jadx-*/` | DEX → Java 디컴파일러 |
| `tailwindcss*` | Tailwind CSS CLI |

## 핵심 파일

| 파일 | 역할 |
|---|---|
| `src/common.hpp` | 포트 상수, Config 구조체, Android/Desktop 분기 |
| `src/entry.cpp` | Android SO 진입점, `start_async(9999)` + 훅 초기화 |
| `src/proxy.cpp` | Android: raw TCP → 127.0.0.1:9991 포워딩 / Desktop: libcurl upstream |
| `src/router.cpp` | Android 빌드 시 `proxy_request` 직통, Desktop mock/fixture 라우팅 |
| `src/main.cpp` | PC 서버 진입점, `kServerListenPort(9991)` 기동 |

## 리포지토리

- Remote: `https://github.com/PackageInstaller/EverSoulSimulator.git`
- 작업 브랜치: `nekoi-window`
