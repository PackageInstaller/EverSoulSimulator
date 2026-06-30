.class public final Lcom/kakaogame/idp/SIWAWebDialog;
.super Lcom/kakaogame/web/WebDialog;
.source "SIWAWebDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/idp/SIWAWebDialog$Companion;,
        Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00132\u00020\u0001:\u0002\u0012\u0013B%\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\r\u001a\u00020\u000eH\u0014J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakaogame/idp/SIWAWebDialog;",
        "Lcom/kakaogame/web/WebDialog;",
        "activity",
        "Landroid/app/Activity;",
        "webUrl",
        "",
        "settings",
        "Lcom/kakaogame/web/WebDialog$Settings;",
        "<init>",
        "(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;)V",
        "responseData",
        "siwaWebBinding",
        "Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;",
        "initViews",
        "",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "SIWAWebViewContainerImpl",
        "Companion",
        "idp_siwa_release"
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
.field public static final Companion:Lcom/kakaogame/idp/SIWAWebDialog$Companion;

.field private static final TAG:Ljava/lang/String; = "SIWAWebDialog"

.field private static final closeWebAppProtocol:Ljava/lang/String; = "zinny://closeview"

.field private static final responseWebAppProtocol:Ljava/lang/String; = "zinny://siwaResponse"


# instance fields
.field public responseData:Ljava/lang/String;

.field private siwaWebBinding:Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;


# direct methods
.method public static synthetic $r8$lambda$Wk8pbrQzysvNvIashZUAW-utWGQ(Lcom/kakaogame/idp/SIWAWebDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/idp/SIWAWebDialog;->initViews$lambda$2$lambda$1(Lcom/kakaogame/idp/SIWAWebDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$vc5mWcSsXCHn2NgW11FnkUYVBT8(Lcom/kakaogame/idp/SIWAWebDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->initViews$lambda$2$lambda$0(Lcom/kakaogame/idp/SIWAWebDialog;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/idp/SIWAWebDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/idp/SIWAWebDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/idp/SIWAWebDialog;->Companion:Lcom/kakaogame/idp/SIWAWebDialog$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;)V
    .locals 0

    .line 279
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 269
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/web/WebDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;)V

    const-string p1, ""

    .line 309
    iput-object p1, p0, Lcom/kakaogame/idp/SIWAWebDialog;->responseData:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getWebLayout(Lcom/kakaogame/idp/SIWAWebDialog;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 269
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getWebLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final initViews$lambda$2$lambda$0(Lcom/kakaogame/idp/SIWAWebDialog;)V
    .locals 2

    .line 529
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getWebLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 539
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final initViews$lambda$2$lambda$1(Lcom/kakaogame/idp/SIWAWebDialog;Landroid/view/View;)V
    .locals 0

    .line 609
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected initViews()V
    .locals 4

    .line 359
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/idp/SIWAWebDialog;->siwaWebBinding:Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;

    const/4 v1, 0x0

    const v2, -0x2240373c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    .line 379
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/SIWAWebDialog;->setContentView(Landroid/view/View;)V

    .line 389
    iget-object v0, p0, Lcom/kakaogame/idp/SIWAWebDialog;->siwaWebBinding:Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 419
    :goto_0
    iget-object v0, v1, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->zinnySdkDialogWebContent:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/SIWAWebDialog;->setWebView(Landroid/webkit/WebView;)V

    .line 439
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 449
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v2, 0x1

    .line 459
    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 469
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 499
    iget-object v0, v1, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->zinnySdkDialogWebLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/SIWAWebDialog;->setWebLayout(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 509
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getWebLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 519
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getWebLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v2, Lcom/kakaogame/idp/SIWAWebDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/kakaogame/idp/SIWAWebDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/idp/SIWAWebDialog;)V

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 569
    iget-object v0, v1, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->zinnySdkDialogWebTopbar:Landroid/widget/RelativeLayout;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/SIWAWebDialog;->setTopbarView(Landroid/view/View;)V

    .line 579
    iget-object v0, v1, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->zinnySdkDialogWebTopbarBack:Landroid/widget/ImageView;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/kakaogame/idp/SIWAWebDialog;->backView:Landroid/view/View;

    .line 599
    iget-object v0, v1, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->zinnySdkDialogWebTopbarClose:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/kakaogame/idp/SIWAWebDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/kakaogame/idp/SIWAWebDialog$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/idp/SIWAWebDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    new-instance v0, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;

    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;-><init>(Lcom/kakaogame/idp/SIWAWebDialog;Landroid/app/Activity;Landroid/webkit/WebView;)V

    check-cast v0, Lcom/kakaogame/web/WebViewContainer;

    iput-object v0, p0, Lcom/kakaogame/idp/SIWAWebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    .line 649
    iget-object v0, p0, Lcom/kakaogame/idp/SIWAWebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kakaogame/idp/SIWAWebDialog;->webUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/web/WebViewContainer;->initCookies(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const v0, 0x7d77683d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x224230c4

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x5d10d32f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getPreOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x2257eb76

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getPreOrientation()I

    move-result v0

    if-ltz v0, :cond_0

    .line 739
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getPreOrientation()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 749
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getPreScreenLayout()I

    move-result v0

    if-ltz v0, :cond_0

    .line 759
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getPreScreenLayout()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/idp/SIWAWebDialog;->siwaWebBinding:Lcom/kakaogame/apple/databinding/KakaoSdkSiwaDialogBinding;

    .line 779
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->initViews()V

    .line 789
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->setDialogVisibility()V

    .line 799
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/kakaogame/util/DisplayUtil;->checkCutout(Landroid/app/Activity;)I

    move-result v0

    .line 809
    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/SIWAWebDialog;->setMargin(I)V

    .line 819
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getPostData()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 829
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/idp/SIWAWebDialog;->webUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/idp/SIWAWebDialog;->webUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog;->getPostData()[B

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 889
    :cond_2
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/SIWAWebDialog;->setPreOrientation(I)V

    .line 899
    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p0, p1}, Lcom/kakaogame/idp/SIWAWebDialog;->setPreScreenLayout(I)V

    return-void

    .array-data 1
    .end array-data
.end method
