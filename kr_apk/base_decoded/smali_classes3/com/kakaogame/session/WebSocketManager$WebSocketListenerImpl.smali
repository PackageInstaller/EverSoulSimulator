.class public final Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;
.super Ljava/lang/Object;
.source "WebSocketManager.kt"

# interfaces
.implements Lcom/kakaogame/session/websocket/WebSocketClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/session/WebSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WebSocketListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebSocketManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketManager.kt\ncom/kakaogame/session/WebSocketManager$WebSocketListenerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,315:1\n1#2:316\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u000e2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0003H\u0016J\u0018\u0010\u0019\u001a\u00020\u00112\u000e\u0010\u001a\u001a\n\u0018\u00010\u001bj\u0004\u0018\u0001`\u001cH\u0016J\u0006\u0010\u001d\u001a\u00020\u0011J\u000e\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u000fJ\u000e\u0010 \u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u000fJ\u0012\u0010!\u001a\u00020\u00112\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0002R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;",
        "Lcom/kakaogame/session/websocket/WebSocketClient$Listener;",
        "serverCategory",
        "",
        "lock",
        "Lcom/kakaogame/util/MutexLock;",
        "Lcom/kakaogame/server/KeyBaseResult;",
        "Ljava/lang/Void;",
        "<init>",
        "(Lcom/kakaogame/session/WebSocketManager;Ljava/lang/String;Lcom/kakaogame/util/MutexLock;)V",
        "TAG",
        "connectLock",
        "syncRequestMap",
        "",
        "",
        "Lcom/kakaogame/session/SyncServerRequest;",
        "onConnect",
        "",
        "onMessage",
        "message",
        "data",
        "",
        "onDisconnect",
        "code",
        "reason",
        "onError",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "clearRequests",
        "addRequest",
        "request",
        "removeRequest",
        "handleResponse",
        "response",
        "Lcom/kakaogame/server/ServerResponse;",
        "common-kakaogames_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private final connectLock:Lcom/kakaogame/util/MutexLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/util/MutexLock<",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final syncRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/kakaogame/session/SyncServerRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kakaogame/session/WebSocketManager;


# direct methods
.method public constructor <init>(Lcom/kakaogame/session/WebSocketManager;Ljava/lang/String;Lcom/kakaogame/util/MutexLock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakaogame/util/MutexLock<",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    const v0, 0x6d038790

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7d7f9a75

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1859
    iput-object p1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->this$0:Lcom/kakaogame/session/WebSocketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "WebSocketListenerImpl"

    .line 1879
    iput-object p1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->TAG:Ljava/lang/String;

    .line 1899
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->syncRequestMap:Ljava/util/Map;

    .line 2989
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->TAG:Ljava/lang/String;

    .line 2999
    iput-object p3, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->connectLock:Lcom/kakaogame/util/MutexLock;

    return-void

    .array-data 1
    .end array-data
.end method

.method private final handleResponse(Lcom/kakaogame/server/ServerResponse;)V
    .locals 8

    const v0, 0x225a932e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    return-void

    .line 2819
    :cond_0
    invoke-virtual {p1}, Lcom/kakaogame/server/ServerResponse;->getRequestUri()Ljava/lang/String;

    move-result-object v1

    .line 2829
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v3, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7d7f9b45

    invoke-static {v5}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    iget-object v2, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->syncRequestMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->this$0:Lcom/kakaogame/session/WebSocketManager;

    monitor-enter v2

    .line 2849
    :try_start_0
    invoke-virtual {p1}, Lcom/kakaogame/server/ServerResponse;->getTransactionNo()I

    move-result v4

    .line 2859
    iget-object v5, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->syncRequestMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kakaogame/session/SyncServerRequest;

    if-eqz v5, :cond_1

    .line 2869
    invoke-virtual {v5}, Lcom/kakaogame/session/SyncServerRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v1, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2879
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->syncRequestMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2889
    invoke-virtual {v5, p1}, Lcom/kakaogame/session/SyncServerRequest;->setSessionResponse(Lcom/kakaogame/server/ServerResponse;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 2909
    :cond_1
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v5, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2929
    invoke-static {v3}, Lcom/kakaogame/session/WebSocketManager;->access$getWebsocketEventListener$p(Lcom/kakaogame/session/WebSocketManager;)Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;->onServerMessage(Lcom/kakaogame/server/ServerResponse;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2839
    :cond_2
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final addRequest(Lcom/kakaogame/session/SyncServerRequest;)V
    .locals 3

    const v0, 0x3365db6b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2709
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->syncRequestMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->syncRequestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kakaogame/session/SyncServerRequest;->getTransactionNo()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/session/SyncServerRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public final clearRequests()V
    .locals 4

    .line 2619
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->syncRequestMap:Ljava/util/Map;

    monitor-enter v0

    .line 2629
    :try_start_0
    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->syncRequestMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/session/SyncServerRequest;

    const/4 v3, 0x0

    .line 2639
    invoke-virtual {v2, v3}, Lcom/kakaogame/session/SyncServerRequest;->setSessionResponse(Lcom/kakaogame/server/ServerResponse;)V

    goto :goto_0

    .line 2659
    :cond_0
    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->syncRequestMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2669
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2619
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .array-data 1
    .end array-data
.end method

.method public onConnect()V
    .locals 4

    .line 1919
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->TAG:Ljava/lang/String;

    const v2, 0x22571a4e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->this$0:Lcom/kakaogame/session/WebSocketManager;

    invoke-static {v0}, Lcom/kakaogame/session/WebSocketManager;->access$getWebsocketEventListener$p(Lcom/kakaogame/session/WebSocketManager;)Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;->onConnect()V

    .line 1949
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->connectLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock;->isLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1959
    sget-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getSuccessResult()Lcom/kakaogame/server/KeyBaseResult;

    move-result-object v0

    .line 1969
    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->connectLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v1, v0}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 1979
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->connectLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2009
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v3, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->TAG:Ljava/lang/String;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onDisconnect(ILjava/lang/String;)V
    .locals 4

    .line 2239
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x5436961a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x5d179617

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->this$0:Lcom/kakaogame/session/WebSocketManager;

    invoke-static {v0}, Lcom/kakaogame/session/WebSocketManager;->access$getWebsocketEventListener$p(Lcom/kakaogame/session/WebSocketManager;)Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;->onDisconnect()V

    .line 2269
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->connectLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock;->isLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2279
    sget-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    .line 2289
    iget-object p2, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->connectLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p2, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 2299
    iget-object p1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->connectLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->unlock()V

    .line 2319
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->clearRequests()V

    .line 2329
    iget-object p1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->this$0:Lcom/kakaogame/session/WebSocketManager;

    invoke-static {p1}, Lcom/kakaogame/session/WebSocketManager;->access$getLock$p(Lcom/kakaogame/session/WebSocketManager;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->this$0:Lcom/kakaogame/session/WebSocketManager;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2339
    :try_start_1
    invoke-static {p2}, Lcom/kakaogame/session/WebSocketManager;->access$getWebSocketListener$p(Lcom/kakaogame/session/WebSocketManager;)Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;

    move-result-object v0

    if-ne v0, p0, :cond_2

    const/4 v0, 0x0

    .line 2349
    invoke-static {p2, v0}, Lcom/kakaogame/session/WebSocketManager;->access$setWebSocket$p(Lcom/kakaogame/session/WebSocketManager;Lcom/kakaogame/session/websocket/WebSocketClient;)V

    .line 2359
    invoke-static {p2, v0}, Lcom/kakaogame/session/WebSocketManager;->access$setWebSocketListener$p(Lcom/kakaogame/session/WebSocketManager;Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;)V

    .line 2379
    :cond_2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2329
    :try_start_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 2399
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->TAG:Ljava/lang/String;

    const v1, -0x451b7cd7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, v0, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 2449
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x6d0a9dd8

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/kakaogame/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2469
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->this$0:Lcom/kakaogame/session/WebSocketManager;

    invoke-static {v0}, Lcom/kakaogame/session/WebSocketManager;->access$getWebSocket$p(Lcom/kakaogame/session/WebSocketManager;)Lcom/kakaogame/session/websocket/WebSocketClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->this$0:Lcom/kakaogame/session/WebSocketManager;

    invoke-static {v0}, Lcom/kakaogame/session/WebSocketManager;->access$getWebSocket$p(Lcom/kakaogame/session/WebSocketManager;)Lcom/kakaogame/session/websocket/WebSocketClient;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakaogame/session/websocket/WebSocketClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2479
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->this$0:Lcom/kakaogame/session/WebSocketManager;

    invoke-virtual {v0}, Lcom/kakaogame/session/WebSocketManager;->disconnect()V

    .line 2499
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->connectLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock;->isLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2509
    sget-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    .line 2519
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->connectLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 2529
    iget-object p1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->connectLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->unlock()V

    .line 2549
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->clearRequests()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2569
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->TAG:Ljava/lang/String;

    const v2, 0x7d7f95b5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 4

    .line 2059
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, -0x224d5c34

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    :try_start_0
    sget-object v0, Lcom/kakaogame/server/ServerResponse;->Companion:Lcom/kakaogame/server/ServerResponse$Companion;

    invoke-virtual {v0, p1}, Lcom/kakaogame/server/ServerResponse$Companion;->getResponse(Ljava/lang/String;)Lcom/kakaogame/server/ServerResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2099
    invoke-direct {p0, p1}, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->handleResponse(Lcom/kakaogame/server/ServerResponse;)V

    goto :goto_0

    .line 2119
    :cond_0
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onMessage(String) : server response is null"

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2149
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->TAG:Ljava/lang/String;

    const v2, 0x5d1fbcaf

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onMessage([B)V
    .locals 4

    .line 2199
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x225a9f86

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final removeRequest(Lcom/kakaogame/session/SyncServerRequest;)V
    .locals 2

    const v0, 0x3365db6b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2749
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->syncRequestMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->syncRequestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kakaogame/session/SyncServerRequest;->getTransactionNo()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/session/SyncServerRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .array-data 1
    .end array-data
.end method
