.class public final Lcom/kakaogame/server/PresenceService;
.super Ljava/lang/Object;
.source "PresenceService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/server/PresenceService$HeartBeatTask;,
        Lcom/kakaogame/server/PresenceService$Settings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001f B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0016\u001a\u00020\u0017H\u0007J\u000e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0010J\u0008\u0010\u001a\u001a\u00020\u0017H\u0007J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0007H\u0007J\u0008\u0010\u001d\u001a\u00020\u0017H\u0002J\u0008\u0010\u001e\u001a\u00020\u0017H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\u0003\u001a\u0004\u0008\u000f\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/kakaogame/server/PresenceService;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "DEFAULT_HEART_BEAT_INTERVAL",
        "",
        "lock",
        "heartBeatTask",
        "Ljava/lang/Runnable;",
        "sequenceId",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "heartBeatTimer",
        "Lcom/kakaogame/core/TimerManager;",
        "isReconnect",
        "",
        "isReconnect$annotations",
        "()Z",
        "setReconnect",
        "(Z)V",
        "heartBeatInterval",
        "initialize",
        "",
        "setHeartbeatUri",
        "useHeartbeat",
        "startHeartbeat",
        "setHeartbeatInterval",
        "interval",
        "stopHeartbeat",
        "sendHeartBeat",
        "HeartBeatTask",
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
.field private static final DEFAULT_HEART_BEAT_INTERVAL:J = 0x1d4c0L

.field public static final INSTANCE:Lcom/kakaogame/server/PresenceService;

.field private static final TAG:Ljava/lang/String; = "PresenceService"

.field private static heartBeatInterval:J

.field private static final heartBeatTask:Ljava/lang/Runnable;

.field private static heartBeatTimer:Lcom/kakaogame/core/TimerManager;

.field private static isReconnect:Z

.field private static final lock:Ljava/lang/Object;

.field private static sequenceId:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/server/PresenceService;

    invoke-direct {v0}, Lcom/kakaogame/server/PresenceService;-><init>()V

    sput-object v0, Lcom/kakaogame/server/PresenceService;->INSTANCE:Lcom/kakaogame/server/PresenceService;

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kakaogame/server/PresenceService;->lock:Ljava/lang/Object;

    .line 219
    new-instance v0, Lcom/kakaogame/server/PresenceService$HeartBeatTask;

    invoke-direct {v0}, Lcom/kakaogame/server/PresenceService$HeartBeatTask;-><init>()V

    check-cast v0, Ljava/lang/Runnable;

    sput-object v0, Lcom/kakaogame/server/PresenceService;->heartBeatTask:Ljava/lang/Runnable;

    const-wide/32 v0, 0x1d4c0

    .line 269
    sput-wide v0, Lcom/kakaogame/server/PresenceService;->heartBeatInterval:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$sendHeartBeat(Lcom/kakaogame/server/PresenceService;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/kakaogame/server/PresenceService;->sendHeartBeat()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$stopHeartbeat(Lcom/kakaogame/server/PresenceService;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/kakaogame/server/PresenceService;->stopHeartbeat()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final initialize()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 299
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    new-instance v1, Lcom/kakaogame/server/PresenceService$initialize$1;

    invoke-direct {v1}, Lcom/kakaogame/server/PresenceService$initialize$1;-><init>()V

    check-cast v1, Lcom/kakaogame/core/CoreManager$CoreStateListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/core/CoreManager;->addCoreStateListener(Lcom/kakaogame/core/CoreManager$CoreStateListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final isReconnect()Z
    .locals 1

    .line 249
    sget-boolean v0, Lcom/kakaogame/server/PresenceService;->isReconnect:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic isReconnect$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final sendHeartBeat()V
    .locals 4

    .line 999
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    invoke-direct {p0}, Lcom/kakaogame/server/PresenceService;->stopHeartbeat()V

    return-void

    .line 1059
    :cond_0
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getServerConnectionType()Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;->https:Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;

    const v2, 0x225a5f96

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    if-ne v0, v1, :cond_1

    .line 1069
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    sget-object v1, Lcom/kakaogame/server/PresenceService$Settings;->heartbeatUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kakaogame/server/openapi/OpenApiService;->getOpenApiUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const v3, 0x7d7f5775

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1079
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d7f50ad

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1119
    :cond_1
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x6d034d10

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    new-instance v0, Lcom/kakaogame/server/ServerRequest;

    sget-object v1, Lcom/kakaogame/server/PresenceService$Settings;->heartbeatUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/kakaogame/server/ServerRequest;-><init>(Ljava/lang/String;)V

    .line 1139
    sget-object v1, Lcom/kakaogame/server/PresenceService;->sequenceId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x5d115a9f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1149
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7197d5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1159
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    const v2, -0x224509cc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x5d111d47

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-static {}, Lcom/kakaogame/KGSystem;->getOSName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x7d70a025    # 1.999039E37f

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 1179
    invoke-static {}, Lcom/kakaogame/KGSystem;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1189
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration;->getMarket()Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0d2708

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1199
    sget-wide v1, Lcom/kakaogame/server/PresenceService;->heartBeatInterval:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x6d034c98

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x33620603

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1219
    sget-object v1, Lcom/kakaogame/server/PresenceService$Settings;->INSTANCE:Lcom/kakaogame/server/PresenceService$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/server/PresenceService$Settings;->getPresenceParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/server/ServerRequest;->putAllBody(Ljava/util/Map;)V

    .line 1229
    sget-object v1, Lcom/kakaogame/server/ServerService;->INSTANCE:Lcom/kakaogame/server/ServerService;

    invoke-virtual {v1, v0}, Lcom/kakaogame/server/ServerService;->requestServerWithoutResponse(Lcom/kakaogame/server/ServerRequest;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final setHeartbeatInterval(J)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 869
    sput-wide p0, Lcom/kakaogame/server/PresenceService;->heartBeatInterval:J

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final setReconnect(Z)V
    .locals 0

    .line 249
    sput-boolean p0, Lcom/kakaogame/server/PresenceService;->isReconnect:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final startHeartbeat()V
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, -0x224d9884

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x225a5f96

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x6d034f70

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getServerConnectionType()Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;

    move-result-object v1

    .line 619
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v3, 0x225a5f96

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x6d034ef0

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 639
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x225a5f96

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543973b2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 679
    :cond_0
    sget-object v1, Lcom/kakaogame/server/PresenceService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 689
    :try_start_0
    sget-boolean v2, Lcom/kakaogame/server/PresenceService;->isReconnect:Z

    if-nez v2, :cond_2

    .line 699
    sget-object v2, Lcom/kakaogame/server/PresenceService;->heartBeatTimer:Lcom/kakaogame/core/TimerManager;

    if-eqz v2, :cond_1

    .line 709
    sget-object v2, Lcom/kakaogame/server/PresenceService;->INSTANCE:Lcom/kakaogame/server/PresenceService;

    invoke-direct {v2}, Lcom/kakaogame/server/PresenceService;->stopHeartbeat()V

    goto :goto_0

    .line 729
    :cond_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x1

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v2, Lcom/kakaogame/server/PresenceService;->sequenceId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 749
    :goto_0
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v3, "PresenceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v5, Lcom/kakaogame/server/PresenceService;->heartBeatInterval:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    new-instance v0, Lcom/kakaogame/core/TimerManager;

    sget-object v5, Lcom/kakaogame/server/PresenceService;->heartBeatTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0x0

    sget-wide v8, Lcom/kakaogame/server/PresenceService;->heartBeatInterval:J

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/kakaogame/core/TimerManager;-><init>(Ljava/lang/Runnable;JJ)V

    sput-object v0, Lcom/kakaogame/server/PresenceService;->heartBeatTimer:Lcom/kakaogame/core/TimerManager;

    .line 769
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakaogame/core/TimerManager;->startTimer()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 789
    sput-boolean v0, Lcom/kakaogame/server/PresenceService;->isReconnect:Z

    .line 809
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final stopHeartbeat()V
    .locals 3

    .line 919
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x225a5f96

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x224d9a8c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    sget-object v0, Lcom/kakaogame/server/PresenceService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 939
    :try_start_0
    sget-object v1, Lcom/kakaogame/server/PresenceService;->heartBeatTimer:Lcom/kakaogame/core/TimerManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/kakaogame/core/TimerManager;->stopTimer()V

    :cond_0
    const/4 v1, 0x0

    .line 949
    sput-object v1, Lcom/kakaogame/server/PresenceService;->heartBeatTimer:Lcom/kakaogame/core/TimerManager;

    .line 959
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final setHeartbeatUri(Z)V
    .locals 2

    .line 519
    sget-object v0, Lcom/kakaogame/server/PresenceService$Settings;->INSTANCE:Lcom/kakaogame/server/PresenceService$Settings;

    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    if-eqz p1, :cond_0

    const-string/jumbo p1, "v3/player/heartbeat"

    goto :goto_0

    :cond_0
    const-string p1, "NOTUSED"

    :goto_0
    const v1, -0x451639ef

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 519
    sput-object p1, Lcom/kakaogame/server/PresenceService$Settings;->heartbeatUri:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method
