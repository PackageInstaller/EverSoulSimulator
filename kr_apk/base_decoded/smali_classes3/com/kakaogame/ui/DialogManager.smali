.class public final Lcom/kakaogame/ui/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;,
        Lcom/kakaogame/ui/DialogManager$Settings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002&\'B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0018\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J0\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0017\u001a\u00020\n2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007J\u0012\u0010\u001a\u001a\u00020\u00132\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J;\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00052!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u000c0\u001dJ \u0010!\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00052\u0006\u0010\"\u001a\u00020\nJ\u0015\u0010#\u001a\u00020$2\u0006\u0010\r\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008%R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/kakaogame/ui/DialogManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "ACTION_OK",
        "ACTION_CLOSE",
        "ACTION_TERMINATE",
        "useDefaultDialog",
        "",
        "showAlertDialog",
        "",
        "activity",
        "Landroid/app/Activity;",
        "settings",
        "Lcom/kakaogame/ui/DialogManager$Settings;",
        "showAlertDialogBuilder",
        "builder",
        "Landroid/app/AlertDialog$Builder;",
        "showCustomAlertDialogBuilder",
        "showErrorDialog",
        "message",
        "isFinish",
        "listener",
        "Landroid/content/DialogInterface$OnDismissListener;",
        "createAlertDialogBuilder",
        "showDialog",
        "callback",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "showProcessKillDialog",
        "cancelable",
        "requestedActivityOrientation",
        "",
        "requestedActivityOrientation$gamesdk_release",
        "CustomAlertDialog",
        "Settings",
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
.field public static final ACTION_CLOSE:Ljava/lang/String; = "customUI_close"

.field public static final ACTION_OK:Ljava/lang/String; = "customUI_ok"

.field public static final ACTION_TERMINATE:Ljava/lang/String; = "customUI_terminate"

.field public static final INSTANCE:Lcom/kakaogame/ui/DialogManager;

.field private static final TAG:Ljava/lang/String; = "DialogManager"


# direct methods
.method public static synthetic $r8$lambda$9229hvZTzUfOKG0s7LVPNTjbxYg(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/ui/DialogManager;->showAlertDialogBuilder$lambda$0(Landroid/app/AlertDialog$Builder;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$9sgBQHuwcONpTwTSz4aECYY5u94(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/ui/DialogManager;->showProcessKillDialog$lambda$5(Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$VwowUSxl4Z8fhJZKZQeFQBvwsWo(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/ui/DialogManager;->showDialog$lambda$3(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$e-oycYGCynf6gbioCfzAYoFdH0w(ZLandroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/kakaogame/ui/DialogManager;->showErrorDialog$lambda$2(ZLandroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$vGR8UIjpIWig0esXHIQ8q8yEuhs(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/ui/DialogManager;->showCustomAlertDialogBuilder$lambda$1(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$xkryGFfXalnsevx_01eSB-1Dm98(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/ui/DialogManager;->showDialog$lambda$4(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/ui/DialogManager;

    invoke-direct {v0}, Lcom/kakaogame/ui/DialogManager;-><init>()V

    sput-object v0, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final createAlertDialogBuilder(Landroid/app/Activity;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1189
    new-instance v0, Landroid/app/AlertDialog$Builder;

    check-cast p0, Landroid/content/Context;

    const v1, 0x10302d1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final showAlertDialogBuilder(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V
    .locals 1

    .line 749
    new-instance v0, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showAlertDialogBuilder$lambda$0(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    .line 759
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const/4 v0, 0x0

    .line 769
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 779
    invoke-static {p0}, Lcom/liapp/y;->ڱڱحֱح(Landroid/app/AlertDialog;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 789
    invoke-static {p0}, Lcom/liapp/y;->ڱڱحֱح(Landroid/app/AlertDialog;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x1030002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 799
    invoke-static {p0}, Lcom/liapp/y;->ڱڱحֱح(Landroid/app/AlertDialog;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final showCustomAlertDialogBuilder(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V
    .locals 1

    .line 849
    new-instance v0, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda4;-><init>(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showCustomAlertDialogBuilder$lambda$1(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V
    .locals 1

    .line 859
    new-instance v0, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;-><init>(Landroid/content/Context;Lcom/kakaogame/ui/DialogManager$Settings;)V

    const/4 p0, 0x0

    .line 869
    invoke-virtual {v0, p0}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 879
    invoke-virtual {v0}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    .line 889
    invoke-virtual {v0}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const p1, 0x1030002

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 899
    invoke-virtual {v0}, Lcom/kakaogame/ui/DialogManager$CustomAlertDialog;->show()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showDialog$lambda$3(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    .line 1259
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showDialog$lambda$4(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1289
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x1

    .line 1299
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic showErrorDialog$default(Lcom/kakaogame/ui/DialogManager;Landroid/app/Activity;Ljava/lang/String;ZLandroid/content/DialogInterface$OnDismissListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 939
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kakaogame/ui/DialogManager;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;ZLandroid/content/DialogInterface$OnDismissListener;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showErrorDialog$lambda$2(ZLandroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1029
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p0, :cond_0

    .line 1049
    invoke-static {p1}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1069
    invoke-interface {p2, p3}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showProcessKillDialog$lambda$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1379
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final useDefaultDialog()Z
    .locals 3

    .line 339
    invoke-static {}, Lcom/kakaogame/util/DeviceUtil;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    .line 349
    sget-object v1, Lcom/kakaogame/util/VersionUtil;->INSTANCE:Lcom/kakaogame/util/VersionUtil;

    invoke-virtual {v1}, Lcom/kakaogame/util/VersionUtil;->getAPIVersion()I

    move-result v1

    .line 359
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->isCustomDialogDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    if-gt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final requestedActivityOrientation$gamesdk_release(Landroid/app/Activity;)I
    .locals 2

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1459
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 1469
    invoke-static {p1}, Lcom/kakaogame/util/DisplayUtil;->isScreenPortrait(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    .line 1479
    :goto_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V
    .locals 3

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d10a28f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcom/kakaogame/ui/DialogManager;->useDefaultDialog()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 419
    invoke-static {p1}, Lcom/kakaogame/ui/DialogManager;->createAlertDialogBuilder(Landroid/app/Activity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 449
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getTitleId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getTitleId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 499
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getMessage()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 509
    :cond_2
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getMessageId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getMessageId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 549
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getPositiveButtonTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getPositiveButtonTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 559
    :cond_4
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getPositiveButtonTitleId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getPositiveButtonTitleId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 599
    :cond_5
    :goto_2
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getNegativeButtonTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getNegativeButtonTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getNegativeListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 609
    :cond_6
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getNegativeButtonTitleId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getNegativeButtonTitleId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getNegativeListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 639
    :cond_7
    :goto_3
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->isCancelable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 649
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->isCancelable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 659
    invoke-virtual {p2}, Lcom/kakaogame/ui/DialogManager$Settings;->getCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 679
    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/kakaogame/ui/DialogManager;->showAlertDialogBuilder(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V

    goto :goto_4

    .line 699
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/ui/DialogManager;->showCustomAlertDialogBuilder(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    :goto_4
    return-void

    .array-data 1
    .end array-data
.end method

.method public final showDialog(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const v2, 0x543d14da

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x6d0d7b60

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1239
    new-instance v2, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1efb

    const/16 v18, 0x0

    move-object v3, v2

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v18}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1249
    new-instance v3, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v3}, Lcom/kakaogame/ui/DialogManager$Settings;->setCancelable(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1279
    sget v3, Lcom/kakaogame/R$string;->zinny_sdk_common_button_ok:I

    new-instance v4, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    move-object/from16 v1, p0

    .line 1319
    invoke-virtual {v1, v0, v2}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/kakaogame/ui/DialogManager;->showErrorDialog$default(Lcom/kakaogame/ui/DialogManager;Landroid/app/Activity;Ljava/lang/String;ZLandroid/content/DialogInterface$OnDismissListener;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 8

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Lcom/kakaogame/ui/DialogManager;->showErrorDialog$default(Lcom/kakaogame/ui/DialogManager;Landroid/app/Activity;Ljava/lang/String;ZLandroid/content/DialogInterface$OnDismissListener;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final showErrorDialog(Landroid/app/Activity;Ljava/lang/String;ZLandroid/content/DialogInterface$OnDismissListener;)V
    .locals 18

    move-object/from16 v0, p1

    const v1, 0x543d14da

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    new-instance v1, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1ffb

    const/16 v17, 0x0

    move-object v2, v1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v17}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1019
    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_common_button_ok:I

    new-instance v3, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda5;

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct {v3, v4, v0, v5}, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda5;-><init>(ZLandroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    move-object/from16 v2, p0

    .line 1099
    invoke-virtual {v2, v0, v1}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final showProcessKillDialog(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 18

    move-object/from16 v0, p1

    const v1, 0x543d14da

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1359
    new-instance v1, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1efb

    const/16 v17, 0x0

    move-object v2, v1

    move-object/from16 v5, p2

    move/from16 v11, p3

    invoke-direct/range {v2 .. v17}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1369
    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_common_button_ok:I

    new-instance v3, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/kakaogame/ui/DialogManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    move-object/from16 v2, p0

    .line 1399
    invoke-virtual {v2, v0, v1}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
