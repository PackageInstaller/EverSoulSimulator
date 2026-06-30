.class public final Lcom/kakaogame/game/GameMessageBlockDialog$setUpWebView$1;
.super Landroid/webkit/WebViewClient;
.source "GameMessageBlockDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/game/GameMessageBlockDialog;->setUpWebView(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u001c\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/kakaogame/game/GameMessageBlockDialog$setUpWebView$1",
        "Landroid/webkit/WebViewClient;",
        "onPageStarted",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "onPageFinished",
        "idp_kakao_release"
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
.field final synthetic this$0:Lcom/kakaogame/game/GameMessageBlockDialog;


# direct methods
.method constructor <init>(Lcom/kakaogame/game/GameMessageBlockDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/game/GameMessageBlockDialog$setUpWebView$1;->this$0:Lcom/kakaogame/game/GameMessageBlockDialog;

    .line 1189
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1259
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1269
    iget-object p1, p0, Lcom/kakaogame/game/GameMessageBlockDialog$setUpWebView$1;->this$0:Lcom/kakaogame/game/GameMessageBlockDialog;

    invoke-static {p1}, Lcom/kakaogame/game/GameMessageBlockDialog;->access$getSpinner$p(Lcom/kakaogame/game/GameMessageBlockDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "spinner"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1209
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1219
    iget-object p1, p0, Lcom/kakaogame/game/GameMessageBlockDialog$setUpWebView$1;->this$0:Lcom/kakaogame/game/GameMessageBlockDialog;

    invoke-static {p1}, Lcom/kakaogame/game/GameMessageBlockDialog;->access$getSpinner$p(Lcom/kakaogame/game/GameMessageBlockDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "spinner"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    .array-data 1
    .end array-data
.end method
