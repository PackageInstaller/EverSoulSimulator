.class public final Lcom/kakaogame/web/PaymentWebDialog;
.super Lcom/kakaogame/web/WebDialog;
.source "PaymentWebDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/web/PaymentWebDialog$Companion;,
        Lcom/kakaogame/web/PaymentWebDialog$Listener;,
        Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \u00192\u00020\u0001:\u0003\u0017\u0018\u0019B/\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J \u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u0008H\u0014J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010\u0016\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/kakaogame/web/PaymentWebDialog;",
        "Lcom/kakaogame/web/WebDialog;",
        "activity",
        "Landroid/app/Activity;",
        "webUrl",
        "",
        "closeUrl",
        "settings",
        "Lcom/kakaogame/web/WebDialog$Settings;",
        "<init>",
        "(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;)V",
        "listener",
        "Lcom/kakaogame/web/PaymentWebDialog$Listener;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "createContainer",
        "webView",
        "Landroid/webkit/WebView;",
        "checkCloseUrl",
        "",
        "setListener",
        "PaymentWebViewContainer",
        "Listener",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/kakaogame/web/PaymentWebDialog$Companion;

.field private static final TAG:Ljava/lang/String; = "PaymentWebDialog"


# instance fields
.field private final closeUrl:Ljava/lang/String;

.field private listener:Lcom/kakaogame/web/PaymentWebDialog$Listener;


# direct methods
.method public static synthetic $r8$lambda$LuyLGfdEAzozPobDAiYEO3db5PM(Lcom/kakaogame/web/PaymentWebDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/web/PaymentWebDialog;->onCreate$lambda$1(Lcom/kakaogame/web/PaymentWebDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$ZlO53tgt48A3bRpMAwApLDcYsxw(Lcom/kakaogame/web/PaymentWebDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/web/PaymentWebDialog;->onCreate$lambda$0(Lcom/kakaogame/web/PaymentWebDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/web/PaymentWebDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/web/PaymentWebDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/web/PaymentWebDialog;->Companion:Lcom/kakaogame/web/PaymentWebDialog$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;)V
    .locals 0

    .line 179
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 169
    invoke-direct {p0, p1, p2, p4}, Lcom/kakaogame/web/WebDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;)V

    .line 159
    iput-object p3, p0, Lcom/kakaogame/web/PaymentWebDialog;->closeUrl:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$checkCloseUrl(Lcom/kakaogame/web/PaymentWebDialog;Ljava/lang/String;)Z
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/kakaogame/web/PaymentWebDialog;->checkCloseUrl(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getListener$p(Lcom/kakaogame/web/PaymentWebDialog;)Lcom/kakaogame/web/PaymentWebDialog$Listener;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/kakaogame/web/PaymentWebDialog;->listener:Lcom/kakaogame/web/PaymentWebDialog$Listener;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final checkCloseUrl(Ljava/lang/String;)Z
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/kakaogame/web/PaymentWebDialog;->closeUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 659
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method private static final onCreate$lambda$0(Lcom/kakaogame/web/PaymentWebDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 259
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    .line 289
    iget-object p1, p0, Lcom/kakaogame/web/PaymentWebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/kakaogame/web/WebViewContainer;->hasInnerPopupView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 299
    iget-object p0, p0, Lcom/kakaogame/web/PaymentWebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/web/WebViewContainer;->goBackInnerPopupView()V

    return p3

    .line 329
    :cond_0
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const v0, 0x6d02a140

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kakaogame/web/PaymentWebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x225bb4ee

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object p1, p0, Lcom/kakaogame/web/PaymentWebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    const-string p2, "null cannot be cast to non-null type com.kakaogame.web.WebDialog.WebViewContainerImpl"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->getCustomView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 349
    iget-object p0, p0, Lcom/kakaogame/web/PaymentWebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/web/WebViewContainer;->onHideCustomView()V

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/web/PaymentWebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 379
    invoke-virtual {p0}, Lcom/kakaogame/web/PaymentWebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 399
    :cond_2
    iget-object p1, p0, Lcom/kakaogame/web/PaymentWebDialog;->listener:Lcom/kakaogame/web/PaymentWebDialog$Listener;

    if-eqz p1, :cond_3

    .line 409
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/kakaogame/web/PaymentWebDialog$Listener;->onCanceled()V

    .line 429
    :cond_3
    invoke-virtual {p0}, Lcom/kakaogame/web/PaymentWebDialog;->dismiss()V

    :goto_0
    return p3

    :cond_4
    const/4 p0, 0x0

    return p0

    .array-data 1
    .end array-data
.end method

.method private static final onCreate$lambda$1(Lcom/kakaogame/web/PaymentWebDialog;Landroid/view/View;)V
    .locals 0

    .line 529
    iget-object p1, p0, Lcom/kakaogame/web/PaymentWebDialog;->listener:Lcom/kakaogame/web/PaymentWebDialog$Listener;

    if-eqz p1, :cond_0

    .line 539
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/kakaogame/web/PaymentWebDialog$Listener;->onCanceled()V

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/web/PaymentWebDialog;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected createContainer(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/kakaogame/web/WebDialog$Settings;)V
    .locals 1

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x543983ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d10a28f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    new-instance v0, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kakaogame/web/PaymentWebDialog$PaymentWebViewContainer;-><init>(Lcom/kakaogame/web/PaymentWebDialog;Landroid/app/Activity;Landroid/webkit/WebView;Lcom/kakaogame/web/WebDialog$Settings;)V

    check-cast v0, Lcom/kakaogame/web/WebViewContainer;

    iput-object v0, p0, Lcom/kakaogame/web/PaymentWebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    return-void

    .array-data 1
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 219
    invoke-super {p0, p1}, Lcom/kakaogame/web/WebDialog;->onCreate(Landroid/os/Bundle;)V

    .line 249
    new-instance p1, Lcom/kakaogame/web/PaymentWebDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/kakaogame/web/PaymentWebDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/web/PaymentWebDialog;)V

    invoke-virtual {p0, p1}, Lcom/kakaogame/web/PaymentWebDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 509
    sget p1, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_topbar_close:I

    invoke-virtual {p0, p1}, Lcom/kakaogame/web/PaymentWebDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 519
    new-instance v0, Lcom/kakaogame/web/PaymentWebDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/kakaogame/web/PaymentWebDialog$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/web/PaymentWebDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final setListener(Lcom/kakaogame/web/PaymentWebDialog$Listener;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/kakaogame/web/PaymentWebDialog;->listener:Lcom/kakaogame/web/PaymentWebDialog$Listener;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
