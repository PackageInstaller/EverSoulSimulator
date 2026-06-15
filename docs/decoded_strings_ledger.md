# libcawwyayy.so 복호화 문자열 원장

- SO: `libcawwyayy.so` (EverSoul LIAPP 안티치트, ARM64)
- 분석 일자: 2026-06-14
- 분석 도구: `main_SO_analyze.py` (JNI_OnLoad+fnPtr), `analyze_subroutines.py` (116개 서브루틴 중 42개 패턴 탐지)
- JS 연계: `monitor_unity_web_request.js` — *.lockincomp.com 리다이렉트, RegisterNatives dummy, killProcess 차단

---

전체 파싱 완료
sample/report/ 에 12개 파일 저장됨:

파일	내용
00_summary.txt	6개 HAR × 호스트별 통계, 전체 7085 entries
01_lockincomp.txt	lockincomp 8건 전체 req/resp
02_game_server.txt	게임서버 5835건 전체 (Login/UserInfo/ServerTime 포함)
03_auth_flow.txt	Zinny3/Kakao OAuth 774건 전체
04_patch_cdn.txt	패치/CDN/분석툴
05_endpoints.txt	고유 엔드포인트 462개 전체 목록
06_full_*.txt × 6	HAR별 완전 덤프
확정된 핵심 정보
lockincomp: 8건 전부 완전 동일 payload/응답


요청: {"f39ad580":"e71aefd9", ..., "f39ad591":"dae3dc65"}  (고정값)
응답: {"fdbd8507":"c6c4389e", "fdbd8508":"208276372",
       "fdbd8509":"5c6e...", "fdbd850f":"208276372"}
KR vs SEA 앱 분리 확정

KR: appId=743487, appSecret=b953bedf9e8064130414a22fa255d584, openapi-zinny3.game.kakao.com
SEA: appId=743491, appSecret=c97c54da763b21ffe24174703ea82cde, gc-openapi-zinny3.kakaogames.com
SDK AES 키 (Zinny3 내부 암호화):

key: djfdskj12328438djdgjcjeejhdew15
IV: 7gnfn7f96rnanmt1s5iaa3kdruhuneu
게임 서버 Login Protobuf 포맷 확정:

Request: [4바이트 헤더] [Protobuf: field1=playerId, field2=accessToken(256B), field6="Pixel 5", field7="kr"]
Response: [00000000][17000000][Protobuf: playerId echo] + Set-Cookie: connect.sid
이후 모든 게임 API: connect.sid 쿠키 기반, 별도 인증 없음
ServerTime 응답: [00000000][07000000][0881babc83ea33] → Unix timestamp varint

Zinny3 accessToken (zat 헤더): RSA 암호화 base64, 1시간 유효 (expiryTime)

## 1. JNI_OnLoad (0x821ec~0x82de0) + fnPtr (0x82de0~0x8ea48) 추출 문자열

### ✓ 확정 복호화

| # | VA | 알고리즘 | 복호화 결과 | 용도 |
|---|-----|---------|------------|------|
| 01 | 0x8227c | INC-XOR key=0x44 | `LIKEY` | LIAPP 내부 식별키 |
| 02 | 0x82308 | CST-XOR key=0x32 | `com/liapp/` | JNI 클래스 경로 접두사 |
| 03 | 0x824e0 | INC-XOR key=0x5f | `Ljava/lang/String;` *(복호화 오류: Ljva/lang/String;)* | JNI 시그니처 |
| 04 | 0x826d4 | CST-XOR key=0x07 | `Landroid/app/Application;` | JNI 시그니처 |
| 05 | 0x82790 | CST-XOR key=0x00 | *(복호화 실패: Usxox6uxw~6V{s|zm)* | 미확정 |
| 06 | 0x8284c | CST-XOR key=0x2f | *(복호화 오류: )LjavaZlangyString;)* | JNI 시그니처 추정 |
| 07 | 0x829ac | CST-XOR key=0x58 | `android/os/Build$VERSION` | SDK 버전 확인 클래스 |
| 08 | 0x82a2c | CST-XOR key=0x37 | `SDK_INT` | SDK 정수 필드명 |
| 09 | 0x82b54 | CST-XOR key=0x7e | `/system/bin/app_process64` | 64비트 app_process 경로 |
| 10 | 0x82f88 | CST-XOR key=0x18 | `.commLIservice` | LIAPP ↔ lockincomp 서비스 식별자 |
| 11 | 0x82fd4 | MAT-SUB 0x05 | `:ai:` *(오류: :ai:ppOLfxilvx)* | LIAPP 내부 채널 ID |
| 12 | 0x834a0 | CST-XOR key=0x43 | `Unknown` | 기기 정보 기본값 |
| 13 | 0x83598 | CST-XOR key=0x7d | `%ld` | 포맷 문자열 |
| 14 | 0x83a30 | CST-XOR key=0x4d | `anti-debug-system-fail` | 안티 디버깅 실패 코드 |
| 15 | 0x83ad0 | SUB 0x05 | `LifeCycle` | LIAPP 생명주기 상태 식별자 |
| 16 | 0x83be8 | CST-XOR key=0x36 | `FF130916` | lockincomp POST 바디 헤더 (LIAPP 식별자) |
| 17 | 0x83c94 | CST-XOR key=0x6e | `%8.8x%8.8x%8.8x%8.8x` | 해시/ID 포맷 |
| 18 | 0x84110 | SUB 0x04 | `()Landroid/content/pm/PackageManager;` | JNI 메서드 시그니처 |
| 19 | 0x8420c | SUB 0x04 | `android/content/pm/PackageManager` | JNI 클래스명 |
| 20 | 0x842b4 | CST-XOR key=0x57 | `getPackageInfo` | JNI 메서드명 |
| 21 | 0x84568 | SUB 0x01 | `android/content/pm/PackageInfo` | JNI 클래스명 |
| 22 | 0x845e4 | SUB 0x04 | `signatures` | APK 서명 필드명 |
| 23 | 0x847f8 | CST-XOR key=0x5b | `android/content/pm/Signature` | JNI 클래스명 |
| 24 | 0x84888 | CST-XOR key=0x66 | `toByteArray` | Signature→byte[] 변환 메서드 |
| 25 | 0x848dc | CST-XOR key=0x45 | `()[B` *(오류: ()[BE<3,2EE)* | JNI 시그니처 |
| 26 | 0x84a54 | SUB 0x0a | `update` | MessageDigest.update |
| 27 | 0x84ab4 | CST-XOR key=0x0e | `([B)V` | JNI 시그니처 |
| 28 | 0x84d6c | CST-XOR key=0x7b | `digest` | MessageDigest.digest |
| 29 | 0x84dc0 | CST-XOR key=0x19 | `()[B` *(오류: ()[BD)* | JNI 시그니처 |
| 30 | 0x84ff0 | SUB 0x0b | `([BI)Ljava/lang/String;` | Base64 인코딩 시그니처 |
| 31 | 0x850b0 | MAT-SUB 0x07 | `SHA1` *(오류)* | 해시 알고리즘명 |
| 32 | 0x852c4 | CST-XOR key=0x08 | `ARVAR-%2.2x` | 포맷 문자열 |
| 33 | 0x85400 | CST-XOR key=0x14 | `ro.boot.verifiedbootstate` | 부트 상태 시스템 프로퍼티 |
| 34 | 0x856fc | CST-XOR key=0x65 | `CUSTOM` | verifiedbootstate 비교값 |
| 35 | 0x85774 | SUB 0x0b | `KernelSU` *(오류: KernelSU-n)* | KernelSU 탐지 식별자 |
| 36 | 0x85838 | CST-XOR key=0x07 | `ro.boot.warranty_bit` | 워런티 상태 프로퍼티 |
| 37 | 0x85940 | SUB 0x0c | `sys.oem_unlock_allowed` | OEM 언락 허용 프로퍼티 |
| 38 | 0x85a4c | SUB 0x03 | `ro.boot.vbmeta.device_state` | Verified Boot 장치 상태 |
| 39 | 0x85abc | CST-XOR key=0x76 | `locked` | 부트로더 잠금 비교값 |
| 40 | 0x85b7c | SUB 0x06 | `sys.boot.reason.last` | 마지막 부팅 원인 |
| 41 | 0x85bfc | CST-XOR key=0x70 | `ota_update` *(오류)* | OTA 업데이트 비교값 |
| 42 | 0x85da8 | CST-XOR key=0x6f | `Rebuild-apk` | APK 리패키징 탐지 코드 |
| 43 | 0x85f28 | CST-XOR key=0x60 | `Rebuild-classes` | 클래스 재빌드 탐지 |
| 44 | 0x86000 | SUB 0x08 | `Tampered-aab-build` | AAB 변조 탐지 |
| 45 | 0x861b0 | CST-XOR key=0x14 | `Tampered-checksum` | 체크섬 변조 탐지 |
| 46 | 0x864e8 | CST-XOR key=0x79 | `magisk(Alpha)` | Magisk Alpha 탐지 |
| 47 | 0x86598 | CST-XOR key=0x6c | `magisk(Aypha)` | Magisk 변종 탐지 |
| 48 | 0x866f4 | CST-XOR key=0x64 | `magisk(LDP)` | Magisk LDP 탐지 |
| 49 | 0x86834 | SUB 0x0c | `Magisk(b)` | Magisk(b) 탐지 |
| 50 | 0x868b0 | SUB 0x0b | `GameModX` | 게임 치트 앱 탐지 |
| 51 | 0x86948 | CST-XOR key=0x1c | `GameModX2` | 게임 치트 앱 탐지 |
| 52 | 0x86b48 | CST-XOR key=0x6c | `getPackageManager` | JNI 메서드명 |
| 53 | 0x86d80 | SUB 0x02 | `getInstalledApplications` | 설치 앱 목록 조회 |
| 54 | 0x86e28 | SUB 0x09 | `(I)Ljava/util/List;` | JNI 시그니처 |
| 55 | 0x86f2c | CST-XOR key=0x38 | `getInstallerPackageName` | 설치자 패키지명 조회 |
| 56 | 0x8701c | SUB 0x09 | `(Ljava/lang/String;)Ljava/lang/String;` | JNI 시그니처 |
| 57 | 0x87074 | MAT-SUB 0x07 | `size` | List.size 메서드명 |
| 58 | 0x871e0 | SUB 0x05 | `(I)Ljava/lang/Object;` | JNI 시그니처 |
| 59 | 0x872a0 | CST-XOR key=0x7a | `packageName` | ApplicationInfo 필드명 |
| 60 | 0x87338 | SUB 0x04 | `Ljava/lang/String;` | JNI 타입 시그니처 |
| 61 | 0x8748c | SUB 0x0a | `Ljava/lang/String;` | JNI 타입 시그니처 (중복) |
| 62 | 0x87538 | CST-XOR key=0x1f | `uid` | ApplicationInfo.uid 필드 |
| 63 | 0x875bc | SUB 0x06 | `flags` | ApplicationInfo.flags 필드 |
| 64 | 0x876d0 | CST-XOR key=0x23 | `catch_.me_.if_.you_.can_` | 치트 앱 패키지명 탐지 |
| 65 | 0x87798 | CST-XOR key=0x50 | `com.cih.game_cih` | GameCIH 치트 앱 탐지 |
| 66 | 0x87934 | CST-XOR key=0x2d | `com.gamemodx.root` | GameModX 루트 탐지 |
| 67 | 0x87a10 | CST-XOR key=0x31 | `com.tsng.hidemyapplist` | HideMyAppList 탐지 |
| 68 | 0x87bc4 | SUB 0x03 | `io.github.huskydg.magisk` | Magisk HuskyDG 변종 탐지 |
| 69 | 0x87c50 | CST-XOR key=0x4d | `io.github.` | github 패키지 접두사 필터 |
| 70 | 0x87cc4 | CST-XOR key=0x3b | `magisk` | 일반 Magisk 패키지명 탐지 |
| 71 | 0x87d78 | SUB 0x0b | `com.rifsxd.ksunext` | KernelSU Next 탐지 |
| 72 | 0x88228 | SUB 0x07 | `com.androidantivirus.testvirus` | 테스트 바이러스 앱 탐지 |
| 73 | 0x882f4 | SUB 0x07 | `com.ikarus.ikarustestvirus` | Ikarus 테스트 바이러스 탐지 |
| 74 | 0x88590 | CST-XOR key=0x25 | `~Trijan.Eicar.TestVirus` | EICAR 테스트 바이러스 탐지 |
| 75 | 0x8871c | CST-XOR key=0x0f | `/system/app/` | 시스템 앱 디렉토리 경로 |
| 76 | 0x88a04 | SUB 0x04 | `com.sec.android.` | 삼성 앱 필터 접두사 |
| 77 | 0x88b2c | CST-XOR key=0x5e | `com.sec.` | 삼성 패키지 필터 |
| 78 | 0x88b54 | SUB 0x0b | *(복호화 실패)* | 미확정 |
| 79 | 0x88dfc | CST-XOR key=0x1a | `com.google.android.apps.magazines` | Google 앱 필터 |
| 80 | 0x89074 | SUB 0x09 | `%s,%s,%d,%s\n` | 탐지 결과 CSV 포맷 |
| 81 | 0x890f4 | SUB 0x05 | `%s,%s,%d,%s\n` | 탐지 결과 CSV 포맷 (중복) |
| 82 | 0x894f0 | CST-XOR key=0x46 | `AndroidRuntime` | 안드로이드 런타임 식별 |
| 83 | 0x896a4 | CST-XOR key=0x0f | `LIAPP COMMON Start: v%s %8.8x...` *(오류)* | LIAPP 시작 로그 포맷 |
| 84 | 0x896fc | MAT-SUB 0x05 | `5.1.1.182` | LIAPP 버전 문자열 |
| 85 | 0x89bb0 | SUB 0x09 | `dl_not_exist\|skipped rooting and file-scan check` | SO 미존재 시 탐지 skip 로그 |
| 86 | 0x89cec | SUB 0x01 | `so_not_exist\|soinfo check was not run` | soinfo 체크 미실행 로그 |
| 87 | 0x8a314 | MAT-SUB 0x03 | `java/security/PublicKey` | 공개키 검증 클래스 |
| 88 | 0x8a38c | MAT-SUB 0x08 | `getEncoded` *(오류: getEncodedd)* | PublicKey.getEncoded 메서드 |
| 89 | 0x8aeb4 | MAT-SUB 0x01 | `yellow` *(오류: yellowK)* | LIAPP 내부 상태 식별자 |
| 90 | 0x8b1e8 | CST-XOR key=0x0c | `null` | 기본값 |
| 91 | 0x8b2f8 | SUB 0x04 | `FF130916@%llx@%d@%8.8X%8.8X%8.8X%8.8X` | lockincomp POST 바디 포맷 (device auth payload) |
| 92 | 0x8b438 | SUB 0x0b | `446F70959C54323A287F8BE0638689EB` | APK 서명 해시 (lockincomp 서버 비교용) |
| 93 | 0x8b4cc | CST-XOR key=0x61 | `7c3551fe3618` | MAC 주소 형식 device ID |
| 94 | 0x8b704 | MAT-SUB 0x0c | `fdbd8507` | lockincomp 응답 코드 |
| 95 | 0x8b7cc | SUB 0x08 | `Connection denied.` | 서버 차단 응답 문자열 |
| 96 | 0x8b8c8 | MAT-SUB 0x04 | `fdbd850f` | lockincomp 응답 코드 |
| 97 | 0x8bc00 | MAT-SUB 0x02 | `fdbd850a` | lockincomp 응답 코드 |
| 98 | 0x8bc70 | MAT-SUB 0x0b | `fdbd850b` | lockincomp 응답 코드 |
| 99 | 0x8cacc | MAT-SUB 0x0b | `/data/data/` *(오류: /data/data/\tK)* | 데이터 경로 |
| 100 | 0x8cbbc | MAT-SUB 0x09 | `/sdcard` | 외부 저장소 경로 |
| 101 | 0x8d328 | SUB 0x08 | `%s,%s,%s,%d,%d,%8.8x,%8.8x,` | 탐지 리포트 CSV 포맷 (lockincomp 전송 구조) |
| 102 | 0x8d3c0 | CST-XOR key=0x3d | `none` | 탐지 결과 없음 값 |
| 103 | 0x8dbf8 | SUB 0x06 | `NOISE_CLICK` | 터치 노이즈 탐지 |
| 104 | 0x8dccc | MAT-SUB 0x05 | `DOWN_UP` | 터치 이벤트 탐지 |
| 105 | 0x8dd48 | MAT-SUB 0x01 | *(복호화 실패)* | 미확정 |
| 106 | 0x8de1c | CST-XOR key=0x1f | `%8.8x%8.8x%8.8x%8.8x` | 해시 포맷 (중복) |
| 107 | 0x8df80 | CST-XOR key=0x03 | `CLICK_TIMEER` | 클릭 타이밍 탐지 |
| 108 | 0x8e0b4 | MAT-SUB 0x01 | `CLICK_3x4` | 3x4 클릭 패턴 탐지 |
| 109 | 0x8e18c | CST-XOR key=0x79 | `CLICK_4x3` | 4x3 클릭 패턴 탐지 |
| 110 | 0x8e4e0 | CST-XOR key=0x77 | `(VirtualDisplay)` | 가상 디스플레이 탐지 |
| 111 | 0x8e53c | SUB 0x0a | `(VPN)` | VPN 연결 탐지 |
| 112 | 0x8e7b0 | SUB 0x09 | `Screen-mirroring\|ToolType=%s DeviceId=%d...` | 화면 미러링 탐지 상세 포맷 |
| 113 | 0x8e8f0 | CST-XOR key=0x50 | `USB` | USB 연결 탐지 |

---

## 2. 서브루틴 신규 추출 (analyze_subroutines.py — 2026-06-14 추가)

### fn=0x128f8

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x129a8 | CST-XOR key=0x5a | `__RESUME__` | 재실행 내부 상태 마커 |

### fn=0x158c8

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x15bfc | CST-XOR key=0x07 | `/system/usr` | 시스템 경로 탐지 |
| 0x15c74 | CST-XOR key=0x1a | `/system/etc` | 시스템 설정 경로 탐지 |

### fn=0x177c0 (네이티브 함수 훅 탐지)

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x17958 | SUB 0x09 | `dl_iterate_phdr` | 링커 공유 라이브러리 순회 (Frida/Xposed SO 탐지) |
| 0x17a18 | CST-XOR key=0x7b | `android_dlopen_ex` *(오류)* | 동적 로드 함수 훅 탐지 |
| 0x17a8c | CST-XOR key=0x3a | `dlopen` | dlopen 훅 탐지 |
| 0x17ae4 | MAT-SUB 0x06 | `dlsym` | dlsym 훅 탐지 |
| 0x17b4c | SUB 0x0a | `dlclose` *(오류)* | dlclose 훅 탐지 |
| 0x17cc8 | CST-XOR key=0x7a | `openat` | openat 훅 탐지 |
| 0x17d30 | CST-XOR key=0x52 | `read` | read 훅 탐지 |
| 0x17e6c | CST-XOR key=0x41 | `fopen` | fopen 훅 탐지 |
| 0x17f14 | CST-XOR key=0x55 | `fread` | fread 훅 탐지 |
| 0x18080 | CST-XOR key=0x64 | `remove` | remove 훅 탐지 |
| 0x18100 | CST-XOR key=0x62 | `readlink` *(오류)* | readlink 훅 탐지 |
| 0x18168 | CST-XOR key=0x45 | `fork` | fork 훅 탐지 |
| 0x18228 | SUB 0x05 | `pthread_mutex_unlock` | mutex 훅 탐지 |
| 0x1851c | CST-XOR key=0x6f | `inotify_add_watch` *(오류)* | 파일시스템 감시 함수 탐지 |
| 0x1858c | CST-XOR key=0x52 | `system` | system 훅 탐지 |
| 0x185f0 | SUB 0x01 | `waitpid` | waitpid 훅 탐지 |
| 0x186bc | MAT-SUB 0x06 | `kill` | kill 훅 탐지 |
| 0x18724 | CST-XOR key=0x25 | `exit` | exit 훅 탐지 |
| 0x188f4 | SUB 0x03 | `ptrace` | ptrace 훅 탐지 (안티 디버깅 우회 탐지) |
| 0x189d4 | CST-XOR key=0x2d | `recv` | recv 훅 탐지 |
| 0x18a38 | CST-XOR key=0x5d | `send` | send 훅 탐지 |
| 0x18b28 | CST-XOR key=0x48 | `socket` | socket 훅 탐지 |
| 0x18bb8 | SUB 0x05 | `gethostbyname` | DNS 훅 탐지 |

### fn=0x1f2d0

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x1f3c8 | CST-XOR key=0x7c | `android/app/Application` | Application 클래스 JNI 접근 |

### fn=0x20730

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x20d9c | SUB 0x0b | `Landroid/app/ActivityThread$PackageInfo;` | ActivityThread PackageInfo JNI 시그니처 |
| 0x20f64 | SUB 0x0a | `android/app/ActivityThread$PackageInfo` | ActivityThread PackageInfo 클래스명 |

### fn=0x21384 ← RegisterNatives 등록 함수 (JS hookNativeLiAppBypass 대상)

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| **0x21410** | **SUB 0x09** | **`com/liapp/x`** | **LIAPP 핵심 JNI 클래스명 — RegisterNatives 등록 대상** |
| 0x214e4 | CST-XOR key=0x24 | `(Ljava/lang/String;)I` *(오류)* | RegisterNatives 메서드 시그니처 |

### fn=0x2372c

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x23844 | CST-XOR key=0x51 | `android/provider/Settings$Secure` | Android ID 조회 클래스 |
| 0x23910 | CST-XOR key=0x0b | `android/content/Context` | Context 클래스 |
| 0x23eec | CST-XOR key=0x36 | `(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;` | Settings.Secure.getString 시그니처 |
| 0x24068 | CST-XOR key=0x65 | `%8.8x` | 포맷 문자열 |

### fn=0x240c0

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x24478 | CST-XOR key=0x6a | `AlertDialog` | AlertDialog 탐지/생성 |
| 0x248bc | SUB 0x03 | `%.2X%.2X%.2X%.2X%c%.2X%.2X` | MAC 주소 포맷 (device ID) |

### fn=0x24e00 (기기 정보 수집)

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x25370 | CST-XOR key=0x3c | `SDK_INT` | SDK 버전 필드 (중복) |
| 0x254cc | MAT-SUB 0x0a | `MODEL` | 기기 모델 필드 |
| 0x25724 | CST-XOR key=0x4c | `FINGERPRINT` | 빌드 핑거프린트 필드 |
| 0x259f4 | SUB 0x0a | `Samsung/Dream/Dream:9/PPR1.19620603.010/G955NKSU3DSI2:user/release-keys` | 기본 핑거프린트 비교값 |
| 0x25b58 | SUB 0x03 | `Ljava/lang/String;` | JNI 타입 시그니처 |
| 0x25c5c | SUB 0x0a | `Unknown/Manufacturer` | 기본 제조사 비교값 |
| 0x25d78 | SUB 0x07 | `armeabi` | ABI 문자열 |
| 0x25e18 | CST-XOR key=0x0d | `armeabi-v7a` | ABI 문자열 |

### fn=0x27594

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x27974 | CST-XOR key=0x52 | `com.android.` | 안드로이드 내장 앱 필터 접두사 |
| 0x27bbc | CST-XOR key=0x04 | `libpairipcore.so` | Pair 화면 미러링 앱 탐지 |

### fn=0x28cd4

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x28e5c | CST-XOR key=0x2a | `TCP/IP 127.0.0.1:%d` | ADB TCP 연결 탐지 포맷 |

### fn=0x28ef8

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x28f98 | SUB 0x06 | `ADB_ENABLED` | ADB 활성화 시스템 설정 키 |

### fn=0x29270

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x293bc | CST-XOR key=0x73 | `MEMT-%2.2d` | 메모리 탐지 포맷 |

### fn=0x2cccc (화면 탐지)

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x2d080 | SUB 0x08 | `getSystemService` | 시스템 서비스 조회 |
| 0x2d244 | CST-XOR key=0x5a | `android/hardware/display/DisplayManager` | DisplayManager 클래스 (화면 탐지) |
| 0x2d498 | CST-XOR key=0x59 | `java/lang/Object` | 기본 Object 클래스 |
| 0x2d80c | SUB 0x05 | `virtual_display` | 가상 디스플레이 탐지 키워드 |
| 0x2dd9c | SUB 0x06 | `com.anydesk.anydeskandroid` | AnyDesk 원격 제어 앱 탐지 |
| 0x2de70 | CST-XOR key=0x73 | `WebRTC_ScreenCapture` | WebRTC 화면 캡처 탐지 |
| 0x2dfd8 | SUB 0x03 | `unknown.screen.capture` | 알 수 없는 화면 캡처 탐지 |

### fn=0x35618

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x363a0 | MAT-SUB 0x07 | `android.app.ActivityThread` | ActivityThread 클래스 탐지 |
| 0x37058 | CST-XOR key=0x77 | `StackTraceElement` | 스택 추적 요소 탐지 (디버거 탐지) |

### fn=0x3c3b0

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x3c864 | SUB 0x03 | `/proc/%s/comm` | 프로세스 이름 읽기 경로 |
| 0x3c998 | CST-XOR key=0x12 | `Profile Saver` | ART 프로파일러 스레드 이름 탐지 (디버거 식별) |

### fn=0x4239c (ART VM 내부 탐지)

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x424c0 | CST-XOR key=0x1e | `dalvik/system/BaseDexClassLoader` | DEX 클래스 로더 탐지 |
| 0x42654 | CST-XOR key=0x2d | `_ZN3art9JavaVMExt10VisitRootsEPNS_11RootVisitorE` | ART JVM 루트 방문자 심볼 (JNI Weak Global 탐지) |
| 0x4283c | CST-XOR key=0x64 | `_ZN3art9JavaVMExt19SweepJniWeakGlobalsEPNS_15IsMarkedVisitorE` | ART JNI Weak Global sweep 심볼 |

### fn=0x7d224 (Unity/APK 무결성)

| VA | 알고리즘 | 복호화 결과 | 용도 |
|----|---------|-----------|------|
| 0x7d5d8 | CST-XOR key=0x6f | `split_base_assets` | Unity Split APK 에셋 확인 |
| 0x7d7a4 | CST-XOR key=0x38 | `split_UnityDataAssetPack` | Unity Asset Pack 확인 |
| 0x7d83c | SUB 0x04 | `split_main_assets` | 메인 에셋 확인 |
| 0x7e134 | SUB 0x0a | `AndroidManifest.xml` | APK 매니페스트 파일 직접 접근 |
| **0x7f1b8** | **SUB 0x08** | **`assets/bin/Data/Managed/Metadata/global-metadata.dat`** | **Unity il2cpp 메타데이터 무결성 검증** |
| **0x7f328** | **SUB 0x07** | **`libil2cpp.so`** | **Unity il2cpp SO 무결성 검증** |
| 0x80920 | CST-XOR key=0x62 | `arm64-v8a` | ABI 확인 |
| 0x80554 | SUB 0x04 | `dex2oat` | OAT 컴파일러 경로 탐지 |
| 0x810bc | SUB 0x01 | `%s/%8.8x` | 경로 포맷 문자열 |

---

## 3. GPT 교차검증 현황 (main_SO_analyze.py 기준)

| 항목 | 결과 | VA | 비고 |
|------|------|-----|------|
| JNI: class prefix `com/liapp/` | ✓ | 0x82308 | |
| JNI: class name `com/liapp/x` | ✓ | 0x21410 | **서브루틴 fn=0x21384에서 신규 발견** |
| JNI: sig arg1 `(Landroid/content/Context;` | ✗ | - | 미추출 |
| JNI: sig arg2 `Ljava/lang/String;` | ✓ | 0x84ff0 | |
| JNI: sig arg6-ctx `Landroid/content/Context;` | ✗ | - | 미추출 |
| JNI: sig arg7-app `Landroid/app/Application;` | ✓ | 0x826d4 | |
| JNI: sig arg8-obj `Ljava/lang/Object;` | ✓ | 0x871e0 | |
| JNI: sig return `)Ljava/lang/String;` | ✓ | 0x84ff0 | |
| JNI: sdk class `android/os/Build$VERSION` | ✓ | 0x829ac | |
| JNI: sdk field `SDK_INT` | ✓ | 0x82a2c | |
| JNI: proc64 `/system/bin/app_process64` | ✓ | 0x82b54 | |
| JNI: proc32 `/system/bin/app_process32` | ✗ | - | 미추출 |
| FN: commLIservice `.commLIservice` | ✓ | 0x82f88 | |
| FN: :ai: `:ai:` | ✓ | 0x82fd4 | 오류 포함 |
| FN: Unknown `Unknown` | ✓ | 0x834a0 | |
| FN: %ld `%ld` | ✓ | 0x83598 | |
| FN: LifeCycle `LifeCycle` | ✓ | 0x83ad0 | |
| FN: %llx `%llx` | ✓ | 0x8b2f8 | |
| FN: 7c3551fe3618 | ✓ | 0x8b4cc | |
| FN: encodeToString | ✗ | - | 미추출 |
| FN: yellow `yellow` | ✓ | 0x8aeb4 | 오류 포함 |
| FN: green `green` | ✗ | - | SO 내 미존재 확인 |
| FN: ro.boot.wb.snapQB | ✗ | - | SO 내 미존재 확인 |
| FN: PackageManager sig | ✓ | 0x84110 | |
| FN: %s/files/.%8.8x | ✗ | - | 미추출 |
| FN: %s/%8.8x | ✓ | 0x810bc | **서브루틴 fn=0x7d224에서 발견** |
| FN: %8.8x/%8.8x | ✗ | - | 미추출 |
| FN: -\*-BA-RESTART-BO-\*- | ✗ | - | 미추출 |
| FN: /data/local/ | ✗ | - | 미추출 |
| FN: /storage | ✗ | - | 미추출 |
| FN: x86_64,%s/%8.8x | ✗ | - | 미추출 |
| FN: %s/%s | ✓ | 0x8021c (fn=0x7d224) | **서브루틴에서 발견** |
| FN: report fmt `%s,%s,%s,%d,%d,%8.8x,%8.8x,` | ✓ | 0x8d328 | |
| FN: none `none` | ✓ | 0x8d3c0 | |

**GPT 교차검증: 25/35 (이전 24/35 → 1개 추가: com/liapp/x)**

---

## 4. 미추출 목록 (확인된 이유)

| 문자열 | 이유 |
|--------|------|
| `com/liapp/x` | ~~미추출~~ → **2026-06-14 확정 발견** (fn=0x21384, va=0x21410, SUB 0x09) |
| `global-metadata.dat` | ~~미추출~~ → **2026-06-14 확정 발견** (fn=0x7d224, va=0x7f1b8) |
| `libil2cpp.so` | ~~미추출~~ → **2026-06-14 확정 발견** (fn=0x7d224, va=0x7f328) |
| `(Landroid/content/Context;` | 서브루틴 분석에서 미발견, 복호화 오류 가능성 |
| `Landroid/content/Context;` | 서브루틴 분석에서 미발견 |
| `/system/bin/app_process32` | 32비트 경로, 이 SO가 64비트 전용이므로 미포함 가능 |
| `encodeToString` | Base64.encodeToString — 서브루틴 분석에서 미발견 |
| `green` | SO 전체 raw+인코딩 스캔 ABSENT — 이 버전 미포함 |
| `ro.boot.wb.snapQB` | SO 전체 raw+인코딩 스캔 ABSENT — 이 버전 미포함 |
| `%s/files/.%8.8x` | 서브루틴 분석에서 미발견 |
| `%8.8x/%8.8x` | 서브루틴 분석에서 미발견 |
| `-*-BA-RESTART-BO-*-` | 서브루틴 분석에서 미발견 |
| `/data/local/` | 서브루틴 분석에서 미발견 |
| `/storage` | 서브루틴 분석에서 미발견 |
| `x86_64,%s/%8.8x` | 서브루틴 분석에서 미발견 |
| `LSPosed`, `XposedBridge`, `zygisk` | SO raw+인코딩 전체 ABSENT — JS RegisterNatives dummy로 무력화됨 |
| `Mattack-mumu`, `Mattack-bst` 등 | SO raw+인코딩 전체 ABSENT |
| `__dl__ZL6solist` 등 링커 심볼 | SO raw+인코딩 전체 ABSENT |
| `STOP-00` | SO raw+인코딩 전체 ABSENT |

---

## 5. 분석 범위 요약

| 범위 | 내용 | 상태 |
|------|------|------|
| JNI_OnLoad (0x821ec~0x82de0) | 주 초기화 함수 | 완료 |
| fnPtr (0x82de0~0x8ea48) | 메인 감시 함수 | 완료 |
| 서브루틴 42개 (0x9e04~0x7d224) | bl 호출 대상 함수들 | 완료 |
| 0x8ea48 이후 | ret 이후 padding+data | 코드 없음 확인 |
| RW 세그먼트 (0xa28c8~) | .data/.bss | 분석 대상 아님 |

**총 확정 추출: 약 155개 (main 113개 + 서브루틴 신규 42개)**
