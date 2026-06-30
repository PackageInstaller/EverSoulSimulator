.class final Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CouponManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/coupon/CouponManager;->showCouponPopup(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.kakaogame.coupon.CouponManager$showCouponPopup$2$1"
    f = "CouponManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $cont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $fbEvent:Lcom/kakaogame/log/FirebaseEvent;

.field final synthetic $stopwatch:Lcom/kakaogame/util/Stopwatch;

.field label:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;Lcom/kakaogame/log/FirebaseEvent;Lcom/kakaogame/util/Stopwatch;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;",
            "Lcom/kakaogame/log/FirebaseEvent;",
            "Lcom/kakaogame/util/Stopwatch;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->$cont:Lkotlin/coroutines/Continuation;

    iput-object p3, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->$fbEvent:Lcom/kakaogame/log/FirebaseEvent;

    iput-object p4, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->$stopwatch:Lcom/kakaogame/util/Stopwatch;

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

    new-instance p1, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;

    iget-object v1, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->$cont:Lkotlin/coroutines/Continuation;

    iget-object v3, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->$fbEvent:Lcom/kakaogame/log/FirebaseEvent;

    iget-object v4, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->$stopwatch:Lcom/kakaogame/util/Stopwatch;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;-><init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;Lcom/kakaogame/log/FirebaseEvent;Lcom/kakaogame/util/Stopwatch;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 489
    iget v0, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 499
    new-instance p1, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;

    iget-object v0, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->$activity:Landroid/app/Activity;

    new-instance v1, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1$dialog$1;

    iget-object v2, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->$cont:Lkotlin/coroutines/Continuation;

    iget-object v3, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->$fbEvent:Lcom/kakaogame/log/FirebaseEvent;

    iget-object v4, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->$stopwatch:Lcom/kakaogame/util/Stopwatch;

    invoke-direct {v1, v2, v3, v4}, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1$dialog$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/kakaogame/log/FirebaseEvent;Lcom/kakaogame/util/Stopwatch;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    .line 559
    invoke-virtual {p1}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;->show()V

    .line 569
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 489
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
