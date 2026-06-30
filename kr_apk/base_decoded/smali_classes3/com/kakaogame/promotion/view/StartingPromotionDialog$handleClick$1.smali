.class final Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StartingPromotionDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/promotion/view/StartingPromotionDialog;->handleClick()V
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
    c = "com.kakaogame.promotion.view.StartingPromotionDialog$handleClick$1"
    f = "StartingPromotionDialog.kt"
    i = {}
    l = {
        0x58,
        0x64
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $progress:Lcom/kakaogame/ui/CustomProgressDialog;

.field label:I

.field final synthetic this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;


# direct methods
.method constructor <init>(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Lcom/kakaogame/ui/CustomProgressDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/promotion/view/StartingPromotionDialog;",
            "Lcom/kakaogame/ui/CustomProgressDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    iput-object p2, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

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

    new-instance p1, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;

    iget-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    invoke-direct {p1, v0, v1, p2}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;-><init>(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Lcom/kakaogame/ui/CustomProgressDialog;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 879
    iget v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

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

    .line 889
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$1;

    iget-object v5, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    iget-object v6, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    invoke-direct {v1, v5, v6, v2}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$1;-><init>(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Lcom/kakaogame/ui/CustomProgressDialog;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->label:I

    invoke-static {p1, v1, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 949
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    invoke-static {p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->access$getApplyClick$p(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 959
    iget-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    invoke-static {p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->access$getPromotion$p(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)Lcom/kakaogame/promotion/KGPromotionData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/promotion/KGPromotionData;->apply()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 979
    :cond_4
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 1009
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;

    iget-object v5, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->this$0:Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    iget-object v6, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    invoke-direct {v4, v5, v6, p1, v2}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1$2;-><init>(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Lcom/kakaogame/ui/CustomProgressDialog;Lcom/kakaogame/KGResult;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;->label:I

    invoke-static {v1, v4, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 1189
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
