.class Lbolts/WebViewAppLinkResolver$2$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewAppLinkResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/WebViewAppLinkResolver$2;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private loaded:Z

.field final synthetic this$1:Lbolts/WebViewAppLinkResolver$2;


# direct methods
.method constructor <init>(Lbolts/WebViewAppLinkResolver$2;)V
    .locals 0

    .line 1329
    iput-object p1, p0, Lbolts/WebViewAppLinkResolver$2$1;->this$1:Lbolts/WebViewAppLinkResolver$2;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 1339
    iput-boolean p1, p0, Lbolts/WebViewAppLinkResolver$2$1;->loaded:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private runJavaScript(Landroid/webkit/WebView;)V
    .locals 1

    .line 1369
    iget-boolean v0, p0, Lbolts/WebViewAppLinkResolver$2$1;->loaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1399
    iput-boolean v0, p0, Lbolts/WebViewAppLinkResolver$2$1;->loaded:Z

    const v0, 0x543c3982

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 1409
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1529
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1539
    invoke-direct {p0, p1}, Lbolts/WebViewAppLinkResolver$2$1;->runJavaScript(Landroid/webkit/WebView;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1469
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1479
    invoke-direct {p0, p1}, Lbolts/WebViewAppLinkResolver$2$1;->runJavaScript(Landroid/webkit/WebView;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
