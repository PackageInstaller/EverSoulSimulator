.class public Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;
.super Lcom/kakaogame/web/WebViewContainer;
.source "WebDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/web/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WebViewContainerImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008\u0094\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001c\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u001c\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001cH\u0014J\u001c\u0010 \u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001cH\u0014J\u001c\u0010!\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00112\u0008\u0010\"\u001a\u0004\u0018\u00010\u0017H\u0016J\u0008\u0010#\u001a\u00020\u0019H\u0016J0\u0010$\u001a\u00020\u001e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001c2\u0008\u0010%\u001a\u0004\u0018\u00010\u001c2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;",
        "Lcom/kakaogame/web/WebViewContainer;",
        "activity",
        "Landroid/app/Activity;",
        "webView",
        "Landroid/webkit/WebView;",
        "settings",
        "Lcom/kakaogame/web/WebDialog$Settings;",
        "<init>",
        "(Lcom/kakaogame/web/WebDialog;Landroid/app/Activity;Landroid/webkit/WebView;Lcom/kakaogame/web/WebDialog$Settings;)V",
        "lock",
        "",
        "layoutParameters",
        "Landroid/widget/FrameLayout$LayoutParams;",
        "customViewContainer",
        "Landroid/view/ViewGroup;",
        "customView",
        "Landroid/view/View;",
        "getCustomView",
        "()Landroid/view/View;",
        "setCustomView",
        "(Landroid/view/View;)V",
        "customViewCallback",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
        "onReceivedTitle",
        "",
        "view",
        "title",
        "",
        "shouldOverrideUrlLoading",
        "",
        "url",
        "onPageFinished",
        "onShowCustomView",
        "callback",
        "onHideCustomView",
        "onJsAlert",
        "message",
        "result",
        "Landroid/webkit/JsResult;",
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
.field private customView:Landroid/view/View;

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private customViewContainer:Landroid/view/ViewGroup;

.field private final layoutParameters:Landroid/widget/FrameLayout$LayoutParams;

.field private final lock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/kakaogame/web/WebDialog;


# direct methods
.method public static synthetic $r8$lambda$rH4FyZEfE5cJ7hBFs7AmqlCnNKA(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->onJsAlert$lambda$2(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakaogame/web/WebDialog;Landroid/app/Activity;Landroid/webkit/WebView;Lcom/kakaogame/web/WebDialog$Settings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/webkit/WebView;",
            "Lcom/kakaogame/web/WebDialog$Settings;",
            ")V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x543983ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d10a28f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6239
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    .line 6279
    invoke-virtual {p4}, Lcom/kakaogame/web/WebDialog$Settings;->getCustomCookie()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p4}, Lcom/kakaogame/web/WebDialog$Settings;->getCookieExcludeOption()I

    move-result v0

    invoke-direct {p0, p2, p3, p1, v0}, Lcom/kakaogame/web/WebViewContainer;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/util/Map;I)V

    .line 6289
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->lock:Ljava/lang/Object;

    .line 6299
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    const/16 v0, 0x11

    invoke-direct {p1, p2, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->layoutParameters:Landroid/widget/FrameLayout$LayoutParams;

    .line 8169
    invoke-virtual {p4}, Lcom/kakaogame/web/WebDialog$Settings;->isFixedTextFontSize()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8179
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getCustomViewContainer$p(Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 6239
    iget-object p0, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customViewContainer:Landroid/view/ViewGroup;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final onJsAlert$lambda$2(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 8089
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    .line 8099
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCustomView()Landroid/view/View;
    .locals 1

    .line 6349
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customView:Landroid/view/View;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public onHideCustomView()V
    .locals 4

    .line 7739
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x336c114b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d02a828

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7749
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 7759
    :try_start_0
    iget-object v1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 7769
    monitor-exit v0

    return-void

    .line 7789
    :cond_0
    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7799
    iget-object v1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customViewContainer:Landroid/view/ViewGroup;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7829
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 7839
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v2, 0x1f4

    .line 7849
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 7859
    new-instance v2, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl$onHideCustomView$1$1;

    invoke-direct {v2, p0}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl$onHideCustomView$1$1;-><init>(Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;)V

    check-cast v2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7929
    iget-object v2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customViewContainer:Landroid/view/ViewGroup;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7939
    iget-object v1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    const/4 v1, 0x0

    .line 7949
    iput-object v1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customView:Landroid/view/View;

    .line 7959
    iput-object v1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 7979
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7749
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    nop

    .array-data 1
    .end array-data
.end method

.method protected onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 18

    .line 8069
    new-instance v15, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1ffb

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v3, p3

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8079
    new-instance v0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl$$ExternalSyntheticLambda0;

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/JsResult;)V

    const v1, 0x104000a

    move-object/from16 v2, v17

    invoke-virtual {v2, v1, v0}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 8119
    sget-object v0, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    const/4 v0, 0x1

    return v0

    .array-data 1
    .end array-data
.end method

.method protected onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 7159
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    invoke-virtual {p2}, Lcom/kakaogame/web/WebDialog;->getWebLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 7169
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    invoke-virtual {p2}, Lcom/kakaogame/web/WebDialog;->getWebLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 7199
    :cond_0
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    iget-object p2, p2, Lcom/kakaogame/web/WebDialog;->backView:Landroid/view/View;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 7219
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p2

    const/16 v1, 0x8

    if-eqz p2, :cond_2

    .line 7229
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    iget-object p2, p2, Lcom/kakaogame/web/WebDialog;->backView:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7239
    :cond_1
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    iget-object p2, p2, Lcom/kakaogame/web/WebDialog;->logoView:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 7249
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    iget-object p2, p2, Lcom/kakaogame/web/WebDialog;->logoView:Landroid/view/View;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7279
    :cond_2
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    iget-object p2, p2, Lcom/kakaogame/web/WebDialog;->backView:Landroid/view/View;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7289
    :cond_3
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    iget-object p2, p2, Lcom/kakaogame/web/WebDialog;->logoView:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 7299
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    iget-object p2, p2, Lcom/kakaogame/web/WebDialog;->logoView:Landroid/view/View;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7359
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    iget-object p2, p2, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {p2}, Lcom/kakaogame/web/WebDialog$Settings;->isFixedTitle()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 7369
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    iget-object p2, p2, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {p2}, Lcom/kakaogame/web/WebDialog$Settings;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 7379
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    .line 7389
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object p2, v0

    .line 7409
    :cond_6
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog;->getTitleView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_9

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7429
    :cond_7
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    invoke-virtual {p2}, Lcom/kakaogame/web/WebDialog;->getTitleView()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_8
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method protected onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 6379
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    invoke-virtual {p2}, Lcom/kakaogame/web/WebDialog;->getTitleView()Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 6389
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    iget-object p2, p2, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {p2}, Lcom/kakaogame/web/WebDialog$Settings;->isFixedTitle()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6399
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    iget-object p2, p2, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {p2}, Lcom/kakaogame/web/WebDialog$Settings;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 6409
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 6419
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object p2, v0

    .line 6439
    :cond_2
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog;->getTitleView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6459
    :cond_3
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    invoke-virtual {p2}, Lcom/kakaogame/web/WebDialog;->getTitleView()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_4
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    .line 7479
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x336c114b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x4517d9a7

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7489
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->lock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    monitor-enter v0

    .line 7499
    :try_start_0
    iget-object v2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customView:Landroid/view/View;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    .line 7509
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7519
    :cond_0
    monitor-exit v0

    return-void

    .line 7539
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customViewContainer:Landroid/view/ViewGroup;

    const v3, 0x106000c

    if-nez v2, :cond_2

    .line 7559
    sget v2, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_custom_container:I

    invoke-virtual {v1, v2}, Lcom/kakaogame/web/WebDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    .line 7549
    iput-object v1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customViewContainer:Landroid/view/ViewGroup;

    .line 7569
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 7589
    iget-object v1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->layoutParameters:Landroid/widget/FrameLayout$LayoutParams;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 7599
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7609
    :cond_4
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customView:Landroid/view/View;

    .line 7619
    iput-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 7629
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customViewContainer:Landroid/view/ViewGroup;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7639
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customViewContainer:Landroid/view/ViewGroup;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7649
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/high16 p2, 0x10a0000

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const-wide/16 v1, 0xc8

    .line 7659
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v1, 0x1f4

    .line 7669
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 7679
    iget-object p2, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customView:Landroid/view/View;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7689
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7489
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 0

    .line 6349
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->customView:Landroid/view/View;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    .line 6519
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d72e3a5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x336c114b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 6549
    :cond_0
    sget-object v1, Lcom/kakaogame/ui/DeepLinkManager;->INSTANCE:Lcom/kakaogame/ui/DeepLinkManager;

    invoke-virtual {v1, p2}, Lcom/kakaogame/ui/DeepLinkManager;->isDeepLink(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6559
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    invoke-static {p1, p2}, Lcom/kakaogame/web/WebDialog;->access$setDeepLinkUrl$p(Lcom/kakaogame/web/WebDialog;Ljava/lang/String;)V

    .line 6569
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog;->dismiss()V

    goto/16 :goto_0

    .line 6599
    :cond_1
    sget-object v1, Lcom/kakaogame/ui/DeepLinkManager;->INSTANCE:Lcom/kakaogame/ui/DeepLinkManager;

    invoke-virtual {v1, p2}, Lcom/kakaogame/ui/DeepLinkManager;->isPlatformDeepLink(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 6609
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance p1, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl$shouldOverrideUrlLoading$1;

    invoke-direct {p1, p0, p2, v2}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl$shouldOverrideUrlLoading$1;-><init>(Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_0

    :cond_2
    const v1, 0x5d12d467

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 6669
    invoke-static {p2, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6689
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog;->dismiss()V

    goto/16 :goto_0

    :cond_3
    const v1, 0x5d1e9e47

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 6719
    invoke-static {p2, v1, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6739
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    invoke-static {p1, p2}, Lcom/kakaogame/web/WebDialog;->access$changeTitleText(Lcom/kakaogame/web/WebDialog;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const v1, -0x224034ac

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 6769
    invoke-static {p2, v1, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6789
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/kakaogame/util/AppUtil;->launchIntent(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_5
    const v1, 0x7d7eb765

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 6839
    invoke-static {p2, v1, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const v5, 0x5d145a37

    invoke-static {v5}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_8

    .line 6859
    :try_start_0
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 6879
    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 6889
    :cond_6
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "LINK"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3, v4, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string p2, "browser_fallback_url"

    .line 6909
    invoke-virtual {v1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_7

    .line 6919
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return v0

    :catch_0
    return v3

    .line 6989
    :cond_8
    sget-object v1, Lcom/kakaogame/web/WebViewContainer;->Companion:Lcom/kakaogame/web/WebViewContainer$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v1, v6, p2}, Lcom/kakaogame/web/WebViewContainer$Companion;->handleCustomScheme(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6999
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/web/WebDialog;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog;->dismiss()V

    return v0

    .line 7049
    :cond_9
    invoke-static {p2, v5, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const v1, 0x7d7cbb25

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 7059
    invoke-static {p2, v1, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    .line 7099
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method
