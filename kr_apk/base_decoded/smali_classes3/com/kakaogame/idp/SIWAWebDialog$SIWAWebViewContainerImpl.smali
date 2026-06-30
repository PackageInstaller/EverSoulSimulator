.class public final Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;
.super Lcom/kakaogame/web/WebViewContainer;
.source "SIWAWebDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/idp/SIWAWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "SIWAWebViewContainerImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0084\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001c\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0014J\u001c\u0010\r\u001a\u00020\u000e2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000cH\u0014J\u001c\u0010\u0010\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000cH\u0014J&\u0010\u0011\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0008\u0010\u0014\u001a\u00020\tH\u0016J0\u0010\u0015\u001a\u00020\u000e2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;",
        "Lcom/kakaogame/web/WebViewContainer;",
        "activity",
        "Landroid/app/Activity;",
        "webView",
        "Landroid/webkit/WebView;",
        "<init>",
        "(Lcom/kakaogame/idp/SIWAWebDialog;Landroid/app/Activity;Landroid/webkit/WebView;)V",
        "onReceivedTitle",
        "",
        "view",
        "title",
        "",
        "shouldOverrideUrlLoading",
        "",
        "url",
        "onPageFinished",
        "onPageStarted",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "onHideCustomView",
        "onJsAlert",
        "message",
        "result",
        "Landroid/webkit/JsResult;",
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


# instance fields
.field final synthetic this$0:Lcom/kakaogame/idp/SIWAWebDialog;


# direct methods
.method public static synthetic $r8$lambda$UsWjphpFZP7F3kYk9sfx6r2m1HY(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;->onJsAlert$lambda$0(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakaogame/idp/SIWAWebDialog;Landroid/app/Activity;Landroid/webkit/WebView;)V
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

    .line 929
    iput-object p1, p0, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;->this$0:Lcom/kakaogame/idp/SIWAWebDialog;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    .line 939
    invoke-direct/range {v1 .. v7}, Lcom/kakaogame/web/WebViewContainer;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1589
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getActivity(Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;)Landroid/app/Activity;
    .locals 0

    .line 929
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final onJsAlert$lambda$0(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1509
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    .line 1519
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

    .line 1489
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

    .line 1499
    new-instance v0, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl$$ExternalSyntheticLambda0;

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/JsResult;)V

    const v1, 0x104000a

    move-object/from16 v2, v17

    invoke-virtual {v2, v1, v0}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1539
    sget-object v0, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    const/4 v0, 0x1

    return v0

    .array-data 1
    .end array-data
.end method

.method protected onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1359
    iget-object p1, p0, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;->this$0:Lcom/kakaogame/idp/SIWAWebDialog;

    invoke-static {p1}, Lcom/kakaogame/idp/SIWAWebDialog;->access$getWebLayout(Lcom/kakaogame/idp/SIWAWebDialog;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1369
    iget-object p1, p0, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;->this$0:Lcom/kakaogame/idp/SIWAWebDialog;

    invoke-static {p1}, Lcom/kakaogame/idp/SIWAWebDialog;->access$getWebLayout(Lcom/kakaogame/idp/SIWAWebDialog;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
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

.method protected shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 11

    .line 969
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

    const v2, 0x2257eb76

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 999
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const v1, 0x3360472b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x6d0bd780

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    .line 1009
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x2257f556

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1019
    iget-object p1, p0, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;->this$0:Lcom/kakaogame/idp/SIWAWebDialog;

    iput-object p2, p1, Lcom/kakaogame/idp/SIWAWebDialog;->responseData:Ljava/lang/String;

    .line 1029
    iget-object p1, p0, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;->this$0:Lcom/kakaogame/idp/SIWAWebDialog;

    invoke-virtual {p1}, Lcom/kakaogame/idp/SIWAWebDialog;->dismiss()V

    goto :goto_0

    .line 1059
    :cond_0
    sget-object v0, Lcom/kakaogame/ui/DeepLinkManager;->INSTANCE:Lcom/kakaogame/ui/DeepLinkManager;

    invoke-virtual {v0, p2}, Lcom/kakaogame/ui/DeepLinkManager;->isPlatformDeepLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1069
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance p1, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl$shouldOverrideUrlLoading$1;

    invoke-direct {p1, p0, p2, v4}, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl$shouldOverrideUrlLoading$1;-><init>(Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v8, p1

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_1
    const v0, 0x5d12d467

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 1129
    invoke-static {p2, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1149
    iget-object p1, p0, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;->this$0:Lcom/kakaogame/idp/SIWAWebDialog;

    invoke-virtual {p1}, Lcom/kakaogame/idp/SIWAWebDialog;->dismiss()V

    goto :goto_0

    :cond_2
    const v0, -0x224034ac

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 1179
    invoke-static {p2, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1199
    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/kakaogame/util/AppUtil;->launchIntent(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 1239
    :cond_3
    sget-object v0, Lcom/kakaogame/web/WebViewContainer;->Companion:Lcom/kakaogame/web/WebViewContainer$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/kakaogame/web/WebViewContainer$Companion;->handleCustomScheme(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1249
    iget-object p1, p0, Lcom/kakaogame/idp/SIWAWebDialog$SIWAWebViewContainerImpl;->this$0:Lcom/kakaogame/idp/SIWAWebDialog;

    invoke-virtual {p1}, Lcom/kakaogame/idp/SIWAWebDialog;->dismiss()V

    return v1

    .line 1279
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    .line 1319
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method
