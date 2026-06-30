.class public final Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$initView$1$4$1$1;
.super Ljava/lang/Object;
.source "EndingPromotionManager.kt"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0016J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$initView$1$4$1$1",
        "Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;",
        "onLoadingCancelled",
        "",
        "imageUri",
        "",
        "arg1",
        "Landroid/view/View;",
        "onLoadingComplete",
        "arg2",
        "Landroid/graphics/Bitmap;",
        "onLoadingFailed",
        "Lcom/nostra13/universalimageloader/core/assist/FailReason;",
        "onLoadingStarted",
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
.field final synthetic $this_apply:Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;

.field final synthetic this$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;


# direct methods
.method public static synthetic $r8$lambda$5jMrUyWQo0oqewDvf_uKvUaV7qI(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$initView$1$4$1$1;->onLoadingComplete$lambda$0(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$initView$1$4$1$1;->$this_apply:Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;

    iput-object p2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$initView$1$4$1$1;->this$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;

    .line 1889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final onLoadingComplete$lambda$0(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Landroid/view/View;)V
    .locals 0

    .line 1929
    invoke-static {p0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->access$handleClick(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    const v0, -0x451ed117

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "arg1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    const v0, -0x451ed117

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "arg1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "arg2"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1919
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p2, "EndingPopupDialog"

    const-string p3, "onLoadingComplete"

    invoke-virtual {p1, p2, p3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    iget-object p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$initView$1$4$1$1;->$this_apply:Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;

    iget-object p1, p1, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->zinnySdkPromotionEndingPopupImage:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$initView$1$4$1$1;->this$0:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;

    new-instance p3, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$initView$1$4$1$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$initView$1$4$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1939
    iget-object p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$initView$1$4$1$1;->$this_apply:Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;

    iget-object p1, p1, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->zinnySdkPromotionEndingPopupProgress:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1949
    iget-object p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$initView$1$4$1$1;->$this_apply:Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;

    iget-object p1, p1, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->zinnySdkPromotionEndingPopupProgress:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 1

    const v0, -0x451ed117

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x2259077e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "arg2"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1989
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const v0, 0x2259070e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "EndingPopupDialog"

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    const v0, -0x451ed117

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x2259077e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2029
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7d7c0fcd

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7d7c08ad

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
