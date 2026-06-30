.class public final Lcom/kakaogame/auth/view/AdConsentDialog;
.super Landroid/app/Dialog;
.source "AdConsentDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/kakaogame/auth/view/AdConsentDialog;",
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
        "Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;",
        "link",
        "",
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
.field private final binding:Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;

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

.field private final link:Ljava/lang/String;


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

    .line 209
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    sget v1, Landroidx/appcompat/R$style;->Base_AlertDialog_AppCompat_Light:I

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 199
    iput-object p2, p0, Lcom/kakaogame/auth/view/AdConsentDialog;->callback:Lkotlin/jvm/functions/Function1;

    .line 219
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;

    move-result-object p2

    const v0, 0x6d0cf638

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kakaogame/auth/view/AdConsentDialog;->binding:Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;

    const v0, -0x45198b77

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    iput-object v0, p0, Lcom/kakaogame/auth/view/AdConsentDialog;->link:Ljava/lang/String;

    const/4 v0, 0x1

    .line 259
    invoke-virtual {p0, v0}, Lcom/kakaogame/auth/view/AdConsentDialog;->requestWindowFeature(I)Z

    .line 269
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 289
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x1030002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 299
    invoke-virtual {p0, v2}, Lcom/kakaogame/auth/view/AdConsentDialog;->setCanceledOnTouchOutside(Z)V

    .line 319
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentDialog;->getWindow()Landroid/view/Window;

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

    .line 359
    :cond_0
    invoke-virtual {p2}, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kakaogame/auth/view/AdConsentDialog;->setContentView(Landroid/view/View;)V

    .line 379
    sget-object v0, Lcom/kakaogame/util/DisplayUtil;->INSTANCE:Lcom/kakaogame/util/DisplayUtil;

    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/kakaogame/util/DisplayUtil;->setFullScreenView(Landroid/app/Activity;Landroid/view/Window;)V

    .line 409
    iget-object v0, p2, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;->kakaoGameSdkAlertDesc:Lcom/kakaogame/ui/font/NotoSansTextView;

    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    check-cast v1, Landroid/text/method/MovementMethod;

    invoke-virtual {v0, v1}, Lcom/kakaogame/ui/font/NotoSansTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 419
    iget-object v0, p2, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;->kakaoGameSdkAlertDesc:Lcom/kakaogame/ui/font/NotoSansTextView;

    new-instance v1, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0}, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;Lcom/kakaogame/auth/view/AdConsentDialog;)V

    invoke-static {v1}, Lcom/kakaogame/ui/font/StyleTextKt;->styleText(Lkotlin/jvm/functions/Function1;)Lcom/kakaogame/util/json/JSONArray;

    move-result-object p1

    .line 509
    invoke-static {p1}, Lcom/kakaogame/ui/font/StyleTextKt;->getString(Lcom/kakaogame/util/json/JSONArray;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 419
    invoke-virtual {v0, p1}, Lcom/kakaogame/ui/font/NotoSansTextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object p1, p2, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;->kakaoGameSdkAlertBtnCancel:Lcom/kakaogame/ui/font/NotoSansTextView;

    new-instance v0, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda3;-><init>(Lcom/kakaogame/auth/view/AdConsentDialog;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/NotoSansTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    iget-object p1, p2, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;->kakaoGameSdkAlertBtnOk:Lcom/kakaogame/ui/font/NotoSansTextView;

    new-instance p2, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda4;-><init>(Lcom/kakaogame/auth/view/AdConsentDialog;)V

    invoke-virtual {p1, p2}, Lcom/kakaogame/ui/font/NotoSansTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    invoke-virtual {p0, v2}, Lcom/kakaogame/auth/view/AdConsentDialog;->setCancelable(Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static final lambda$9$lambda$6(Landroid/app/Activity;Lcom/kakaogame/auth/view/AdConsentDialog;Lcom/kakaogame/ui/font/StyleTextBuilder;)Lkotlin/Unit;
    .locals 1

    const v0, -0x22422ea4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    new-instance v0, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/kakaogame/ui/font/StyleTextBuilder;->string(Lkotlin/jvm/functions/Function1;)Z

    .line 469
    new-instance v0, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda6;-><init>(Landroid/app/Activity;Lcom/kakaogame/auth/view/AdConsentDialog;)V

    invoke-virtual {p2, v0}, Lcom/kakaogame/ui/font/StyleTextBuilder;->string(Lkotlin/jvm/functions/Function1;)Z

    .line 509
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static final lambda$9$lambda$6$lambda$2(Landroid/app/Activity;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 1

    const v0, 0x5d10c91f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    new-instance v0, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Lcom/kakaogame/ui/font/TextBuilder;->text(Lkotlin/jvm/functions/Function0;)V

    .line 449
    new-instance p0, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p0}, Lcom/kakaogame/ui/font/TextBuilder;->styles(Lkotlin/jvm/functions/Function0;)Z

    .line 459
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static final lambda$9$lambda$6$lambda$2$lambda$0(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 439
    check-cast p0, Landroid/content/Context;

    sget v0, Lcom/kakaogame/R$string;->kakao_game_sdk_ad_consent_details1:I

    invoke-static {p0, v0}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static final lambda$9$lambda$6$lambda$2$lambda$1()[Ljava/lang/String;
    .locals 1

    const v0, 0x2255e96e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static final lambda$9$lambda$6$lambda$5(Landroid/app/Activity;Lcom/kakaogame/auth/view/AdConsentDialog;Lcom/kakaogame/ui/font/TextBuilder;)Lkotlin/Unit;
    .locals 1

    const v0, 0x5d10c91f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    new-instance v0, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/kakaogame/ui/font/TextBuilder;->text(Lkotlin/jvm/functions/Function0;)V

    .line 489
    new-instance p0, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda8;

    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/AdConsentDialog$$ExternalSyntheticLambda8;-><init>(Lcom/kakaogame/auth/view/AdConsentDialog;)V

    invoke-virtual {p2, p0}, Lcom/kakaogame/ui/font/TextBuilder;->styles(Lkotlin/jvm/functions/Function0;)Z

    .line 499
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static final lambda$9$lambda$6$lambda$5$lambda$3(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 479
    check-cast p0, Landroid/content/Context;

    sget v0, Lcom/kakaogame/R$string;->kakao_game_sdk_ad_consent_details2:I

    invoke-static {p0, v0}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static final lambda$9$lambda$6$lambda$5$lambda$4(Lcom/kakaogame/auth/view/AdConsentDialog;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 489
    iget-object p0, p0, Lcom/kakaogame/auth/view/AdConsentDialog;->link:Ljava/lang/String;

    aput-object p0, v0, v1

    const/4 p0, 0x1

    const v1, 0x7d70e045

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static final lambda$9$lambda$7(Lcom/kakaogame/auth/view/AdConsentDialog;Landroid/view/View;)V
    .locals 0

    .line 529
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentDialog;->dismiss()V

    .line 539
    iget-object p0, p0, Lcom/kakaogame/auth/view/AdConsentDialog;->callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method static final lambda$9$lambda$8(Lcom/kakaogame/auth/view/AdConsentDialog;Landroid/view/View;)V
    .locals 0

    .line 579
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/AdConsentDialog;->dismiss()V

    .line 589
    iget-object p0, p0, Lcom/kakaogame/auth/view/AdConsentDialog;->callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method
