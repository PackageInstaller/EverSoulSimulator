.class public final Lcom/kakaogame/session/WebSocketManager;
.super Ljava/lang/Object;
.source "WebSocketManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;,
        Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0002#$B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u0003J\u0010\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000eJ\u0006\u0010\u0016\u001a\u00020\u0010J\u001e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ \u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0016\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0018\u0010 \u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0016\u0010!\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\"\u001a\u00020\u0010R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0018\u00010\u000cR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0013\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0015\u00a8\u0006%"
    }
    d2 = {
        "Lcom/kakaogame/session/WebSocketManager;",
        "",
        "serverUrl",
        "",
        "serverCategory",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "TAG",
        "lock",
        "webSocket",
        "Lcom/kakaogame/session/websocket/WebSocketClient;",
        "webSocketListener",
        "Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;",
        "websocketEventListener",
        "Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;",
        "setSessionUrl",
        "",
        "setWebsocketListener",
        "listener",
        "isConnected",
        "",
        "()Z",
        "disconnect",
        "connect",
        "Lcom/kakaogame/server/KeyBaseResult;",
        "Lcom/kakaogame/server/ServerResult;",
        "request",
        "Lcom/kakaogame/server/ServerRequest;",
        "timeout",
        "",
        "connectInternal",
        "send",
        "sendInternal",
        "sendWithoutResponse",
        "ping",
        "WebSocketListenerImpl",
        "WebSocketEventListener",
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

.field private final lock:Ljava/lang/Object;

.field private final serverCategory:Ljava/lang/String;

.field private serverUrl:Ljava/lang/String;

.field private webSocket:Lcom/kakaogame/session/websocket/WebSocketClient;

.field private webSocketListener:Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;

.field private websocketEventListener:Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    invoke-static {p1}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    const v0, -0x4516f9df

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d038790

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x543695c2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    iput-object v0, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    .line 299
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kakaogame/session/WebSocketManager;->lock:Ljava/lang/Object;

    .line 3109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    .line 3119
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x225a9e36

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3129
    iput-object p1, p0, Lcom/kakaogame/session/WebSocketManager;->serverUrl:Ljava/lang/String;

    .line 3139
    iput-object p2, p0, Lcom/kakaogame/session/WebSocketManager;->serverCategory:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getLock$p(Lcom/kakaogame/session/WebSocketManager;)Ljava/lang/Object;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/kakaogame/session/WebSocketManager;->lock:Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getTAG$p(Lcom/kakaogame/session/WebSocketManager;)Ljava/lang/String;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getWebSocket$p(Lcom/kakaogame/session/WebSocketManager;)Lcom/kakaogame/session/websocket/WebSocketClient;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/kakaogame/session/WebSocketManager;->webSocket:Lcom/kakaogame/session/websocket/WebSocketClient;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getWebSocketListener$p(Lcom/kakaogame/session/WebSocketManager;)Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/kakaogame/session/WebSocketManager;->webSocketListener:Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getWebsocketEventListener$p(Lcom/kakaogame/session/WebSocketManager;)Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/kakaogame/session/WebSocketManager;->websocketEventListener:Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setWebSocket$p(Lcom/kakaogame/session/WebSocketManager;Lcom/kakaogame/session/websocket/WebSocketClient;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/kakaogame/session/WebSocketManager;->webSocket:Lcom/kakaogame/session/websocket/WebSocketClient;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setWebSocketListener$p(Lcom/kakaogame/session/WebSocketManager;Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/kakaogame/session/WebSocketManager;->webSocketListener:Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final connectInternal(Lcom/kakaogame/server/ServerRequest;J)Lcom/kakaogame/server/KeyBaseResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/server/ServerRequest;",
            "J)",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Lcom/kakaogame/server/ServerResult;",
            ">;"
        }
    .end annotation

    .line 909
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    const v2, 0x6d038d90

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-static {p1}, Lcom/kakaogame/session/SessionUtil;->getConnectParameter(Lcom/kakaogame/server/ServerRequest;)Ljava/lang/String;

    move-result-object v0

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kakaogame/session/WebSocketManager;->serverUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 939
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v2, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x336d3403

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    sget-object v1, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v1

    .line 959
    new-instance v2, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;

    iget-object v3, p0, Lcom/kakaogame/session/WebSocketManager;->serverCategory:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v1}, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;-><init>(Lcom/kakaogame/session/WebSocketManager;Ljava/lang/String;Lcom/kakaogame/util/MutexLock;)V

    iput-object v2, p0, Lcom/kakaogame/session/WebSocketManager;->webSocketListener:Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;

    .line 969
    new-instance v2, Lcom/kakaogame/session/websocket/WebSocketClient;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    const v3, -0x451e3d67

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kakaogame/session/WebSocketManager;->webSocketListener:Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/kakaogame/session/websocket/WebSocketClient$Listener;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/kakaogame/session/websocket/WebSocketClient;-><init>(Ljava/net/URI;Lcom/kakaogame/session/websocket/WebSocketClient$Listener;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/kakaogame/session/WebSocketManager;->webSocket:Lcom/kakaogame/session/websocket/WebSocketClient;

    .line 979
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 989
    new-instance v2, Lcom/kakaogame/session/SyncServerRequest;

    iget-object v3, p0, Lcom/kakaogame/session/WebSocketManager;->webSocketListener:Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, p1, v3}, Lcom/kakaogame/session/SyncServerRequest;-><init>(Lcom/kakaogame/server/ServerRequest;Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    .line 1009
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long p1, v2, p1

    .line 1019
    iget-object p3, p0, Lcom/kakaogame/session/WebSocketManager;->webSocket:Lcom/kakaogame/session/websocket/WebSocketClient;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/kakaogame/session/websocket/WebSocketClient;->connect()V

    .line 1029
    invoke-virtual {v1, p1, p2}, Lcom/kakaogame/util/MutexLock;->lock(J)V

    .line 1039
    invoke-virtual {v1}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/server/KeyBaseResult;

    const/16 p2, 0x7d1

    if-nez p1, :cond_1

    .line 1059
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object p3, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, -0x224d58ac

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d179617

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 1079
    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {p1, p2}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(I)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    goto :goto_0

    .line 1099
    :cond_0
    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const/16 p2, 0x7d4

    invoke-virtual {p1, p2}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(I)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    :goto_0
    return-object p1

    .line 1129
    :cond_1
    invoke-virtual {p1}, Lcom/kakaogame/server/KeyBaseResult;->isSuccess()Z

    move-result p3

    if-nez p3, :cond_2

    .line 1139
    sget-object p2, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    return-object p1

    .line 1169
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p3, v4

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/kakaogame/session/SyncServerRequest;

    .line 1179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gtz v5, :cond_4

    .line 1199
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object p3, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    const v0, 0x6d038f48

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {p1, p2}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(I)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    return-object p1

    .line 1229
    :cond_4
    invoke-virtual {p3, v0, v1}, Lcom/kakaogame/session/SyncServerRequest;->getSessionResponse(J)Lcom/kakaogame/server/ServerResult;

    move-result-object p3

    .line 1239
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x5d1fba37

    invoke-static {v6}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/kakaogame/server/ServerResult;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p3}, Lcom/kakaogame/server/ServerResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1259
    invoke-virtual {p3}, Lcom/kakaogame/server/ServerResult;->getCode()I

    move-result v0

    if-ne v0, p2, :cond_3

    .line 1269
    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p1, p3}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    return-object p1

    .line 1309
    :cond_5
    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {p1, v4, p3}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getSuccessResult(Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final sendInternal(Lcom/kakaogame/server/ServerRequest;J)Lcom/kakaogame/server/ServerResult;
    .locals 3

    .line 1569
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    const v2, -0x4516834f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager;->webSocketListener:Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;

    if-nez v0, :cond_0

    .line 1599
    sget-object p2, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const/16 p3, 0x7d4

    invoke-virtual {p2, p3}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(I)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p2

    .line 1609
    sget-object p3, Lcom/kakaogame/server/ServerResult;->Companion:Lcom/kakaogame/server/ServerResult$Companion;

    invoke-virtual {p3, p2, p1}, Lcom/kakaogame/server/ServerResult$Companion;->getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;Lcom/kakaogame/server/ServerRequest;)Lcom/kakaogame/server/ServerResult;

    move-result-object p1

    return-object p1

    .line 1629
    :cond_0
    new-instance v0, Lcom/kakaogame/session/SyncServerRequest;

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager;->webSocketListener:Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lcom/kakaogame/session/SyncServerRequest;-><init>(Lcom/kakaogame/server/ServerRequest;Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;)V

    .line 1639
    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager;->webSocket:Lcom/kakaogame/session/websocket/WebSocketClient;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/kakaogame/server/ServerRequest;->getRequestMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/kakaogame/session/websocket/WebSocketClient;->send(Ljava/lang/String;)V

    .line 1649
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/kakaogame/session/SyncServerRequest;->getSessionResponse(J)Lcom/kakaogame/server/ServerResult;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final connect(Lcom/kakaogame/server/ServerRequest;J)Lcom/kakaogame/server/KeyBaseResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/server/ServerRequest;",
            "J)",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Lcom/kakaogame/server/ServerResult;",
            ">;"
        }
    .end annotation

    const v0, 0x3365db6b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7d70ab5d    # 1.999403E37f

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x5d179617

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :try_start_1
    invoke-virtual {p0}, Lcom/kakaogame/session/WebSocketManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object p2, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    const-string p3, "connect using connection"

    invoke-virtual {p1, p2, p3}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getSuccessResult()Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    goto :goto_0

    .line 799
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/session/WebSocketManager;->connectInternal(Lcom/kakaogame/server/ServerRequest;J)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    :goto_0
    :try_start_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 839
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object p3, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p2, p3, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 849
    invoke-virtual {p0}, Lcom/kakaogame/session/WebSocketManager;->disconnect()V

    .line 859
    sget-object p2, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const/16 p3, 0x7d2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final disconnect()V
    .locals 7

    .line 549
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/session/WebSocketManager$disconnect$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/kakaogame/session/WebSocketManager$disconnect$1;-><init>(Lcom/kakaogame/session/WebSocketManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final isConnected()Z
    .locals 6

    const v0, 0x3360c6ab

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 469
    :try_start_0
    iget-object v2, p0, Lcom/kakaogame/session/WebSocketManager;->webSocket:Lcom/kakaogame/session/websocket/WebSocketClient;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/kakaogame/session/websocket/WebSocketClient;->isConnected()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 479
    :goto_0
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v4, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    :catch_0
    return v1

    .array-data 1
    .end array-data
.end method

.method public final ping()V
    .locals 4

    .line 1779
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    const v2, 0x5436ee4a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager;->webSocket:Lcom/kakaogame/session/websocket/WebSocketClient;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakaogame/session/websocket/WebSocketClient;->ping()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1819
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v2, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final send(Lcom/kakaogame/server/ServerRequest;J)Lcom/kakaogame/server/ServerResult;
    .locals 5

    const v0, 0x6d03f0d0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3365db6b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1349
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v2, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, -0x224d24ec

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kakaogame/server/ServerRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    :try_start_0
    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/session/WebSocketManager;->sendInternal(Lcom/kakaogame/server/ServerRequest;J)Lcom/kakaogame/server/ServerResult;

    move-result-object p2

    .line 1389
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v2, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    invoke-virtual {p2}, Lcom/kakaogame/server/ServerResult;->getCode()I

    move-result p3

    const/16 v0, 0x191

    if-eq p3, v0, :cond_1

    const/16 v0, 0x7d1

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 1439
    :cond_0
    invoke-virtual {p1}, Lcom/kakaogame/server/ServerRequest;->isIgnoreTimeout()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1449
    invoke-virtual {p0}, Lcom/kakaogame/session/WebSocketManager;->disconnect()V

    goto :goto_0

    .line 1419
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/session/WebSocketManager;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1479
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v1

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 1509
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object p3, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p2, p3, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1519
    sget-object p2, Lcom/kakaogame/server/ServerResult;->Companion:Lcom/kakaogame/server/ServerResult$Companion;

    sget-object p3, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const/16 v0, 0x7d2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kakaogame/server/ServerResult$Companion;->getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;)Lcom/kakaogame/server/ServerResult;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final sendWithoutResponse(Lcom/kakaogame/server/ServerRequest;J)V
    .locals 1

    const-string p2, "request"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1689
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object p3, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    const v0, -0x224d24ac

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    :try_start_0
    iget-object p2, p0, Lcom/kakaogame/session/WebSocketManager;->webSocket:Lcom/kakaogame/session/websocket/WebSocketClient;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/kakaogame/server/ServerRequest;->getRequestMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kakaogame/session/websocket/WebSocketClient;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1729
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object p3, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, p3, v0, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setSessionUrl(Ljava/lang/String;)V
    .locals 4
    invoke-static {p1}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    const v0, -0x4516f9df

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/session/WebSocketManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x6d03f368

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iput-object p1, p0, Lcom/kakaogame/session/WebSocketManager;->serverUrl:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final setWebsocketListener(Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/kakaogame/session/WebSocketManager;->websocketEventListener:Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
