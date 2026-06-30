.class final Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1$dialog$1;
.super Ljava/lang/Object;
.source "CouponManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/kakaogame/KGResult<",
        "Ljava/lang/Void;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
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


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;Lcom/kakaogame/log/FirebaseEvent;Lcom/kakaogame/util/Stopwatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;",
            "Lcom/kakaogame/log/FirebaseEvent;",
            "Lcom/kakaogame/util/Stopwatch;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1$dialog$1;->$cont:Lkotlin/coroutines/Continuation;

    iput-object p2, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1$dialog$1;->$fbEvent:Lcom/kakaogame/log/FirebaseEvent;

    iput-object p3, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1$dialog$1;->$stopwatch:Lcom/kakaogame/util/Stopwatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 499
    check-cast p1, Lcom/kakaogame/KGResult;

    invoke-virtual {p0, p1}, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1$dialog$1;->invoke(Lcom/kakaogame/KGResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final invoke(Lcom/kakaogame/KGResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const v0, 0x5439984a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1$dialog$1;->$cont:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1$dialog$1;->$fbEvent:Lcom/kakaogame/log/FirebaseEvent;

    invoke-virtual {v0, p1}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    .line 529
    iget-object v0, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1$dialog$1;->$stopwatch:Lcom/kakaogame/util/Stopwatch;

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 539
    iget-object v0, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1$dialog$1;->$stopwatch:Lcom/kakaogame/util/Stopwatch;

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/coupon/CouponManager$showCouponPopup$2$1$dialog$1;->$stopwatch:Lcom/kakaogame/util/Stopwatch;

    invoke-virtual {v1}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
