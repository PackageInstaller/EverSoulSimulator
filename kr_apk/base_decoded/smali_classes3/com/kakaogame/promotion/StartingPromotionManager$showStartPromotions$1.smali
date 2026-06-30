.class final Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StartingPromotionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/promotion/StartingPromotionManager;->showStartPromotions(Landroid/app/Activity;Lcom/kakaogame/KGResultCallback;)V
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
    c = "com.kakaogame.promotion.StartingPromotionManager$showStartPromotions$1"
    f = "StartingPromotionManager.kt"
    i = {
        0x1
    }
    l = {
        0x35,
        0x3a
    }
    m = "invokeSuspend"
    n = {
        "result"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $callback:Lcom/kakaogame/KGResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $progress:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/kakaogame/ui/CustomProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/kakaogame/KGResultCallback;Landroid/app/Activity;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/kakaogame/ui/CustomProgressDialog;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->$callback:Lcom/kakaogame/KGResultCallback;

    iput-object p2, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->$progress:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    new-instance p1, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;

    iget-object v0, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->$callback:Lcom/kakaogame/KGResultCallback;

    iget-object v1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->$progress:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;-><init>(Lcom/kakaogame/KGResultCallback;Landroid/app/Activity;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 529
    iget v1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/kakaogame/KGResult;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 539
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1$1;

    iget-object v5, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->$progress:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->$activity:Landroid/app/Activity;

    invoke-direct {v1, v5, v6, v2}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->label:I

    invoke-static {p1, v1, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 579
    :cond_3
    :goto_0
    sget-object p1, Lcom/kakaogame/promotion/KGPromotionData;->Companion:Lcom/kakaogame/promotion/KGPromotionData$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/promotion/KGPromotionData$Companion;->loadPromotions()Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 589
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1$2;

    iget-object v6, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->$progress:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5, v6, v2}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->label:I

    invoke-static {v1, v5, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    .line 629
    :goto_1
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 639
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 649
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 659
    iget-object p1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->$callback:Lcom/kakaogame/KGResultCallback;

    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    goto :goto_3

    .line 679
    :cond_7
    sget-object v0, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    iget-object v1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->$activity:Landroid/app/Activity;

    new-instance v2, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1$3;

    iget-object v3, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->$callback:Lcom/kakaogame/KGResultCallback;

    invoke-direct {v2, v3}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1$3;-><init>(Lcom/kakaogame/KGResultCallback;)V

    check-cast v2, Lcom/kakaogame/KGResultCallback;

    invoke-static {v0, v1, p1, v2}, Lcom/kakaogame/promotion/StartingPromotionManager;->access$showStartingPromotionPopups(Lcom/kakaogame/promotion/StartingPromotionManager;Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/KGResultCallback;)V

    goto :goto_3

    .line 749
    :cond_8
    iget-object p1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotions$1;->$callback:Lcom/kakaogame/KGResultCallback;

    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 769
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method
