.class public final Lcom/kakaogame/infodesk/InfodeskService;
.super Ljava/lang/Object;
.source "InfodeskService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/infodesk/InfodeskService$Settings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001#B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0007J\u0018\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0010\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000cH\u0007J(\u0010\u0012\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u00130\u000c2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u0007H\u0007J \u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000c2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0005J\"\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c2\u0010\u0010\u0019\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u001aH\u0002J \u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000c2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005H\u0007J(\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001f2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u0002J\u001e\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J&\u0010!\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u0007H\u0002J\u0016\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/kakaogame/infodesk/InfodeskService;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "configuration",
        "Lcom/kakaogame/config/Configuration;",
        "initialize",
        "",
        "config",
        "loadInfodeskByHttp",
        "Lcom/kakaogame/KGResult;",
        "Lcom/kakaogame/infodesk/InfodeskData;",
        "activity",
        "Landroid/app/Activity;",
        "loadCustomOptionsByHttp",
        "Lcom/kakaogame/util/json/JSONObject;",
        "loadAppInfoList",
        "",
        "context",
        "Landroid/content/Context;",
        "loadGameServerMaintenance",
        "gameServerId",
        "handleGetInfodeskResult",
        "result",
        "Lcom/kakaogame/server/KeyBaseResult;",
        "createUploadUrl",
        "folderKey",
        "fileName",
        "getGameMaintenanceParamMap",
        "",
        "getInfodeskParamMap",
        "getAppGroupParamMap",
        "getCustomOptionParamMap",
        "Settings",
        "gamesdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/kakaogame/infodesk/InfodeskService;

.field private static final TAG:Ljava/lang/String; = "InfodeskService"

.field private static configuration:Lcom/kakaogame/config/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/infodesk/InfodeskService;

    invoke-direct {v0}, Lcom/kakaogame/infodesk/InfodeskService;-><init>()V

    sput-object v0, Lcom/kakaogame/infodesk/InfodeskService;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskService;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final createUploadUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x5d1d3797

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x336fbb9b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1d3147

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x5d1d313f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2549
    :try_start_0
    new-instance v2, Lcom/kakaogame/server/ServerRequest;

    sget-object v3, Lcom/kakaogame/infodesk/InfodeskService$Settings;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskService$Settings;

    invoke-virtual {v3}, Lcom/kakaogame/infodesk/InfodeskService$Settings;->getCreateUploadUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/kakaogame/server/ServerRequest;-><init>(Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/json;charset=UTF-8"

    .line 2559
    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "appId"

    .line 2569
    sget-object v4, Lcom/kakaogame/infodesk/InfodeskService;->configuration:Lcom/kakaogame/config/Configuration;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "appSecret"

    .line 2579
    sget-object v4, Lcom/kakaogame/infodesk/InfodeskService;->configuration:Lcom/kakaogame/config/Configuration;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/kakaogame/config/Configuration;->getAppSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "playerId"

    .line 2589
    sget-object v4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "objectKey"

    .line 2599
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x2

    const/4 p1, 0x0

    const/4 v3, 0x0

    .line 2609
    invoke-static {v2, v3, p0, p1}, Lcom/kakaogame/server/openapi/OpenApiService;->requestServerApi$default(Lcom/kakaogame/server/ServerRequest;IILjava/lang/Object;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    .line 2619
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kakaogame/server/ServerResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2639
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 2659
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerResult;->getContent()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/kakaogame/util/json/JSONObject;

    const-string/jumbo p1, "url"

    invoke-virtual {p0, p1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2669
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2689
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2699
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_0
    return-object p0

    .array-data 1
    .end array-data
.end method

.method private final getAppGroupParamMap(Landroid/content/Context;Lcom/kakaogame/config/Configuration;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kakaogame/config/Configuration;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3239
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const v1, 0x5d139a87

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 3249
    invoke-virtual {p2}, Lcom/kakaogame/config/Configuration;->getAppGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x4519cf7f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 3259
    invoke-virtual {p2}, Lcom/kakaogame/config/Configuration;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x6d0d2708

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 3269
    invoke-virtual {p2}, Lcom/kakaogame/config/Configuration;->getMarket()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "sdkVer"

    const v1, -0x2241ea24

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 3279
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "os"

    .line 3289
    invoke-static {}, Lcom/kakaogame/KGSystem;->getOSName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3299
    sget-object p2, Lcom/kakaogame/core/LocaleManager;->INSTANCE:Lcom/kakaogame/core/LocaleManager;

    invoke-virtual {p2}, Lcom/kakaogame/core/LocaleManager;->getSDKLanguageCode()Ljava/lang/String;

    move-result-object p2

    const v1, 0x5439a272

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "deviceId"

    .line 3309
    invoke-static {p1}, Lcom/kakaogame/util/DeviceUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "osVer"

    .line 3319
    invoke-static {}, Lcom/kakaogame/util/VersionUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "country"

    .line 3329
    invoke-static {}, Lcom/kakaogame/KGSystem;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3349
    :try_start_0
    invoke-static {p1}, Lcom/kakaogame/util/DeviceUtil;->getWhiteKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 3359
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string/jumbo p2, "whiteKey"

    .line 3369
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3399
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x33620763

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, 0x5d1d3797

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    :cond_0
    :goto_0
    sget-object p1, Lcom/kakaogame/infodesk/InfodeskService$Settings;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskService$Settings;

    invoke-virtual {p1}, Lcom/kakaogame/infodesk/InfodeskService$Settings;->getGetInfodeskParamMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final getCustomOptionParamMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3469
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 3479
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskService;->configuration:Lcom/kakaogame/config/Configuration;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7197d5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3489
    sget-object v1, Lcom/kakaogame/core/LocaleManager;->INSTANCE:Lcom/kakaogame/core/LocaleManager;

    invoke-virtual {v1}, Lcom/kakaogame/core/LocaleManager;->getSDKLanguageCode()Ljava/lang/String;

    move-result-object v1

    const v2, 0x5439a272

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3499
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskService$Settings;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskService$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskService$Settings;->getGetInfodeskParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final getGameMaintenanceParamMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2749
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 2759
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskService;->configuration:Lcom/kakaogame/config/Configuration;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7197d5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2769
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskService;->configuration:Lcom/kakaogame/config/Configuration;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration;->getMarket()Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0d2708

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2779
    sget-object v1, Lcom/kakaogame/core/LocaleManager;->INSTANCE:Lcom/kakaogame/core/LocaleManager;

    invoke-virtual {v1}, Lcom/kakaogame/core/LocaleManager;->getSDKLanguageCode()Ljava/lang/String;

    move-result-object v1

    const v2, 0x5439a272

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2255ab56

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 2789
    invoke-static {p1}, Lcom/kakaogame/util/DeviceUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2799
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    const v1, 0x22562036

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 2809
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2839
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/kakaogame/util/DeviceUtil;->getWhiteKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 2849
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string/jumbo p2, "whiteKey"

    .line 2859
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2889
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x33620763

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, 0x5d1d3797

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final getInfodeskParamMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2949
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 2959
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskService;->configuration:Lcom/kakaogame/config/Configuration;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7197d5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2969
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskService;->configuration:Lcom/kakaogame/config/Configuration;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    const v2, -0x4519cf7f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2979
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskService;->configuration:Lcom/kakaogame/config/Configuration;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration;->getMarket()Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0d2708

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2989
    sget-object v1, Lcom/kakaogame/manager/SdkManager;->INSTANCE:Lcom/kakaogame/manager/SdkManager;

    invoke-virtual {v1}, Lcom/kakaogame/manager/SdkManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    const v2, 0x2255a8c6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x5d111d47

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 2999
    invoke-static {}, Lcom/kakaogame/KGSystem;->getOSName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3009
    sget-object v1, Lcom/kakaogame/core/LocaleManager;->INSTANCE:Lcom/kakaogame/core/LocaleManager;

    invoke-virtual {v1}, Lcom/kakaogame/core/LocaleManager;->getSDKLanguageCode()Ljava/lang/String;

    move-result-object v1

    const v2, 0x5439a272

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2255ab56

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 3019
    invoke-static {p1}, Lcom/kakaogame/util/DeviceUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x4519cd27

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 3029
    invoke-static {}, Lcom/kakaogame/util/VersionUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7d70a025    # 1.999039E37f

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 3039
    invoke-static {}, Lcom/kakaogame/KGSystem;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3069
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->isGetFirstInfodesk()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, -0x22412e2c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3079
    :cond_0
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/kakaogame/infodesk/SdkState;->AFTER_LOGIN:Lcom/kakaogame/infodesk/SdkState;

    goto :goto_0

    .line 3089
    :cond_1
    sget-object v1, Lcom/kakaogame/infodesk/SdkState;->BEFORE_LOGIN:Lcom/kakaogame/infodesk/SdkState;

    :goto_0
    const v2, 0x7d7d1805

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3119
    :try_start_0
    invoke-static {p1}, Lcom/kakaogame/util/DeviceUtil;->getWhiteKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 3129
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "whiteKey"

    .line 3139
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3169
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x33620763

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v2, 0x5d1d3797

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3189
    :cond_2
    :goto_1
    sget-object p1, Lcom/kakaogame/infodesk/InfodeskService$Settings;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskService$Settings;

    invoke-virtual {p1}, Lcom/kakaogame/infodesk/InfodeskService$Settings;->getGetInfodeskParamMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final handleGetInfodeskResult(Lcom/kakaogame/server/KeyBaseResult;)Lcom/kakaogame/KGResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Lcom/kakaogame/util/json/JSONObject;",
            ">;)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/infodesk/InfodeskData;",
            ">;"
        }
    .end annotation

    .line 2379
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d7d19b5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1d3797

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2399
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x7d1

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 2419
    :cond_0
    invoke-virtual {p1}, Lcom/kakaogame/server/KeyBaseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2429
    invoke-virtual {p1}, Lcom/kakaogame/server/KeyBaseResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/util/json/JSONObject;

    if-nez p1, :cond_1

    .line 2439
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x7d3

    const v1, -0x224fd084

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 2449
    :cond_1
    new-instance v0, Lcom/kakaogame/infodesk/InfodeskData;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1}, Lcom/kakaogame/infodesk/InfodeskData;-><init>(Ljava/util/Map;)V

    .line 2459
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 2479
    :cond_2
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public static final initialize(Lcom/kakaogame/config/Configuration;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 429
    sput-object p0, Lcom/kakaogame/infodesk/InfodeskService;->configuration:Lcom/kakaogame/config/Configuration;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loadAppInfoList(Landroid/content/Context;Lcom/kakaogame/config/Configuration;)Lcom/kakaogame/KGResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kakaogame/config/Configuration;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/util/List<",
            "Lcom/kakaogame/util/json/JSONObject;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3362b5f3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kakaogame/config/Configuration;->getServerInfo()Lcom/kakaogame/server/ServerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/server/ServerInfo;->getInfodeskUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/infodesk/InfodeskService$Settings;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskService$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskService$Settings;->getHttpAppGroupUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1729
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskService;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskService;

    invoke-direct {v1, p0, p1}, Lcom/kakaogame/infodesk/InfodeskService;->getAppGroupParamMap(Landroid/content/Context;Lcom/kakaogame/config/Configuration;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/kakaogame/util/StringUtil;->makeRequestUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 1749
    :try_start_0
    sget-object p1, Lcom/kakaogame/server/http/HttpService;->INSTANCE:Lcom/kakaogame/server/http/HttpService;

    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/server/http/HttpService$HttpContentType;->STRING:Lcom/kakaogame/server/http/HttpService$HttpContentType;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p0, v2, v1}, Lcom/kakaogame/server/http/HttpService;->requestGET(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/kakaogame/server/http/HttpService$HttpContentType;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    .line 1759
    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1769
    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1779
    move-object p1, p0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x7d3

    if-eqz p1, :cond_0

    .line 1789
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p1, "response is null"

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 1809
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/util/json/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1819
    instance-of p1, p0, Lcom/kakaogame/util/json/JSONObject;

    if-eqz p1, :cond_4

    .line 1829
    sget-object p1, Lcom/kakaogame/server/ServerResponse;->Companion:Lcom/kakaogame/server/ServerResponse$Companion;

    check-cast p0, Lcom/kakaogame/util/json/JSONObject;

    invoke-virtual {p1, p0}, Lcom/kakaogame/server/ServerResponse$Companion;->getResult(Lcom/kakaogame/util/json/JSONObject;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    .line 1839
    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1849
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 1869
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakaogame/util/json/JSONObject;

    if-nez p0, :cond_2

    .line 1879
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p1, "content is null"

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p1, "apps"

    .line 1889
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakaogame/util/json/JSONArray;

    .line 1899
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 1909
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1919
    invoke-virtual {p0, v1}, Lcom/kakaogame/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/util/json/JSONObject;

    .line 1929
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1949
    :cond_3
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_1

    .line 1969
    :cond_4
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p1, "response is not JSONObject"

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_1

    .line 1999
    :cond_5
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 2029
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loadCustomOptionsByHttp()Lcom/kakaogame/KGResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/util/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x7d7d1ad5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d711d75

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x2250096e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 1059
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v4, 0x2258130e

    invoke-static {v4}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x5d1d3797

    invoke-static {v5}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kakaogame/infodesk/InfodeskService;->configuration:Lcom/kakaogame/config/Configuration;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/kakaogame/config/Configuration;->getServerInfo()Lcom/kakaogame/server/ServerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/server/ServerInfo;->getInfodeskUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/kakaogame/infodesk/InfodeskService$Settings;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskService$Settings;

    invoke-virtual {v4}, Lcom/kakaogame/infodesk/InfodeskService$Settings;->getHttpCustomOptionUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1079
    sget-object v4, Lcom/kakaogame/infodesk/InfodeskService;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskService;

    invoke-direct {v4}, Lcom/kakaogame/infodesk/InfodeskService;->getCustomOptionParamMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kakaogame/util/StringUtil;->makeRequestUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 1099
    :try_start_0
    sget-object v4, Lcom/kakaogame/server/http/HttpService;->INSTANCE:Lcom/kakaogame/server/http/HttpService;

    .line 1109
    sget-object v6, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v6}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1139
    sget-object v7, Lcom/kakaogame/server/http/HttpService$HttpContentType;->STRING:Lcom/kakaogame/server/http/HttpService$HttpContentType;

    const/4 v8, 0x0

    .line 1099
    invoke-virtual {v4, v6, v3, v8, v7}, Lcom/kakaogame/server/http/HttpService;->requestGET(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/kakaogame/server/http/HttpService$HttpContentType;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object v4

    .line 1149
    invoke-virtual {v4}, Lcom/kakaogame/server/KeyBaseResult;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1159
    invoke-virtual {v4}, Lcom/kakaogame/server/KeyBaseResult;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1169
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v8

    :goto_1
    const/16 v9, 0x7d3

    if-eqz v6, :cond_2

    .line 1179
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string v1, "response is null"

    invoke-virtual {v0, v9, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 1209
    :cond_2
    invoke-static {v4}, Lcom/kakaogame/util/json/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1229
    instance-of v6, v4, Lcom/kakaogame/util/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const v10, 0x54341932

    invoke-static {v10}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v6, :cond_6

    .line 1239
    :try_start_1
    move-object v6, v4

    check-cast v6, Lcom/kakaogame/util/json/JSONObject;

    invoke-virtual {v6, v2}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kakaogame/util/json/JSONObject;

    check-cast v6, Ljava/util/Map;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v7, v8

    :cond_4
    if-nez v7, :cond_6

    .line 1249
    check-cast v4, Lcom/kakaogame/util/json/JSONObject;

    invoke-virtual {v4, v2}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/kakaogame/util/json/JSONObject;

    .line 1259
    invoke-virtual {v2, v0}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kakaogame/util/json/JSONObject;

    if-eqz v4, :cond_5

    .line 1289
    sget-object v4, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v2, v0}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/kakaogame/util/json/JSONObject;

    invoke-virtual {v4, v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_2

    .line 1309
    :cond_5
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v9, v10}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_2

    .line 1359
    :cond_6
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v9, v10}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_2

    .line 1409
    :cond_7
    invoke-virtual {v4}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result v7

    .line 1439
    invoke-virtual {v4}, Lcom/kakaogame/server/KeyBaseResult;->getContent()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v1, ""

    if-eqz v0, :cond_8

    .line 1469
    :try_start_2
    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    :catch_0
    :cond_8
    move-object v9, v1

    .line 1519
    :try_start_3
    invoke-virtual {v4}, Lcom/kakaogame/server/KeyBaseResult;->getDescription()Ljava/lang/String;

    move-result-object v11

    .line 1529
    sget-object v6, Lcom/kakaogame/log/ErrorLogManager;->INSTANCE:Lcom/kakaogame/log/ErrorLogManager;

    const/4 v10, 0x0

    move-object v8, v3

    invoke-virtual/range {v6 .. v11}, Lcom/kakaogame/log/ErrorLogManager;->sendInfodeskError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1539
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v0, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1569
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v5, v2, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1589
    sget-object v6, Lcom/kakaogame/log/ErrorLogManager;->INSTANCE:Lcom/kakaogame/log/ErrorLogManager;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v7, 0xfa1

    move-object v8, v3

    move-object v10, v0

    invoke-virtual/range {v6 .. v11}, Lcom/kakaogame/log/ErrorLogManager;->sendInfodeskError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1599
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xfa1

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    :goto_2
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static final loadInfodeskByHttp(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/infodesk/InfodeskData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x54341612

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1d3797

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kakaogame/infodesk/InfodeskService;->configuration:Lcom/kakaogame/config/Configuration;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration;->getServerInfo()Lcom/kakaogame/server/ServerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/server/ServerInfo;->getInfodeskUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/infodesk/InfodeskService$Settings;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskService$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskService$Settings;->getHttpInfodeskUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskService;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskService;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/kakaogame/infodesk/InfodeskService;->getInfodeskParamMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kakaogame/util/StringUtil;->makeRequestUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 519
    :try_start_0
    sget-object v3, Lcom/kakaogame/server/http/HttpService;->INSTANCE:Lcom/kakaogame/server/http/HttpService;

    sget-object v4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/kakaogame/server/http/HttpService$HttpContentType;->STRING:Lcom/kakaogame/server/http/HttpService$HttpContentType;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v0, v6, v5}, Lcom/kakaogame/server/http/HttpService;->requestGET(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/kakaogame/server/http/HttpService$HttpContentType;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object v3

    .line 529
    invoke-virtual {v3}, Lcom/kakaogame/server/KeyBaseResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 539
    invoke-virtual {v3}, Lcom/kakaogame/server/KeyBaseResult;->getContent()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    .line 549
    move-object v4, v7

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const/16 v10, 0x7d3

    if-eqz v4, :cond_2

    .line 559
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string v1, "response is null"

    invoke-virtual {p0, v10, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 589
    :cond_2
    invoke-virtual {v3}, Lcom/kakaogame/server/KeyBaseResult;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "sig"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 599
    sget-object v4, Lcom/kakaogame/util/HmacSHA256Util;->INSTANCE:Lcom/kakaogame/util/HmacSHA256Util;

    invoke-virtual {v4, v3, v7}, Lcom/kakaogame/util/HmacSHA256Util;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 609
    invoke-static {p0}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    .line 619
    invoke-static {}, Lcom/kakaogame/util/AppUtil;->killAppProcess()V

    .line 649
    :cond_3
    invoke-static {v7}, Lcom/kakaogame/util/json/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 659
    instance-of v3, p0, Lcom/kakaogame/util/json/JSONObject;

    if-eqz v3, :cond_4

    .line 669
    sget-object v3, Lcom/kakaogame/server/ServerResponse;->Companion:Lcom/kakaogame/server/ServerResponse$Companion;

    check-cast p0, Lcom/kakaogame/util/json/JSONObject;

    invoke-virtual {v3, p0}, Lcom/kakaogame/server/ServerResponse$Companion;->getResult(Lcom/kakaogame/util/json/JSONObject;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    .line 679
    invoke-direct {v1, p0}, Lcom/kakaogame/infodesk/InfodeskService;->handleGetInfodeskResult(Lcom/kakaogame/server/KeyBaseResult;)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_2

    .line 709
    :cond_4
    sget-object v4, Lcom/kakaogame/log/ErrorLogManager;->INSTANCE:Lcom/kakaogame/log/ErrorLogManager;

    const/4 v8, 0x0

    const-string v9, "response is not JSONObject"

    const/16 v5, 0x7d3

    move-object v6, v0

    invoke-virtual/range {v4 .. v9}, Lcom/kakaogame/log/ErrorLogManager;->sendInfodeskError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 779
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string v1, "response is not JSONObject"

    invoke-virtual {p0, v10, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_2

    .line 809
    :cond_5
    invoke-virtual {v3}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result v5

    .line 839
    invoke-virtual {v3}, Lcom/kakaogame/server/KeyBaseResult;->getContent()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, ""

    if-eqz p0, :cond_6

    .line 869
    :try_start_1
    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p0

    :catch_0
    :cond_6
    move-object v7, v1

    .line 919
    :try_start_2
    invoke-virtual {v3}, Lcom/kakaogame/server/KeyBaseResult;->getDescription()Ljava/lang/String;

    move-result-object v9

    .line 929
    sget-object v4, Lcom/kakaogame/log/ErrorLogManager;->INSTANCE:Lcom/kakaogame/log/ErrorLogManager;

    const/4 v8, 0x0

    move-object v6, v0

    invoke-virtual/range {v4 .. v9}, Lcom/kakaogame/log/ErrorLogManager;->sendInfodeskError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 939
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v3, Ljava/util/Map;

    invoke-virtual {p0, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 969
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 989
    sget-object v4, Lcom/kakaogame/log/ErrorLogManager;->INSTANCE:Lcom/kakaogame/log/ErrorLogManager;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v5, 0xfa1

    move-object v6, v0

    move-object v8, p0

    invoke-virtual/range {v4 .. v9}, Lcom/kakaogame/log/ErrorLogManager;->sendInfodeskError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 999
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_2
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final loadGameServerMaintenance(Landroid/content/Context;Ljava/lang/String;)Lcom/kakaogame/KGResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/util/json/JSONObject;",
            ">;"
        }
    .end annotation

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kakaogame/infodesk/InfodeskService;->configuration:Lcom/kakaogame/config/Configuration;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration;->getServerInfo()Lcom/kakaogame/server/ServerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/server/ServerInfo;->getInfodeskUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/infodesk/InfodeskService$Settings;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskService$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskService$Settings;->getHttpGameMaintenanceUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2089
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/infodesk/InfodeskService;->getGameMaintenanceParamMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kakaogame/util/StringUtil;->makeRequestUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 2109
    :try_start_0
    sget-object p2, Lcom/kakaogame/server/http/HttpService;->INSTANCE:Lcom/kakaogame/server/http/HttpService;

    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/server/http/HttpService$HttpContentType;->STRING:Lcom/kakaogame/server/http/HttpService$HttpContentType;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, p1, v2, v1}, Lcom/kakaogame/server/http/HttpService;->requestGET(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/kakaogame/server/http/HttpService$HttpContentType;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    .line 2119
    invoke-virtual {p1}, Lcom/kakaogame/server/KeyBaseResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2129
    invoke-virtual {p1}, Lcom/kakaogame/server/KeyBaseResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2139
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    const/16 v0, 0x7d3

    if-eqz p2, :cond_2

    .line 2149
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "response is null"

    invoke-virtual {p1, v0, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 2169
    :cond_2
    invoke-static {p1}, Lcom/kakaogame/util/json/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2179
    instance-of p2, p1, Lcom/kakaogame/util/json/JSONObject;

    if-eqz p2, :cond_5

    .line 2189
    sget-object p2, Lcom/kakaogame/server/ServerResponse;->Companion:Lcom/kakaogame/server/ServerResponse$Companion;

    check-cast p1, Lcom/kakaogame/util/json/JSONObject;

    invoke-virtual {p2, p1}, Lcom/kakaogame/server/ServerResponse$Companion;->getResult(Lcom/kakaogame/util/json/JSONObject;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    .line 2199
    invoke-virtual {p1}, Lcom/kakaogame/server/KeyBaseResult;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_3

    .line 2209
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 2229
    :cond_3
    invoke-virtual {p1}, Lcom/kakaogame/server/KeyBaseResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/util/json/JSONObject;

    if-nez p1, :cond_4

    .line 2239
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "content is null"

    invoke-virtual {p1, v0, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 2249
    :cond_4
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_2

    .line 2269
    :cond_5
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "response is not JSONObject"

    invoke-virtual {p1, v0, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_2

    .line 2299
    :cond_6
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2329
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_2
    return-object p1

    .array-data 1
    .end array-data
.end method
