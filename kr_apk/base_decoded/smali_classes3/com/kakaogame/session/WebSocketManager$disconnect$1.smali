.class final Lcom/kakaogame/session/WebSocketManager$disconnect$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebSocketManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/session/WebSocketManager;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.kakaogame.session.WebSocketManager$disconnect$1"
    f = "WebSocketManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/kakaogame/session/WebSocketManager;


# direct methods
.method constructor <init>(Lcom/kakaogame/session/WebSocketManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/session/WebSocketManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/session/WebSocketManager$disconnect$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/session/WebSocketManager$disconnect$1;->this$0:Lcom/kakaogame/session/WebSocketManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/kakaogame/session/WebSocketManager$disconnect$1;

    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$disconnect$1;->this$0:Lcom/kakaogame/session/WebSocketManager;

    invoke-direct {p1, v0, p2}, Lcom/kakaogame/session/WebSocketManager$disconnect$1;-><init>(Lcom/kakaogame/session/WebSocketManager;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/session/WebSocketManager$disconnect$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/session/WebSocketManager$disconnect$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/session/WebSocketManager$disconnect$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/session/WebSocketManager$disconnect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 549
    iget v0, p0, Lcom/kakaogame/session/WebSocketManager$disconnect$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 559
    iget-object p1, p0, Lcom/kakaogame/session/WebSocketManager$disconnect$1;->this$0:Lcom/kakaogame/session/WebSocketManager;

    invoke-static {p1}, Lcom/kakaogame/session/WebSocketManager;->access$getLock$p(Lcom/kakaogame/session/WebSocketManager;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/kakaogame/session/WebSocketManager$disconnect$1;->this$0:Lcom/kakaogame/session/WebSocketManager;

    monitor-enter p1

    .line 569
    :try_start_0
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-static {v0}, Lcom/kakaogame/session/WebSocketManager;->access$getTAG$p(Lcom/kakaogame/session/WebSocketManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "disconnect"

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 589
    :try_start_1
    invoke-virtual {v0}, Lcom/kakaogame/session/WebSocketManager;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    invoke-static {v0}, Lcom/kakaogame/session/WebSocketManager;->access$getWebSocket$p(Lcom/kakaogame/session/WebSocketManager;)Lcom/kakaogame/session/websocket/WebSocketClient;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/kakaogame/session/websocket/WebSocketClient;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Lcom/kakaogame/session/WebSocketManager;->access$setWebSocket$p(Lcom/kakaogame/session/WebSocketManager;Lcom/kakaogame/session/websocket/WebSocketClient;)V

    .line 659
    :goto_0
    invoke-static {v0, v1}, Lcom/kakaogame/session/WebSocketManager;->access$setWebSocketListener$p(Lcom/kakaogame/session/WebSocketManager;Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 629
    :try_start_3
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-static {v0}, Lcom/kakaogame/session/WebSocketManager;->access$getTAG$p(Lcom/kakaogame/session/WebSocketManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 649
    :try_start_4
    invoke-static {v0, v1}, Lcom/kakaogame/session/WebSocketManager;->access$setWebSocket$p(Lcom/kakaogame/session/WebSocketManager;Lcom/kakaogame/session/websocket/WebSocketClient;)V

    goto :goto_0

    .line 679
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 559
    monitor-exit p1

    .line 689
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 649
    :goto_2
    :try_start_5
    invoke-static {v0, v1}, Lcom/kakaogame/session/WebSocketManager;->access$setWebSocket$p(Lcom/kakaogame/session/WebSocketManager;Lcom/kakaogame/session/websocket/WebSocketClient;)V

    .line 659
    invoke-static {v0, v1}, Lcom/kakaogame/session/WebSocketManager;->access$setWebSocketListener$p(Lcom/kakaogame/session/WebSocketManager;Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 559
    monitor-exit p1

    throw v0

    .line 549
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method
