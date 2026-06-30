.class public final Lcom/kakaogame/push/PushPermissionManager;
.super Ljava/lang/Object;
.source "PushPermissionManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u001e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000b2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0007J\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000b2\u0006\u0010\u0008\u001a\u00020\tJ\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0008\u001a\u00020\tH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakaogame/push/PushPermissionManager;",
        "",
        "<init>",
        "()V",
        "PUSH_PERMISSION",
        "",
        "isAndroid13",
        "",
        "activity",
        "Landroid/app/Activity;",
        "requestPushPermission",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "goToSettings",
        "enablePush",
        "showPopup",
        "",
        "msgResId",
        "",
        "goToNotificationSettings",
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
.field public static final INSTANCE:Lcom/kakaogame/push/PushPermissionManager;

.field private static final PUSH_PERMISSION:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$OmXkBdmcKh6WmXne3j7MiRbXBuo(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/push/PushPermissionManager;->showPopup$lambda$1(Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$UjL-Fg5aJp7g1l_puRD3rIywmQo(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/push/PushPermissionManager;->showPopup$lambda$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/push/PushPermissionManager;

    invoke-direct {v0}, Lcom/kakaogame/push/PushPermissionManager;-><init>()V

    sput-object v0, Lcom/kakaogame/push/PushPermissionManager;->INSTANCE:Lcom/kakaogame/push/PushPermissionManager;

    const v0, -0x4515ec8f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    sput-object v0, Lcom/kakaogame/push/PushPermissionManager;->PUSH_PERMISSION:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final goToNotificationSettings(Landroid/app/Activity;)V
    .locals 5

    .line 849
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/high16 v2, 0x10000000

    if-lt v0, v1, :cond_0

    .line 859
    new-instance v0, Landroid/content/Intent;

    const v1, 0x5d1cb5b7

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7d708f45

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 879
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 899
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v4, 0x5d1506e7

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const v3, 0x33622dcb

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 909
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 889
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 929
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final isAndroid13(Landroid/app/Activity;)Z
    .locals 2

    .line 229
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 239
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method private final showPopup(Landroid/app/Activity;I)V
    .locals 18

    move-object/from16 v0, p1

    const/4 v1, -0x1

    move/from16 v2, p2

    if-ne v2, v1, :cond_0

    return-void

    .line 729
    :cond_0
    new-instance v1, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1ff7

    const/16 v17, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 739
    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_push_setting_button_go:I

    new-instance v3, Lcom/kakaogame/push/PushPermissionManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/kakaogame/push/PushPermissionManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 789
    sget v2, Lcom/kakaogame/R$string;->zinny_sdk_common_button_cancel:I

    new-instance v3, Lcom/kakaogame/push/PushPermissionManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/kakaogame/push/PushPermissionManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/ui/DialogManager$Settings;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 799
    sget-object v2, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    invoke-virtual {v2, v0, v1}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showPopup$lambda$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 749
    sget-object p1, Lcom/kakaogame/push/PushPermissionManager;->INSTANCE:Lcom/kakaogame/push/PushPermissionManager;

    invoke-direct {p1, p0}, Lcom/kakaogame/push/PushPermissionManager;->goToNotificationSettings(Landroid/app/Activity;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showPopup$lambda$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 789
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final enablePush(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 569
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x5d118c7f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kakaogame/util/DeviceUtil;->isNotificationEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 589
    invoke-direct {p0, p1}, Lcom/kakaogame/push/PushPermissionManager;->isAndroid13(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/kakaogame/push/PushPermissionManager;->requestPushPermission(Landroid/app/Activity;Z)Lcom/kakaogame/KGResult;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 629
    :cond_0
    sget v0, Lcom/kakaogame/R$string;->zinny_sdk_push_setting_warning:I

    invoke-direct {p0, p1, v0}, Lcom/kakaogame/push/PushPermissionManager;->showPopup(Landroid/app/Activity;I)V

    .line 639
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x138a

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 659
    :cond_1
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final requestPushPermission(Landroid/app/Activity;Z)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/kakaogame/push/PushPermissionManager;->isAndroid13(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 309
    :cond_0
    sget-object v0, Lcom/kakaogame/push/PushPermissionManager;->PUSH_PERMISSION:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/kakaogame/ui/PermissionManager;->checkPermission(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    const/16 v3, 0x138a

    if-nez v2, :cond_1

    .line 329
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 349
    :cond_1
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 359
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 379
    :cond_2
    sget-object v1, Lcom/kakaogame/ui/PermissionManager;->INSTANCE:Lcom/kakaogame/ui/PermissionManager;

    invoke-virtual {v1, p1, v0}, Lcom/kakaogame/ui/PermissionManager;->requestPermissionWithDeniedCheck(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    .line 409
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p2

    const/16 v0, 0xfa2

    if-ne p2, v0, :cond_3

    .line 419
    sget p2, Lcom/kakaogame/R$string;->zinny_sdk_push_setting_warning:I

    invoke-direct {p0, p1, p2}, Lcom/kakaogame/push/PushPermissionManager;->showPopup(Landroid/app/Activity;I)V

    .line 439
    :cond_3
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 459
    :cond_4
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 479
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 499
    :cond_5
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
