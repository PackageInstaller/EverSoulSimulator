.class public final Lcom/kakaogame/server/session/SessionService;
.super Ljava/lang/Object;
.source "SessionService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/server/session/SessionService$OnlinePushListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSessionService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionService.kt\ncom/kakaogame/server/session/SessionService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,286:1\n1#2:287\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00011B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0012\u0010\u001a\u001a\u00020\u00172\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u0007J\u0010\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u000cH\u0007J\u0008\u0010!\u001a\u00020\u0017H\u0007J\u0016\u0010\"\u001a\u00020\u00172\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0014H\u0002J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u0008H\u0002J(\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010(0\'2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u0008H\u0007J\u0018\u0010-\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010,\u001a\u00020\u0008H\u0007J\u0010\u0010.\u001a\u00020\u00172\u0006\u0010)\u001a\u00020*H\u0007J\u0012\u0010/\u001a\u00020\u00172\u0008\u00100\u001a\u0004\u0018\u00010\u000fH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001e\u001a\u00020\u00118FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001f\u0010\u0003\u001a\u0004\u0008\u001e\u0010 \u00a8\u00062"
    }
    d2 = {
        "Lcom/kakaogame/server/session/SessionService;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "SESSION_REQUEST_URI",
        "DEFAULT_TIMEOUT",
        "",
        "manager",
        "Lcom/kakaogame/session/WebSocketManager;",
        "sessionTimeout",
        "",
        "onlinePushListenerList",
        "",
        "Lcom/kakaogame/server/session/SessionService$OnlinePushListener;",
        "connecting",
        "",
        "requestQueue",
        "Ljava/util/LinkedList;",
        "Lcom/kakaogame/util/MutexLock;",
        "queueLock",
        "initialize",
        "",
        "configuration",
        "Lcom/kakaogame/config/Configuration;",
        "setSessionUrl",
        "sessionUrl",
        "setTimeout",
        "timeout",
        "isConnected",
        "isConnected$annotations",
        "()Z",
        "disconnect",
        "addRequestQueue",
        "requestLock",
        "unLockRequestQueue",
        "resultCode",
        "requestConnect",
        "Lcom/kakaogame/KGResult;",
        "Lcom/kakaogame/server/ServerResult;",
        "request",
        "Lcom/kakaogame/server/ServerRequest;",
        "type",
        "traceJobId",
        "requestSession",
        "requestSessionWithoutResponse",
        "addOnlinePushListener",
        "listener",
        "OnlinePushListener",
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
.field private static final DEFAULT_TIMEOUT:I = 0x4e20

.field public static final INSTANCE:Lcom/kakaogame/server/session/SessionService;

.field private static final SESSION_REQUEST_URI:Ljava/lang/String; = "/session"

.field private static final TAG:Ljava/lang/String; = "SessionService"

.field private static connecting:Z

.field private static manager:Lcom/kakaogame/session/WebSocketManager;

.field private static final onlinePushListenerList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kakaogame/server/session/SessionService$OnlinePushListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final queueLock:Ljava/lang/Object;

.field private static final requestQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/kakaogame/util/MutexLock<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sessionTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/server/session/SessionService;

    invoke-direct {v0}, Lcom/kakaogame/server/session/SessionService;-><init>()V

    sput-object v0, Lcom/kakaogame/server/session/SessionService;->INSTANCE:Lcom/kakaogame/server/session/SessionService;

    const-wide/16 v0, 0x4e20

    .line 329
    sput-wide v0, Lcom/kakaogame/server/session/SessionService;->sessionTimeout:J

    .line 339
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/kakaogame/server/session/SessionService;->onlinePushListenerList:Ljava/util/Set;

    .line 359
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/kakaogame/server/session/SessionService;->requestQueue:Ljava/util/LinkedList;

    .line 369
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kakaogame/server/session/SessionService;->queueLock:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getConnecting$p()Z
    .locals 1

    .line 279
    sget-boolean v0, Lcom/kakaogame/server/session/SessionService;->connecting:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getOnlinePushListenerList$p()Ljava/util/Set;
    .locals 1

    .line 279
    sget-object v0, Lcom/kakaogame/server/session/SessionService;->onlinePushListenerList:Ljava/util/Set;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final addOnlinePushListener(Lcom/kakaogame/server/session/SessionService$OnlinePushListener;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_0

    .line 2799
    sget-object v0, Lcom/kakaogame/server/session/SessionService;->onlinePushListenerList:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private final addRequestQueue(Lcom/kakaogame/util/MutexLock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/util/MutexLock<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1189
    sget-object v0, Lcom/kakaogame/server/session/SessionService;->queueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kakaogame/server/session/SessionService;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public static final disconnect()V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1099
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x5d124857

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x224d4e2c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    :try_start_0
    sget-object v0, Lcom/kakaogame/server/session/SessionService;->manager:Lcom/kakaogame/session/WebSocketManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kakaogame/session/WebSocketManager;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1139
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final initialize(Lcom/kakaogame/config/Configuration;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x2256234e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x224d4e2c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x33655853

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kakaogame/config/Configuration;->getServerInfo()Lcom/kakaogame/server/ServerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kakaogame/server/ServerInfo;->getSessionUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const v0, 0x5436855a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 419
    new-instance v0, Lcom/kakaogame/session/WebSocketManager;

    const v1, -0x4516ef3f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kakaogame/session/WebSocketManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kakaogame/server/session/SessionService;->manager:Lcom/kakaogame/session/WebSocketManager;

    .line 429
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p0, Lcom/kakaogame/server/session/SessionService$initialize$1;

    invoke-direct {p0}, Lcom/kakaogame/server/session/SessionService$initialize$1;-><init>()V

    check-cast p0, Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;

    invoke-virtual {v0, p0}, Lcom/kakaogame/session/WebSocketManager;->setWebsocketListener(Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final isConnected()Z
    .locals 6

    const v0, -0x224d4e2c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3360c6ab

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 949
    :try_start_0
    sget-object v3, Lcom/kakaogame/server/session/SessionService;->manager:Lcom/kakaogame/session/WebSocketManager;

    if-nez v3, :cond_0

    .line 959
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v4, "[isConnected] manager is not init"

    invoke-virtual {v3, v0, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    goto :goto_0

    .line 989
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/kakaogame/session/WebSocketManager;->isConnected()Z

    move-result v3

    .line 1009
    :goto_0
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1039
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v3, v0, v4, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v2

    .array-data 1
    .end array-data
.end method

.method public static synthetic isConnected$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final declared-synchronized requestConnect(Lcom/kakaogame/server/ServerRequest;Ljava/lang/String;I)Lcom/kakaogame/KGResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/server/ServerRequest;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/server/ServerResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x336d24bb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x336d1c5b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kakaogame/server/session/SessionService;

    monitor-enter v2

    :try_start_0
    const-string v3, "request"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "type"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "SessionService"

    .line 1369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 1389
    :try_start_1
    sget-object v3, Lcom/kakaogame/server/session/SessionService;->manager:Lcom/kakaogame/session/WebSocketManager;

    if-nez v3, :cond_0

    .line 1399
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p1, "SessionService"

    const-string p2, "[requestConnect] manager is not init"

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p1, "manager is not init"

    const/16 p2, 0xbb9

    invoke-virtual {p0, p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object p0

    .line 1429
    :cond_0
    :try_start_2
    sget-object v3, Lcom/kakaogame/server/session/SessionService;->INSTANCE:Lcom/kakaogame/server/session/SessionService;

    const/4 v4, 0x1

    sput-boolean v4, Lcom/kakaogame/server/session/SessionService;->connecting:Z

    if-lez p2, :cond_1

    const-string/jumbo v4, "traceId"

    .line 1449
    sget-object v5, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {v5}, Lcom/kakaogame/log/tracer/Tracer;->getTraceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "jobId"

    .line 1459
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "job"

    .line 1469
    sget-object v5, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {v5, p2}, Lcom/kakaogame/log/tracer/Tracer;->getJobName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "deviceId"

    .line 1479
    invoke-static {}, Lcom/kakaogame/KGSystem;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1509
    :cond_1
    sget-object v4, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {v4}, Lcom/kakaogame/log/tracer/Tracer;->getRttData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string/jumbo v5, "traceId"

    .line 1519
    sget-object v6, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {v6}, Lcom/kakaogame/log/tracer/Tracer;->getTraceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v5, "xtraceInfo"

    .line 1529
    invoke-virtual {p0, v5, v4}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1549
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1559
    sget-object v0, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    invoke-virtual {v0, p1}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object p1

    .line 1569
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {p0}, Lcom/kakaogame/server/ServerRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Lcom/kakaogame/log/tracer/Tracer;->requestUri(ILjava/lang/String;)J

    move-result-wide v4

    .line 1579
    sget-object p2, Lcom/kakaogame/server/session/SessionService;->manager:Lcom/kakaogame/session/WebSocketManager;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-wide v6, Lcom/kakaogame/server/session/SessionService;->sessionTimeout:J

    invoke-virtual {p2, p0, v6, v7}, Lcom/kakaogame/session/WebSocketManager;->connect(Lcom/kakaogame/server/ServerRequest;J)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    .line 1589
    sget-object p2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/server/ServerResult;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/kakaogame/server/ServerResult;->getResponse()Lcom/kakaogame/server/ServerResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/kakaogame/server/ServerResponse;->getHeader()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v4, v5, v0}, Lcom/kakaogame/log/tracer/Tracer;->response(JLcom/kakaogame/util/json/JSONObject;)V

    .line 1599
    sput-boolean v1, Lcom/kakaogame/server/session/SessionService;->connecting:Z

    .line 1609
    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result p2

    invoke-direct {v3, p2}, Lcom/kakaogame/server/session/SessionService;->unLockRequestQueue(I)V

    .line 1619
    invoke-virtual {p1}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 1629
    sget-object p2, Lcom/kakaogame/log/APILogManager;->INSTANCE:Lcom/kakaogame/log/APILogManager;

    invoke-virtual {p1}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v3

    invoke-virtual {p2, v0, p0, v3, v4}, Lcom/kakaogame/log/APILogManager;->writeServerApiCall(Ljava/lang/String;Lcom/kakaogame/server/KeyBaseResult;J)V

    .line 1639
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getContent()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1659
    :try_start_3
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p2, "SessionService"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, p0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {p1, p2, v0, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1669
    sput-boolean v1, Lcom/kakaogame/server/session/SessionService;->connecting:Z

    .line 1679
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0xfa1

    invoke-virtual {p1, p2, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1379
    :goto_1
    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final requestSession(Lcom/kakaogame/server/ServerRequest;I)Lcom/kakaogame/server/ServerResult;
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d7197d5

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5436825a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x3365db6b

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1739
    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x5d10c0f7

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, -0x224d4e2c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :try_start_0
    sget-object v3, Lcom/kakaogame/server/session/SessionService;->manager:Lcom/kakaogame/session/WebSocketManager;

    if-nez v3, :cond_0

    .line 1769
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p1, "[requestSession] manager is not init"

    invoke-virtual {p0, v4, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    sget-object p0, Lcom/kakaogame/server/ServerResult;->Companion:Lcom/kakaogame/server/ServerResult$Companion;

    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const-string v0, "manager is not init"

    const/16 v1, 0xbb9

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kakaogame/server/ServerResult$Companion;->getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    const v3, 0x2258c566

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    if-lez p1, :cond_1

    .line 1819
    :try_start_1
    sget-object v5, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {v5}, Lcom/kakaogame/log/tracer/Tracer;->getTraceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "jobId"

    .line 1829
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "job"

    .line 1839
    sget-object v6, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {v6, p1}, Lcom/kakaogame/log/tracer/Tracer;->getJobName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "deviceId"

    .line 1849
    invoke-static {}, Lcom/kakaogame/KGSystem;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1879
    :cond_1
    sget-object v5, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {v5}, Lcom/kakaogame/log/tracer/Tracer;->getRttData()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1889
    sget-object v6, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {v6}, Lcom/kakaogame/log/tracer/Tracer;->getTraceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "xtraceInfo"

    .line 1899
    invoke-virtual {p0, v3, v5}, Lcom/kakaogame/server/ServerRequest;->putHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1929
    :cond_2
    sget-object v3, Lcom/kakaogame/server/session/SessionService;->manager:Lcom/kakaogame/session/WebSocketManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/kakaogame/session/WebSocketManager;->isConnected()Z

    move-result v3

    const-wide/16 v5, 0x0

    const/16 v7, 0xc8

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_5

    .line 1949
    sget-boolean v3, Lcom/kakaogame/server/session/SessionService;->connecting:Z

    if-eqz v3, :cond_4

    .line 1959
    sget-object v2, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v2

    .line 1969
    sget-object v3, Lcom/kakaogame/server/session/SessionService;->INSTANCE:Lcom/kakaogame/server/session/SessionService;

    invoke-direct {v3, v2}, Lcom/kakaogame/server/session/SessionService;->addRequestQueue(Lcom/kakaogame/util/MutexLock;)V

    .line 1979
    invoke-static {v2, v5, v6, v9, v8}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 1989
    invoke-virtual {v2}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v7, :cond_6

    .line 1999
    :goto_0
    sget-object p0, Lcom/kakaogame/server/ServerResult;->Companion:Lcom/kakaogame/server/ServerResult$Companion;

    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const/16 v0, 0x7d4

    invoke-virtual {p1, v0}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(I)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kakaogame/server/ServerResult$Companion;->getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    return-object p0

    .line 2029
    :cond_4
    sget-object v3, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager;->reconnectAutoLogin()Lcom/kakaogame/KGResult;

    move-result-object v3

    .line 2039
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2049
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    sget-object p0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p1

    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v8, v1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    .line 2079
    sget-object p1, Lcom/kakaogame/server/ServerResult;->Companion:Lcom/kakaogame/server/ServerResult$Companion;

    invoke-virtual {p1, p0}, Lcom/kakaogame/server/ServerResult$Companion;->getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    return-object p0

    .line 2129
    :cond_5
    sget-object v2, Lcom/kakaogame/server/session/SessionService;->INSTANCE:Lcom/kakaogame/server/session/SessionService;

    invoke-direct {v2, v7}, Lcom/kakaogame/server/session/SessionService;->unLockRequestQueue(I)V

    .line 2159
    :cond_6
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerRequest;->getTimeout()J

    move-result-wide v2

    cmp-long v5, v2, v5

    if-gtz v5, :cond_7

    .line 2179
    sget-wide v2, Lcom/kakaogame/server/session/SessionService;->sessionTimeout:J

    .line 2199
    :cond_7
    sget-object v5, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/server/ServerRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v5

    .line 2219
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerRequest;->isPlainTextBody()Z

    move-result v6

    if-nez v6, :cond_d

    .line 2229
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerRequest;->getBody()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    if-eqz v6, :cond_9

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    move v6, v7

    goto :goto_2

    :cond_9
    :goto_1
    move v6, v9

    :goto_2
    if-eqz v6, :cond_a

    .line 2239
    sget-object v6, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v6}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kakaogame/core/CoreManager;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2259
    :cond_a
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerRequest;->getBody()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_3

    :cond_b
    move v9, v7

    :cond_c
    :goto_3
    if-eqz v9, :cond_d

    .line 2269
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2309
    :cond_d
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kakaogame/server/ServerRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/core/CoreManager;->startFirebaseTrace(Ljava/lang/String;)I

    move-result v0

    .line 2319
    sget-object v1, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {p0}, Lcom/kakaogame/server/ServerRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, p1, v6}, Lcom/kakaogame/log/tracer/Tracer;->requestUri(ILjava/lang/String;)J

    move-result-wide v6

    .line 2329
    sget-object p1, Lcom/kakaogame/server/session/SessionService;->manager:Lcom/kakaogame/session/WebSocketManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0, v2, v3}, Lcom/kakaogame/session/WebSocketManager;->send(Lcom/kakaogame/server/ServerRequest;J)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    .line 2339
    sget-object p1, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {p0}, Lcom/kakaogame/server/ServerResult;->getResponse()Lcom/kakaogame/server/ServerResponse;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/kakaogame/server/ServerResponse;->getHeader()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v8

    :cond_e
    invoke-virtual {p1, v6, v7, v8}, Lcom/kakaogame/log/tracer/Tracer;->response(JLcom/kakaogame/util/json/JSONObject;)V

    if-lez v0, :cond_f

    .line 2359
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.kakaogame.server.KeyBaseResult<*>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/server/KeyBaseResult;

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/core/CoreManager;->stopFirebaseTrace(ILcom/kakaogame/server/KeyBaseResult;)V

    .line 2379
    :cond_f
    invoke-virtual {v5}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 2389
    sget-object p1, Lcom/kakaogame/log/APILogManager;->INSTANCE:Lcom/kakaogame/log/APILogManager;

    invoke-virtual {v5}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/server/KeyBaseResult;

    invoke-virtual {v5}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kakaogame/log/APILogManager;->writeServerApiCall(Ljava/lang/String;Lcom/kakaogame/server/KeyBaseResult;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 2419
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p1, v4, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2429
    sget-object p1, Lcom/kakaogame/server/ServerResult;->Companion:Lcom/kakaogame/server/ServerResult$Companion;

    sget-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/kakaogame/server/ServerResult$Companion;->getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    :goto_4
    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final requestSessionWithoutResponse(Lcom/kakaogame/server/ServerRequest;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x3365db6b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2489
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d727d2d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, -0x224d4e2c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    sget-object v0, Lcom/kakaogame/server/session/SessionService;->manager:Lcom/kakaogame/session/WebSocketManager;

    if-nez v0, :cond_0

    .line 2509
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, 0x6d039fc8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2539
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakaogame/session/WebSocketManager;->isConnected()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-nez v0, :cond_3

    .line 2549
    sget-boolean v0, Lcom/kakaogame/server/session/SessionService;->connecting:Z

    if-eqz v0, :cond_2

    .line 2559
    sget-object v0, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v0

    .line 2569
    sget-object v1, Lcom/kakaogame/server/session/SessionService;->INSTANCE:Lcom/kakaogame/server/session/SessionService;

    invoke-direct {v1, v0}, Lcom/kakaogame/server/session/SessionService;->addRequestQueue(Lcom/kakaogame/util/MutexLock;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2579
    invoke-static {v0, v3, v4, v1, v2}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 2589
    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    :goto_0
    return-void

    .line 2629
    :cond_2
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->reconnectAutoLogin()Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 2639
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2649
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v3, 0x5436812a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2699
    :cond_3
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerRequest;->getTimeout()J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-gtz v2, :cond_4

    .line 2719
    sget-wide v0, Lcom/kakaogame/server/session/SessionService;->sessionTimeout:J

    .line 2739
    :cond_4
    sget-object v2, Lcom/kakaogame/server/session/SessionService;->manager:Lcom/kakaogame/session/WebSocketManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v0, v1}, Lcom/kakaogame/session/WebSocketManager;->sendWithoutResponse(Lcom/kakaogame/server/ServerRequest;J)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final setSessionUrl(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 749
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 779
    :cond_0
    sget-object v0, Lcom/kakaogame/server/session/SessionService;->manager:Lcom/kakaogame/session/WebSocketManager;

    if-eqz v0, :cond_1

    .line 789
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/kakaogame/session/WebSocketManager;->setSessionUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 819
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Ljava/lang/Throwable;

    const v2, -0x224d4e2c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final setTimeout(J)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 879
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d727e25

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, -0x224d4e2c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    sput-wide p0, Lcom/kakaogame/server/session/SessionService;->sessionTimeout:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final unLockRequestQueue(I)V
    .locals 4

    .line 1229
    sget-object v0, Lcom/kakaogame/server/session/SessionService;->queueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1239
    :try_start_0
    sget-object v1, Lcom/kakaogame/server/session/SessionService;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1249
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "next(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/kakaogame/util/MutexLock;

    .line 1259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 1269
    invoke-virtual {v2}, Lcom/kakaogame/util/MutexLock;->unlock()V

    goto :goto_0

    .line 1289
    :cond_0
    sget-object p1, Lcom/kakaogame/server/session/SessionService;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 1309
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .array-data 1
    .end array-data
.end method
