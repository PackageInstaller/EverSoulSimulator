.class public final Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;
.super Landroid/app/Dialog;
.source "SecondPWRestrictViewDialog.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSecondPWRestrictViewDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SecondPWRestrictViewDialog.kt\ncom/kakaogame/secondpw/SecondPWRestrictViewDialog\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,91:1\n1104#2,3:92\n*S KotlinDebug\n*F\n+ 1 SecondPWRestrictViewDialog.kt\ncom/kakaogame/secondpw/SecondPWRestrictViewDialog\n*L\n35#1:92,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0015\u001a\u00020\u0008H\u0016J\u0010\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0008\u0010\u0019\u001a\u00020\u0008H\u0002J\u0008\u0010\u001a\u001a\u00020\u0008H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;",
        "Landroid/app/Dialog;",
        "activity",
        "Landroid/app/Activity;",
        "viewData",
        "Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;",
        "callback",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;Lkotlin/jvm/functions/Function0;)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "getViewData",
        "()Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "binding",
        "Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;",
        "timer",
        "Ljava/util/Timer;",
        "onBackPressed",
        "changeTime",
        "countDownSec",
        "",
        "startCountDownTimer",
        "closePopup",
        "security_release"
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
.field private final activity:Landroid/app/Activity;

.field private final binding:Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;

.field private final callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;

.field private final viewData:Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7d7cc795    # 2.1000109E37f

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0d7b60

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    sget v1, Landroidx/appcompat/R$style;->Base_AlertDialog_AppCompat_Light:I

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 199
    iput-object p1, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->viewData:Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    iput-object p3, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->callback:Lkotlin/jvm/functions/Function0;

    .line 229
    invoke-virtual {p0}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;

    move-result-object p1

    const-string p3, "inflate(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->binding:Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;

    const/4 p3, 0x1

    .line 269
    invoke-virtual {p0, p3}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->requestWindowFeature(I)Z

    .line 279
    invoke-virtual {p0}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 289
    invoke-virtual {p0}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    invoke-virtual {p0}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 309
    invoke-virtual {p0}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x1030002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 319
    invoke-virtual {p0}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 329
    invoke-virtual {p0, v2}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->setCanceledOnTouchOutside(Z)V

    .line 359
    invoke-virtual {p2}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;->getViewContent()Landroid/text/SpannableStringBuilder;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    move v0, v2

    move v1, v0

    .line 939
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    move v3, p3

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-le v1, p3, :cond_3

    .line 389
    iget-object p2, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;->kakaoGame2ndPwErrorViewBack:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/kakaogame/security/R$dimen;->sdk_2nd_password_restrict_large_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 399
    iget-object p2, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;->kakaoGame2ndPwErrorViewBack:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/kakaogame/security/R$dimen;->sdk_2nd_password_restrict_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 419
    :cond_3
    iget-object p2, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;->kakaoGame2ndPwErrorViewBack:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/kakaogame/security/R$dimen;->sdk_2nd_password_restrict_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 429
    iget-object p2, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;->kakaoGame2ndPwErrorViewBack:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/kakaogame/security/R$dimen;->sdk_2nd_password_restrict_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 459
    :goto_2
    iget-object p2, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;->kakaoGame2ndPwError2lineMsg:Lcom/kakaogame/ui/font/NotoSansTextView;

    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->viewData:Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;->getViewContent()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object p2, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;->kakaoGame2ndPwError2lineTimeGuide:Lcom/kakaogame/ui/font/NotoSansTextView;

    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->viewData:Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;->getTimeGuide()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object p2, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;->kakaoGame2ndPwError2lineTime:Lcom/kakaogame/ui/font/NotoSansTextView;

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d0116c8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->viewData:Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;->getMinLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4515a9d7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->viewData:Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;->getSecLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->viewData:Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    invoke-virtual {v4}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;->getMin()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->viewData:Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    invoke-virtual {v2}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;->getSec()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, p3

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const v0, 0x22595326

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object p2, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;->kakaoGame2ndPwErrorConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

    iget-object p3, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->viewData:Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    invoke-virtual {p3}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;->getConfirmButtonText()Landroid/text/SpannableStringBuilder;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Lcom/kakaogame/ui/font/NotoSansButton;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object p1, p1, Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;->kakaoGame2ndPwErrorConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

    new-instance p2, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;)V

    invoke-virtual {p1, p2}, Lcom/kakaogame/ui/font/NotoSansButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    iget-object p1, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->binding:Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;

    invoke-virtual {p1}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->setContentView(Landroid/view/View;)V

    .line 569
    invoke-direct {p0}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->startCountDownTimer()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$changeTime(Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;I)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->changeTime(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$closePopup(Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->closePopup()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getBinding$p(Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->binding:Lcom/kakaogame/security/databinding/KakaoGame2ndPwRestrictViewBinding;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final changeTime(I)V
    .locals 7

    .line 649
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$changeTime$1;-><init>(Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final closePopup()V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const v0, 0x336e63ab

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 869
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 889
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->dismiss()V

    .line 899
    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->callback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static final lambda$2$lambda$1(Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;Landroid/view/View;)V
    .locals 0

    .line 519
    invoke-direct {p0}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->closePopup()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final startCountDownTimer()V
    .locals 8

    .line 749
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget-object v1, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->viewData:Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;->getMin()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    iget-object v2, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->viewData:Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    invoke-virtual {v2}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;->getSec()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 759
    invoke-static {v1, v2}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$startCountDownTimer$$inlined$timer$default$1;

    invoke-direct {v2, p0, v0}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog$startCountDownTimer$$inlined$timer$default$1;-><init>(Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;Lkotlin/jvm/internal/Ref$IntRef;)V

    move-object v3, v2

    check-cast v3, Ljava/util/TimerTask;

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iput-object v1, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->timer:Ljava/util/Timer;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->activity:Landroid/app/Activity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCallback()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->callback:Lkotlin/jvm/functions/Function0;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getViewData()Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->viewData:Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public onBackPressed()V
    .locals 0

    .line 609
    invoke-direct {p0}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->closePopup()V

    return-void

    .array-data 1
    .end array-data
.end method
