.class final Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;
.super Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;
.source "PaymentWebDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/web/PaymentWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PaymentWebViewContainer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ.\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0014J&\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0015J&\u0010\u0017\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u001aH\u0014J&\u0010\u001b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0015J\u001c\u0010\u001e\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0011H\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;",
        "Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;",
        "Lcom/kakaogame/web/WebDialog;",
        "activity",
        "Landroid/app/Activity;",
        "webView",
        "Landroid/webkit/WebView;",
        "settings",
        "Lcom/kakaogame/web/WebDialog$Settings;",
        "<init>",
        "(Lcom/kakaogame/web/PaymentWebDialog;Landroid/app/Activity;Landroid/webkit/WebView;Lcom/kakaogame/web/WebDialog$Settings;)V",
        "onReceivedError",
        "",
        "view",
        "errorCode",
        "",
        "description",
        "",
        "failingUrl",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "error",
        "Landroid/webkit/WebResourceError;",
        "onReceivedSslError",
        "handler",
        "Landroid/webkit/SslErrorHandler;",
        "Landroid/net/http/SslError;",
        "onReceivedHttpError",
        "errorResponse",
        "Landroid/webkit/WebResourceResponse;",
        "onPageFinished",
        "url",
        "kakaogame_addon_release"
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
.field final synthetic this$0:Lcom/kakaogame/web/PaymentWebDialog;


# direct methods
.method public constructor <init>(Lcom/kakaogame/web/PaymentWebDialog;Landroid/app/Activity;Landroid/webkit/WebView;Lcom/kakaogame/web/WebDialog$Settings;)V
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

    .line 739
    iput-object p1, p0, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;->this$0:Lcom/kakaogame/web/PaymentWebDialog;

    .line 779
    check-cast p1, Lcom/kakaogame/web/WebDialog;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;-><init>(Lcom/kakaogame/web/WebDialog;Landroid/app/Activity;Landroid/webkit/WebView;Lcom/kakaogame/web/WebDialog$Settings;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1239
    invoke-super {p0, p1, p2}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1249
    iget-object p1, p0, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;->this$0:Lcom/kakaogame/web/PaymentWebDialog;

    invoke-static {p1, p2}, Lcom/kakaogame/web/PaymentWebDialog;->access$checkCloseUrl(Lcom/kakaogame/web/PaymentWebDialog;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1259
    iget-object p1, p0, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;->this$0:Lcom/kakaogame/web/PaymentWebDialog;

    invoke-static {p1}, Lcom/kakaogame/web/PaymentWebDialog;->access$getListener$p(Lcom/kakaogame/web/PaymentWebDialog;)Lcom/kakaogame/web/PaymentWebDialog$Listener;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/kakaogame/web/PaymentWebDialog$Listener;->onSuccess()V

    .line 1269
    iget-object p1, p0, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;->this$0:Lcom/kakaogame/web/PaymentWebDialog;

    invoke-virtual {p1}, Lcom/kakaogame/web/PaymentWebDialog;->dismiss()V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 939
    invoke-super {p0, p1, p2, p3}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 949
    iget-object p2, p0, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;->this$0:Lcom/kakaogame/web/PaymentWebDialog;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/kakaogame/web/PaymentWebDialog;->access$checkCloseUrl(Lcom/kakaogame/web/PaymentWebDialog;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 959
    iget-object p1, p0, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;->this$0:Lcom/kakaogame/web/PaymentWebDialog;

    invoke-static {p1}, Lcom/kakaogame/web/PaymentWebDialog;->access$getListener$p(Lcom/kakaogame/web/PaymentWebDialog;)Lcom/kakaogame/web/PaymentWebDialog$Listener;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/kakaogame/web/PaymentWebDialog$Listener;->onCallbackError()V

    .line 969
    iget-object p1, p0, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;->this$0:Lcom/kakaogame/web/PaymentWebDialog;

    invoke-virtual {p1}, Lcom/kakaogame/web/PaymentWebDialog;->dismiss()V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method protected onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 1159
    invoke-super {p0, p1, p2, p3}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 1169
    iget-object p3, p0, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;->this$0:Lcom/kakaogame/web/PaymentWebDialog;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/kakaogame/web/PaymentWebDialog;->access$checkCloseUrl(Lcom/kakaogame/web/PaymentWebDialog;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;->this$0:Lcom/kakaogame/web/PaymentWebDialog;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/kakaogame/web/PaymentWebDialog;->access$checkCloseUrl(Lcom/kakaogame/web/PaymentWebDialog;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1179
    :cond_0
    iget-object p1, p0, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;->this$0:Lcom/kakaogame/web/PaymentWebDialog;

    invoke-static {p1}, Lcom/kakaogame/web/PaymentWebDialog;->access$getListener$p(Lcom/kakaogame/web/PaymentWebDialog;)Lcom/kakaogame/web/PaymentWebDialog$Listener;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/kakaogame/web/PaymentWebDialog$Listener;->onCallbackError()V

    .line 1189
    iget-object p1, p0, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;->this$0:Lcom/kakaogame/web/PaymentWebDialog;

    invoke-virtual {p1}, Lcom/kakaogame/web/PaymentWebDialog;->dismiss()V

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 1029
    invoke-super {p0, p1, p2, p3}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1039
    iget-object p2, p0, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;->this$0:Lcom/kakaogame/web/PaymentWebDialog;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/kakaogame/web/PaymentWebDialog;->access$checkCloseUrl(Lcom/kakaogame/web/PaymentWebDialog;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1049
    iget-object p1, p0, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;->this$0:Lcom/kakaogame/web/PaymentWebDialog;

    invoke-static {p1}, Lcom/kakaogame/web/PaymentWebDialog;->access$getListener$p(Lcom/kakaogame/web/PaymentWebDialog;)Lcom/kakaogame/web/PaymentWebDialog$Listener;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/kakaogame/web/PaymentWebDialog$Listener;->onCallbackError()V

    .line 1059
    iget-object p1, p0, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;->this$0:Lcom/kakaogame/web/PaymentWebDialog;

    invoke-virtual {p1}, Lcom/kakaogame/web/PaymentWebDialog;->dismiss()V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
