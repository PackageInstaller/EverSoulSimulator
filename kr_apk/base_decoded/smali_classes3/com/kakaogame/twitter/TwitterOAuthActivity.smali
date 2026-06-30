.class public final Lcom/kakaogame/twitter/TwitterOAuthActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TwitterOAuthActivity.kt"

# interfaces
.implements Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/twitter/TwitterOAuthActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterOAuthActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterOAuthActivity.kt\ncom/kakaogame/twitter/TwitterOAuthActivity\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,203:1\n29#2:204\n254#3:205\n163#3,2:206\n*S KotlinDebug\n*F\n+ 1 TwitterOAuthActivity.kt\ncom/kakaogame/twitter/TwitterOAuthActivity\n*L\n107#1:204\n191#1:205\n96#1:206,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 /2\u00020\u00012\u00020\u0002:\u0001/B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u000cH\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u001a\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u00122\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u001c\u0010\u001c\u001a\u00020\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010\u001e\u001a\u00020\u000c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0017H\u0016J\u0008\u0010 \u001a\u00020\u000cH\u0002J\u0008\u0010!\u001a\u00020\u000cH\u0002J\u0018\u0010\"\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u0017H\u0007J\u0012\u0010#\u001a\u00020\u000c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0017H\u0002J\u001c\u0010$\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u00122\n\u0010%\u001a\u00060&j\u0002`\'H\u0002J\u0016\u0010(\u001a\u00020\u000c2\u000c\u0010)\u001a\u0008\u0018\u00010*R\u00020+H\u0016J\u0016\u0010,\u001a\u00020\u000c2\u000c\u0010)\u001a\u0008\u0018\u00010*R\u00020+H\u0002J\u0010\u0010-\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020\u000eH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/kakaogame/twitter/TwitterOAuthActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$Listener;",
        "<init>",
        "()V",
        "binding",
        "Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;",
        "spinner",
        "Landroid/widget/ProgressBar;",
        "webView",
        "Landroid/webkit/WebView;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyUp",
        "",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "initWindow",
        "buildCallbackUrl",
        "",
        "onComplete",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onPageFinished",
        "url",
        "onSuccess",
        "verifier",
        "dismissWebView",
        "dismissSpinner",
        "setUpWebView",
        "handleWebViewSuccess",
        "handleAuthError",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onError",
        "exception",
        "Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$WebViewException;",
        "Lcom/kakaogame/twitter/TwitterOAuthWebViewClient;",
        "handleWebViewError",
        "onSaveInstanceState",
        "outState",
        "Companion",
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


# static fields
.field public static final AUTHORIZE_URL:Ljava/lang/String; = "authorize_url"

.field private static final CALLBACK_URL:Ljava/lang/String; = "twittersdk://"

.field public static final Companion:Lcom/kakaogame/twitter/TwitterOAuthActivity$Companion;

.field private static final STATE_PROGRESS:Ljava/lang/String; = "progress"

.field private static final TAG:Ljava/lang/String; = "TwitterOAuthActivity"


# instance fields
.field private binding:Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;

.field private spinner:Landroid/widget/ProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$ja8qaafw4w_Jf-CDqbH4vqwZ8TQ(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    invoke-static {p0, p1}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->initWindow$lambda$2(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kakaogame/twitter/TwitterOAuthActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/twitter/TwitterOAuthActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/twitter/TwitterOAuthActivity;->Companion:Lcom/kakaogame/twitter/TwitterOAuthActivity$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 299
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final buildCallbackUrl()Ljava/lang/String;
    .locals 3

    const v0, -0x22402584

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 2049
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1099
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1109
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x451e20f7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final dismissSpinner()V
    .locals 3

    .line 1349
    iget-object v0, p0, Lcom/kakaogame/twitter/TwitterOAuthActivity;->spinner:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const v0, 0x543b0af2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final dismissWebView()V
    .locals 3

    .line 1299
    iget-object v0, p0, Lcom/kakaogame/twitter/TwitterOAuthActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const v0, 0x543983ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1309
    invoke-direct {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->dismissSpinner()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final handleAuthError(ILjava/lang/Exception;)V
    .locals 3

    .line 1729
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x6d03ee18

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 1739
    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1749
    invoke-virtual {p0, p1, v0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->onComplete(ILandroid/content/Intent;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final handleWebViewError(Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$WebViewException;)V
    .locals 4

    .line 1839
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x5d1fe57f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    const v3, 0x5d1fe43f

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1869
    new-instance v0, Ljava/lang/Exception;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$WebViewException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1849
    invoke-direct {p0, p1, v0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->handleAuthError(ILjava/lang/Exception;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final handleWebViewSuccess(Ljava/lang/String;)V
    .locals 3

    .line 1559
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x5436cc8a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1fe43f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1579
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, -0x224d0634

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 1589
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 1599
    invoke-virtual {p0, p1, v0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->onComplete(ILandroid/content/Intent;)V

    return-void

    .line 1649
    :cond_0
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const/4 v0, 0x0

    const v1, 0x7d7fcf6d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1679
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1659
    invoke-direct {p0, v0, p1}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->handleAuthError(ILjava/lang/Exception;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final initWindow()V
    .locals 3

    .line 739
    invoke-virtual {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 759
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 769
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_0

    .line 799
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 839
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    const v1, 0x2252b63e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    .line 859
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    const/4 v1, 0x2

    .line 869
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    .line 889
    invoke-virtual {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kakaogame/twitter/TwitterOAuthActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/kakaogame/twitter/TwitterOAuthActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final initWindow$lambda$2(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    const v0, 0x336d6de3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3360ab73    # 5.2309996E-8f

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    .line 919
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    .line 899
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const v0, -0x2240c684

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, -0x1000000

    .line 949
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 979
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    .line 989
    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 999
    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    .line 1009
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 2069
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 1029
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    invoke-static {p1}, Lcom/liapp/y;->ڱڱحֱح(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public onComplete(ILandroid/content/Intent;)V
    .locals 3

    .line 1149
    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 1159
    invoke-virtual {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->finish()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 359
    move-object/from16 v0, p0

    invoke-static {v0}, Lcom/liapp/y;->ڱڱحֱح(Landroid/content/Context;)V

    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1, v2}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;ILjava/lang/Object;)V

    .line 369
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 389
    invoke-direct {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->initWindow()V

    .line 409
    invoke-virtual {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/twitter/TwitterOAuthActivity;->binding:Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;

    const v1, -0x45198e67

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    .line 419
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;->twSpinner:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kakaogame/twitter/TwitterOAuthActivity;->spinner:Landroid/widget/ProgressBar;

    .line 429
    iget-object v0, p0, Lcom/kakaogame/twitter/TwitterOAuthActivity;->binding:Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;->twWebView:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/kakaogame/twitter/TwitterOAuthActivity;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const v4, -0x451b678f

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_0
    xor-int/2addr p1, v0

    .line 459
    iget-object v4, p0, Lcom/kakaogame/twitter/TwitterOAuthActivity;->spinner:Landroid/widget/ProgressBar;

    if-nez v4, :cond_3

    const v4, 0x543b0af2

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 489
    invoke-virtual {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const v3, -0x451b834f

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 509
    iget-object v0, p0, Lcom/kakaogame/twitter/TwitterOAuthActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    const v0, 0x543983ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->setUpWebView(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_2

    .line 519
    :cond_6
    move-object p1, p0

    check-cast p1, Lcom/kakaogame/twitter/TwitterOAuthActivity;

    .line 529
    new-instance p1, Ljava/lang/Exception;

    const v3, 0x6d03d490

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->handleAuthError(ILjava/lang/Exception;)V

    .line 539
    invoke-virtual {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->finish()V

    .line 569
    :goto_2
    iget-object p1, p0, Lcom/kakaogame/twitter/TwitterOAuthActivity;->binding:Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;

    if-nez p1, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object v2, p1

    :goto_3
    invoke-virtual {v2}, Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->setContentView(Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onError(Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$WebViewException;)V
    .locals 3

    .line 1789
    invoke-direct {p0, p1}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->handleWebViewError(Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$WebViewException;)V

    .line 1799
    invoke-direct {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->dismissWebView()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/twitter/TwitterOAuthActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const v2, 0x543983ba

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 639
    iget-object p1, p0, Lcom/kakaogame/twitter/TwitterOAuthActivity;->webView:Landroid/webkit/WebView;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 669
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const v1, 0x336d6eeb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->handleAuthError(ILjava/lang/Exception;)V

    .line 699
    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1199
    invoke-direct {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->dismissSpinner()V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1209
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x5d1fe2f7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1919
    iget-object v0, p0, Lcom/kakaogame/twitter/TwitterOAuthActivity;->spinner:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const v0, 0x543b0af2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/view/View;

    .line 2059
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const v0, -0x451b678f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 1929
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1949
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 1249
    invoke-direct {p0, p1}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->handleWebViewSuccess(Ljava/lang/String;)V

    .line 1259
    invoke-direct {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->dismissWebView()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setUpWebView(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const v0, 0x543983ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x543c2392

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1399
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const v1, -0x224d0294

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1409
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 v2, 0x1

    .line 1419
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1429
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 1439
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1449
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1459
    new-instance v0, Lcom/kakaogame/twitter/TwitterOAuthWebViewClient;

    .line 1469
    invoke-direct {p0}, Lcom/kakaogame/twitter/TwitterOAuthActivity;->buildCallbackUrl()Ljava/lang/String;

    move-result-object v1

    .line 1479
    move-object v2, p0

    check-cast v2, Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$Listener;

    .line 1459
    invoke-direct {v0, v1, v2}, Lcom/kakaogame/twitter/TwitterOAuthWebViewClient;-><init>(Ljava/lang/String;Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$Listener;)V

    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1499
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p2, 0x4

    .line 1509
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1519
    new-instance p2, Landroid/webkit/WebChromeClient;

    invoke-direct {p2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void

    .array-data 1
    .end array-data
.end method
