.class final Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EndingPromotionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/promotion/EndingPromotionManager;->showEndingPromotions(Landroid/app/Activity;Lcom/kakaogame/KGResultCallback;)V
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
    c = "com.kakaogame.promotion.EndingPromotionManager$showEndingPromotions$1"
    f = "EndingPromotionManager.kt"
    i = {
        0x1
    }
    l = {
        0x28,
        0x31
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
.method constructor <init>(Landroid/app/Activity;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/kakaogame/ui/CustomProgressDialog;",
            ">;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->$progress:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->$callback:Lcom/kakaogame/KGResultCallback;

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

    new-instance p1, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;

    iget-object v0, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->$progress:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->$callback:Lcom/kakaogame/KGResultCallback;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;-><init>(Landroid/app/Activity;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 399
    iget v1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/kakaogame/KGResult;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

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

    .line 409
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1$1;

    iget-object v5, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->$progress:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->$activity:Landroid/app/Activity;

    invoke-direct {v1, v5, v6, v4}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->label:I

    invoke-static {p1, v1, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 449
    :cond_3
    :goto_0
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager;->isAuthorized()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 459
    sget-object p1, Lcom/kakaogame/promotion/KGPromotionData;->Companion:Lcom/kakaogame/promotion/KGPromotionData$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/promotion/KGPromotionData$Companion;->loadEndingPromotion()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 479
    :cond_4
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xbba

    invoke-virtual {p1, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 499
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1$2;

    iget-object v5, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->$progress:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3, v5, v4}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->label:I

    invoke-static {v1, v3, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p1

    .line 539
    :goto_2
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 549
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/kakaogame/promotion/KGPromotionData;

    .line 569
    :cond_6
    sget-object p1, Lcom/kakaogame/promotion/EndingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/EndingPromotionManager;

    iget-object v0, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->$activity:Landroid/app/Activity;

    new-instance v1, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1$3;

    iget-object v2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1;->$callback:Lcom/kakaogame/KGResultCallback;

    invoke-direct {v1, v2}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotions$1$3;-><init>(Lcom/kakaogame/KGResultCallback;)V

    check-cast v1, Lcom/kakaogame/KGResultCallback;

    invoke-static {p1, v0, v4, v1}, Lcom/kakaogame/promotion/EndingPromotionManager;->access$showEndingPromotionPopup(Lcom/kakaogame/promotion/EndingPromotionManager;Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/KGResultCallback;)V

    .line 619
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
