.class public final Lcom/kakaogame/promotion/view/StartingPromotionDialog;
.super Landroid/app/Dialog;
.source "StartingPromotionDialog.kt"

# interfaces
.implements Lcom/kakaogame/KGActivityManager$ConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002:\u0001%B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0017H\u0002J\u0008\u0010\u0019\u001a\u00020\u0017H\u0002J\u0012\u0010\u001a\u001a\u00020\u00172\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u0008\u0010\u001d\u001a\u00020\u0017H\u0016J\u0008\u0010\u001e\u001a\u00020\u0017H\u0016J\u0008\u0010\u001f\u001a\u00020\u0017H\u0002J\u0008\u0010 \u001a\u00020\u0017H\u0002J\u0010\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020\u0017H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/kakaogame/promotion/view/StartingPromotionDialog;",
        "Landroid/app/Dialog;",
        "Lcom/kakaogame/KGActivityManager$ConfigChangeListener;",
        "activity",
        "Landroid/app/Activity;",
        "promotion",
        "Lcom/kakaogame/promotion/KGPromotionData;",
        "callbackListener",
        "Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;",
        "<init>",
        "(Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;)V",
        "TAG",
        "",
        "binding",
        "Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;",
        "clickLink",
        "anim",
        "Landroid/view/animation/Animation;",
        "preOrientation",
        "",
        "applyClick",
        "",
        "initView",
        "",
        "handleClick",
        "calculateViewSize",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "dismiss",
        "setDialogDim",
        "setDialogVisibility",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "downloadImage",
        "StartingPromotionDialogListener",
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


# instance fields
.field private final TAG:Ljava/lang/String;

.field private anim:Landroid/view/animation/Animation;

.field private applyClick:Z

.field private binding:Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

.field private final callbackListener:Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;

.field private clickLink:Ljava/lang/String;

.field private preOrientation:I

.field private promotion:Lcom/kakaogame/promotion/KGPromotionData;


# direct methods
.method public static synthetic $r8$lambda$6YrDIP4tlB5_wXG9yebUs7au31s(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->onCreate$lambda$4(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$POX1SqrKgrUuvLUh927FGUYxCk8(Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;Lcom/kakaogame/promotion/view/StartingPromotionDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->initView$lambda$2$lambda$1(Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;Lcom/kakaogame/promotion/view/StartingPromotionDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$h55NS5KIMGWCLXxppVdSwPrXDfE(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->initView$lambda$2$lambda$0(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$siY_seZrEacud0UCo9dye_HUqt8(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->downloadImage$lambda$5(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$tLT_-ot0duIP5jUL_ULWh_ehoS8(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->onCreate$lambda$3(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;)V
    .locals 2

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x33617003

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5435bad2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    .line 479
    sget v1, Landroidx/appcompat/R$style;->Base_AlertDialog_AppCompat:I

    .line 459
    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 439
    iput-object p2, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->promotion:Lcom/kakaogame/promotion/KGPromotionData;

    .line 449
    iput-object p3, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->callbackListener:Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;

    const-string p2, "StartingPromotionDialog"

    .line 499
    iput-object p2, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->TAG:Ljava/lang/String;

    const/4 p2, -0x1

    .line 559
    iput p2, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->preOrientation:I

    .line 599
    invoke-virtual {p0, p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->setOwnerActivity(Landroid/app/Activity;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getApplyClick$p(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)Z
    .locals 0

    .line 429
    iget-boolean p0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->applyClick:Z

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getCallbackListener$p(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->callbackListener:Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getClickLink$p(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)Ljava/lang/String;
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->clickLink:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getPromotion$p(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)Lcom/kakaogame/promotion/KGPromotionData;
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->promotion:Lcom/kakaogame/promotion/KGPromotionData;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setClickLink$p(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Ljava/lang/String;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->clickLink:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final calculateViewSize()V
    .locals 11

    .line 1229
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->TAG:Ljava/lang/String;

    const v2, 0x7d70f4f5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/kakaogame/util/DisplayUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    .line 1259
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/kakaogame/util/DisplayUtil;->getDisplayHeight(Landroid/content/Context;)I

    move-result v1

    .line 1289
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/kakaogame/R$dimen;->sdk_starting_promotion_side_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1309
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/kakaogame/R$dimen;->sdk_starting_promotion_bottom_bar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1319
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->binding:Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    const/4 v6, 0x0

    const v7, -0x45198e67

    invoke-static {v7}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_0

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_0
    iget-object v5, v5, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1359
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/kakaogame/util/DisplayUtil;->isScreenPortrait(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_1

    mul-int/lit8 v5, v2, 0x2

    sub-int/2addr v0, v5

    .line 1389
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/kakaogame/R$dimen;->sdk_starting_promotion_port_image_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1409
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/kakaogame/R$dimen;->sdk_starting_promotion_port_image_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int/2addr v9, v0

    .line 1419
    div-int/2addr v9, v8

    add-int/2addr v9, v3

    sub-int v5, v1, v5

    invoke-static {v9, v5}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v5

    sub-int/2addr v1, v5

    .line 1429
    div-int/lit8 v1, v1, 0x2

    .line 1449
    invoke-virtual {v4, v2, v1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    mul-int/lit8 v5, v2, 0x2

    sub-int/2addr v1, v5

    .line 1489
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/kakaogame/R$dimen;->sdk_starting_promotion_land_image_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1509
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/kakaogame/R$dimen;->sdk_starting_promotion_land_image_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int v10, v1, v3

    mul-int/2addr v10, v8

    .line 1519
    div-int/2addr v10, v9

    sub-int v5, v0, v5

    invoke-static {v10, v5}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v5

    sub-int/2addr v0, v5

    .line 1529
    div-int/lit8 v0, v0, 0x2

    .line 1549
    invoke-virtual {v4, v0, v2, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move v0, v5

    move v5, v1

    .line 1579
    :goto_0
    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->binding:Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    if-nez v1, :cond_2

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    :cond_2
    iget-object v1, v1, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1589
    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->binding:Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    if-nez v1, :cond_3

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    :cond_3
    iget-object v1, v1, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1609
    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->binding:Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    if-nez v1, :cond_4

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    :cond_4
    iget-object v1, v1, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionImageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1619
    iget-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->binding:Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    if-nez v0, :cond_5

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v6, v0

    :goto_1
    iget-object v0, v6, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionImageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sub-int/2addr v5, v3

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final downloadImage()V
    .locals 4

    .line 2499
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->TAG:Ljava/lang/String;

    const v2, 0x2259b106

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/kakaogame/util/DisplayUtil;->isScreenPortrait(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2529
    iget-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->promotion:Lcom/kakaogame/promotion/KGPromotionData;

    invoke-virtual {v0}, Lcom/kakaogame/promotion/KGPromotionData;->getPortraitImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2549
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->promotion:Lcom/kakaogame/promotion/KGPromotionData;

    invoke-virtual {v0}, Lcom/kakaogame/promotion/KGPromotionData;->getLandscapeImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 2579
    :goto_0
    new-instance v1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 2589
    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStrokeWidth(F)V

    const/high16 v2, 0x41f00000    # 30.0f

    .line 2599
    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setCenterRadius(F)V

    .line 2609
    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->start()V

    .line 2629
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->binding:Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    const/4 v2, 0x0

    const v3, -0x45198e67

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    iget-object v1, v1, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionStartPopupImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 2649
    iget-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->binding:Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionStartPopupProgress:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2659
    iget-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->binding:Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionStartPopupProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2669
    iget-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->binding:Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, v0

    :goto_1
    iget-object v0, v2, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionStartPopupImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/kakaogame/promotion/view/StartingPromotionDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final downloadImage$lambda$5(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Landroid/view/View;)V
    .locals 0

    .line 2669
    invoke-direct {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->handleClick()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final handleClick()V
    .locals 8

    .line 819
    iget-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->promotion:Lcom/kakaogame/promotion/KGPromotionData;

    invoke-virtual {v0}, Lcom/kakaogame/promotion/KGPromotionData;->getApplyType()Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;->CLICK:Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->applyClick:Z

    .line 839
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, -0x4515678f

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->applyClick:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    new-instance v0, Lcom/kakaogame/ui/CustomProgressDialog;

    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kakaogame/ui/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    .line 879
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v0, v5}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$handleClick$1;-><init>(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Lcom/kakaogame/ui/CustomProgressDialog;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final initView()V
    .locals 3

    .line 639
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->TAG:Ljava/lang/String;

    const v2, -0x224228cc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->binding:Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    if-nez v0, :cond_0

    const v0, -0x45198e67

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 669
    :cond_0
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionStartPopupImage:Landroid/widget/ImageView;

    .line 679
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionStartPopupClose:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/kakaogame/promotion/view/StartingPromotionDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionStartPopupCheck:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/kakaogame/promotion/view/StartingPromotionDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;Lcom/kakaogame/promotion/view/StartingPromotionDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/kakaogame/R$anim;->zinny_sdk_rotate:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->anim:Landroid/view/animation/Animation;

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final initView$lambda$2$lambda$0(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Landroid/view/View;)V
    .locals 0

    .line 689
    iget-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->callbackListener:Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;

    invoke-interface {p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;->onDismiss()V

    .line 699
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->dismiss()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final initView$lambda$2$lambda$1(Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;Lcom/kakaogame/promotion/view/StartingPromotionDialog;Landroid/view/View;)V
    .locals 0

    .line 729
    iget-object p0, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->zinnySdkPromotionStartPopupCheckImage:Landroid/widget/ImageView;

    sget p2, Lcom/kakaogame/R$drawable;->popup_promotion_btn_checked:I

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 739
    iget-object p0, p1, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->callbackListener:Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;

    invoke-interface {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;->onCheckClicked()V

    .line 749
    invoke-virtual {p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final onCreate$lambda$3(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1729
    iget-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->promotion:Lcom/kakaogame/promotion/KGPromotionData;

    invoke-virtual {p1}, Lcom/kakaogame/promotion/KGPromotionData;->getApplyType()Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;

    move-result-object p1

    sget-object v0, Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;->SHOW:Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;

    if-ne p1, v0, :cond_0

    .line 1739
    iget-object p0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->promotion:Lcom/kakaogame/promotion/KGPromotionData;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/kakaogame/promotion/KGPromotionData;->apply(Lcom/kakaogame/KGResultCallback;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final onCreate$lambda$4(Lcom/kakaogame/promotion/view/StartingPromotionDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1779
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/16 p1, 0x6f

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1809
    :cond_0
    iget-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->callbackListener:Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;

    invoke-interface {p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$StartingPromotionDialogListener;->onDismiss()V

    .line 1819
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->dismiss()V

    return p3

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    .array-data 1
    .end array-data
.end method

.method private final setDialogDim()V
    .locals 3

    .line 2169
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->TAG:Ljava/lang/String;

    const v2, 0x5d10dad7

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    .line 2199
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2209
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2219
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final setDialogVisibility()V
    .locals 3

    .line 2259
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->TAG:Ljava/lang/String;

    const v2, 0x5435a082

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2299
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 2089
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->TAG:Ljava/lang/String;

    const v2, 0x7d70f9e5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2119
    sget-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/KGActivityManager$ConfigChangeListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGActivityManager$Companion;->removeConfigChangeListener(Lcom/kakaogame/KGActivityManager$ConfigChangeListener;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const v0, 0x7d77683d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2349
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, -0x224230c4

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x5d10d32f

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->preOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    iget v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->preOrientation:I

    if-ltz v0, :cond_0

    .line 2379
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->preOrientation:I

    if-eq v0, v1, :cond_2

    .line 2399
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->binding:Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    .line 2409
    invoke-direct {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->initView()V

    .line 2419
    invoke-direct {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->downloadImage()V

    .line 2429
    invoke-direct {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->calculateViewSize()V

    .line 2439
    iget-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->binding:Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    if-nez v0, :cond_1

    const v0, -0x45198e67

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->setContentView(Landroid/view/View;)V

    .line 2459
    :cond_2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->preOrientation:I

    return-void

    .array-data 1
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1659
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 1679
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v0, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->TAG:Ljava/lang/String;

    const v1, 0x2255f37e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1709
    invoke-virtual {p0, v1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->setCanceledOnTouchOutside(Z)V

    .line 1719
    new-instance p1, Lcom/kakaogame/promotion/view/StartingPromotionDialog$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$$ExternalSyntheticLambda3;-><init>(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)V

    invoke-virtual {p0, p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1769
    new-instance p1, Lcom/kakaogame/promotion/view/StartingPromotionDialog$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog$$ExternalSyntheticLambda4;-><init>(Lcom/kakaogame/promotion/view/StartingPromotionDialog;)V

    invoke-virtual {p0, p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1899
    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->binding:Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    .line 1909
    invoke-direct {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->initView()V

    .line 1919
    invoke-direct {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->downloadImage()V

    .line 1929
    invoke-direct {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->calculateViewSize()V

    .line 1939
    iget-object p1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->binding:Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/kakaogame/databinding/ZinnySdkPromotionStartPopupBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->setContentView(Landroid/view/View;)V

    .line 1949
    invoke-direct {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->setDialogVisibility()V

    .line 1959
    sget-object p1, Lcom/kakaogame/util/DisplayUtil;->INSTANCE:Lcom/kakaogame/util/DisplayUtil;

    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/util/DisplayUtil;->setFullScreenView(Landroid/app/Activity;Landroid/view/Window;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onStart()V
    .locals 3

    .line 1999
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2019
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v1, p0, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->TAG:Ljava/lang/String;

    const v2, 0x2255f32e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    invoke-direct {p0}, Lcom/kakaogame/promotion/view/StartingPromotionDialog;->setDialogDim()V

    .line 2049
    sget-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/KGActivityManager$ConfigChangeListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGActivityManager$Companion;->addConfigChangeListener(Lcom/kakaogame/KGActivityManager$ConfigChangeListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
