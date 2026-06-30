.class public final Lcom/kakaogame/push/OnlinePushManager;
.super Ljava/lang/Object;
.source "OnlinePushManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/push/OnlinePushManager$OnlinePushListenerImpl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001fB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J\"\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0010H\u0007J\u0008\u0010\u0011\u001a\u00020\u000bH\u0002J\u001a\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0003J\u001a\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0007J,\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/kakaogame/push/OnlinePushManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "Notice_RemainTimeKey",
        "Notice_RemainTimeHourKey",
        "onlinePushListener",
        "Lcom/kakaogame/server/session/SessionService$OnlinePushListener;",
        "initialize",
        "",
        "context",
        "Landroid/content/Context;",
        "getMessage",
        "messageData",
        "",
        "refreshLocalPlayer",
        "showNotification",
        "activity",
        "Landroid/app/Activity;",
        "message",
        "showToast",
        "showPopup",
        "linkUrl",
        "terminate",
        "",
        "getLargeIconId",
        "",
        "getLargeIcon",
        "Landroid/graphics/Bitmap;",
        "OnlinePushListenerImpl",
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
.field public static final INSTANCE:Lcom/kakaogame/push/OnlinePushManager;

.field private static final Notice_RemainTimeHourKey:Ljava/lang/String; = "${remain_total_hour}"

.field private static final Notice_RemainTimeKey:Ljava/lang/String; = "${remain_total_minute}"

.field private static final TAG:Ljava/lang/String; = "OnlinePushManager"

.field private static final onlinePushListener:Lcom/kakaogame/server/session/SessionService$OnlinePushListener;


# direct methods
.method public static synthetic $r8$lambda$4r7J0x9lcFeQRghXvLueJDJ43ps(Landroid/app/NotificationManager;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/push/OnlinePushManager;->showNotification$lambda$1$lambda$0(Landroid/app/NotificationManager;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$4w5gcFoSHdvMjsrQVlmjff1DKQI(ZLandroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/kakaogame/push/OnlinePushManager;->showPopup$lambda$4(ZLandroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$TdPSl5CVzgqPyWIgkGye6KKB1VM(ZLandroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/push/OnlinePushManager;->showPopup$lambda$3(ZLandroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$f1PWAxOeZqCv_mReSLvCESNXUQU(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/push/OnlinePushManager;->showNotification$lambda$1(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$yYvD8xHw-6M5e0q1KUUCbRfLevU(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/push/OnlinePushManager;->showToast$lambda$2(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/push/OnlinePushManager;

    invoke-direct {v0}, Lcom/kakaogame/push/OnlinePushManager;-><init>()V

    sput-object v0, Lcom/kakaogame/push/OnlinePushManager;->INSTANCE:Lcom/kakaogame/push/OnlinePushManager;

    .line 479
    new-instance v0, Lcom/kakaogame/push/OnlinePushManager$OnlinePushListenerImpl;

    invoke-direct {v0}, Lcom/kakaogame/push/OnlinePushManager$OnlinePushListenerImpl;-><init>()V

    check-cast v0, Lcom/kakaogame/server/session/SessionService$OnlinePushListener;

    sput-object v0, Lcom/kakaogame/push/OnlinePushManager;->onlinePushListener:Lcom/kakaogame/server/session/SessionService$OnlinePushListener;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$refreshLocalPlayer(Lcom/kakaogame/push/OnlinePushManager;)V
    .locals 0

    .line 439
    invoke-direct {p0}, Lcom/kakaogame/push/OnlinePushManager;->refreshLocalPlayer()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showNotification(Lcom/kakaogame/push/OnlinePushManager;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 439
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/push/OnlinePushManager;->showNotification(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showPopup(Lcom/kakaogame/push/OnlinePushManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 439
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/push/OnlinePushManager;->showPopup(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final getLargeIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 2009
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kakaogame/push/OnlinePushManager;->getLargeIconId(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2039
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2059
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x5d1c9867

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x2259bc26

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final getLargeIconId(Landroid/content/Context;)I
    .locals 4

    const v0, 0x2259bc26

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "ic_noti_large"

    .line 1879
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string v1, "Notification large icon file: ic_noti_large is not exist."

    .line 1899
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1939
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x5d1c9867

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getMessage(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 559
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v0, -0x4515dd17

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const v1, -0x451edd5f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    .line 569
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 579
    :cond_0
    invoke-static {}, Lcom/kakaogame/KGSystem;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 619
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 629
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_3
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final initialize(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 509
    sget-object p0, Lcom/kakaogame/push/OnlinePushManager;->onlinePushListener:Lcom/kakaogame/server/session/SessionService$OnlinePushListener;

    invoke-static {p0}, Lcom/kakaogame/server/session/SessionService;->addOnlinePushListener(Lcom/kakaogame/server/session/SessionService$OnlinePushListener;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final refreshLocalPlayer()V
    .locals 7

    .line 689
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/push/OnlinePushManager$refreshLocalPlayer$1;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/kakaogame/push/OnlinePushManager$refreshLocalPlayer$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final showNotification(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 759
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x5d1c9bc7

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x5d179617

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x2259bc26

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    new-instance v0, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showNotification$lambda$1(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .line 799
    :try_start_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 809
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/kakaogame/util/AndroidManifestUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 819
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 829
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, 0x2

    .line 849
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 869
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 879
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 889
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const-string v1, "getApplicationInfo(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 899
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 909
    sget-object p1, Lcom/kakaogame/push/OnlinePushManager;->INSTANCE:Lcom/kakaogame/push/OnlinePushManager;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/kakaogame/push/OnlinePushManager;->getLargeIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 929
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 949
    :cond_0
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 969
    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x11

    .line 959
    iput v0, p1, Landroid/app/Notification;->flags:I

    const-string v0, "notification"

    .line 979
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v0, 0xb1c

    .line 989
    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 999
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/NotificationManager;I)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1019
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Ljava/lang/Throwable;

    const v1, 0x2259bc26

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showNotification$lambda$1$lambda$0(Landroid/app/NotificationManager;I)V
    .locals 0

    .line 999
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final showPopup(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    .line 1229
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x5d1c9a67

    invoke-static {v5}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x5d179617

    invoke-static {v5}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v9, p2

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x2259bc26

    invoke-static {v5}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-wide/16 v3, 0xa

    .line 1249
    invoke-static {v0, v3, v4}, Lcom/kakaogame/util/AppUtil;->terminateAppReservation(Landroid/app/Activity;J)V

    .line 1269
    :cond_0
    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    sget v4, Lcom/kakaogame/R$string;->zinny_sdk_common_button_ok:I

    invoke-static {v3, v4}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 1279
    sget v5, Lcom/kakaogame/R$string;->zinny_sdk_common_button_detail:I

    invoke-static {v3, v5}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 1289
    sget-object v6, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v6}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v6

    sget-object v7, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->MAINTENANCE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    invoke-virtual {v6, v7}, Lcom/kakaogame/core/CoreManager;->hasCustomAlertHandler(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;)Z

    move-result v6

    const/16 v22, 0x0

    const/4 v15, 0x1

    if-eqz v6, :cond_8

    const v14, 0x7d7d00d5

    invoke-static {v14}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v14

    const v13, 0x3364e3ab

    invoke-static {v13}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v2, :cond_1

    move-object/from16 v16, v14

    goto :goto_0

    :cond_1
    move-object/from16 v16, v13

    .line 1339
    :goto_0
    sget-object v6, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v6}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v12

    .line 1349
    sget-object v6, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->Companion:Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;

    .line 1359
    sget-object v7, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->MAINTENANCE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    const-string v8, ""

    .line 1389
    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/CharSequence;

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, ""

    if-eqz v10, :cond_2

    move-object v10, v11

    goto :goto_1

    :cond_2
    move-object v10, v5

    .line 1399
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v11, v1

    :goto_2
    move-object/from16 v9, p2

    move-object v5, v12

    move-object v12, v4

    move-object v4, v13

    move-object/from16 v13, v16

    .line 1349
    invoke-virtual/range {v6 .. v13}, Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;->makeAlert(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGCustomUI$KGCustomAlert;

    move-result-object v6

    .line 1339
    invoke-virtual {v5, v0, v6}, Lcom/kakaogame/core/CoreManager;->showCustomUI(Landroid/app/Activity;Lcom/kakaogame/KGCustomUI$KGCustomAlert;)Ljava/lang/String;

    move-result-object v5

    .line 1449
    invoke-static {v5, v14, v15}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1459
    invoke-static/range {p1 .. p1}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    goto/16 :goto_3

    .line 1469
    :cond_4
    invoke-static {v5, v4, v15}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz v2, :cond_5

    .line 1489
    invoke-static {v3, v1}, Lcom/kakaogame/util/AppUtil;->launchViewer(Landroid/content/Context;Ljava/lang/String;)V

    .line 1499
    invoke-static/range {p1 .. p1}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    goto/16 :goto_3

    :cond_5
    if-eqz v17, :cond_6

    .line 1519
    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move/from16 v22, v15

    :cond_7
    if-nez v22, :cond_c

    .line 1529
    new-instance v2, Lcom/kakaogame/push/OnlinePushManager$showPopup$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/kakaogame/push/OnlinePushManager$showPopup$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v2, v15, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1599
    :cond_8
    new-instance v3, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1ffb

    const/16 v23, 0x0

    move-object v6, v3

    move-object/from16 v9, p2

    move/from16 v24, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move-object/from16 v21, v23

    invoke-direct/range {v6 .. v21}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1609
    new-instance v6, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda1;

    invoke-direct {v6, v2, v0}, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda1;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v3, v4, v6}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1679
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    move/from16 v22, v24

    :cond_a
    if-nez v22, :cond_b

    .line 1689
    new-instance v4, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v0, v1}, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda2;-><init>(ZLandroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/ui/DialogManager$Settings;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1809
    :cond_b
    sget-object v1, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    invoke-virtual {v1, v0, v3}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    :cond_c
    :goto_3
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showPopup$lambda$3(ZLandroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1629
    invoke-static {p1}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    goto :goto_0

    .line 1649
    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showPopup$lambda$4(ZLandroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1709
    move-object p0, p1

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/kakaogame/util/AppUtil;->launchViewer(Landroid/content/Context;Ljava/lang/String;)V

    .line 1719
    invoke-static {p1}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    goto :goto_0

    .line 1739
    :cond_0
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 1749
    new-instance p0, Lcom/kakaogame/push/OnlinePushManager$showPopup$3$1;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/push/OnlinePushManager$showPopup$3$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {p3, p0, p1, p3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final showToast(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x336e174b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x5d179617

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x2259bc26

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    new-instance v0, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/kakaogame/push/OnlinePushManager$$ExternalSyntheticLambda4;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showToast$lambda$2(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 1129
    :try_start_0
    check-cast p0, Landroid/content/Context;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x31

    const/4 v0, 0x0

    .line 1139
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 1149
    invoke-static {}, Lcom/liapp/y;->ڱڱحֱح()V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1169
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Ljava/lang/Throwable;

    const v1, 0x2259bc26

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
