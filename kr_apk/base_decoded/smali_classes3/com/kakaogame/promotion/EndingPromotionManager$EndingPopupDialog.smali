.class final Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;
.super Landroid/app/Dialog;
.source "EndingPromotionManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/promotion/EndingPromotionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EndingPopupDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0006\u0010\u0010\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;",
        "Landroid/app/Dialog;",
        "activity",
        "Landroid/app/Activity;",
        "promotion",
        "Lcom/kakaogame/promotion/KGPromotionData;",
        "<init>",
        "(Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;)V",
        "clickLink",
        "",
        "getClickLink",
        "()Ljava/lang/String;",
        "setClickLink",
        "(Ljava/lang/String;)V",
        "handleClick",
        "",
        "initView",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$Companion;

.field private static final TAG:Ljava/lang/String; = "EndingPopupDialog"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private clickLink:Ljava/lang/String;

.field private final promotion:Lcom/kakaogame/promotion/KGPromotionData;


# direct methods
.method public static synthetic $r8$lambda$3cTXYu0uDe-2WnmG3Ot-uy1RrXY(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->initView$lambda$9$lambda$1(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$8dLhkmXyMNP_n87n4_iwZiabh80(Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;Landroid/view/animation/Animation;Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->initView$lambda$9$lambda$4(Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;Landroid/view/animation/Animation;Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$RMKYSyrBmA9DL9-tdbhd6usC9eA(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->initView$lambda$9$lambda$2(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->Companion:Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/kakaogame/promotion/KGPromotionData;)V
    .locals 2

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1139
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    sget v1, Landroidx/appcompat/R$style;->Base_AlertDialog_AppCompat:I

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1129
    iput-object p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->activity:Landroid/app/Activity;

    .line 1139
    iput-object p2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->promotion:Lcom/kakaogame/promotion/KGPromotionData;

    const/4 p2, 0x1

    .line 1549
    invoke-virtual {p0, p2}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->requestWindowFeature(I)Z

    .line 1559
    invoke-virtual {p0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1569
    invoke-virtual {p0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const v0, 0x1030002

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1579
    invoke-virtual {p0, v1}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->setCanceledOnTouchOutside(Z)V

    .line 1599
    invoke-virtual {p0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->initView()V

    .line 1609
    sget-object p2, Lcom/kakaogame/util/DisplayUtil;->INSTANCE:Lcom/kakaogame/util/DisplayUtil;

    invoke-virtual {p0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1, v0}, Lcom/kakaogame/util/DisplayUtil;->setFullScreenView(Landroid/app/Activity;Landroid/view/Window;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getActivity$p(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;)Landroid/app/Activity;
    .locals 0

    .line 1129
    iget-object p0, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->activity:Landroid/app/Activity;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$handleClick(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;)V
    .locals 0

    .line 1129
    invoke-direct {p0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->handleClick()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final handleClick()V
    .locals 10

    .line 1179
    iget-object v2, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->promotion:Lcom/kakaogame/promotion/KGPromotionData;

    if-eqz v2, :cond_2

    .line 1189
    invoke-virtual {v2}, Lcom/kakaogame/promotion/KGPromotionData;->getApplyType()Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;->CLICK:Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 1199
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, -0x4515678f

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7d7c08ad

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    new-instance v3, Lcom/kakaogame/ui/CustomProgressDialog;

    iget-object v0, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/kakaogame/ui/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_1

    .line 1239
    invoke-virtual {v3}, Lcom/kakaogame/ui/CustomProgressDialog;->show()V

    .line 1259
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;

    const/4 v5, 0x0

    move-object v0, v9

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$handleClick$1$1;-><init>(ZLcom/kakaogame/promotion/KGPromotionData;Lcom/kakaogame/ui/CustomProgressDialog;Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Lkotlin/coroutines/Continuation;)V

    move-object v0, v9

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x3

    const/4 v9, 0x0

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v0

    move v8, v1

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_2
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final initView$lambda$9$lambda$1(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Landroid/view/View;)V
    .locals 0

    .line 1689
    invoke-virtual {p0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->dismiss()V

    .line 1699
    iget-object p0, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->activity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final initView$lambda$9$lambda$2(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Landroid/view/View;)V
    .locals 0

    .line 1729
    invoke-virtual {p0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final initView$lambda$9$lambda$4(Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;Landroid/view/animation/Animation;Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1769
    iget-object p3, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->zinnySdkPromotionEndingPopupProgress:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    .line 1779
    iget-object p0, p0, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->zinnySdkPromotionEndingPopupProgress:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1789
    iget-object p0, p2, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->promotion:Lcom/kakaogame/promotion/KGPromotionData;

    if-eqz p0, :cond_0

    .line 1799
    invoke-virtual {p0}, Lcom/kakaogame/promotion/KGPromotionData;->getApplyType()Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;

    move-result-object p1

    sget-object p2, Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;->SHOW:Lcom/kakaogame/promotion/KGPromotionData$KGPromotionApplyType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 1809
    invoke-virtual {p0, p1}, Lcom/kakaogame/promotion/KGPromotionData;->apply(Lcom/kakaogame/KGResultCallback;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getClickLink()Ljava/lang/String;
    .locals 1

    .line 1159
    iget-object v0, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->clickLink:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final initView()V
    .locals 6

    .line 1649
    invoke-virtual {p0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;

    move-result-object v0

    const v1, 0x6d0cf638

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1679
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->zinnySdkPromotionEndingPopupOk:Landroid/widget/TextView;

    new-instance v2, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1719
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->zinnySdkPromotionEndingPopupCancel:Landroid/widget/TextView;

    new-instance v2, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1749
    iget-object v1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$anim;->zinny_sdk_rotate:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1759
    new-instance v2, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v1, p0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;Landroid/view/animation/Animation;Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;)V

    invoke-virtual {p0, v2}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1859
    iget-object v1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->promotion:Lcom/kakaogame/promotion/KGPromotionData;

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 1869
    invoke-virtual {v1}, Lcom/kakaogame/promotion/KGPromotionData;->getLandscapeImageUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1889
    iget-object v4, v0, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->zinnySdkPromotionEndingPopupImage:Landroid/widget/ImageView;

    const v5, 0x5d1c2077

    invoke-static {v5}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$initView$1$4$1$1;

    invoke-direct {v5, v0, p0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog$initView$1$4$1$1;-><init>(Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;)V

    check-cast v5, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-static {v3, v4, v5}, Lcom/kakaogame/ui/ImageDownloader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 2069
    :cond_0
    iget-object v3, v0, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->zinnySdkPromotionEndingPopupContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2059
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    if-nez v1, :cond_3

    .line 2099
    :cond_2
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->zinnySdkPromotionEndingPopupContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2089
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2139
    :cond_3
    invoke-virtual {v0}, Lcom/kakaogame/databinding/ZinnySdkPromotionEndingPopupBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->setContentView(Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final setClickLink(Ljava/lang/String;)V
    .locals 0

    .line 1159
    iput-object p1, p0, Lcom/kakaogame/promotion/EndingPromotionManager$EndingPopupDialog;->clickLink:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
