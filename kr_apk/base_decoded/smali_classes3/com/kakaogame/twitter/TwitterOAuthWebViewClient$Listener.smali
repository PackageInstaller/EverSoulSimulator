.class public interface abstract Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$Listener;
.super Ljava/lang/Object;
.source "TwitterOAuthWebViewClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/twitter/TwitterOAuthWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008`\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u001c\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J\u0012\u0010\r\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000cH&J\u0016\u0010\u000f\u001a\u00020\u00032\u000c\u0010\u0010\u001a\u0008\u0018\u00010\u0011R\u00020\u0012H&\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$Listener;",
        "",
        "onComplete",
        "",
        "resultCode",
        "",
        "data",
        "Landroid/content/Intent;",
        "onPageFinished",
        "webView",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "onSuccess",
        "verifier",
        "onError",
        "exception",
        "Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$WebViewException;",
        "Lcom/kakaogame/twitter/TwitterOAuthWebViewClient;",
        "idp_twitter_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onComplete(ILandroid/content/Intent;)V
.end method

.method public abstract onError(Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$WebViewException;)V
.end method

.method public abstract onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
