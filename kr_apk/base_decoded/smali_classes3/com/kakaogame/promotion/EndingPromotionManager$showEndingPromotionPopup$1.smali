.class final Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EndingPromotionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/promotion/EndingPromotionManager;->showEndingPromotionPopup(Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/KGResultCallback;)V
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
    c = "com.kakaogame.promotion.EndingPromotionManager$showEndingPromotionPopup$1"
    f = "EndingPromotionManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
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

.field final synthetic $promotion:Lcom/kakaogame/promotion/KGPromotionData;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$xjTaq3L91jfmDKi6TeVd4q-9qmY(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Lcom/kakaogame/KGResultCallback;Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->invokeSuspend$lambda$0(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Lcom/kakaogame/KGResultCallback;Landroid/app/Activity;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/promotion/KGPromotionData;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    iput-object p3, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->$callback:Lcom/kakaogame/KGResultCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final invokeSuspend$lambda$0(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Lcom/kakaogame/KGResultCallback;Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 709
    invoke-virtual {p0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->getClickLink()Ljava/lang/String;

    move-result-object p0

    .line 719
    move-object p3, p0

    check-cast p3, Ljava/lang/CharSequence;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    if-eqz p3, :cond_2

    .line 729
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, ""

    invoke-virtual {p0, p2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_3

    .line 739
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    goto :goto_2

    .line 759
    :cond_2
    sget-object p3, Lcom/kakaogame/promotion/EndingPromotionManager;->INSTANCE:Lcom/kakaogame/promotion/EndingPromotionManager;

    invoke-static {p3, p2, p0, p1}, Lcom/kakaogame/promotion/EndingPromotionManager;->access$showClickLink(Lcom/kakaogame/promotion/EndingPromotionManager;Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V

    :cond_3
    :goto_2
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

    new-instance p1, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;

    iget-object v0, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    iget-object v2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->$callback:Lcom/kakaogame/KGResultCallback;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;-><init>(Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 679
    iget v0, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 689
    new-instance p1, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;

    iget-object v0, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->$promotion:Lcom/kakaogame/promotion/KGPromotionData;

    invoke-direct {p1, v0, v1}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;-><init>(Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;)V

    .line 699
    iget-object v0, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->$callback:Lcom/kakaogame/KGResultCallback;

    iget-object v1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1;->$activity:Landroid/app/Activity;

    new-instance v2, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0, v1}, Lcom/kakaogame/promotion/EndingPromotionManager$showEndingPromotionPopup$1$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Lcom/kakaogame/KGResultCallback;Landroid/app/Activity;)V

    invoke-virtual {p1, v2}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 789
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d7c0a85

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x54350862

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :try_start_0
    invoke-virtual {p1}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 829
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v3, 0x7d7c0b0d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 849
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 679
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method
