.class public Lcom/kakaogame/web/WebDialog;
.super Landroid/app/Dialog;
.source "WebDialog.kt"

# interfaces
.implements Lcom/kakaogame/KGActivityManager$ConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/web/WebDialog$Companion;,
        Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;,
        Lcom/kakaogame/web/WebDialog$OnCloseListener;,
        Lcom/kakaogame/web/WebDialog$SelectImageHandler;,
        Lcom/kakaogame/web/WebDialog$Settings;,
        Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0016\u0018\u0000 j2\u00020\u00012\u00020\u0002:\u0006efghijB\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B#\u0008\u0014\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0007\u0010\u000bB!\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0007\u0010\u000eB+\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0007\u0010\u000fJ\u0008\u0010F\u001a\u00020HH\u0003J(\u0010I\u001a\u00020H2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010J\u001a\u00020\u00062\u000e\u0010K\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010C0LH\u0002J\u0008\u0010M\u001a\u00020HH\u0004J\u0008\u0010N\u001a\u00020HH\u0016J\u0012\u0010O\u001a\u00020H2\u0008\u0010P\u001a\u0004\u0018\u00010QH\u0014J\u0008\u0010R\u001a\u00020HH\u0014J\u0008\u0010S\u001a\u00020HH\u0014J\u0008\u0010T\u001a\u00020HH\u0016J\u0008\u0010U\u001a\u00020HH\u0014J \u0010V\u001a\u00020H2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000c\u001a\u00020\rH\u0014J\u0010\u0010Y\u001a\u00020H2\u0006\u0010Z\u001a\u00020\u0011H\u0014J\u0010\u0010[\u001a\u00020H2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010^\u001a\u00020H2\u0006\u0010_\u001a\u00020\u0006H\u0002J\u0006\u0010B\u001a\u00020HJ\u0010\u0010`\u001a\u00020H2\u0006\u0010a\u001a\u00020\u0004H\u0002J\u0018\u0010b\u001a\u00020H2\u0006\u0010a\u001a\u00020\u00042\u0006\u0010c\u001a\u00020*H\u0004J\u0010\u0010d\u001a\u00020H2\u0006\u0010_\u001a\u00020\u0006H\u0002R\u0010\u0010\u0005\u001a\u00020\u00068\u0004X\u0085\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0011X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015R\u0016\u0010\t\u001a\u0004\u0018\u00010\nX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0084.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0084.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u0004\u0018\u00010(8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010)\u001a\u0004\u0018\u00010*X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001c\u0010/\u001a\u0004\u0018\u000100X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u0014\u00105\u001a\u0004\u0018\u00010*8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00106\u001a\u0004\u0018\u00010*8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u00107\u001a\u0002088TX\u0094\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u00089\u0010:R\u001e\u0010>\u001a\u00020\u00062\u0006\u0010=\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010@R\u0012\u0010A\u001a\u00020\u00118\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020CX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020CX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\r8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010E\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u0013\"\u0004\u0008G\u0010\u0015R\u0014\u0010W\u001a\u00020C8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010X\u00a8\u0006k"
    }
    d2 = {
        "Lcom/kakaogame/web/WebDialog;",
        "Landroid/app/Dialog;",
        "Lcom/kakaogame/KGActivityManager$ConfigChangeListener;",
        "activity",
        "Landroid/app/Activity;",
        "webUrl",
        "",
        "<init>",
        "(Landroid/app/Activity;Ljava/lang/String;)V",
        "postData",
        "",
        "(Landroid/app/Activity;Ljava/lang/String;[B)V",
        "settings",
        "Lcom/kakaogame/web/WebDialog$Settings;",
        "(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;)V",
        "(Landroid/app/Activity;Ljava/lang/String;[BLcom/kakaogame/web/WebDialog$Settings;)V",
        "preOrientation",
        "",
        "getPreOrientation",
        "()I",
        "setPreOrientation",
        "(I)V",
        "preScreenLayout",
        "getPreScreenLayout",
        "setPreScreenLayout",
        "getPostData",
        "()[B",
        "webView",
        "Landroid/webkit/WebView;",
        "getWebView",
        "()Landroid/webkit/WebView;",
        "setWebView",
        "(Landroid/webkit/WebView;)V",
        "webLayout",
        "Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;",
        "getWebLayout",
        "()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;",
        "setWebLayout",
        "(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V",
        "container",
        "Lcom/kakaogame/web/WebViewContainer;",
        "topbarView",
        "Landroid/view/View;",
        "getTopbarView",
        "()Landroid/view/View;",
        "setTopbarView",
        "(Landroid/view/View;)V",
        "titleView",
        "Landroid/widget/TextView;",
        "getTitleView",
        "()Landroid/widget/TextView;",
        "setTitleView",
        "(Landroid/widget/TextView;)V",
        "logoView",
        "backView",
        "binding",
        "Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;",
        "getBinding",
        "()Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;",
        "binding$delegate",
        "Lkotlin/Lazy;",
        "value",
        "deepLinkUrl",
        "getDeepLinkUrl",
        "()Ljava/lang/String;",
        "viewMargin",
        "hideTopbar",
        "",
        "isPulltoRefresh",
        "displayCutoutMode",
        "getDisplayCutoutMode",
        "setDisplayCutoutMode",
        "",
        "checkRequiredPermission",
        "permission",
        "callback",
        "Lcom/kakaogame/KGResultCallback;",
        "setDialogVisibility",
        "onAttachedToWindow",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "onStop",
        "dismiss",
        "initViews",
        "createContainer",
        "isTablet",
        "()Z",
        "setMargin",
        "cutoutSize",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "checkUIParameters",
        "url",
        "setFocusChanged",
        "act",
        "handleKeyboardShowEvent",
        "contentView",
        "changeTitleText",
        "WebViewContainerImpl",
        "SelectImageHandler",
        "MakeShortcutHandler",
        "Settings",
        "OnCloseListener",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/kakaogame/web/WebDialog$Companion;

.field private static final PICK_IMAGE_REQ_CODE:I = 0x3e7

.field private static final TAG:Ljava/lang/String; = "WebDialog"

.field private static final changeTitleWebAppProtocol:Ljava/lang/String; = "zinny://changeTitleText"

.field private static final closeWebAppProtocol:Ljava/lang/String; = "zinny://closeview"


# instance fields
.field protected backView:Landroid/view/View;

.field private final binding$delegate:Lkotlin/Lazy;

.field protected container:Lcom/kakaogame/web/WebViewContainer;

.field private deepLinkUrl:Ljava/lang/String;

.field private displayCutoutMode:I

.field private hideTopbar:Z

.field private isPulltoRefresh:Z

.field protected logoView:Landroid/view/View;

.field private final postData:[B

.field private preOrientation:I

.field private preScreenLayout:I

.field protected settings:Lcom/kakaogame/web/WebDialog$Settings;

.field private titleView:Landroid/widget/TextView;

.field private topbarView:Landroid/view/View;

.field protected viewMargin:I

.field protected webLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field protected final webUrl:Ljava/lang/String;

.field protected webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$1pRg-pbRQlwQxd1FJJuwsv1vRuI(Lcom/kakaogame/web/WebDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/web/WebDialog;->initViews$lambda$5$lambda$4(Lcom/kakaogame/web/WebDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$HTn1Ou0ctiKiSgAJvtQIq66a348(Landroid/view/View;Landroid/app/Activity;Lcom/kakaogame/web/WebDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/web/WebDialog;->handleKeyboardShowEvent$lambda$8(Landroid/view/View;Landroid/app/Activity;Lcom/kakaogame/web/WebDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$NSdkGqWha3KAhfFlhB3RZIGZDuk(Lcom/kakaogame/web/WebDialog;)Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/web/WebDialog;->binding_delegate$lambda$0(Lcom/kakaogame/web/WebDialog;)Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$QFIDKwdvDABAFtDdrr81eaZrERM(Lcom/kakaogame/web/WebDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/web/WebDialog;->initViews$lambda$5$lambda$3(Lcom/kakaogame/web/WebDialog;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$SrT6IeLYOsXRUp0WNbZdNlelRJI(Lcom/kakaogame/web/WebDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/web/WebDialog;->onCreate$lambda$1(Lcom/kakaogame/web/WebDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$Thc7mbauFBljs7TbVw2486yTsVQ(Lcom/kakaogame/web/WebDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/web/WebDialog;->initViews$lambda$5$lambda$2(Lcom/kakaogame/web/WebDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$VBuG9RZjoD4zT0AbthTkYz-ousQ(Z)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/web/WebDialog;->setFocusChanged$lambda$6(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$i7yWjwbB1om6mMvg4G87GQR0854(Landroid/view/View;Lcom/kakaogame/web/WebDialog;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/web/WebDialog;->handleKeyboardShowEvent$lambda$7(Landroid/view/View;Lcom/kakaogame/web/WebDialog;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/web/WebDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/web/WebDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/web/WebDialog;->Companion:Lcom/kakaogame/web/WebDialog$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7d7ebce5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 929
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    .line 939
    sget v1, Landroidx/appcompat/R$style;->Base_AlertDialog_AppCompat_Light:I

    .line 919
    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 629
    iput v0, p0, Lcom/kakaogame/web/WebDialog;->preOrientation:I

    .line 639
    iput v0, p0, Lcom/kakaogame/web/WebDialog;->preScreenLayout:I

    .line 799
    new-instance v0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/web/WebDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/web/WebDialog;->binding$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 819
    iput-object v0, p0, Lcom/kakaogame/web/WebDialog;->deepLinkUrl:Ljava/lang/String;

    const/4 v0, 0x1

    .line 869
    iput-boolean v0, p0, Lcom/kakaogame/web/WebDialog;->isPulltoRefresh:Z

    .line 959
    invoke-virtual {p0, p1}, Lcom/kakaogame/web/WebDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 969
    iput-object p2, p0, Lcom/kakaogame/web/WebDialog;->webUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 979
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog;->postData:[B

    .line 989
    new-instance p1, Lcom/kakaogame/web/WebDialog$Settings$Builder;

    invoke-direct {p1}, Lcom/kakaogame/web/WebDialog$Settings$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->build()Lcom/kakaogame/web/WebDialog$Settings;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    .line 999
    invoke-direct {p0}, Lcom/kakaogame/web/WebDialog;->getDisplayCutoutMode()V

    .line 1009
    new-instance p1, Lcom/kakaogame/web/WebDialog$SelectImageHandler;

    invoke-direct {p1, p0}, Lcom/kakaogame/web/WebDialog$SelectImageHandler;-><init>(Lcom/kakaogame/web/WebDialog;)V

    .line 1019
    new-instance p1, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;

    invoke-direct {p1, p0}, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;-><init>(Lcom/kakaogame/web/WebDialog;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;)V
    .locals 2

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

    .line 1229
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    .line 1239
    sget v1, Landroidx/appcompat/R$style;->Base_AlertDialog_AppCompat_Light:I

    .line 1219
    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 629
    iput v0, p0, Lcom/kakaogame/web/WebDialog;->preOrientation:I

    .line 639
    iput v0, p0, Lcom/kakaogame/web/WebDialog;->preScreenLayout:I

    .line 799
    new-instance v0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/web/WebDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/web/WebDialog;->binding$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 819
    iput-object v0, p0, Lcom/kakaogame/web/WebDialog;->deepLinkUrl:Ljava/lang/String;

    const/4 v0, 0x1

    .line 869
    iput-boolean v0, p0, Lcom/kakaogame/web/WebDialog;->isPulltoRefresh:Z

    .line 1259
    invoke-virtual {p0, p1}, Lcom/kakaogame/web/WebDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1269
    iput-object p2, p0, Lcom/kakaogame/web/WebDialog;->webUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1279
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog;->postData:[B

    .line 1289
    iput-object p3, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    .line 1299
    invoke-direct {p0}, Lcom/kakaogame/web/WebDialog;->getDisplayCutoutMode()V

    .line 1309
    new-instance p1, Lcom/kakaogame/web/WebDialog$SelectImageHandler;

    invoke-direct {p1, p0}, Lcom/kakaogame/web/WebDialog$SelectImageHandler;-><init>(Lcom/kakaogame/web/WebDialog;)V

    .line 1319
    new-instance p1, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;

    invoke-direct {p1, p0}, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;-><init>(Lcom/kakaogame/web/WebDialog;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;[B)V
    .locals 2

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7d7ebce5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1099
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    .line 1109
    sget v1, Landroidx/appcompat/R$style;->Base_AlertDialog_AppCompat_Light:I

    .line 1089
    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 629
    iput v0, p0, Lcom/kakaogame/web/WebDialog;->preOrientation:I

    .line 639
    iput v0, p0, Lcom/kakaogame/web/WebDialog;->preScreenLayout:I

    .line 799
    new-instance v0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/web/WebDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/web/WebDialog;->binding$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 819
    iput-object v0, p0, Lcom/kakaogame/web/WebDialog;->deepLinkUrl:Ljava/lang/String;

    const/4 v0, 0x1

    .line 869
    iput-boolean v0, p0, Lcom/kakaogame/web/WebDialog;->isPulltoRefresh:Z

    .line 1129
    invoke-virtual {p0, p1}, Lcom/kakaogame/web/WebDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1139
    iput-object p2, p0, Lcom/kakaogame/web/WebDialog;->webUrl:Ljava/lang/String;

    .line 1149
    iput-object p3, p0, Lcom/kakaogame/web/WebDialog;->postData:[B

    .line 1159
    new-instance p1, Lcom/kakaogame/web/WebDialog$Settings$Builder;

    invoke-direct {p1}, Lcom/kakaogame/web/WebDialog$Settings$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->build()Lcom/kakaogame/web/WebDialog$Settings;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    .line 1169
    invoke-direct {p0}, Lcom/kakaogame/web/WebDialog;->getDisplayCutoutMode()V

    .line 1179
    new-instance p1, Lcom/kakaogame/web/WebDialog$SelectImageHandler;

    invoke-direct {p1, p0}, Lcom/kakaogame/web/WebDialog$SelectImageHandler;-><init>(Lcom/kakaogame/web/WebDialog;)V

    .line 1189
    new-instance p1, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;

    invoke-direct {p1, p0}, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;-><init>(Lcom/kakaogame/web/WebDialog;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;[BLcom/kakaogame/web/WebDialog$Settings;)V
    .locals 2

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

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1409
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    .line 1419
    sget v1, Landroidx/appcompat/R$style;->Base_AlertDialog_AppCompat_Light:I

    .line 1399
    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 629
    iput v0, p0, Lcom/kakaogame/web/WebDialog;->preOrientation:I

    .line 639
    iput v0, p0, Lcom/kakaogame/web/WebDialog;->preScreenLayout:I

    .line 799
    new-instance v0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/web/WebDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/web/WebDialog;->binding$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 819
    iput-object v0, p0, Lcom/kakaogame/web/WebDialog;->deepLinkUrl:Ljava/lang/String;

    const/4 v0, 0x1

    .line 869
    iput-boolean v0, p0, Lcom/kakaogame/web/WebDialog;->isPulltoRefresh:Z

    .line 1439
    invoke-virtual {p0, p1}, Lcom/kakaogame/web/WebDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1449
    iput-object p2, p0, Lcom/kakaogame/web/WebDialog;->webUrl:Ljava/lang/String;

    .line 1459
    iput-object p3, p0, Lcom/kakaogame/web/WebDialog;->postData:[B

    .line 1469
    iput-object p4, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    .line 1479
    invoke-direct {p0}, Lcom/kakaogame/web/WebDialog;->getDisplayCutoutMode()V

    .line 1489
    new-instance p1, Lcom/kakaogame/web/WebDialog$SelectImageHandler;

    invoke-direct {p1, p0}, Lcom/kakaogame/web/WebDialog$SelectImageHandler;-><init>(Lcom/kakaogame/web/WebDialog;)V

    .line 1499
    new-instance p1, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;

    invoke-direct {p1, p0}, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;-><init>(Lcom/kakaogame/web/WebDialog;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$changeTitleText(Lcom/kakaogame/web/WebDialog;Ljava/lang/String;)V
    .locals 0

    .line 589
    invoke-direct {p0, p1}, Lcom/kakaogame/web/WebDialog;->changeTitleText(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$checkRequiredPermission(Lcom/kakaogame/web/WebDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
    .locals 0

    .line 589
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/web/WebDialog;->checkRequiredPermission(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setDeepLinkUrl$p(Lcom/kakaogame/web/WebDialog;Ljava/lang/String;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog;->deepLinkUrl:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final binding_delegate$lambda$0(Lcom/kakaogame/web/WebDialog;)Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;
    .locals 0

    .line 799
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p0}, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final changeTitleText(Ljava/lang/String;)V
    .locals 1

    .line 6169
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const v0, 0x6d0baf18

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 6179
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6189
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6199
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final checkRequiredPermission(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1649
    new-instance v0, Lcom/kakaogame/web/WebDialog$checkRequiredPermission$1;

    invoke-direct {v0, p3, p1, p2}, Lcom/kakaogame/web/WebDialog$checkRequiredPermission$1;-><init>(Lcom/kakaogame/KGResultCallback;Landroid/app/Activity;Ljava/lang/String;)V

    check-cast v0, Lcom/kakaogame/KGResultCallback;

    invoke-static {p1, p2, v0}, Lcom/kakaogame/KGApplication;->checkPermission(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final checkUIParameters(Ljava/lang/String;)V
    .locals 2

    .line 5249
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5279
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const v1, 0x3360472b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x6d0bd780

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5289
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const v0, 0x6d02ade8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 5299
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5309
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5319
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebDialog$Settings;->isPulltoRefresh()Z

    move-result v0

    goto :goto_0

    .line 5339
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 5309
    :goto_0
    iput-boolean v0, p0, Lcom/kakaogame/web/WebDialog;->isPulltoRefresh:Z

    const v0, 0x7d7eb015

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 5359
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5369
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5379
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog$Settings;->isHideTopbar()Z

    move-result p1

    goto :goto_1

    .line 5399
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 5369
    :goto_1
    iput-boolean p1, p0, Lcom/kakaogame/web/WebDialog;->hideTopbar:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final getDisplayCutoutMode()V
    .locals 2

    .line 1549
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 1559
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v0, p0, Lcom/kakaogame/web/WebDialog;->displayCutoutMode:I

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final handleKeyboardShowEvent$lambda$7(Landroid/view/View;Lcom/kakaogame/web/WebDialog;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    const v0, 0x7d7eb1a5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "insets"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5639
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    or-int/2addr p2, v0

    invoke-virtual {p3, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p2

    const v0, -0x2240c684

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5649
    iget v0, p2, Landroidx/core/graphics/Insets;->bottom:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 5659
    iget v0, p2, Landroidx/core/graphics/Insets;->bottom:I

    iget v2, p1, Lcom/kakaogame/web/WebDialog;->viewMargin:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 5679
    :cond_0
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 5709
    :goto_0
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5437b31a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const v0, 0x6d02afe8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Lcom/kakaogame/web/WebDialog;->viewMargin:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebDialog"

    invoke-virtual {p0, p2, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    .array-data 1
    .end array-data
.end method

.method private static final handleKeyboardShowEvent$lambda$8(Landroid/view/View;Landroid/app/Activity;Lcom/kakaogame/web/WebDialog;Landroid/view/View;)V
    .locals 5

    const v0, -0x22475aec

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x336c114b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 5789
    :try_start_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5799
    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5819
    move-object p0, p1

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/kakaogame/util/DisplayUtil;->getDisplayHeight(Landroid/content/Context;)I

    move-result p0

    .line 5829
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    .line 5839
    sget-object v3, Lcom/kakaogame/util/DisplayUtil;->INSTANCE:Lcom/kakaogame/util/DisplayUtil;

    invoke-virtual {v3, p1}, Lcom/kakaogame/util/DisplayUtil;->getNavigationBarHeight(Landroid/app/Activity;)I

    move-result v3

    .line 5849
    sget-object v4, Lcom/kakaogame/util/DisplayUtil;->INSTANCE:Lcom/kakaogame/util/DisplayUtil;

    invoke-virtual {v4, p1}, Lcom/kakaogame/util/DisplayUtil;->getStatusBarHeight2(Landroid/app/Activity;)I

    move-result p1

    add-int/2addr v3, p1

    sub-int/2addr p0, v3

    .line 5889
    :cond_0
    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int p1, p0, p1

    .line 5899
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v1, p0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p1, :cond_1

    .line 5929
    invoke-virtual {p2}, Lcom/kakaogame/web/WebDialog;->setDialogVisibility()V

    :cond_1
    const/4 p0, 0x0

    if-lez p1, :cond_2

    .line 5979
    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 5999
    iget p2, p2, Lcom/kakaogame/web/WebDialog;->viewMargin:I

    sub-int/2addr p1, p2

    invoke-virtual {p3, p0, p0, p0, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 6029
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    if-eqz p1, :cond_3

    .line 6049
    invoke-virtual {p3, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6099
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {p1, v1, p2, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final initViews$lambda$5$lambda$2(Lcom/kakaogame/web/WebDialog;Landroid/view/View;)V
    .locals 0

    .line 3319
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/kakaogame/web/WebViewContainer;->hasInnerPopupView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3329
    iget-object p0, p0, Lcom/kakaogame/web/WebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/web/WebViewContainer;->goBackInnerPopupView()V

    return-void

    .line 3359
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3369
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 3389
    :cond_1
    iget-object p0, p0, Lcom/kakaogame/web/WebDialog;->backView:Landroid/view/View;

    if-eqz p0, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final initViews$lambda$5$lambda$3(Lcom/kakaogame/web/WebDialog;)V
    .locals 2

    .line 3449
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 3459
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final initViews$lambda$5$lambda$4(Lcom/kakaogame/web/WebDialog;Landroid/view/View;)V
    .locals 0

    .line 3519
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog$Settings;->getCloseListener()Lcom/kakaogame/web/WebDialog$OnCloseListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3529
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog$Settings;->getCloseListener()Lcom/kakaogame/web/WebDialog$OnCloseListener;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lcom/kakaogame/web/WebDialog$OnCloseListener;->onClose(Lcom/kakaogame/web/WebDialog;)V

    goto :goto_0

    .line 3549
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->dismiss()V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final onCreate$lambda$1(Lcom/kakaogame/web/WebDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string p1, "event"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2399
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_8

    const/4 p1, 0x4

    if-ne p2, p1, :cond_8

    .line 2429
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/kakaogame/web/WebViewContainer;->hasInnerPopupView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2439
    iget-object p0, p0, Lcom/kakaogame/web/WebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/web/WebViewContainer;->goBackInnerPopupView()V

    return p3

    .line 2469
    :cond_0
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const v0, 0x6d02a140

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x336c114b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    if-nez p1, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;

    :goto_0
    if-eqz p2, :cond_6

    .line 2489
    check-cast p1, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->getCustomView()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 2499
    iget-object p0, p0, Lcom/kakaogame/web/WebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/kakaogame/web/WebViewContainer;->onHideCustomView()V

    goto :goto_2

    .line 2519
    :cond_3
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2529
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_2

    .line 2549
    :cond_4
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog$Settings;->getCloseListener()Lcom/kakaogame/web/WebDialog$OnCloseListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2559
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog$Settings;->getCloseListener()Lcom/kakaogame/web/WebDialog$OnCloseListener;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1, p0}, Lcom/kakaogame/web/WebDialog$OnCloseListener;->onClose(Lcom/kakaogame/web/WebDialog;)V

    goto :goto_2

    .line 2579
    :cond_5
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->dismiss()V

    goto :goto_2

    .line 2629
    :cond_6
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->dismiss()V

    :cond_7
    :goto_2
    return p3

    :cond_8
    const/4 p0, 0x0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final setFocusChanged(Landroid/app/Activity;)V
    .locals 1

    .line 5529
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x5d10b607

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5539
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final setFocusChanged$lambda$6(Z)V
    .locals 2

    .line 5549
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    if-eqz p0, :cond_0

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const v1, 0x5d1e9bef

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const v1, 0x336c114b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 3889
    new-instance v0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;-><init>(Lcom/kakaogame/web/WebDialog;Landroid/app/Activity;Landroid/webkit/WebView;Lcom/kakaogame/web/WebDialog$Settings;)V

    check-cast v0, Lcom/kakaogame/web/WebViewContainer;

    iput-object v0, p0, Lcom/kakaogame/web/WebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    return-void

    .array-data 1
    .end array-data
.end method

.method public dismiss()V
    .locals 3

    .line 2919
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2929
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x336c114b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d70f9e5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    sget-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/KGActivityManager$ConfigChangeListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGActivityManager$Companion;->removeConfigChangeListener(Lcom/kakaogame/KGActivityManager$ConfigChangeListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected getBinding()Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog;->binding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDeepLinkUrl()Ljava/lang/String;
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog;->deepLinkUrl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDisplayCutoutMode()I
    .locals 1

    .line 899
    iget v0, p0, Lcom/kakaogame/web/WebDialog;->displayCutoutMode:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getPostData()[B
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog;->postData:[B

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getPreOrientation()I
    .locals 1

    .line 629
    iget v0, p0, Lcom/kakaogame/web/WebDialog;->preOrientation:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getPreScreenLayout()I
    .locals 1

    .line 639
    iget v0, p0, Lcom/kakaogame/web/WebDialog;->preScreenLayout:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog;->titleView:Landroid/widget/TextView;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getTopbarView()Landroid/view/View;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog;->topbarView:Landroid/view/View;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getWebLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog;->webLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x5d1e9a2f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x543983ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final handleKeyboardShowEvent(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    const v0, 0x7d7eb36d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5437b16a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5609
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 5629
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p0}, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda5;-><init>(Landroid/view/View;Lcom/kakaogame/web/WebDialog;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    goto :goto_0

    .line 5749
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x5d10b607

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5769
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, p1, p0, p2}, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;Landroid/app/Activity;Lcom/kakaogame/web/WebDialog;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final hideTopbar()V
    .locals 2

    const/4 v0, 0x1

    .line 5459
    iput-boolean v0, p0, Lcom/kakaogame/web/WebDialog;->hideTopbar:Z

    .line 5469
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebDialog$Settings;->hideTopbar()V

    .line 5489
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog;->topbarView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method protected initViews()V
    .locals 8

    .line 2989
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getBinding()Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kakaogame/web/WebDialog;->setContentView(Landroid/view/View;)V

    .line 2999
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getBinding()Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;

    move-result-object v0

    .line 3009
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebContent:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/kakaogame/web/WebDialog;->setWebView(Landroid/webkit/WebView;)V

    .line 3019
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0, v1}, Lcom/kakaogame/web/WebDialog;->setWebLayout(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 3039
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebTopbar:Landroid/widget/RelativeLayout;

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/kakaogame/web/WebDialog;->topbarView:Landroid/view/View;

    .line 3049
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebTopbarTitle:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kakaogame/web/WebDialog;->titleView:Landroid/widget/TextView;

    .line 3059
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebTopbarBack:Landroid/widget/FrameLayout;

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/kakaogame/web/WebDialog;->backView:Landroid/view/View;

    .line 3079
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebMain:Landroid/widget/RelativeLayout;

    const v3, 0x225b85b6

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Lcom/kakaogame/web/WebDialog;->handleKeyboardShowEvent(Landroid/app/Activity;Landroid/view/View;)V

    .line 3099
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/kakaogame/web/WebDialog;->setFocusChanged(Landroid/app/Activity;)V

    .line 3109
    iget-object v1, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/web/WebDialog$Settings;->getBackgroundColor()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 3119
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebMain:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v3}, Lcom/kakaogame/web/WebDialog$Settings;->getBackgroundColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 3149
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 3159
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v4, 0x1

    .line 3169
    invoke-virtual {v1, v4}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 3179
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 3209
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    iget-object v6, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {p0, v1, v5, v6}, Lcom/kakaogame/web/WebDialog;->createContainer(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/kakaogame/web/WebDialog$Settings;)V

    .line 3229
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->offWebViewPopupUI()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3239
    iget-object v1, p0, Lcom/kakaogame/web/WebDialog;->webUrl:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kakaogame/web/WebDialog;->webUrl:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    const v5, 0x5d1e82cf

    invoke-static {v5}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v1, v5, v3, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3249
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const v5, -0x224d0294

    invoke-static {v5}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3259
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 3269
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 3299
    :cond_2
    iget-object v1, p0, Lcom/kakaogame/web/WebDialog;->backView:Landroid/view/View;

    if-eqz v1, :cond_3

    new-instance v5, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/web/WebDialog;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3419
    :cond_3
    iget-boolean v1, p0, Lcom/kakaogame/web/WebDialog;->isPulltoRefresh:Z

    if-eqz v1, :cond_4

    .line 3429
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 3439
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    new-instance v3, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda3;-><init>(Lcom/kakaogame/web/WebDialog;)V

    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    goto :goto_1

    .line 3489
    :cond_4
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 3509
    :goto_1
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebTopbarClose:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda4;-><init>(Lcom/kakaogame/web/WebDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3589
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->offWebviewTopBarYellow()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3599
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebTopbarCloseImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroid/content/Context;

    sget v4, Lcom/kakaogame/R$drawable;->ic_action_cancel_grey:I

    invoke-static {v3, v4}, Lcom/kakaogame/util/ResourceUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3609
    iget-object v1, v0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebTopbarPreviousImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroid/content/Context;

    sget v4, Lcom/kakaogame/R$drawable;->ic_action_previous_item_grey:I

    invoke-static {v3, v4}, Lcom/kakaogame/util/ResourceUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3629
    iget-object v1, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/web/WebDialog$Settings;->getTitleBackgroundColor()I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 3639
    iget-object v1, p0, Lcom/kakaogame/web/WebDialog;->topbarView:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v3}, Lcom/kakaogame/web/WebDialog$Settings;->getTitleBackgroundColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 3659
    :cond_5
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->webviewTitleBgColor()I

    move-result v1

    .line 3669
    iget-object v3, p0, Lcom/kakaogame/web/WebDialog;->topbarView:Landroid/view/View;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3699
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/web/WebDialog$Settings;->getTitleTextColor()I

    move-result v1

    if-eq v1, v2, :cond_7

    .line 3709
    iget-object v1, p0, Lcom/kakaogame/web/WebDialog;->titleView:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v2}, Lcom/kakaogame/web/WebDialog$Settings;->getTitleTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 3729
    :cond_7
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->webviewTitleTextColor()I

    move-result v1

    .line 3739
    iget-object v2, p0, Lcom/kakaogame/web/WebDialog;->titleView:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3779
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/web/WebDialog$Settings;->isHideCloseButton()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_9

    .line 3789
    iget-object v0, v0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWebTopbarClose:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3819
    :cond_9
    iget-boolean v0, p0, Lcom/kakaogame/web/WebDialog;->hideTopbar:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebDialog$Settings;->isHideTopbar()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3829
    :cond_a
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog;->topbarView:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void

    .array-data 1
    .end array-data
.end method

.method protected final isTablet()Z
    .locals 5

    .line 3949
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3959
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3969
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3979
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3989
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, v1

    div-float v4, v1, v3

    int-to-float v2, v2

    div-float v3, v2, v3

    .line 4019
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x44160000    # 600.0f

    cmpl-float v3, v3, v4

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    return v4

    .line 4059
    :cond_0
    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 4069
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v1, v3

    div-float/2addr v2, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v0, v1

    .line 4099
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4

    .array-data 1
    .end array-data
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 2169
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/kakaogame/util/DisplayUtil;->checkCutout(Landroid/app/Activity;)I

    move-result v0

    .line 2179
    invoke-virtual {p0, v0}, Lcom/kakaogame/web/WebDialog;->setMargin(I)V

    .line 2199
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog;->postData:[B

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/web/WebDialog;->webUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakaogame/web/WebDialog;->postData:[B

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    .line 2209
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebDialog$Settings;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/web/WebDialog;->webUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v2}, Lcom/kakaogame/web/WebDialog$Settings;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 2219
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/web/WebDialog;->webUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const v0, 0x7d77683d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5069
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x224230c4

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x5d10d32f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kakaogame/web/WebDialog;->preOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x336c114b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5099
    iget v0, p0, Lcom/kakaogame/web/WebDialog;->preOrientation:I

    if-ltz v0, :cond_0

    .line 5109
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/kakaogame/web/WebDialog;->preOrientation:I

    if-ne v0, v1, :cond_0

    .line 5119
    iget v0, p0, Lcom/kakaogame/web/WebDialog;->preScreenLayout:I

    if-ltz v0, :cond_0

    .line 5129
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p0, Lcom/kakaogame/web/WebDialog;->preScreenLayout:I

    if-eq v0, v1, :cond_1

    .line 5139
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/kakaogame/util/DisplayUtil;->checkCutout(Landroid/app/Activity;)I

    move-result v0

    .line 5149
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->setDialogVisibility()V

    .line 5159
    invoke-virtual {p0, v0}, Lcom/kakaogame/web/WebDialog;->setMargin(I)V

    .line 5189
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/kakaogame/web/WebDialog;->preOrientation:I

    .line 5199
    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput p1, p0, Lcom/kakaogame/web/WebDialog;->preScreenLayout:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 2269
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2279
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v0, 0x1030002

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2329
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x0

    .line 2339
    invoke-virtual {p0, p1}, Lcom/kakaogame/web/WebDialog;->setCanceledOnTouchOutside(Z)V

    .line 2369
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2389
    new-instance p1, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda7;-><init>(Lcom/kakaogame/web/WebDialog;)V

    invoke-virtual {p0, p1}, Lcom/kakaogame/web/WebDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2709
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog;->webUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kakaogame/web/WebDialog;->checkUIParameters(Ljava/lang/String;)V

    .line 2719
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->initViews()V

    .line 2729
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->setDialogVisibility()V

    .line 2739
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog;->container:Lcom/kakaogame/web/WebViewContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/web/WebDialog;->webUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/web/WebViewContainer;->initCookies(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected onStart()V
    .locals 3

    .line 2779
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2789
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x336c114b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x2255f32e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 2809
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 2819
    sget-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/KGActivityManager$ConfigChangeListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGActivityManager$Companion;->addConfigChangeListener(Lcom/kakaogame/KGActivityManager$ConfigChangeListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onStop()V
    .locals 3

    .line 2859
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2869
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x336c114b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x224c447c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected final setDialogVisibility()V
    .locals 3

    .line 1799
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 1809
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    const v1, 0x2252b63e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1839
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    const/4 v1, 0x2

    .line 1859
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    .line 2089
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2119
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/kakaogame/web/WebDialog;->displayCutoutMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final setDisplayCutoutMode(I)V
    .locals 0

    .line 899
    iput p1, p0, Lcom/kakaogame/web/WebDialog;->displayCutoutMode:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected setMargin(I)V
    .locals 11

    .line 4169
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getBinding()Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/kakaogame/databinding/ZinnySdkDialogWebKakaoBinding;->zinnySdkDialogWeb:Landroid/widget/RelativeLayout;

    const v1, 0x5d1e8d47

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4189
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/kakaogame/util/DisplayUtil;->getCurrentWindowMetricsPointCompat(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v1

    .line 4199
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 4209
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 4229
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x5437a63a

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x336c01f3

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x336c114b

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4239
    iget-object v3, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v3}, Lcom/kakaogame/web/WebDialog$Settings;->isCustomSize()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4249
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/kakaogame/util/DisplayUtil;->isScreenPortrait(Landroid/app/Activity;)Z

    move-result p1

    .line 4259
    div-int/lit8 v3, v2, 0x64

    mul-int/lit8 v4, v3, 0x3

    .line 4269
    div-int/lit8 v6, v1, 0x64

    mul-int/lit8 v7, v6, 0x3

    .line 4279
    iget-object v8, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v8}, Lcom/kakaogame/web/WebDialog$Settings;->isMarginSet()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4289
    iget-object v4, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v4}, Lcom/kakaogame/web/WebDialog$Settings;->getVerticalMargin()I

    move-result v4

    mul-int/2addr v3, v4

    .line 4299
    iget-object v4, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v4}, Lcom/kakaogame/web/WebDialog$Settings;->getHorizontalMargin()I

    move-result v4

    mul-int/2addr v6, v4

    .line 4309
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v6, v6, 0x4

    :cond_0
    move v7, v6

    .line 4349
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const v8, 0x5d1ea40f

    invoke-static {v8}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const v8, 0x5d1ea497

    invoke-static {v8}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x54378caa

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x225b876e

    invoke-static {v6}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_2

    mul-int/lit8 v9, v7, 0x2

    sub-int/2addr v1, v9

    .line 4389
    iget-object v9, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v9, p1}, Lcom/kakaogame/web/WebDialog$Settings;->getHeight(Z)I

    move-result v9

    mul-int/2addr v9, v1

    iget-object v10, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v10, p1}, Lcom/kakaogame/web/WebDialog$Settings;->getWidth(Z)I

    move-result p1

    div-int/2addr v9, p1

    .line 4399
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v5, v10}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 p1, v3, 0x2

    sub-int p1, v2, p1

    if-le p1, v9, :cond_1

    sub-int/2addr v2, v9

    .line 4429
    div-int/lit8 v2, v2, 0x2

    move v3, v2

    .line 4449
    :cond_1
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4459
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x225b86f6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v9, v3, 0x2

    sub-int/2addr v2, v9

    .line 4499
    iget-object v9, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v9, p1}, Lcom/kakaogame/web/WebDialog$Settings;->getWidth(Z)I

    move-result v9

    mul-int/2addr v9, v2

    iget-object v10, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v10, p1}, Lcom/kakaogame/web/WebDialog$Settings;->getHeight(Z)I

    move-result p1

    div-int/2addr v9, p1

    mul-int/lit8 p1, v7, 0x2

    sub-int p1, v1, p1

    if-le p1, v9, :cond_3

    sub-int/2addr v1, v9

    .line 4529
    div-int/lit8 v1, v1, 0x2

    move v7, v1

    .line 4549
    :cond_3
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4559
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x54378d42

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4589
    :cond_4
    iget-object v3, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v3, p1}, Lcom/kakaogame/web/WebDialog$Settings;->getHeight(Z)I

    move-result v3

    if-lez v3, :cond_5

    .line 4609
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v4, p1}, Lcom/kakaogame/web/WebDialog$Settings;->getHeight(Z)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 4619
    div-int/lit8 v4, v2, 0x2

    .line 4639
    :cond_5
    iget-object v2, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v2, p1}, Lcom/kakaogame/web/WebDialog$Settings;->getWidth(Z)I

    move-result v2

    if-lez v2, :cond_7

    .line 4659
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/kakaogame/web/WebDialog;->settings:Lcom/kakaogame/web/WebDialog$Settings;

    invoke-virtual {v3, p1}, Lcom/kakaogame/web/WebDialog$Settings;->getWidth(Z)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-le p1, v1, :cond_6

    move p1, v1

    :cond_6
    sub-int/2addr v1, p1

    .line 4679
    div-int/lit8 v7, v1, 0x2

    :cond_7
    move v3, v4

    .line 4709
    :goto_0
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/kakaogame/web/WebDialog;->viewMargin:I

    .line 4719
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4729
    invoke-virtual {p1, v7, v3, v7, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 4739
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 4749
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 4769
    :cond_8
    div-int/lit8 v2, v2, 0x64

    mul-int/lit8 v2, v2, 0x3

    .line 4779
    div-int/lit8 v1, v1, 0x64

    mul-int/lit8 v1, v1, 0x3

    .line 4789
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/kakaogame/web/WebDialog;->viewMargin:I

    .line 4799
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4809
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/kakaogame/util/DisplayUtil;->isScreenPortrait(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4829
    iget v2, p0, Lcom/kakaogame/web/WebDialog;->viewMargin:I

    add-int/2addr p1, v2

    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 4849
    :cond_9
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/kakaogame/util/DisplayUtil;->getLandscapeDirection(Landroid/app/Activity;)I

    move-result v2

    if-nez v2, :cond_a

    .line 4869
    iget v2, p0, Lcom/kakaogame/web/WebDialog;->viewMargin:I

    add-int/2addr p1, v2

    .line 4859
    invoke-virtual {v1, p1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 4919
    :cond_a
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/kakaogame/util/DisplayUtil;->getLandscapeDirection(Landroid/app/Activity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 4939
    iget v2, p0, Lcom/kakaogame/web/WebDialog;->viewMargin:I

    add-int/2addr p1, v2

    .line 4929
    invoke-virtual {v1, v2, v2, p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 5009
    :cond_b
    :goto_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 5019
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void

    .array-data 1
    .end array-data
.end method

.method protected final setPreOrientation(I)V
    .locals 0

    .line 629
    iput p1, p0, Lcom/kakaogame/web/WebDialog;->preOrientation:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setPreScreenLayout(I)V
    .locals 0

    .line 639
    iput p1, p0, Lcom/kakaogame/web/WebDialog;->preScreenLayout:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setTitleView(Landroid/widget/TextView;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog;->titleView:Landroid/widget/TextView;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setTopbarView(Landroid/view/View;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog;->topbarView:Landroid/view/View;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setWebLayout(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog;->webLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final setWebView(Landroid/webkit/WebView;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog;->webView:Landroid/webkit/WebView;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
