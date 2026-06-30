.class public final synthetic Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Lcom/kakaogame/KGResult;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Lkotlin/jvm/functions/Function1;Lcom/kakaogame/KGResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1$$ExternalSyntheticLambda0;->f$2:Lcom/kakaogame/KGResult;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1$$ExternalSyntheticLambda0;->f$2:Lcom/kakaogame/KGResult;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/kakaogame/coupon/CouponManager$useCoupon$1$1;->$r8$lambda$1rK6WERAgWjBVNqUa73ab3qei-o(Landroid/app/Dialog;Lkotlin/jvm/functions/Function1;Lcom/kakaogame/KGResult;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
