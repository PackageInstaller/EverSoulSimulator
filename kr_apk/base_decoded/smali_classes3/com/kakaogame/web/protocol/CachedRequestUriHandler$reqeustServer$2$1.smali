.class final Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CachedRequestUriHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->reqeustServer(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.kakaogame.web.protocol.CachedRequestUriHandler$reqeustServer$2$1"
    f = "CachedRequestUriHandler.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $uri:Ljava/lang/String;

.field final synthetic $webUri:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lcom/kakaogame/web/protocol/CachedRequestUriHandler;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/net/Uri;Lcom/kakaogame/web/protocol/CachedRequestUriHandler;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/kakaogame/web/protocol/CachedRequestUriHandler;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->$uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->$webUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->this$0:Lcom/kakaogame/web/protocol/CachedRequestUriHandler;

    iput-object p4, p0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->$cont:Lkotlin/coroutines/Continuation;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;

    iget-object v1, p0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->$uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->$webUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->this$0:Lcom/kakaogame/web/protocol/CachedRequestUriHandler;

    iget-object v4, p0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->$cont:Lkotlin/coroutines/Continuation;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;-><init>(Ljava/lang/String;Landroid/net/Uri;Lcom/kakaogame/web/protocol/CachedRequestUriHandler;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 629
    iget v0, p0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 639
    new-instance p1, Lcom/kakaogame/server/ServerRequest;

    iget-object v0, p0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->$uri:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/kakaogame/server/ServerRequest;-><init>(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->$webUri:Landroid/net/Uri;

    const v1, 0x7d778c15

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 659
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 669
    invoke-static {v0}, Lcom/kakaogame/util/json/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7d711d75

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/kakaogame/util/json/JSONObject;

    .line 679
    invoke-virtual {v0}, Lcom/kakaogame/util/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 689
    invoke-virtual {v0, v3}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/kakaogame/server/ServerRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 729
    invoke-static {p1, v1, v0, v2}, Lcom/kakaogame/server/ServerService;->requestServer$default(Lcom/kakaogame/server/ServerRequest;IILjava/lang/Object;)Lcom/kakaogame/server/ServerResult;

    move-result-object p1

    .line 749
    invoke-virtual {p1}, Lcom/kakaogame/server/ServerResult;->getResponse()Lcom/kakaogame/server/ServerResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/kakaogame/server/ServerResponse;->getResult()Lcom/kakaogame/server/KeyBaseResult;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/kakaogame/server/ServerResult;->getResponse()Lcom/kakaogame/server/ServerResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/kakaogame/server/ServerResponse;->getBody()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    goto/16 :goto_3

    .line 769
    :cond_4
    invoke-virtual {p1}, Lcom/kakaogame/server/ServerResult;->getResponse()Lcom/kakaogame/server/ServerResponse;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakaogame/server/ServerResponse;->getBody()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-static {}, Lcom/kakaogame/server/ServerService;->isUseSession()Z

    move-result v1

    if-nez v1, :cond_5

    .line 809
    iget-object v0, p0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->this$0:Lcom/kakaogame/web/protocol/CachedRequestUriHandler;

    .line 819
    invoke-virtual {p1}, Lcom/kakaogame/server/ServerResult;->getResponse()Lcom/kakaogame/server/ServerResponse;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/server/ServerResponse;->getResult()Lcom/kakaogame/server/KeyBaseResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result v1

    .line 829
    invoke-virtual {p1}, Lcom/kakaogame/server/ServerResult;->getResponse()Lcom/kakaogame/server/ServerResponse;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/kakaogame/server/ServerResponse;->getResult()Lcom/kakaogame/server/KeyBaseResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/server/KeyBaseResult;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 839
    invoke-virtual {p1}, Lcom/kakaogame/server/ServerResult;->getResponse()Lcom/kakaogame/server/ServerResponse;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/kakaogame/server/ServerResponse;->getBody()Lcom/kakaogame/util/json/JSONObject;

    move-result-object p1

    .line 809
    invoke-static {v0, v1, v2, p1}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->access$makeResponseString(Lcom/kakaogame/web/protocol/CachedRequestUriHandler;ILjava/lang/String;Lcom/kakaogame/util/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 869
    :cond_5
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x54379252

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, -0x224c585c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    new-instance p1, Lcom/kakaogame/util/json/JSONArray;

    invoke-direct {p1}, Lcom/kakaogame/util/json/JSONArray;-><init>()V

    .line 889
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 899
    invoke-virtual {p1, v0}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 909
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x7d7e92bd

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kakaogame/util/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-static {}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->access$getRequestedUriCache$cp()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->$webUri:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/kakaogame/util/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 749
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->this$0:Lcom/kakaogame/web/protocol/CachedRequestUriHandler;

    new-instance v0, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {v0}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    const/16 v1, 0x7d3

    const v2, 0x5d1ebb37

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v0}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;->access$makeResponseString(Lcom/kakaogame/web/protocol/CachedRequestUriHandler;ILjava/lang/String;Lcom/kakaogame/util/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 959
    :goto_4
    iget-object p1, p0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler$reqeustServer$2$1;->$cont:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 969
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 629
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method
