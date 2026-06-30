.class public Lcom/kakaogame/web/DeviceRegistrationDialog;
.super Lcom/kakaogame/web/WebDialog;
.source "DeviceRegistrationDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/web/DeviceRegistrationDialog$Companion;,
        Lcom/kakaogame/web/DeviceRegistrationDialog$DeviceRegistrationViewContainerImpl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u00162\u00020\u0001:\u0002\u0015\u0016B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u001a\u0010\u0008\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0012\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J \u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0006\u001a\u00020\u0007H\u0014R\"\u0010\u0008\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/kakaogame/web/DeviceRegistrationDialog;",
        "Lcom/kakaogame/web/WebDialog;",
        "activity",
        "Landroid/app/Activity;",
        "webUrl",
        "",
        "settings",
        "Lcom/kakaogame/web/WebDialog$Settings;",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/kakaogame/KGResult;",
        "",
        "<init>",
        "(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;Lkotlin/jvm/functions/Function1;)V",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setDialogVisibility",
        "createContainer",
        "webView",
        "Landroid/webkit/WebView;",
        "DeviceRegistrationViewContainerImpl",
        "Companion",
        "security_release"
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
.field public static final Companion:Lcom/kakaogame/web/DeviceRegistrationDialog$Companion;

.field private static final TAG:Ljava/lang/String; = "DeviceRegistrationDialog"

.field private static final closeWebAppProtocol:Ljava/lang/String; = "zinny://closeview"

.field private static final responseWebAppProtocol:Ljava/lang/String; = "zinny://registerDevice"


# instance fields
.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$C_ne5QD3rG6-eXesGMonak6mx_0(Lcom/kakaogame/web/DeviceRegistrationDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/web/DeviceRegistrationDialog;->onCreate$lambda$1(Lcom/kakaogame/web/DeviceRegistrationDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$MMCmx6ZJBDK8SJvxOklDoMQrv1A(Lcom/kakaogame/web/DeviceRegistrationDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/web/DeviceRegistrationDialog;->onCreate$lambda$2(Lcom/kakaogame/web/DeviceRegistrationDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/web/DeviceRegistrationDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/web/DeviceRegistrationDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/web/DeviceRegistrationDialog;->Companion:Lcom/kakaogame/web/DeviceRegistrationDialog$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/web/WebDialog$Settings;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7d7ebce5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d10a28f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0d7b60

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/web/WebDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;)V

    .line 249
    iput-object p4, p0, Lcom/kakaogame/web/DeviceRegistrationDialog;->callback:Lkotlin/jvm/functions/Function1;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getCallback$p(Lcom/kakaogame/web/DeviceRegistrationDialog;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/kakaogame/web/DeviceRegistrationDialog;->callback:Lkotlin/jvm/functions/Function1;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final onCreate$lambda$1(Lcom/kakaogame/web/DeviceRegistrationDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string p1, "event"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 379
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const v0, 0x6d02a140

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x336c0693

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 419
    :cond_0
    iget-object p1, p0, Lcom/kakaogame/web/DeviceRegistrationDialog;->callback:Lkotlin/jvm/functions/Function1;

    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->dismiss()V

    :goto_0
    return p3

    :cond_1
    const/4 p0, 0x0

    return p0

    .array-data 1
    .end array-data
.end method

.method private static final onCreate$lambda$2(Lcom/kakaogame/web/DeviceRegistrationDialog;Landroid/view/View;)V
    .locals 1

    .line 539
    iget-object p1, p0, Lcom/kakaogame/web/DeviceRegistrationDialog;->callback:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->dismiss()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final setDialogVisibility(Landroid/app/Activity;)V
    .locals 2

    .line 609
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 629
    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->getDisplayCutoutMode()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_0

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x5d10b607

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 739
    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 749
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->getDisplayCutoutMode()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_1
    :goto_0
    return-void

    nop

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

    .line 829
    new-instance v0, Lcom/kakaogame/web/DeviceRegistrationDialog$DeviceRegistrationViewContainerImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kakaogame/web/DeviceRegistrationDialog$DeviceRegistrationViewContainerImpl;-><init>(Lcom/kakaogame/web/DeviceRegistrationDialog;Landroid/app/Activity;Landroid/webkit/WebView;Lcom/kakaogame/web/WebDialog$Settings;)V

    check-cast v0, Lcom/kakaogame/web/WebViewContainer;

    iput-object v0, p0, Lcom/kakaogame/web/DeviceRegistrationDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    return-void

    .array-data 1
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 279
    invoke-super {p0, p1}, Lcom/kakaogame/web/WebDialog;->onCreate(Landroid/os/Bundle;)V

    .line 289
    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x1030002

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x400

    .line 309
    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 319
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    :cond_0
    invoke-virtual {p0, v0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->setCanceledOnTouchOutside(Z)V

    .line 349
    new-instance p1, Lcom/kakaogame/web/DeviceRegistrationDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/kakaogame/web/DeviceRegistrationDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/web/DeviceRegistrationDialog;)V

    invoke-virtual {p0, p1}, Lcom/kakaogame/web/DeviceRegistrationDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 499
    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->initViews()V

    .line 509
    invoke-virtual {p0}, Lcom/kakaogame/web/DeviceRegistrationDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/kakaogame/web/DeviceRegistrationDialog;->setDialogVisibility(Landroid/app/Activity;)V

    .line 519
    sget p1, Lcom/kakaogame/R$id;->zinny_sdk_dialog_web_topbar_close:I

    invoke-virtual {p0, p1}, Lcom/kakaogame/web/DeviceRegistrationDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 529
    new-instance v0, Lcom/kakaogame/web/DeviceRegistrationDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/kakaogame/web/DeviceRegistrationDialog$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/web/DeviceRegistrationDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
