.class final Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StartingPromotionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/promotion/StartingPromotionManager;->showStartPromotion(Landroid/app/Activity;ILcom/kakaogame/KGResultCallback;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStartingPromotionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartingPromotionManager.kt\ncom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,256:1\n774#2:257\n865#2,2:258\n*S KotlinDebug\n*F\n+ 1 StartingPromotionManager.kt\ncom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1\n*L\n96#1:257\n96#1:258,2\n*E\n"
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
    c = "com.kakaogame.promotion.StartingPromotionManager$showStartPromotion$1"
    f = "StartingPromotionManager.kt"
    i = {
        0x1
    }
    l = {
        0x52,
        0x57
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

.field final synthetic $seq:I

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/kakaogame/KGResultCallback;Landroid/app/Activity;Lkotlin/jvm/internal/Ref$ObjectRef;ILkotlin/coroutines/Continuation;)V
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
            ">;I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$callback:Lcom/kakaogame/KGResultCallback;

    iput-object p2, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$progress:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput p4, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$seq:I

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

    new-instance p1, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;

    iget-object v1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$callback:Lcom/kakaogame/KGResultCallback;

    iget-object v2, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$progress:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget v4, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$seq:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;-><init>(Lcom/kakaogame/KGResultCallback;Landroid/app/Activity;Lkotlin/jvm/internal/Ref$ObjectRef;ILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 819
    iget v1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->L$0:Ljava/lang/Object;

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

    .line 829
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1$1;

    iget-object v5, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$progress:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$activity:Landroid/app/Activity;

    invoke-direct {v1, v5, v6, v2}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->label:I

    invoke-static {p1, v1, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 869
    :cond_3
    :goto_0
    sget-object p1, Lcom/kakaogame/promotion/KGPromotionData;->Companion:Lcom/kakaogame/promotion/KGPromotionData$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/promotion/KGPromotionData$Companion;->loadPromotions()Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 879
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1$2;

    iget-object v6, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$progress:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5, v6, v2}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->label:I

    invoke-static {v1, v5, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    .line 919
    :goto_1
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 929
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_a

    .line 939
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 969
    :cond_5
    check-cast p1, Ljava/lang/Iterable;

    iget v0, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$seq:I

    .line 2579
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 2589
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/kakaogame/promotion/KGPromotionData;

    .line 969
    invoke-virtual {v3}, Lcom/kakaogame/promotion/KGPromotionData;->getSequence()I

    move-result v3

    if-ne v0, v3, :cond_7

    move v3, v4

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_6

    .line 2589
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2599
    :cond_8
    check-cast v1, Ljava/util/List;

    .line 979
    move-object p1, v1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_9

    .line 989
    sget-object p1, Lcom/kakaogame/promotion/StartingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/StartingPromotionManager;

    iget-object v0, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$activity:Landroid/app/Activity;

    new-instance v2, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1$3;

    iget-object v3, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$callback:Lcom/kakaogame/KGResultCallback;

    invoke-direct {v2, v3}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1$3;-><init>(Lcom/kakaogame/KGResultCallback;)V

    check-cast v2, Lcom/kakaogame/KGResultCallback;

    invoke-static {p1, v0, v1, v2}, Lcom/kakaogame/promotion/StartingPromotionManager;->access$showStartingPromotionPopups(Lcom/kakaogame/promotion/StartingPromotionManager;Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/KGResultCallback;)V

    goto :goto_5

    .line 1049
    :cond_9
    iget-object p1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$callback:Lcom/kakaogame/KGResultCallback;

    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    goto :goto_5

    .line 949
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$callback:Lcom/kakaogame/KGResultCallback;

    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    goto :goto_5

    .line 1089
    :cond_b
    iget-object p1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartPromotion$1;->$callback:Lcom/kakaogame/KGResultCallback;

    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 1109
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
