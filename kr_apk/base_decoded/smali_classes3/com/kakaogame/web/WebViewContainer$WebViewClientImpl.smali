.class final Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;
.super Landroid/webkit/WebViewClient;
.source "WebViewContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/web/WebViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WebViewClientImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J&\u0010\r\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\u001c\u0010\u0011\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0016J&\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J.\u0010\u0016\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0016J0\u0010\u001b\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u0016J0\u0010 \u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00052\u0008\u0010!\u001a\u0004\u0018\u00010\u00052\u0008\u0010\"\u001a\u0004\u0018\u00010\u0005H\u0016J&\u0010#\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\u001c\u001a\u0004\u0018\u00010$2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J\"\u0010\'\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0016J&\u0010+\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010,\u001a\u0004\u0018\u00010\u000f2\u0008\u0010-\u001a\u0004\u0018\u00010\u000fH\u0016J\u001c\u0010.\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010/\u001a\u0004\u0018\u000100H\u0016J\u001c\u00101\u001a\u00020\u000c2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010/\u001a\u0004\u0018\u000100H\u0016J\u001c\u00102\u001a\u00020\u000c2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;",
        "Landroid/webkit/WebViewClient;",
        "<init>",
        "(Lcom/kakaogame/web/WebViewContainer;)V",
        "shouldOverrideUrl",
        "",
        "doUpdateVisitedHistory",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "isReload",
        "",
        "onFormResubmission",
        "dontResend",
        "Landroid/os/Message;",
        "resend",
        "onLoadResource",
        "onPageFinished",
        "onPageStarted",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "onReceivedError",
        "errorCode",
        "",
        "description",
        "failingUrl",
        "onReceivedHttpAuthRequest",
        "handler",
        "Landroid/webkit/HttpAuthHandler;",
        "host",
        "realm",
        "onReceivedLoginRequest",
        "account",
        "args",
        "onReceivedSslError",
        "Landroid/webkit/SslErrorHandler;",
        "error",
        "Landroid/net/http/SslError;",
        "onScaleChanged",
        "oldScale",
        "",
        "newScale",
        "onTooManyRedirects",
        "cancelMsg",
        "continueMsg",
        "onUnhandledKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "shouldOverrideKeyEvent",
        "shouldOverrideUrlLoading",
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
.field private shouldOverrideUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/kakaogame/web/WebViewContainer;


# direct methods
.method public constructor <init>(Lcom/kakaogame/web/WebViewContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5509
    iput-object p1, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 5539
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kakaogame/web/WebViewContainer;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 5589
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 5599
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kakaogame/web/WebViewContainer;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 5639
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 5679
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 5689
    iget-object p2, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p1, v0}, Lcom/kakaogame/web/WebViewContainer;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 5729
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kakaogame/web/WebViewContainer;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5819
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kakaogame/web/WebViewContainer;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5909
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kakaogame/web/WebViewContainer;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5999
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kakaogame/web/WebViewContainer;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6049
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebViewContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kakaogame/web/WebDialogManager;->checkSystemWebViewError(Landroid/webkit/WebView;Landroid/app/Activity;)V

    .line 6069
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kakaogame/web/WebViewContainer;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1

    .line 6109
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kakaogame/web/WebViewContainer;->onScaleChanged(Landroid/webkit/WebView;FF)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .line 6149
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kakaogame/web/WebViewContainer;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1

    .line 6189
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .line 6229
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 6269
    iput-object p2, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->shouldOverrideUrl:Ljava/lang/String;

    .line 6279
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$WebViewClientImpl;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method
