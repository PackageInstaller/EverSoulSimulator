# 에버소울 런타임/HTTP/에셋 로드 증거 기록

작성 기준: `D:\26_project\EverSoulSimulator`

## 결론

현재 확인된 사실은 다음과 같다.

1. 앱 진입점은 `com.liapp.x` Application과 `com.kakaogame.KGUnityPlayerActivity` 런처 Activity다.
2. Unity 실행 경로는 `KGUnityPlayerActivity -> UnityPlayerActivity -> UnityPlayer -> libmain.so/NativeLoader -> initJni -> UnityMain -> nativeRender`로 확인된다.
3. `HttpService` 패치는 Unity 네이티브 로더가 아니라 KakaoGame SDK HTTP 공통 계층에 들어간다.
4. 현재 로컬 `HttpService.smali`에는 P1/P2/P5가 모두 `rewriteUrl` 호출로 교체되어 있다.
5. 복호화된 `sample/global_metadata_decrypted.bin`은 유효한 IL2CPP metadata이며 Addressables/ResourceManager/Patch 관련 심볼을 포함한다.
6. APK 리소스에는 Addressables `settings.json`, `catalog.json`, `AddressablesLink/link.xml`, 암호화 상태의 `global-metadata.dat`가 포함된다.
7. 기존 HAR/리포트에는 패치 CDN, Addressables 번들 요청, 게임 서버 진입 요청이 남아 있다.
8. 기기에 설치된 APK는 현재 로컬 `sample/sss/base_patched.apk`와 MD5가 다르다. 따라서 마지막 `VerifyError` 로그는 현재 로컬 APK가 아니라 기기에 설치된 다른 base.apk의 증거로 분리해야 한다.

## 파일 상태 증거

확인 시각 기준 파일 상태:

```text
D:\26_project\EverSoulSimulator\sample\sss\work\smali\smali_classes3\com\kakaogame\server\http\HttpService.smali    SIZE=65430      LOCAL_MTIME=2026-06-16 03:36:31
D:\26_project\EverSoulSimulator\sample\sss\base_patched.apk                                                       SIZE=137012809  LOCAL_MTIME=2026-06-16 03:37:13
D:\26_project\EverSoulSimulator\sample\sss\logcat_root_024806.txt                                                 SIZE=275912     LOCAL_MTIME=2026-06-16 02:48:06
```

기기 설치 base와 로컬 base의 해시:

```text
LOCAL_MD5=966480fe2107082ff49690b8caed18a6
REMOTE_BASE=/data/app/~~B4HMvzQghMK16LfK7-peRg==/com.kakaogames.eversoul-cP4RlBkHyZP8cWIjxRC56w==/base.apk
REMOTE_MD5SUM=89889a5c5d719b7715424fa2a93f9c46  /data/app/~~B4HMvzQghMK16LfK7-peRg==/com.kakaogames.eversoul-cP4RlBkHyZP8cWIjxRC56w==/base.apk
```

판정: 현재 로컬 `base_patched.apk`와 기기 설치 `base.apk`는 같은 파일이 아니다.

## 앱 시작점 증거

`sample/sss/work/smali/AndroidManifest.xml`

```text
64: <application ... android:name="com.liapp.x" ... android:usesCleartextTraffic="true">
80: <activity ... android:name="com.kakaogame.KGUnityPlayerActivity" ...>
115: <meta-data android:name="unityplayer.UnityActivity" android:value="true"/>
```

`sample/sss/work/smali/smali_classes4/com/liapp/x.smali`

```text
5003: .method public attachBaseContext(Landroid/content/Context;)V
5007:     const-string v0, "swappywrapper"
5009:     invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
5011:     invoke-static {p1}, Lcom/liapp/x;->ܲڮݲݮߪ(Landroid/content/Context;)V
5014:     invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

5242: .method public onCreate()V
5251:     invoke-static {}, Lcom/liapp/x;->ܲڮݲݮߪ()V
5254:     sget-object v0, Lcom/liapp/x;->ܬڱ״۳ݯ:Landroid/app/Application;
5259:     invoke-virtual {v0}, Landroid/app/Application;->onCreate()V
5263:     invoke-super {p0}, Landroid/app/Application;->onCreate()V
```

판정: Android 프로세스 시작 시 `com.liapp.x`가 먼저 로드되고, `swappywrapper` 로드와 내부 Application 위임을 수행한다.

## Unity 실행 경로 증거

`sample/sss/work/smali/smali_classes3/com/kakaogame/KGUnityPlayerActivity.smali`

```text
1: .class public Lcom/kakaogame/KGUnityPlayerActivity;
2: .super Lcom/unity3d/player/UnityPlayerActivity;
21: .method protected onCreate(Landroid/os/Bundle;)V
25:     invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V
```

`sample/sss/work/smali/smali_classes3/com/unity3d/player/UnityPlayerActivity.smali`

```text
264: .method protected onCreate(Landroid/os/Bundle;)V
298:     new-instance p1, Lcom/unity3d/player/UnityPlayer;
300:     invoke-direct {p1, p0, p0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V
302:     iput-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;
305:     invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->setContentView(Landroid/view/View;)V
310:     invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z
```

`sample/sss/work/smali/smali_classes3/com/unity3d/player/UnityPlayer.smali`

```text
703:     invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->getUnityNativeLibraryPath(Landroid/content/Context;)Ljava/lang/String;
707:     invoke-static {p2}, Lcom/unity3d/player/g0;->a(Ljava/lang/String;)V
803:     invoke-static {p2}, Lcom/unity3d/player/UnityPlayer;->loadNative(Ljava/lang/String;)Ljava/lang/String;
876:     invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->initJni(Landroid/content/Context;)V
949:     iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/U0;
951:     invoke-virtual {p1}, Ljava/lang/Thread;->start()V

1713: .method private static loadNative(Ljava/lang/String;)Ljava/lang/String;
1724:     const-string v1, "/libmain.so"
1735:     invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
1751:     const-string v1, "main"
1753:     invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
1761:     invoke-static {p0}, Lcom/unity3d/player/NativeLoader;->load(Ljava/lang/String;)Z
1767:     invoke-static {}, Lcom/unity3d/player/W0;->e()V
1776:     const-string v0, "NativeLoader.load failure, Unity libraries were not loaded."
```

`sample/sss/work/smali/smali_classes3/com/unity3d/player/U0.smali`

```text
104: .method public final run()V
107:     const-string v0, "UnityMain"
109:     invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
111:     invoke-static {}, Landroid/os/Looper;->prepare()V
119:     new-instance v2, Lcom/unity3d/player/T0;
123:     invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
127:     invoke-static {}, Landroid/os/Looper;->loop()V
```

`sample/sss/work/smali/smali_classes3/com/unity3d/player/T0.smali`

```text
160:     iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;
162:     iget-object p1, p1, Lcom/unity3d/player/U0;->i:Lcom/unity3d/player/UnityPlayer;
164:     invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mnativeRender(Lcom/unity3d/player/UnityPlayer;)Z
174:     invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mfinish(Lcom/unity3d/player/UnityPlayer;)V
```

판정: Unity 네이티브 실행 루프는 `nativeRender()`까지 정적으로 연결되어 있다.

## HttpService 패치 증거

현재 `HttpService.smali` 문자열 카운트:

```text
new-instance v1, Ljava/lang/StringBuilder;    COUNT=0
invoke-static {p1}, Lcom/kakaogame/server/http/HttpService;->rewriteUrl    COUNT=2
invoke-static {p2}, Lcom/kakaogame/server/http/HttpService;->rewriteUrl    COUNT=1
const-string v4, "http://127.0.0.1:9999/"    COUNT=1
```

`sample/sss/work/smali/smali_classes3/com/kakaogame/server/http/HttpService.smali`

```text
636:     invoke-static {p1}, Lcom/kakaogame/server/http/HttpService;->rewriteUrl(Ljava/lang/String;)Ljava/lang/String;
637:     move-result-object p1

1295:     invoke-static {p1}, Lcom/kakaogame/server/http/HttpService;->rewriteUrl(Ljava/lang/String;)Ljava/lang/String;
1296:     move-result-object p1

1800:     const/4 p1, 0x0
1802:     invoke-static {p2}, Lcom/kakaogame/server/http/HttpService;->rewriteUrl(Ljava/lang/String;)Ljava/lang/String;
1803:     move-result-object p2

2121: .method private static rewriteUrl(Ljava/lang/String;)Ljava/lang/String;
2122:     .locals 5
2124:     new-instance v0, Ljava/net/URL;
2125:     invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
2126:     invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;
2128:     invoke-virtual {v0}, Ljava/net/URL;->getPort()I
2130:     invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;
2134:     const-string v4, "http://127.0.0.1:9999/"
2137:     invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
2140:     if-eq v2, v1, :cond_rw_port
2147:     invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
2149:     invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
2151:     return-object p0
```

판정: 현재 소스 기준 P1/P2/P5는 개별 URL 빌더 블록이 아니라 공통 `rewriteUrl`로 들어간다. 이 함수는 원 URL의 host/port/file을 `http://127.0.0.1:9999/{host[:port]}{file}` 형태로 바꾼다.

## HttpService 호출자 증거

`HttpService`는 Unity 네이티브 로더가 아니라 KakaoGame SDK HTTP 공통 계층이다. 실제 호출자는 다음과 같다.

```text
AddOnManager.requestOpenApi -> HttpService.requestPOST
KGTwitterAuth.logout -> HttpService.requestPOST
KGTwitterAuth.unregister -> HttpService.requestPOST
InfodeskService.loadAppInfoList -> HttpService.requestGET
InfodeskService.loadCustomOptionsByHttp -> HttpService.requestGET
InfodeskService.loadInfodeskByHttp -> HttpService.requestGET
InfodeskService.loadGameServerMaintenance -> HttpService.requestGET
KakaoGameAPI.requestInvitationEvent -> HttpService.requestGET
KakaoGameAPI.requestInvitationEventList -> HttpService.requestGET
KakaoGameAPI.requestInvitationSender -> HttpService.requestGET
KakaoGameAPI.requestInvitationSenderList -> HttpService.requestGET
KakaoGameAPI.requestInvitationStates -> HttpService.requestGET
Tracer.sendRttUrls -> HttpService.requestGETRttCheck
GeoService.requestGeoCountry -> HttpService.requestPOST
OpenApiService.requestOpenApi -> HttpService.requestGET 또는 HttpService.request
```

`sample/sss/work/smali/smali_classes3/com/kakaogame/server/openapi/OpenApiService.smali`

```text
2021:     sget-object p2, Lcom/kakaogame/server/http/HttpService;->INSTANCE:Lcom/kakaogame/server/http/HttpService;
2029:     invoke-virtual {p4}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;
2033:     invoke-virtual {p2, p4, p1, p3, p5}, Lcom/kakaogame/server/http/HttpService;->requestGET(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/kakaogame/server/http/HttpService$HttpContentType;)Lcom/kakaogame/server/KeyBaseResult;
2041:     invoke-static {p1, p2, p3, p4, p5}, Lcom/kakaogame/server/http/HttpService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/kakaogame/server/http/HttpService$HttpContentType;)Lcom/kakaogame/server/KeyBaseResult;
```

판정: `HttpService` verifier 문제가 있으면 Unity 네이티브 로더 존재와 별개로 KakaoGame SDK 초기화/인포데스크/오픈API 단계에서 막힐 수 있다.

## 복호화 metadata 증거

`sample/global_metadata_decrypted.bin`

```text
SIZE=25980928
SHA256=dc478a98f75ff33304dea056e9f4817dd3f17f0ce197a66530ee5c01c4b14c82
MAGIC=0xFAB11BAF
VERSION=31
```

주요 심볼:

```text
AddressablesExtend    COUNT=3    OFFSETS=0x134e82,0xd08b1a,0xd3c70b
ResourceManager       COUNT=94   OFFSETS=0xbdb78,0xbdb87,0x135112,0x15e7f4,0x15e808,0x15eca2,0x2ece61,0x349c26
DownloadPatch         COUNT=2    OFFSETS=0x1351c6,0x135848
GetPatchSize          COUNT=2    OFFSETS=0x1351d4,0x1358c3
DownloadDependenciesAsync COUNT=4 OFFSETS=0x134f40,0x134fef,0x42dce9,0x42e1e6
LoadSceneAsync        COUNT=6    OFFSETS=0x9870c,0x1354e8,0x135981,0x370049,0x370091,0x3700ca
PatchProcessor        COUNT=6    OFFSETS=0x135152,0x135165,0x13552c,0x135636,0xd255bd,0xd5d8e5
IsAssetBundleMode     COUNT=4    OFFSETS=0x135178,0x13518e,0x13554c,0x135645
Assets\Scripts\AdditionalFunction\ResourceManager\AddressablesExtend.cs COUNT=1 OFFSET=0xd3c6d9
Assets\Scripts\System\PatchManager.cs COUNT=1 OFFSET=0xd5d8a1
```

판정: 지정된 복호화 metadata는 유효한 IL2CPP metadata이고, 외부 에셋/패치/Addressables 관련 관리 코드 심볼을 포함한다.

## APK Addressables 구성 증거

`sample/sss/base_patched.apk` 내부 항목:

```text
assets/aa/settings.json                              SIZE=3911
assets/aa/catalog.json                               SIZE=41622514
assets/aa/AddressablesLink/link.xml                  SIZE=139806
assets/bin/Data/Managed/Metadata/global-metadata.dat SIZE=25978344
APK_DATA_ENTRY_COUNT=1361
APK_DATA_ENTRY_BYTES=137176675
```

APK 내부 `global-metadata.dat` 헤더:

```text
APK_METADATA_FIRST16=4c 49 4b 45 59 7f 00 00 d9 2b 01 d3 75 bf 1b 00
APK_METADATA_MAGIC=0x454B494C
APK_METADATA_VERSION=32601
```

판정: APK 내부 metadata는 raw IL2CPP `0xFAB11BAF`가 아니라 `LIKEY` 헤더다. 따라서 `sample/global_metadata_decrypted.bin`은 복호화된 분석 산출물이고, APK 내부 원본은 보호/암호화 상태다.

`assets/aa/settings.json`

```text
BUILD_TARGET=Android
SETTINGS_HASH=bb758d5955512b72f4ae785bf68b9208
ADDRESSABLES_VERSION=1.22.3
DISABLE_CATALOG_UPDATE_ON_START=True
MAX_CONCURRENT_WEB_REQUESTS=3
CATALOG_LOC[0] keys=['AddressablesMainContentCatalogRemoteHash'] internal=https://eversoul.com/catalog_eversoul.hash provider=UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider deps=[] type=System.String
CATALOG_LOC[1] keys=['AddressablesMainContentCatalogCacheHash'] internal={UnityEngine.Application.persistentDataPath}/com.unity.addressables/catalog_eversoul.hash provider=UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider deps=[] type=System.String
CATALOG_LOC[2] keys=['AddressablesMainContentCatalog'] internal={UnityEngine.AddressableAssets.Addressables.RuntimePath}/catalog.json provider=UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider deps=['AddressablesMainContentCatalogRemoteHash', 'AddressablesMainContentCatalogCacheHash'] type=UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData
```

`assets/aa/catalog.json`

```text
LOCATOR=AddressablesMainContentCatalog
BUILD_HASH=572ee194a84ea07f67fe77391615b7ef
PROVIDER_ID_COUNT=2
PROVIDER=UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider
PROVIDER=UnityEngine.ResourceManagement.ResourceProviders.AssetBundleProvider
INTERNAL_ID_COUNT=128539
HTTP_INTERNAL_COUNT=5228
HOST=eversoul.com COUNT=5228
```

원격 번들 루트 집계:

```text
story_assets_assets       2676
sound_assets_assets        785
character_assets_assets    642
ui_assets_assets           515
prefabs_assets_assets      277
scenes_scenes_assets       176
movie_assets_assets         76
envs_assets_assets          48
shaders_assets_assets       22
scriptable_assets_assets     6
```

`assets/aa/AddressablesLink/link.xml`

```text
1814: <assembly fullname="Unity.Addressables, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" preserve="all">
1815:   <type fullname="UnityEngine.AddressableAssets.Addressables" preserve="all" />
1866: <assembly fullname="Unity.ResourceManager, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" preserve="all">
1867:   <type fullname="UnityEngine.ResourceManagement.ResourceProviders.AssetBundleProvider" preserve="all" />
1868:   <type fullname="UnityEngine.ResourceManagement.ResourceProviders.AtlasSpriteProvider" preserve="all" />
1869:   <type fullname="UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider" preserve="all" />
1870:   <type fullname="UnityEngine.ResourceManagement.ResourceProviders.InstanceProvider" preserve="all" />
1871:   <type fullname="UnityEngine.ResourceManagement.ResourceProviders.SceneProvider" preserve="all" />
```

판정: APK는 Android Addressables 설정, 로컬 런타임 카탈로그, 원격 카탈로그 해시, 원격 번들 provider, IL2CPP 보존 링크를 모두 포함한다.

## 기기 설치 구성 증거

ADB 대상:

```text
D:\MuMuPlayer\nx_device\12.0\shell\adb.exe
127.0.0.1:16384
```

설치 APK 경로:

```text
package:/data/app/~~B4HMvzQghMK16LfK7-peRg==/com.kakaogames.eversoul-cP4RlBkHyZP8cWIjxRC56w==/base.apk
package:/data/app/~~B4HMvzQghMK16LfK7-peRg==/com.kakaogames.eversoul-cP4RlBkHyZP8cWIjxRC56w==/split_config.arm64_v8a.apk
```

설치 패키지 정보:

```text
codePath=/data/app/~~B4HMvzQghMK16LfK7-peRg==/com.kakaogames.eversoul-cP4RlBkHyZP8cWIjxRC56w==
resourcePath=/data/app/~~B4HMvzQghMK16LfK7-peRg==/com.kakaogames.eversoul-cP4RlBkHyZP8cWIjxRC56w==
legacyNativeLibraryDir=/data/app/~~B4HMvzQghMK16LfK7-peRg==/com.kakaogames.eversoul-cP4RlBkHyZP8cWIjxRC56w==/lib
primaryCpuAbi=arm64-v8a
versionCode=1506190 minSdk=24 targetSdk=36
versionName=1.34.101
```

설치 디렉터리:

```text
base.apk                 137012643 bytes  2026-06-16 02:38
split_config.arm64_v8a.apk 53634342 bytes 2026-06-15 20:36
lib/
```

설치 native library:

```text
lib/arm64/lib_burst_generated.so
lib/arm64/libcawwyayy.so
lib/arm64/libcrashlytics-common.so
lib/arm64/libcrashlytics-handler.so
lib/arm64/libcrashlytics-trampoline.so
lib/arm64/libcrashlytics.so
lib/arm64/libdatastore_shared_counter.so
lib/arm64/libFirebaseCppApp-12_10_1.so
lib/arm64/libFirebaseCppCrashlytics.so
lib/arm64/libil2cpp.so
lib/arm64/libmain.so
lib/arm64/libswappywrapper.so
lib/arm64/libunity.so
```

판정: 기기 설치 상태는 base + arm64 split 구조이며 Unity/IL2CPP 실행에 필요한 native library가 설치 디렉터리에 존재한다.

## 기존 런타임 트래픽 증거

`sample/analysis/05_har_traffic/url_esoul_kakao.txt`

```text
300: URL: https://openapi-zinny3.game.kakao.com/service/v3/log/writeSdkBasicLog
301: URL: https://openapi-zinny3.game.kakao.com/service/v3/util/country/get
302: URL: https://openapi-zinny3.game.kakao.com/service/v4/device/accessToken/create
303: URL: https://patch.esoul.kakaogames.com
304: URL: https://patch.esoul.kakaogames.com/Live/1.34.101/Android/catalog_eversoul.hash
305: URL: https://patch.esoul.kakaogames.com/Live/1.34.101/Android/story_assets_assets/bundles/story/main/102/01_addon_d31f0db7566c8b0ed3e44762399e5cdc.bundle
306: URL: https://patch.esoul.kakaogames.com/Live/1.34.101/Android/story_assets_assets/bundles/story/main/102/07_addon_kr_4c0e87033c08a9b5f5674a0d22ff1882.bundle
307: URL: https://patch.esoul.kakaogames.com/Live/1.34.101/Android/story_assets_assets/bundles/story/tower/clara/01_addon_kr_8b58d4392f6fc102f63c7e904e6a9917.bundle
308: URL: https://patch.esoul.kakaogames.com/Live/1.34.101/Android/story_assets_assets/bundles/story/tower/clara/02_addon_kr_c12ebf8477713fc51229b33f7d247a0a.bundle
309: URL: https://patch.esoul.kakaogames.com/Live/1.34.101/Table/const_data_version.json
310: URL: https://patch.esoul.kakaogames.com/Live/1.34.101/Table/data_4725.zip
```

`sample/report/04_patch_cdn.txt`

```text
373: "번들 로드 요청 /ui_assets_assets/bundles/ui/prefabs/profilecustom_b09517c096a064a95f9ff9f5f8f621ce.bundle"
379: "번들 로드 요청 /ui_assets_assets/bundles/ui/textures/souls/gaia_c539a15fc7b17a798ec18cee33a17ae4.bundle"
385: "번들 로드 요청 /ui_assets_assets/bundles/ui/textures/souls/npcdarkknightraid_7c2d64754d500a4c0538ac8bd615cadb.bundle"
391: "번들 로드 요청 /ui_assets_assets/bundles/ui/textures/souls/pluto_e997373c41198f21ffc36a471805e706.bundle"
397: "번들 로드 요청 /ui_assets_assets/bundles/ui/textures/souls/phares_ab554cfea187c7f7e8d6a8689322aed5.bundle"
403: "번들 로드 요청 /ui_assets_assets/bundles/ui/textures/souls/behemoth_3d781b2a460ad648f001c447e71c1cb3.bundle"
409: "번들 로드 요청 /ui_assets_assets/bundles/ui/textures/souls/kayrin_ee162b0ee56e56eeb6c81cc30499b1b7.bundle"
415: "번들 로드 요청 /story_assets_assets/bundles/story/love/petra/07_210f48d3c9ae991908a7f2ac10dd9602.bundle"
421: "번들 로드 요청 /story_assets_assets/bundles/story/main/100/01_a1c46b6c9e1d86b4ebae12bac8a03723.bundle"
3259: "번들 로드 요청 /ui_assets_assets/bundles/ui/prefabs/eventpanel/panelquest.prefab_f61801cfdfa58443fe852caf6d3c7e7a.bundle"
3265: "번들 로드 요청 /ui_assets_assets/bundles/ui/textures/souls/seeha_bc55b05433e22d124a1f2cf928c05994.bundle"
```

`sample/report/02_game_server.txt`

```text
4: 총 5835 건
7:   [727] POST live-sea.esoul.kakaogames.com:1739/AutoHuntOpen
8:   [322] POST live-sea.esoul.kakaogames.com:1739/FormationSave
9:   [304] POST live-sea.esoul.kakaogames.com:1739/BattleStart
10:  [268] POST live-sea.esoul.kakaogames.com:1739/DungeonInfoUpdate
11:  [257] POST live-sea.esoul.kakaogames.com:1739/NewMailCnt
12:  [257] POST live-sea.esoul.kakaogames.com:1739/LobbyRefresh
13:  [230] POST live-sea.esoul.kakaogames.com:1739/ContentClearDeckSave
14:  [230] POST live-sea.esoul.kakaogames.com:1739/StageClear
15:  [230] POST live-sea.esoul.kakaogames.com:1739/BattleSave
16:  [230] POST live-sea.esoul.kakaogames.com:1739/StageEnter
```

판정: 기존 캡처에서는 패치 CDN, Addressables 번들 요청, 테이블 zip, 게임 서버의 로비/전투/스테이지 흐름까지 관측되어 있다.

## 마지막 설치 실행 차단 증거

`sample/sss/logcat_root_024806.txt`

```text
1132: Libs loaded from  : lib/arm64
1133: Strip Engine Code : true
1135: Caused by: java.lang.VerifyError: Verifier rejected class com.kakaogame.server.http.HttpService: com.kakaogame.server.KeyBaseResult com.kakaogame.server.http.HttpService.request(...) failed to verify: [0x13B] register v1 has type Precise Reference: java.lang.StringBuilder but expected Precise Reference: java.lang.String
1136: com.kakaogame.server.KeyBaseResult com.kakaogame.server.http.HttpService.requestGET(...) failed to verify: [0x107] register v1 has type Precise Reference: java.lang.StringBuilder but expected Precise Reference: java.lang.String (declaration of 'com.kakaogame.server.http.HttpService' appears in /data/app/.../base.apk!classes3.dex)
1137: at com.kakaogame.server.http.HttpService.requestPOST(Unknown Source:0)
1138: at com.kakaogame.server.geo.GeoService.requestGeoCountry(GeoService.kt:509)
1139: at com.kakaogame.core.LocaleManager.requestGeoCountryCode(LocaleManager.kt:2429)
1140: at com.kakaogame.core.CoreImpl.loadAppInfos(CoreImpl.kt:3859)
1141: at com.kakaogame.KGSession$loadAppInfos$1.invokeSuspend(KGSession.kt:1339)
```

판정:

1. 마지막 설치 실행 로그는 `lib/arm64` 로드 단계 이후 KakaoGame SDK의 `GeoService.requestGeoCountry -> CoreImpl.loadAppInfos -> KGSession.loadAppInfos` 흐름에서 `HttpService` verifier로 차단된 증거다.
2. 이 로그의 설치 base MD5는 `89889a5c5d719b7715424fa2a93f9c46`이고, 현재 로컬 `base_patched.apk` MD5는 `966480fe2107082ff49690b8caed18a6`이다.
3. 따라서 이 로그는 현재 로컬 APK가 정상인지 실패인지 확정하는 증거가 아니라, 직전 설치 APK의 실패 증거다.

## 최종 판정

확정된 증거:

1. Android 시작점, 보호 Application, Unity Activity, UnityPlayer, native loader, UnityMain/nativeRender 경로가 정적으로 확인됐다.
2. 현재 로컬 `HttpService.smali`는 P1/P2/P5가 `rewriteUrl`로 교체되어 있고 `v1` StringBuilder 생성은 없다.
3. `HttpService`는 Unity 로더가 아니라 KakaoGame SDK HTTP 공통 계층이며, 인포데스크/오픈API/지오/로그/카카오 API 호출에서 사용된다.
4. 복호화 metadata는 유효한 IL2CPP metadata이고 Addressables/ResourceManager/Patch 관련 심볼과 원본 스크립트 경로를 포함한다.
5. APK 리소스는 Addressables 설정, 카탈로그, provider, link.xml 보존 선언, 암호화 metadata를 포함한다.
6. 설치된 패키지는 base + arm64 split 구조이며 Unity/IL2CPP native library가 설치되어 있다.
7. 기존 트래픽 리포트는 패치 CDN, 번들 요청, 테이블 다운로드, 게임 서버 진입을 증명한다.

아직 확정하면 안 되는 부분:

1. 현재 로컬 `base_patched.apk`가 기기에 설치되어 실행된 증거는 없다. 설치된 base와 로컬 base의 MD5가 다르다.
2. 현재 로컬 `rewriteUrl` 패치가 포함된 APK의 fresh runtime 성공 로그는 아직 없다.
3. 따라서 “현재 로컬 APK가 Unity/Addressables까지 정상 실행 완료”라고 확정하려면 현재 로컬 APK를 설치한 뒤 새 로그에서 `VerifyError` 부재와 Unity/Addressables 진행을 별도로 확인해야 한다.
