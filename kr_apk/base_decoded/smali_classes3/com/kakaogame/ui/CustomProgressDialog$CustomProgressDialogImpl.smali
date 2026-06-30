.class final Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;
.super Landroid/app/Dialog;
.source "CustomProgressDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/ui/CustomProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CustomProgressDialogImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
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
.method public static synthetic $r8$lambda$PzNfjOB_nJFx1aOsJmrgZxzDMVs(Lcom/kakaogame/databinding/ZinnySdkProgressBinding;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;->_init_$lambda$1(Lcom/kakaogame/databinding/ZinnySdkProgressBinding;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$kLz1djZ9ohM04k0HXNVYAO1GuAc(Lcom/kakaogame/databinding/ZinnySdkProgressBinding;Landroid/view/animation/Animation;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;->_init_$lambda$0(Lcom/kakaogame/databinding/ZinnySdkProgressBinding;Landroid/view/animation/Animation;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1030011

    .line 379
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 419
    invoke-virtual {p0}, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/databinding/ZinnySdkProgressBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkProgressBinding;

    move-result-object v0

    const v1, 0x6d0cf638

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0}, Lcom/kakaogame/databinding/ZinnySdkProgressBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;->setContentView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 439
    invoke-virtual {p0, v1}, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;->setCancelable(Z)V

    .line 449
    sget v1, Lcom/kakaogame/R$anim;->zinny_sdk_rotate:I

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 459
    new-instance v1, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/databinding/ZinnySdkProgressBinding;Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v1}, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 469
    new-instance p1, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/databinding/ZinnySdkProgressBinding;)V

    invoke-virtual {p0, p1}, Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final _init_$lambda$0(Lcom/kakaogame/databinding/ZinnySdkProgressBinding;Landroid/view/animation/Animation;Landroid/content/DialogInterface;)V
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/kakaogame/databinding/ZinnySdkProgressBinding;->zinnySdkProgressView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final _init_$lambda$1(Lcom/kakaogame/databinding/ZinnySdkProgressBinding;Landroid/content/DialogInterface;)V
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/kakaogame/databinding/ZinnySdkProgressBinding;->zinnySdkProgressView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void

    .array-data 1
    .end array-data
.end method
