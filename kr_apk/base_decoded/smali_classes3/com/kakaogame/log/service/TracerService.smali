.class public final Lcom/kakaogame/log/service/TracerService;
.super Ljava/lang/Object;
.source "TracerService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/log/service/TracerService$Settings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/kakaogame/log/service/TracerService;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "count",
        "",
        "getCount",
        "()I",
        "setCount",
        "(I)V",
        "sendTrace",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "traceId",
        "trace",
        "Lcom/kakaogame/log/tracer/Trace;",
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
.field public static final INSTANCE:Lcom/kakaogame/log/service/TracerService;

.field private static final TAG:Ljava/lang/String; = "TracerService"

.field private static count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/log/service/TracerService;

    invoke-direct {v0}, Lcom/kakaogame/log/service/TracerService;-><init>()V

    sput-object v0, Lcom/kakaogame/log/service/TracerService;->INSTANCE:Lcom/kakaogame/log/service/TracerService;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 219
    sget v0, Lcom/kakaogame/log/service/TracerService;->count:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final sendTrace(Ljava/lang/String;Lcom/kakaogame/log/tracer/Trace;)Lcom/kakaogame/KGResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakaogame/log/tracer/Trace;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x2258c566

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, -0x4514a3df

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x5434cfa2

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x6d01d040

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x5434cf62

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :try_start_0
    sget v1, Lcom/kakaogame/log/service/TracerService;->count:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/kakaogame/log/service/TracerService;->count:I

    .line 329
    new-instance v1, Lcom/kakaogame/server/ServerRequest;

    sget-object v4, Lcom/kakaogame/log/service/TracerService$Settings;->INSTANCE:Lcom/kakaogame/log/service/TracerService$Settings;

    invoke-virtual {v4}, Lcom/kakaogame/log/service/TracerService$Settings;->getTracerUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/kakaogame/server/ServerRequest;-><init>(Ljava/lang/String;)V

    .line 339
    sget-object v4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v4

    .line 349
    invoke-virtual {v1, v0, p1}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "appId"

    .line 369
    invoke-virtual {v4}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "appVersion"

    .line 379
    invoke-virtual {v4}, Lcom/kakaogame/config/Configuration;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "country"

    .line 389
    invoke-static {}, Lcom/kakaogame/KGSystem;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "deviceId"

    .line 399
    invoke-static {}, Lcom/kakaogame/KGSystem;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "deviceModel"

    .line 409
    invoke-static {}, Lcom/kakaogame/KGSystem;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "language"

    .line 419
    invoke-static {}, Lcom/kakaogame/KGSystem;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "market"

    .line 429
    invoke-virtual {v4}, Lcom/kakaogame/config/Configuration;->getMarket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "network"

    .line 439
    invoke-static {}, Lcom/kakaogame/KGSystem;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "os"

    .line 449
    invoke-static {}, Lcom/kakaogame/KGSystem;->getOSName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "osVer"

    .line 459
    invoke-static {}, Lcom/kakaogame/util/VersionUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "sdkVer"

    const-string v0, "3.20.0"

    .line 469
    invoke-virtual {v1, p1, v0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telecom"

    .line 479
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/util/TelephonyUtil;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "job"

    .line 489
    invoke-virtual {p2}, Lcom/kakaogame/log/tracer/Trace;->getJob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "jobId"

    .line 499
    invoke-virtual {p2}, Lcom/kakaogame/log/tracer/Trace;->getJobId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    invoke-virtual {p2}, Lcom/kakaogame/log/tracer/Trace;->getAction()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "action"

    .line 519
    invoke-virtual {p2}, Lcom/kakaogame/log/tracer/Trace;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string p1, "startTime"

    .line 529
    invoke-virtual {p2}, Lcom/kakaogame/log/tracer/Trace;->getStartTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "duration"

    .line 539
    invoke-virtual {p2}, Lcom/kakaogame/log/tracer/Trace;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "resultCode"

    .line 549
    invoke-virtual {p2}, Lcom/kakaogame/log/tracer/Trace;->getResultCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "resultDescription"

    .line 559
    invoke-virtual {p2}, Lcom/kakaogame/log/tracer/Trace;->getResultDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "extras"

    .line 569
    invoke-virtual {p2}, Lcom/kakaogame/log/tracer/Trace;->getExtras()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    invoke-virtual {p2}, Lcom/kakaogame/log/tracer/Trace;->getRttCheckServerUrl()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-eqz v2, :cond_3

    const-string p1, "rttCheckServerUrl"

    .line 589
    invoke-virtual {p2}, Lcom/kakaogame/log/tracer/Trace;->getRttCheckServerUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 609
    :cond_3
    invoke-static {}, Lcom/kakaogame/server/session/SessionService;->isConnected()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_4

    invoke-static {v1, v0, v2, p2}, Lcom/kakaogame/server/ServerService;->requestServer$default(Lcom/kakaogame/server/ServerRequest;IILjava/lang/Object;)Lcom/kakaogame/server/ServerResult;

    move-result-object p1

    goto :goto_2

    .line 619
    :cond_4
    invoke-static {v1, v0, v2, p2}, Lcom/kakaogame/server/openapi/OpenApiService;->requestServerApi$default(Lcom/kakaogame/server/ServerRequest;IILjava/lang/Object;)Lcom/kakaogame/server/ServerResult;

    move-result-object p1

    .line 629
    :goto_2
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 649
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p2, v3, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 659
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_3
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final setCount(I)V
    .locals 0

    .line 219
    sput p1, Lcom/kakaogame/log/service/TracerService;->count:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method
