.class public final Lcom/kakaogame/gameserver/GamePresenceService;
.super Ljava/lang/Object;
.source "GamePresenceService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/gameserver/GamePresenceService$HeartBeatTask;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0013B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u000eH\u0007J\u0008\u0010\u000f\u001a\u00020\u000eH\u0007J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakaogame/gameserver/GamePresenceService;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "DEFAULT_PING_INTERVAL",
        "",
        "lock",
        "pingTask",
        "Ljava/lang/Runnable;",
        "pingTimer",
        "Lcom/kakaogame/core/TimerManager;",
        "startPing",
        "",
        "stopPing",
        "sendPing",
        "context",
        "Landroid/content/Context;",
        "HeartBeatTask",
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
.field private static final DEFAULT_PING_INTERVAL:J = 0x1d4c0L

.field public static final INSTANCE:Lcom/kakaogame/gameserver/GamePresenceService;

.field private static final TAG:Ljava/lang/String; = "GamePresenceService"

.field private static final lock:Ljava/lang/Object;

.field private static final pingTask:Ljava/lang/Runnable;

.field private static pingTimer:Lcom/kakaogame/core/TimerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/gameserver/GamePresenceService;

    invoke-direct {v0}, Lcom/kakaogame/gameserver/GamePresenceService;-><init>()V

    sput-object v0, Lcom/kakaogame/gameserver/GamePresenceService;->INSTANCE:Lcom/kakaogame/gameserver/GamePresenceService;

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kakaogame/gameserver/GamePresenceService;->lock:Ljava/lang/Object;

    .line 149
    new-instance v0, Lcom/kakaogame/gameserver/GamePresenceService$HeartBeatTask;

    invoke-direct {v0}, Lcom/kakaogame/gameserver/GamePresenceService$HeartBeatTask;-><init>()V

    check-cast v0, Ljava/lang/Runnable;

    sput-object v0, Lcom/kakaogame/gameserver/GamePresenceService;->pingTask:Ljava/lang/Runnable;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$sendPing(Lcom/kakaogame/gameserver/GamePresenceService;Landroid/content/Context;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/kakaogame/gameserver/GamePresenceService;->sendPing(Landroid/content/Context;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final sendPing(Landroid/content/Context;)V
    .locals 3

    .line 409
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x543b1542

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x2240de4c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, 0x7d7210e5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-static {}, Lcom/kakaogame/gameserver/GamePresenceService;->stopPing()V

    return-void

    .line 469
    :cond_0
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, -0x451b7e0f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/kakaogame/gameserver/GamePresenceService;->stopPing()V

    return-void

    .line 519
    :cond_1
    sget-object v0, Lcom/kakaogame/gameserver/GameSessionService;->INSTANCE:Lcom/kakaogame/gameserver/GameSessionService;

    invoke-virtual {v0}, Lcom/kakaogame/gameserver/GameSessionService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 529
    sget-object v0, Lcom/kakaogame/gameserver/GameSessionService;->INSTANCE:Lcom/kakaogame/gameserver/GameSessionService;

    invoke-virtual {v0, p1}, Lcom/kakaogame/gameserver/GameSessionService;->requestConnect(Landroid/content/Context;)Lcom/kakaogame/KGResult;

    .line 549
    :cond_2
    sget-object p1, Lcom/kakaogame/gameserver/GameSessionService;->INSTANCE:Lcom/kakaogame/gameserver/GameSessionService;

    invoke-virtual {p1}, Lcom/kakaogame/gameserver/GameSessionService;->ping()V

    .line 559
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, 0x5d12388f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final startPing()V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 189
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x2240de4c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x2240db34

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/kakaogame/gameserver/GamePresenceService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    sget-object v1, Lcom/kakaogame/gameserver/GamePresenceService;->pingTimer:Lcom/kakaogame/core/TimerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 219
    monitor-exit v0

    return-void

    .line 239
    :cond_0
    :try_start_1
    new-instance v1, Lcom/kakaogame/core/TimerManager;

    sget-object v3, Lcom/kakaogame/gameserver/GamePresenceService;->pingTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x1d4c0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/kakaogame/core/TimerManager;-><init>(Ljava/lang/Runnable;JJ)V

    sput-object v1, Lcom/kakaogame/gameserver/GamePresenceService;->pingTimer:Lcom/kakaogame/core/TimerManager;

    .line 249
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/core/TimerManager;->startTimer()V

    .line 259
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .array-data 1
    .end array-data
.end method

.method public static final stopPing()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 309
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x2240de4c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x22571b7e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/kakaogame/gameserver/GamePresenceService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_0
    sget-object v1, Lcom/kakaogame/gameserver/GamePresenceService;->pingTimer:Lcom/kakaogame/core/TimerManager;

    if-eqz v1, :cond_0

    .line 339
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/core/TimerManager;->stopTimer()V

    const/4 v1, 0x0

    .line 349
    sput-object v1, Lcom/kakaogame/gameserver/GamePresenceService;->pingTimer:Lcom/kakaogame/core/TimerManager;

    .line 369
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .array-data 1
    .end array-data
.end method
