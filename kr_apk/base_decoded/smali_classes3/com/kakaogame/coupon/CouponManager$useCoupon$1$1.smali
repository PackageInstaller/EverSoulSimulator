.class final Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CouponManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/coupon/CouponManager$useCoupon$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.kakaogame.coupon.CouponManager$useCoupon$1$1"
    f = "CouponManager.kt"
    i = {}
    l = {}
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

.field final synthetic $dialog:Landroid/app/Dialog;

.field final synthetic $progress:Lcom/kakaogame/ui/CustomProgressDialog;

.field final synthetic $useResult:Lcom/kakaogame/KGResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public static synthetic $r8$lambda$1rK6WERAgWjBVNqUa73ab3qei-o(Landroid/app/Dialog;Lkotlin/jvm/functions/Function1;Lcom/kakaogame/KGResult;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->invokeSuspend$lambda$0(Landroid/app/Dialog;Lkotlin/jvm/functions/Function1;Lcom/kakaogame/KGResult;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lcom/kakaogame/KGResult;Landroid/app/Activity;Lcom/kakaogame/ui/CustomProgressDialog;Landroid/app/Dialog;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;",
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
            "Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$useResult:Lcom/kakaogame/KGResult;

    iput-object p2, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    iput-object p4, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$dialog:Landroid/app/Dialog;

    iput-object p5, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final invokeSuspend$lambda$0(Landroid/app/Dialog;Lkotlin/jvm/functions/Function1;Lcom/kakaogame/KGResult;Z)Lkotlin/Unit;
    .locals 0

    .line 789
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 799
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

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

    new-instance p1, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;

    iget-object v1, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$useResult:Lcom/kakaogame/KGResult;

    iget-object v2, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    iget-object v4, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$dialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;-><init>(Lcom/kakaogame/KGResult;Landroid/app/Activity;Lcom/kakaogame/ui/CustomProgressDialog;Landroid/app/Dialog;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 739
    iget v0, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 749
    iget-object p1, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$useResult:Lcom/kakaogame/KGResult;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 769
    iget-object p1, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$activity:Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/kakaogame/R$string;->zinny_sdk_coupon_success:I

    invoke-static {p1, v0}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 779
    sget-object v0, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    iget-object v1, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$dialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$useResult:Lcom/kakaogame/KGResult;

    new-instance v5, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v3, v4}, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;Lkotlin/jvm/functions/Function1;Lcom/kakaogame/KGResult;)V

    invoke-virtual {v0, v1, p1, v5}, Lcom/kakaogame/ui/DialogManager;->showDialog(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 829
    :cond_0
    sget-object p1, Lcom/kakaogame/coupon/CouponManager;->INSTANCE:Lcom/kakaogame/coupon/CouponManager;

    iget-object v0, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$useResult:Lcom/kakaogame/KGResult;

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/kakaogame/coupon/CouponManager;->access$getErrorMessage(Lcom/kakaogame/coupon/CouponManager;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 839
    sget-object v2, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    iget-object v3, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$activity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/kakaogame/ui/DialogManager;->showErrorDialog$default(Lcom/kakaogame/ui/DialogManager;Landroid/app/Activity;Ljava/lang/String;ZLandroid/content/DialogInterface$OnDismissListener;ILjava/lang/Object;)V

    .line 859
    :goto_0
    iget-object p1, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$progress:Lcom/kakaogame/ui/CustomProgressDialog;

    invoke-virtual {p1}, Lcom/kakaogame/ui/CustomProgressDialog;->dismiss()V

    .line 869
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 739
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451e018f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method
