.class final Lcom/kakaogame/coupon/CouponManager$useCoupon$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CouponManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/coupon/CouponManager;->useCoupon(Landroid/app/Activity;Ljava/lang/String;Landroid/app/Dialog;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.kakaogame.coupon.CouponManager$useCoupon$1"
    f = "CouponManager.kt"
    i = {}
    l = {
        0x49
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $couponCode:Ljava/lang/String;

.field final synthetic $dialog:Landroid/app/Dialog;

.field final synthetic $progress:Lcom/kakaogame/ui/CustomProgressDialog;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lcom/kakaogame/ui/CustomProgressDialog;Landroid/app/Dialog;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/ui/CustomProgressDialog;",
            "Landroid/app/Dialog;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/coupon/CouponManager$useCoupon$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->$couponCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    iput-object p4, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->$dialog:Landroid/app/Dialog;

    iput-object p5, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;

    iget-object v1, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->$couponCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    iget-object v4, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->$dialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->$callback:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/kakaogame/ui/CustomProgressDialog;Landroid/app/Dialog;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 709
    iget v1, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 719
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    iget-object v1, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->$couponCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/kakaogame/coupon/CouponService;->useCoupon(Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v4

    .line 729
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v3, 0x7d72275d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, -0x451b4f9f

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;

    iget-object v5, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    iget-object v7, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->$dialog:Landroid/app/Dialog;

    iget-object v8, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;-><init>(Lcom/kakaogame/KGResult;Landroid/app/Activity;Lcom/kakaogame/ui/CustomProgressDialog;Landroid/app/Dialog;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 879
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
