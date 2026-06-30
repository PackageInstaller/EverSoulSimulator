.class public final Lcom/kakaogame/auth/view/PunishedUserDialog$WebViewContainerImpl;
.super Lcom/kakaogame/web/WebViewContainer;
.source "PunishedUserDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/auth/view/PunishedUserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "WebViewContainerImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0084\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001c\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0014J\u001c\u0010\r\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000cH\u0014J&\u0010\u000f\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0008\u0010\u0012\u001a\u00020\tH\u0016J0\u0010\u0013\u001a\u00020\u00142\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/kakaogame/auth/view/PunishedUserDialog$WebViewContainerImpl;",
        "Lcom/kakaogame/web/WebViewContainer;",
        "activity",
        "Landroid/app/Activity;",
        "webView",
        "Landroid/webkit/WebView;",
        "<init>",
        "(Lcom/kakaogame/auth/view/PunishedUserDialog;Landroid/app/Activity;Landroid/webkit/WebView;)V",
        "onReceivedTitle",
        "",
        "view",
        "title",
        "",
        "onPageFinished",
        "url",
        "onPageStarted",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "onHideCustomView",
        "onJsAlert",
        "",
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
.field final synthetic this$0:Lcom/kakaogame/auth/view/PunishedUserDialog;


# direct methods
.method public static synthetic $r8$lambda$ohds1n2_aqJP4UBBjF4KEE6qqb4(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/auth/view/PunishedUserDialog$WebViewContainerImpl;->onJsAlert$lambda$0(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakaogame/auth/view/PunishedUserDialog;Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/webkit/WebView;",
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

    .line 4219
    iput-object p1, p0, Lcom/kakaogame/auth/view/PunishedUserDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/auth/view/PunishedUserDialog;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    .line 4229
    invoke-direct/range {v1 .. v7}, Lcom/kakaogame/web/WebViewContainer;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4449
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final onJsAlert$lambda$0(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 4369
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    .line 4379
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 18

    .line 4349
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

    .line 4359
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$WebViewContainerImpl$$ExternalSyntheticLambda0;

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/kakaogame/auth/view/PunishedUserDialog$WebViewContainerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/JsResult;)V

    const v1, 0x104000a

    move-object/from16 v2, v17

    invoke-virtual {v2, v1, v0}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 4399
    sget-object v0, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$WebViewContainerImpl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    const/4 v0, 0x1

    return v0

    .array-data 1
    .end array-data
.end method

.method protected onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method
