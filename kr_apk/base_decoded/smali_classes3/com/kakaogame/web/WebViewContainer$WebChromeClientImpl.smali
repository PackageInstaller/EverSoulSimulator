.class public final Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;
.super Landroid/webkit/WebChromeClient;
.source "WebViewContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/web/WebViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WebChromeClientImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J,\u0010\u000c\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J>\u0010\u0012\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0005H\u0016J\u001c\u0010\u001d\u001a\u00020\u00052\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0008\u0010!\u001a\u00020\u0005H\u0016J0\u0010\"\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010#\u001a\u0004\u0018\u00010\u00142\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J0\u0010&\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010#\u001a\u0004\u0018\u00010\u00142\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J0\u0010\'\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010#\u001a\u0004\u0018\u00010\u00142\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J:\u0010(\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010#\u001a\u0004\u0018\u00010\u00142\u0008\u0010)\u001a\u0004\u0018\u00010\u00142\u0008\u0010$\u001a\u0004\u0018\u00010*H\u0016J\u0008\u0010+\u001a\u00020\tH\u0016J\u001a\u0010,\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072\u0006\u0010-\u001a\u00020.H\u0016J \u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u001c\u00101\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072\u0008\u00102\u001a\u0004\u0018\u000103H\u0016J\u001c\u00104\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072\u0008\u00105\u001a\u0004\u0018\u00010\u0014H\u0016J$\u00106\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u00107\u001a\u00020\tH\u0016J\u0012\u00108\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u00109\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010:2\u0008\u0010\u001f\u001a\u0004\u0018\u00010;H\u0016J$\u00109\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010:2\u0006\u0010<\u001a\u00020.2\u0008\u0010\u001f\u001a\u0004\u0018\u00010;H\u0017J2\u0010=\u001a\u00020\t2\u0008\u0010>\u001a\u0004\u0018\u00010\u00072\u0014\u0010?\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020B0A\u0018\u00010@2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0017\u00a8\u0006E"
    }
    d2 = {
        "Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;",
        "Landroid/webkit/WebChromeClient;",
        "<init>",
        "(Lcom/kakaogame/web/WebViewContainer;)V",
        "onCloseWindow",
        "",
        "window",
        "Landroid/webkit/WebView;",
        "onConsoleMessage",
        "",
        "consoleMessage",
        "Landroid/webkit/ConsoleMessage;",
        "onCreateWindow",
        "view",
        "isDialog",
        "isUserGesture",
        "resultMsg",
        "Landroid/os/Message;",
        "onExceededDatabaseQuota",
        "url",
        "",
        "databaseIdentifier",
        "currentQuota",
        "",
        "estimatedSize",
        "totalUsedQuota",
        "quotaUpdater",
        "Landroid/webkit/WebStorage$QuotaUpdater;",
        "onGeolocationPermissionsHidePrompt",
        "onGeolocationPermissionsShowPrompt",
        "origin",
        "callback",
        "Landroid/webkit/GeolocationPermissions$Callback;",
        "onHideCustomView",
        "onJsAlert",
        "message",
        "result",
        "Landroid/webkit/JsResult;",
        "onJsBeforeUnload",
        "onJsConfirm",
        "onJsPrompt",
        "defaultValue",
        "Landroid/webkit/JsPromptResult;",
        "onJsTimeout",
        "onProgressChanged",
        "newProgress",
        "",
        "onReachedMaxAppCacheSize",
        "spaceNeeded",
        "onReceivedIcon",
        "icon",
        "Landroid/graphics/Bitmap;",
        "onReceivedTitle",
        "title",
        "onReceivedTouchIconUrl",
        "precomposed",
        "onRequestFocus",
        "onShowCustomView",
        "Landroid/view/View;",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
        "requestedOrientation",
        "onShowFileChooser",
        "webView",
        "filePathCallback",
        "Landroid/webkit/ValueCallback;",
        "",
        "Landroid/net/Uri;",
        "fileChooserParams",
        "Landroid/webkit/WebChromeClient$FileChooserParams;",
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
.field final synthetic this$0:Lcom/kakaogame/web/WebViewContainer;


# direct methods
.method public constructor <init>(Lcom/kakaogame/web/WebViewContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6319
    iput-object p1, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .line 6339
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1}, Lcom/kakaogame/web/WebViewContainer;->onCloseWindow(Landroid/webkit/WebView;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 6379
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1}, Lcom/kakaogame/web/WebViewContainer;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 4

    .line 6469
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    if-eqz p2, :cond_0

    const-string/jumbo p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    :goto_0
    const v0, 0x7d7e817d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const v1, 0x225b8d7e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 6489
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    const v2, -0x224c4b34

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6499
    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 6509
    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p3

    const v2, 0x543c2392

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 6519
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_1

    const-string p3, "null"

    :cond_1
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v1, p3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6559
    invoke-virtual {p1}, Landroid/webkit/WebView;->removeAllViews()V

    .line 6569
    new-instance p3, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 6579
    iget-object p1, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-static {p1, p3}, Lcom/kakaogame/web/WebViewContainer;->access$setWebSettings(Lcom/kakaogame/web/WebViewContainer;Landroid/webkit/WebView;)V

    .line 6589
    new-instance p1, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;

    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-direct {p1, v0}, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;-><init>(Lcom/kakaogame/web/WebViewContainer;)V

    check-cast p1, Landroid/webkit/WebChromeClient;

    invoke-virtual {p3, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 6599
    new-instance p1, Landroid/webkit/WebViewClient;

    invoke-direct {p1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p3, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 6609
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p3, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6649
    iget-object p1, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    .line 6659
    iget-object p1, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 6669
    iget-object p1, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebViewContainer;->getInnerPopupViews()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_2

    .line 6679
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const-string p2, "null cannot be cast to non-null type android.webkit.WebView.WebViewTransport"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 6689
    invoke-virtual {p1, p3}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 6699
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1

    :cond_3
    return p2

    .array-data 1
    .end array-data
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 11

    move-object v0, p0

    .line 6839
    iget-object v1, v0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/kakaogame/web/WebViewContainer;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .line 6949
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebViewContainer;->onGeolocationPermissionsHidePrompt()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1

    .line 7019
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onHideCustomView()V
    .locals 1

    .line 7059
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 7069
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebViewContainer;->onHideCustomView()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 7159
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kakaogame/web/WebViewContainer;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 7249
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kakaogame/web/WebViewContainer;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 7339
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kakaogame/web/WebViewContainer;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    .line 7439
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/kakaogame/web/WebViewContainer;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public onJsTimeout()Z
    .locals 1

    .line 7479
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebViewContainer;->onJsTimeout()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 7519
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 6

    .line 7599
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/kakaogame/web/WebViewContainer;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 7679
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 7719
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 7759
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kakaogame/web/WebViewContainer;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1

    .line 7799
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1}, Lcom/kakaogame/web/WebViewContainer;->onRequestFocus(Landroid/webkit/WebView;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 7939
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 7949
    iget-object p2, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {p2, p1, p3}, Lcom/kakaogame/web/WebViewContainer;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 7839
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 7849
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 8059
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x54378062

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d179617

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x225b8d7e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8069
    iget-object p1, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-static {p1}, Lcom/kakaogame/web/WebViewContainer;->access$clearFileChooser(Lcom/kakaogame/web/WebViewContainer;)V

    .line 8079
    iget-object p1, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {p1, p2}, Lcom/kakaogame/web/WebViewContainer;->setUploadMessages(Landroid/webkit/ValueCallback;)V

    .line 8089
    iget-object p1, p0, Lcom/kakaogame/web/WebViewContainer$WebChromeClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p2

    const v0, 0x5437810a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/kakaogame/web/WebViewContainer;->access$openFileChooser(Lcom/kakaogame/web/WebViewContainer;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method
