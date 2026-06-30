.class final Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GameSessionService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/gameserver/GameSessionService;->requestSessionWithoutResponse(Landroid/content/Context;Lcom/kakaogame/server/ServerRequest;)V
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
    c = "com.kakaogame.gameserver.GameSessionService$requestSessionWithoutResponse$1"
    f = "GameSessionService.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $request:Lcom/kakaogame/server/ServerRequest;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/kakaogame/server/ServerRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kakaogame/server/ServerRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;->$request:Lcom/kakaogame/server/ServerRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;

    iget-object v0, p0, Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;->$request:Lcom/kakaogame/server/ServerRequest;

    invoke-direct {p1, v0, v1, p2}, Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;-><init>(Landroid/content/Context;Lcom/kakaogame/server/ServerRequest;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2689
    iget v0, p0, Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2699
    sget-object p1, Lcom/kakaogame/util/NetworkUtil;->INSTANCE:Lcom/kakaogame/util/NetworkUtil;

    iget-object v0, p0, Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;->$context:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    const v0, -0x451b7ddf

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2709
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x225767be

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2739
    :cond_0
    sget-object p1, Lcom/kakaogame/gameserver/GameSessionService;->INSTANCE:Lcom/kakaogame/gameserver/GameSessionService;

    invoke-virtual {p1}, Lcom/kakaogame/gameserver/GameSessionService;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2749
    sget-object p1, Lcom/kakaogame/gameserver/GameSessionService;->INSTANCE:Lcom/kakaogame/gameserver/GameSessionService;

    iget-object v1, p0, Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;->$context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/kakaogame/gameserver/GameSessionService;->requestConnect(Landroid/content/Context;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 2759
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2769
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x3360cceb

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2809
    :cond_1
    iget-object p1, p0, Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;->$request:Lcom/kakaogame/server/ServerRequest;

    invoke-virtual {p1}, Lcom/kakaogame/server/ServerRequest;->getTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_2

    .line 2829
    invoke-static {}, Lcom/kakaogame/gameserver/GameSessionService;->access$getSessionTimeout$p()J

    move-result-wide v0

    .line 2849
    :cond_2
    invoke-static {}, Lcom/kakaogame/gameserver/GameSessionService;->access$getManager$p()Lcom/kakaogame/session/WebSocketManager;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/kakaogame/gameserver/GameSessionService$requestSessionWithoutResponse$1;->$request:Lcom/kakaogame/server/ServerRequest;

    invoke-virtual {p1, v2, v0, v1}, Lcom/kakaogame/session/WebSocketManager;->sendWithoutResponse(Lcom/kakaogame/server/ServerRequest;J)V

    .line 2859
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2689
    :cond_3
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
