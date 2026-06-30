.class final Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EndingPromotionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->handleClick()V
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
    c = "com.kakaogame.promotion.EndingPromotionManager$EndingPopupDialog$handleClick$1$1"
    f = "EndingPromotionManager.kt"
    i = {}
    l = {
        0x83
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $applyClick:Z

.field final synthetic $progress:Lcom/kakaogame/ui/CustomProgressDialog;

.field final synthetic $promotion:Lcom/kakaogame/promotion/KGPromotionData;

.field label:I

.field final synthetic this$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;


# direct methods
.method constructor <init>(ZLcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/ui/CustomProgressDialog;Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/kakaogame/promotion/KGPromotionData;",
            "Lcom/kakaogame/ui/CustomProgressDialog;",
            "Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->$applyClick:Z

    iput-object p2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    iput-object p3, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    iput-object p4, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->this$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;

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

    new-instance p1, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;

    iget-boolean v1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->$applyClick:Z

    iget-object v2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    iget-object v3, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    iget-object v4, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->this$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;-><init>(ZLcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/ui/CustomProgressDialog;Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1259
    iget v1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    .line 1269
    iget-boolean p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->$applyClick:Z

    if-eqz p1, :cond_2

    .line 1279
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    iget-object v1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    invoke-virtual {v1}, Lcom/kakaogame/promotion/KGPromotionData;->apply()Lcom/kakaogame/KGResult;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 1299
    :cond_2
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    move-object v6, p1

    .line 1319
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;

    iget-boolean v4, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->$applyClick:Z

    iget-object v5, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    iget-object v7, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    iget-object v8, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->this$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1$1;-><init>(ZLcom/kakaogame/ui/CustomProgressDialog;Lcom/kakaogame/KGResult;Lcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 1459
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
