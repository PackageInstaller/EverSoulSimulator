.class public final Lcom/kakaogame/web/CafeWebDialog;
.super Lcom/kakaogame/web/WebDialog;
.source "CafeWebDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/web/CafeWebDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B%\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0014J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0014R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/kakaogame/web/CafeWebDialog;",
        "Lcom/kakaogame/web/WebDialog;",
        "activity",
        "Landroid/app/Activity;",
        "webUrl",
        "",
        "settings",
        "Lcom/kakaogame/web/WebDialog$Settings;",
        "<init>",
        "(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;)V",
        "cafeBinding",
        "Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;",
        "getCafeBinding",
        "()Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;",
        "cafeBinding$delegate",
        "Lkotlin/Lazy;",
        "initViews",
        "",
        "setMargin",
        "cutoutSize",
        "",
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
.field public static final Companion:Lcom/kakaogame/web/CafeWebDialog$Companion;

.field private static final TAG:Ljava/lang/String; = "CafeWebDialog"


# instance fields
.field private final cafeBinding$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$_9JFvdsuQqUGbAC13oOqRHzbvsA(Lcom/kakaogame/web/CafeWebDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/web/CafeWebDialog;->initViews$lambda$4$lambda$2(Lcom/kakaogame/web/CafeWebDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$oFpKJCzdHopGQKWUHRQObr3FtFU(Lcom/kakaogame/web/CafeWebDialog;Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/web/CafeWebDialog;->initViews$lambda$4$lambda$1(Lcom/kakaogame/web/CafeWebDialog;Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$onsggRkGeV-977uY_M81xOY3wDI(Lcom/kakaogame/web/CafeWebDialog;)Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/web/CafeWebDialog;->cafeBinding_delegate$lambda$0(Lcom/kakaogame/web/CafeWebDialog;)Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$y9Y_fVfcgTQiqRFMWp1Ge37mmN0(Lcom/kakaogame/web/CafeWebDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/web/CafeWebDialog;->initViews$lambda$4$lambda$3(Lcom/kakaogame/web/CafeWebDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/web/CafeWebDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/web/CafeWebDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/web/CafeWebDialog;->Companion:Lcom/kakaogame/web/CafeWebDialog$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;)V
    .locals 0

    .line 209
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 199
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/web/WebDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;)V

    .line 229
    new-instance p1, Lcom/kakaogame/web/CafeWebDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/kakaogame/web/CafeWebDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/web/CafeWebDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/web/CafeWebDialog;->cafeBinding$delegate:Lkotlin/Lazy;

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final cafeBinding_delegate$lambda$0(Lcom/kakaogame/web/CafeWebDialog;)Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;
    .locals 0

    .line 229
    invoke-virtual {p0}, Lcom/kakaogame/web/CafeWebDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p0}, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final getCafeBinding()Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/kakaogame/web/CafeWebDialog;->cafeBinding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final initViews$lambda$4$lambda$1(Lcom/kakaogame/web/CafeWebDialog;Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;)V
    .locals 1

    .line 459
    invoke-virtual {p0}, Lcom/kakaogame/web/CafeWebDialog;->getWebLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 469
    iget-object p0, p1, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebContent:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final initViews$lambda$4$lambda$2(Lcom/kakaogame/web/CafeWebDialog;Landroid/view/View;)V
    .locals 1

    .line 619
    iget-object p1, p0, Lcom/kakaogame/web/CafeWebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/kakaogame/web/WebViewContainer;->hasInnerPopupView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 629
    iget-object p0, p0, Lcom/kakaogame/web/CafeWebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/web/WebViewContainer;->goBackInnerPopupView()V

    return-void

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/web/CafeWebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 669
    invoke-virtual {p0}, Lcom/kakaogame/web/CafeWebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 689
    :cond_1
    iget-object p1, p0, Lcom/kakaogame/web/CafeWebDialog;->backView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 699
    :cond_2
    iget-object p0, p0, Lcom/kakaogame/web/CafeWebDialog;->logoView:Landroid/view/View;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final initViews$lambda$4$lambda$3(Lcom/kakaogame/web/CafeWebDialog;Landroid/view/View;)V
    .locals 0

    .line 749
    iget-object p1, p0, Lcom/kakaogame/web/CafeWebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog$Settings;->getCloseListener()Lcom/kakaogame/web/WebDialog$OnCloseListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 759
    iget-object p1, p0, Lcom/kakaogame/web/CafeWebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog$Settings;->getCloseListener()Lcom/kakaogame/web/WebDialog$OnCloseListener;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/kakaogame/web/WebDialog;

    invoke-interface {p1, p0}, Lcom/kakaogame/web/WebDialog$OnCloseListener;->onClose(Lcom/kakaogame/web/WebDialog;)V

    goto :goto_0

    .line 779
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/web/CafeWebDialog;->dismiss()V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected initViews()V
    .locals 8

    .line 259
    invoke-direct {p0}, Lcom/kakaogame/web/CafeWebDialog;->getCafeBinding()Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kakaogame/web/CafeWebDialog;->setContentView(Landroid/view/View;)V

    .line 279
    invoke-direct {p0}, Lcom/kakaogame/web/CafeWebDialog;->getCafeBinding()Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;

    move-result-object v0

    .line 289
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebContent:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/kakaogame/web/CafeWebDialog;->setWebView(Landroid/webkit/WebView;)V

    .line 299
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0, v1}, Lcom/kakaogame/web/CafeWebDialog;->setWebLayout(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 319
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogCafeLogo:Landroid/widget/ImageView;

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/kakaogame/web/CafeWebDialog;->logoView:Landroid/view/View;

    .line 329
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebTopbarBack:Landroid/widget/ImageView;

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/kakaogame/web/CafeWebDialog;->backView:Landroid/view/View;

    .line 349
    iget-object v1, p0, Lcom/kakaogame/web/CafeWebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/web/WebDialog$Settings;->getBackgroundColor()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 359
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebMain:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kakaogame/web/CafeWebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v2}, Lcom/kakaogame/web/WebDialog$Settings;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/web/CafeWebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 399
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v3, 0x1

    .line 409
    invoke-virtual {v1, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 419
    invoke-virtual {p0}, Lcom/kakaogame/web/CafeWebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 439
    invoke-virtual {p0}, Lcom/kakaogame/web/CafeWebDialog;->getWebLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 449
    invoke-virtual {p0}, Lcom/kakaogame/web/CafeWebDialog;->getWebLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    new-instance v4, Lcom/kakaogame/web/CafeWebDialog$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0}, Lcom/kakaogame/web/CafeWebDialog$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/web/CafeWebDialog;Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;)V

    invoke-virtual {v1, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 489
    new-instance v1, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;

    move-object v4, p0

    check-cast v4, Lcom/kakaogame/web/WebDialog;

    .line 499
    invoke-virtual {p0}, Lcom/kakaogame/web/CafeWebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 509
    iget-object v6, v0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebContent:Landroid/webkit/WebView;

    const v7, 0x336c0e1b

    invoke-static {v7}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    iget-object v7, p0, Lcom/kakaogame/web/CafeWebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    .line 489
    invoke-direct {v1, v4, v5, v6, v7}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;-><init>(Lcom/kakaogame/web/WebDialog;Landroid/app/Activity;Landroid/webkit/WebView;Lcom/kakaogame/web/WebDialog$Settings;)V

    check-cast v1, Lcom/kakaogame/web/WebViewContainer;

    iput-object v1, p0, Lcom/kakaogame/web/CafeWebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    .line 539
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->offWebViewPopupUI()Z

    move-result v1

    if-nez v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/kakaogame/web/CafeWebDialog;->webUrl:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/kakaogame/web/CafeWebDialog;->webUrl:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    const v4, 0x5d1e82cf

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v4, v2, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebContent:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const v2, -0x224d0294

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 579
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/kakaogame/web/CafeWebDialog;->backView:Landroid/view/View;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/kakaogame/web/CafeWebDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/kakaogame/web/CafeWebDialog$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/web/CafeWebDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    :cond_2
    iget-object v0, v0, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWebTopbarClose:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/kakaogame/web/CafeWebDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/kakaogame/web/CafeWebDialog$$ExternalSyntheticLambda3;-><init>(Lcom/kakaogame/web/CafeWebDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected setMargin(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 849
    invoke-direct/range {p0 .. p0}, Lcom/kakaogame/web/CafeWebDialog;->getCafeBinding()Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/kakaogame/databinding/ZinnySdkCafeDialogWebKakaoBinding;->zinnySdkDialogWeb:Landroid/widget/RelativeLayout;

    const v3, 0x5d1e8d47

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/web/CafeWebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/kakaogame/util/DisplayUtil;->getCurrentWindowMetricsPointCompat(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v3

    .line 879
    iget v4, v3, Landroid/graphics/Point;->y:I

    .line 889
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 909
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const v7, 0x5437a63a

    invoke-static {v7}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x336c01f3

    invoke-static {v7}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7d7ea50d

    invoke-static {v7}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/web/CafeWebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/kakaogame/util/DisplayUtil;->isScreenPortrait(Landroid/app/Activity;)Z

    move-result v5

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/web/CafeWebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, v0, Lcom/kakaogame/web/CafeWebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v8, v5}, Lcom/kakaogame/web/WebDialog$Settings;->getHeight(Z)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int v6, v4, v6

    .line 949
    div-int/lit8 v6, v6, 0x2

    .line 969
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/web/CafeWebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, v0, Lcom/kakaogame/web/CafeWebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v9, v5}, Lcom/kakaogame/web/WebDialog$Settings;->getWidth(Z)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int v8, v3, v8

    .line 979
    div-int/lit8 v8, v8, 0x2

    .line 989
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Lcom/kakaogame/web/CafeWebDialog;->viewMargin:I

    .line 999
    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/web/CafeWebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/kakaogame/R$dimen;->sdk_cafe_menu_tab:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1029
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/web/CafeWebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/kakaogame/R$dimen;->sdk_cafe_title:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x5d1e8f7f

    invoke-static {v10}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x225baf76

    invoke-static {v11}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x5d1e8e5f

    invoke-static {v12}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x5437a512

    invoke-static {v13}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x336c0323

    invoke-static {v14}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x5437a21a

    invoke-static {v15}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v15

    const v0, 0x7d7ea18d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v2

    const v2, 0x7d7ea175

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_1

    .line 1059
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/web/CafeWebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v1, Lcom/kakaogame/R$dimen;->sdk_cafe_min_bottom_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1079
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/web/CafeWebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v17, v6

    sget v6, Lcom/kakaogame/R$dimen;->sdk_cafe_min_side_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1089
    sget-object v6, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    move-object/from16 v18, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v0, v5, 0x2

    sub-int v0, v3, v0

    mul-int/lit16 v2, v0, 0x9b

    .line 1119
    div-int/lit8 v2, v2, 0x64

    sub-int v6, v4, v2

    sub-int/2addr v6, v8

    sub-int/2addr v6, v9

    if-ge v6, v1, :cond_0

    sub-int/2addr v4, v8

    sub-int/2addr v4, v9

    sub-int v2, v4, v1

    mul-int/lit8 v0, v2, 0x64

    .line 1159
    div-int/lit16 v0, v0, 0x9b

    sub-int/2addr v3, v0

    .line 1169
    div-int/lit8 v5, v3, 0x2

    goto :goto_0

    :cond_0
    move v1, v6

    .line 1199
    :goto_0
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v6, v18

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v10, p1

    move-object/from16 v0, v17

    .line 1219
    invoke-virtual {v0, v5, v10, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object v3, v0

    goto/16 :goto_2

    :cond_1
    move-object/from16 v19, v10

    move v10, v1

    move-object v1, v6

    move-object/from16 v6, v19

    .line 1239
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/web/CafeWebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v17, v1

    .line 1249
    sget v1, Lcom/kakaogame/R$dimen;->sdk_cafe_land_min_bottom_margin:I

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1269
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/web/CafeWebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v10, Lcom/kakaogame/R$dimen;->sdk_cafe_land_min_side_margin:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1279
    sget-object v10, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    move-object/from16 v18, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v7, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v4, v9

    sub-int v0, v4, v1

    mul-int/lit8 v2, v0, 0x2

    sub-int v6, v3, v2

    sub-int/2addr v6, v8

    .line 1319
    div-int/lit8 v6, v6, 0x2

    if-ge v6, v5, :cond_2

    sub-int/2addr v3, v8

    mul-int/lit8 v0, v5, 0x2

    sub-int v2, v3, v0

    .line 1349
    div-int/lit8 v0, v2, 0x2

    sub-int v1, v4, v0

    goto :goto_1

    :cond_2
    move v5, v6

    .line 1389
    :goto_1
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/web/CafeWebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/kakaogame/util/DisplayUtil;->getLandscapeDirection(Landroid/app/Activity;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    add-int v0, v5, p1

    move-object/from16 v3, v17

    .line 1419
    invoke-virtual {v3, v0, v2, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_3
    move-object/from16 v3, v17

    .line 1429
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/web/CafeWebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/kakaogame/util/DisplayUtil;->getLandscapeDirection(Landroid/app/Activity;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    add-int v0, v5, p1

    .line 1439
    invoke-virtual {v3, v5, v2, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1469
    :cond_4
    :goto_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1479
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .array-data 1
    .end array-data
.end method
