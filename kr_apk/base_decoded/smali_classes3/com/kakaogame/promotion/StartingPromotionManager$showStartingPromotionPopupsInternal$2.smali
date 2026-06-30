.class final Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StartingPromotionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/promotion/StartingPromotionManager;->showStartingPromotionPopupsInternal(Landroid/app/Activity;Ljava/util/List;Z)Lcom/kakaogame/KGResult;
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
    c = "com.kakaogame.promotion.StartingPromotionManager$showStartingPromotionPopupsInternal$2"
    f = "StartingPromotionManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $dismissLock:Lcom/kakaogame/util/MutexLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/util/MutexLock<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $promotion:Lcom/kakaogame/promotion/KGPromotionData;

.field label:I


# direct methods
.method constructor <init>(Lcom/kakaogame/promotion/KGPromotionData;Landroid/app/Activity;Lcom/kakaogame/util/MutexLock;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/promotion/KGPromotionData;",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/util/MutexLock<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    iput-object p2, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->$dismissLock:Lcom/kakaogame/util/MutexLock;

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

    new-instance p1, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;

    iget-object v0, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    iget-object v1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->$dismissLock:Lcom/kakaogame/util/MutexLock;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;-><init>(Lcom/kakaogame/promotion/KGPromotionData;Landroid/app/Activity;Lcom/kakaogame/util/MutexLock;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1729
    iget v0, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1739
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7d7c55dd

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x336ef043

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    :try_start_0
    new-instance p1, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2$callback$1;

    iget-object v0, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->$dismissLock:Lcom/kakaogame/util/MutexLock;

    iget-object v2, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    invoke-direct {p1, v0, v2, v3}, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2$callback$1;-><init>(Lcom/kakaogame/util/MutexLock;Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;)V

    check-cast p1, Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;

    .line 1939
    new-instance v0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;

    iget-object v2, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    invoke-direct {v0, v2, v3, p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;-><init>(Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;)V

    .line 1949
    invoke-virtual {v0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1969
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7d7c0b0d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1979
    iget-object p1, p0, Lcom/kakaogame/promotion/StartingPromotionManager$showStartingPromotionPopupsInternal$2;->$dismissLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->unlock()V

    .line 1999
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1729
    :cond_0
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
