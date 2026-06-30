.class final Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;
.super Landroid/app/Dialog;
.source "CouponManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/coupon/CouponManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CouponPopupDialog"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u001a\u0010\u0004\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;",
        "Landroid/app/Dialog;",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "",
        "<init>",
        "(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V",
        "gamesdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0d7b60

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    sget v1, Landroidx/appcompat/R$style;->Base_AlertDialog_AppCompat:I

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 1159
    invoke-virtual {p0, v0}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;->requestWindowFeature(I)Z

    .line 1169
    invoke-virtual {p0}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 1179
    invoke-virtual {p0}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1189
    invoke-virtual {p0}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1199
    invoke-virtual {p0}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x1030002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1209
    invoke-virtual {p0, v2}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;->setCanceledOnTouchOutside(Z)V

    .line 1229
    invoke-virtual {p0}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;

    move-result-object v0

    const v1, 0x6d0cf638

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1259
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;->zinnySdkCouponInputText:Landroid/widget/EditText;

    new-instance v2, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1, p0, p2}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;Landroid/app/Activity;Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1409
    new-instance v1, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v1}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1439
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;->zinnySdkCouponInputSubmit:Landroid/widget/TextView;

    new-instance v2, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1, p0, p2}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;Landroid/app/Activity;Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1529
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;->zinnySdkCouponInputCancel:Landroid/widget/TextView;

    new-instance v2, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2, p0}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1599
    invoke-virtual {p0}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1619
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p2, v1, :cond_0

    .line 1629
    invoke-virtual {p0}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1659
    :cond_0
    invoke-virtual {v0}, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;->setContentView(Landroid/view/View;)V

    .line 1669
    sget-object p2, Lcom/kakaogame/util/DisplayUtil;->INSTANCE:Lcom/kakaogame/util/DisplayUtil;

    invoke-virtual {p0}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1, v0}, Lcom/kakaogame/util/DisplayUtil;->setFullScreenView(Landroid/app/Activity;Landroid/view/Window;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static final lambda$4$lambda$0(Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;Landroid/app/Activity;Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;Lkotlin/jvm/functions/Function1;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 p4, 0x6

    const/4 p6, 0x0

    if-ne p5, p4, :cond_2

    .line 1289
    iget-object p0, p0, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;->zinnySdkCouponInputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1299
    move-object p4, p0

    check-cast p4, Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    const/4 p5, 0x1

    if-lez p4, :cond_0

    move p6, p5

    :cond_0
    if-eqz p6, :cond_1

    .line 1309
    sget-object p4, Lcom/kakaogame/coupon/CouponManager;->INSTANCE:Lcom/kakaogame/coupon/CouponManager;

    check-cast p2, Landroid/app/Dialog;

    invoke-static {p4, p1, p0, p2, p3}, Lcom/kakaogame/coupon/CouponManager;->access$useCoupon(Lcom/kakaogame/coupon/CouponManager;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Dialog;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 1329
    :cond_1
    move-object p0, p1

    check-cast p0, Landroid/content/Context;

    sget p2, Lcom/kakaogame/R$string;->zinny_sdk_coupon_error_empty:I

    invoke-static {p0, p2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1339
    sget-object v0, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/kakaogame/ui/DialogManager;->showErrorDialog$default(Lcom/kakaogame/ui/DialogManager;Landroid/app/Activity;Ljava/lang/String;ZLandroid/content/DialogInterface$OnDismissListener;ILjava/lang/Object;)V

    :goto_0
    return p5

    :cond_2
    return p6

    nop

    .array-data 1
    .end array-data
.end method

.method static final lambda$4$lambda$1(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1419
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x2329

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method static final lambda$4$lambda$2(Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;Landroid/app/Activity;Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 7

    .line 1449
    iget-object p0, p0, Lcom/kakaogame/databinding/ZinnySdkCouponPopupBinding;->zinnySdkCouponInputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1459
    move-object p4, p0

    check-cast p4, Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-lez p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_1

    .line 1469
    sget-object p4, Lcom/kakaogame/coupon/CouponManager;->INSTANCE:Lcom/kakaogame/coupon/CouponManager;

    check-cast p2, Landroid/app/Dialog;

    invoke-static {p4, p1, p0, p2, p3}, Lcom/kakaogame/coupon/CouponManager;->access$useCoupon(Lcom/kakaogame/coupon/CouponManager;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Dialog;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    .line 1489
    :cond_1
    move-object p0, p1

    check-cast p0, Landroid/content/Context;

    sget p2, Lcom/kakaogame/R$string;->zinny_sdk_coupon_error_empty:I

    invoke-static {p0, p2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1499
    sget-object v0, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/kakaogame/ui/DialogManager;->showErrorDialog$default(Lcom/kakaogame/ui/DialogManager;Landroid/app/Activity;Ljava/lang/String;ZLandroid/content/DialogInterface$OnDismissListener;ILjava/lang/Object;)V

    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static final lambda$4$lambda$3(Lkotlin/jvm/functions/Function1;Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;Landroid/view/View;)V
    .locals 1

    .line 1539
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x2329

    invoke-virtual {p2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 1549
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    invoke-virtual {p1}, Lcom/kakaogame/coupon/CouponManager$CouponPopupDialog;->dismiss()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
