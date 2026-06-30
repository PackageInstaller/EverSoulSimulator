.class final Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KGTwitterAuth.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/idp/KGTwitterAuth;->activityResultOnIdpLogin(IILandroid/content/Intent;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.kakaogame.idp.KGTwitterAuth$activityResultOnIdpLogin$1"
    f = "KGTwitterAuth.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/kakaogame/KGResult<",
            "Ltwitter4j/auth/AccessToken;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $data:Landroid/content/Intent;

.field label:I

.field final synthetic this$0:Lcom/kakaogame/idp/KGTwitterAuth;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lkotlin/jvm/functions/Function1;Lcom/kakaogame/idp/KGTwitterAuth;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ltwitter4j/auth/AccessToken;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/kakaogame/idp/KGTwitterAuth;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;->$data:Landroid/content/Intent;

    iput-object p2, p0, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;->this$0:Lcom/kakaogame/idp/KGTwitterAuth;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;

    iget-object v0, p0, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;->$data:Landroid/content/Intent;

    iget-object v1, p0, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;->this$0:Lcom/kakaogame/idp/KGTwitterAuth;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;-><init>(Landroid/content/Intent;Lkotlin/jvm/functions/Function1;Lcom/kakaogame/idp/KGTwitterAuth;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 3279
    iget v0, p0, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3289
    iget-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;->$data:Landroid/content/Intent;

    const/16 v0, 0xfaa

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;->this$0:Lcom/kakaogame/idp/KGTwitterAuth;

    const/4 v2, 0x0

    .line 3309
    :try_start_0
    invoke-static {v1}, Lcom/kakaogame/idp/KGTwitterAuth;->access$getTwitter$p(Lcom/kakaogame/idp/KGTwitterAuth;)Ltwitter4j/Twitter;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/kakaogame/idp/KGTwitterAuth;->access$getRequestToken$p(Lcom/kakaogame/idp/KGTwitterAuth;)Ltwitter4j/auth/RequestToken;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "oauth_verifier"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v1, p1}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object p1
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3329
    invoke-virtual {p1}, Ltwitter4j/TwitterException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 3379
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    if-nez p1, :cond_2

    .line 3389
    :cond_1
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_4

    .line 3399
    :cond_3
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 3419
    :cond_4
    iget-object v0, p0, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3429
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 3279
    :cond_5
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
