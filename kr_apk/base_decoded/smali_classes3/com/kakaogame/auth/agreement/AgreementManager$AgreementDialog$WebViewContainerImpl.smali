.class final Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;
.super Lcom/kakaogame/web/WebViewContainer;
.source "AgreementManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WebViewContainerImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001c\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0014J\u001c\u0010\r\u001a\u00020\u000e2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000cH\u0014J.\u0010\u0010\u001a\u00020\u000e2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000cH\u0014J\u001c\u0010\u0015\u001a\u00020\u000e2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;",
        "Lcom/kakaogame/web/WebViewContainer;",
        "activity",
        "Landroid/app/Activity;",
        "webView",
        "Landroid/webkit/WebView;",
        "<init>",
        "(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;Landroid/app/Activity;Landroid/webkit/WebView;)V",
        "shouldOverrideUrlLoading",
        "",
        "view",
        "url",
        "",
        "onReceivedTitle",
        "",
        "title",
        "onReceivedError",
        "errorCode",
        "",
        "description",
        "failingUrl",
        "onPageFinished",
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
.field final synthetic this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;


# direct methods
.method public constructor <init>(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;Landroid/app/Activity;Landroid/webkit/WebView;)V
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

    .line 5049
    iput-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    .line 5059
    invoke-direct/range {v1 .. v7}, Lcom/kakaogame/web/WebViewContainer;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 5409
    iget-object p2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    invoke-static {p2}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getViewLoadingFinish$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 5419
    iget-object p2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$setViewLoadingFinish$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;Z)V

    .line 5429
    sget-object p2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    invoke-static {v0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getTraceJobId$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)I

    move-result v0

    .line 5439
    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_SHOW_AGREEMENT:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const/16 v2, 0xc8

    const v3, -0x2243743c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    .line 5429
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 5479
    sget-object p2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    invoke-static {v0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getTraceJobId$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)I

    move-result v0

    .line 5489
    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_AGREEMENT_WEB_LOADING:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 5479
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 5529
    sget-object p2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    invoke-static {v0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getTraceJobId$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)I

    move-result v0

    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_AGREEMENT_WEB_CLOSE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {p2, v0, v1}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    :cond_0
    if-eqz p1, :cond_4

    .line 5549
    iget-object p2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    .line 5559
    invoke-static {p2}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getBackView$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const v0, -0x22424814

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5569
    invoke-static {p2}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getTitleView$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_3

    const-string/jumbo p2, "titleView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p2

    :goto_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    .array-data 1
    .end array-data
.end method

.method protected onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 5319
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    iget-object v1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    invoke-static {v1}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getTraceJobId$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)I

    move-result v1

    .line 5329
    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_AGREEMENT_WEB_LOADING:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 5339
    sget-object v3, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    iget-object v4, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    invoke-static {v4}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getTraceJobId$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)I

    move-result v4

    const/16 v5, 0x1f5

    invoke-virtual {v3, v4, v5}, Lcom/kakaogame/log/tracer/Tracer;->makeCustomErrorCode(II)I

    move-result v3

    .line 5349
    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x6d0c9c18

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x5d10ab07

    invoke-static {v5}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5319
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 5369
    invoke-super {p0, p1, p2, p3, p4}, Lcom/kakaogame/web/WebViewContainer;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 5189
    iget-object p2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    .line 5199
    invoke-static {p2}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getTitleView$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7d708265

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v3, 0x336227e3

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 5209
    invoke-static {p2}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getTitleView$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, p2

    :goto_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    .array-data 1
    .end array-data
.end method

.method protected shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 5079
    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    invoke-static {v0}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getViewLoadingFinish$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5089
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    iget-object v1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    invoke-static {v1}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getTraceJobId$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)I

    move-result v1

    .line 5099
    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_SHOW_AGREEMENT:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const/16 v3, 0xc8

    const v4, -0x2243743c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    .line 5089
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 5139
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    iget-object v1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog$WebViewContainerImpl;->this$0:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;

    invoke-static {v1}, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;->access$getTraceJobId$p(Lcom/kakaogame/auth/agreement/AgreementManager$AgreementDialog;)I

    move-result v1

    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_AGREEMENT_WEB_LOADING:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    .line 5159
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kakaogame/web/WebViewContainer;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method
