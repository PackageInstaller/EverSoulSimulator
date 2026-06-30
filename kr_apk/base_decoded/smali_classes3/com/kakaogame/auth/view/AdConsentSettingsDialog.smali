.class public final Lcom/kakaogame/auth/view/AdConsentSettingsDialog;
.super Landroid/app/Dialog;
.source "AdConsentSettingsDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakaogame/auth/view/AdConsentSettingsDialog;",
        "Landroid/app/Dialog;",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V",
        "binding",
        "Lcom/kakaogame/databinding/KakaoGameAdConsentSettingBinding;",
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
.field private final binding:Lcom/kakaogame/databinding/KakaoGameAdConsentSettingBinding;

.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
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

    .line 169
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    sget v1, Landroidx/appcompat/R$style;->Base_AlertDialog_AppCompat_Light:I

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 159
    iput-object p2, p0, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->callback:Lkotlin/jvm/functions/Function1;

    .line 179
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/kakaogame/databinding/KakaoGameAdConsentSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameAdConsentSettingBinding;

    move-result-object p2

    const v0, 0x6d0cf638

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->binding:Lcom/kakaogame/databinding/KakaoGameAdConsentSettingBinding;

    const/4 v0, 0x1

    .line 209
    invoke-virtual {p0, v0}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->requestWindowFeature(I)Z

    .line 219
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 239
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x1030002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 249
    invoke-virtual {p0, v2}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->setCanceledOnTouchOutside(Z)V

    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 309
    :cond_0
    invoke-virtual {p2}, Lcom/kakaogame/databinding/KakaoGameAdConsentSettingBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->setContentView(Landroid/view/View;)V

    .line 329
    sget-object v0, Lcom/kakaogame/util/DisplayUtil;->INSTANCE:Lcom/kakaogame/util/DisplayUtil;

    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/kakaogame/util/DisplayUtil;->setFullScreenView(Landroid/app/Activity;Landroid/view/Window;)V

    .line 359
    iget-object p1, p2, Lcom/kakaogame/databinding/KakaoGameAdConsentSettingBinding;->kakaoGameSdkAlertBtnCancel:Lcom/kakaogame/ui/font/NotoSansTextView;

    new-instance v0, Lcom/kakaogame/auth/view/AdConsentSettingsDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/auth/view/AdConsentSettingsDialog;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/NotoSansTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object p1, p2, Lcom/kakaogame/databinding/KakaoGameAdConsentSettingBinding;->kakaoGameSdkAlertBtnOk:Lcom/kakaogame/ui/font/NotoSansTextView;

    new-instance p2, Lcom/kakaogame/auth/view/AdConsentSettingsDialog$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/auth/view/AdConsentSettingsDialog;)V

    invoke-virtual {p1, p2}, Lcom/kakaogame/ui/font/NotoSansTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    invoke-virtual {p0, v2}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->setCancelable(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static final lambda$2$lambda$0(Lcom/kakaogame/auth/view/AdConsentSettingsDialog;Landroid/view/View;)V
    .locals 0

    .line 369
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->dismiss()V

    .line 379
    iget-object p0, p0, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method static final lambda$2$lambda$1(Lcom/kakaogame/auth/view/AdConsentSettingsDialog;Landroid/view/View;)V
    .locals 0

    .line 419
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->dismiss()V

    .line 429
    iget-object p0, p0, Lcom/kakaogame/auth/view/AdConsentSettingsDialog;->callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method
