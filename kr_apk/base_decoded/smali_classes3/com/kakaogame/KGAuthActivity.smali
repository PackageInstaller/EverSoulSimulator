.class public final Lcom/kakaogame/KGAuthActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "KGAuthActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGAuthActivity$Companion;,
        Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\u0018\u0000 $2\u00020\u0001:\u0002#$B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0008\u0010\u0010\u001a\u00020\u000cH\u0014J\u0008\u0010\u0011\u001a\u00020\u000cH\u0014J\u0010\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0013\u001a\u00020\u000cH\u0014J\u0010\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\"\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u00072\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J+\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00072\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010 \u001a\u00020!H\u0017\u00a2\u0006\u0002\u0010\"R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/kakaogame/KGAuthActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "txId",
        "",
        "displayCutoutMode",
        "",
        "isStatusBar",
        "",
        "isNavigationBar",
        "setVisibility",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "onPause",
        "onSaveInstanceState",
        "onDestroy",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "KGActivityEventListener",
        "Companion",
        "common-kakaogames_release"
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
.field public static final Companion:Lcom/kakaogame/KGAuthActivity$Companion;

.field private static final EXTRA_NAME_CUTOUT_MODE:Ljava/lang/String; = "cutoutMode"

.field private static final EXTRA_NAME_NAVIGATION_BAR:Ljava/lang/String; = "navigationBar"

.field private static final EXTRA_NAME_STATUS_BAR:Ljava/lang/String; = "statusBar"

.field private static final EXTRA_NAME_TX_ID:Ljava/lang/String; = "txId"

.field private static final TAG:Ljava/lang/String; = "KGAuthActivity"


# instance fields
.field private displayCutoutMode:I

.field private isNavigationBar:Z

.field private isStatusBar:Z

.field private txId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kakaogame/KGAuthActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGAuthActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGAuthActivity;->Companion:Lcom/kakaogame/KGAuthActivity$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 259
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-wide/16 v0, -0x1

    .line 269
    iput-wide v0, p0, Lcom/kakaogame/KGAuthActivity;->txId:J

    return-void

    .array-data 1
    .end array-data
.end method

.method private final setVisibility()V
    .locals 3

    .line 329
    invoke-virtual {p0}, Lcom/kakaogame/KGAuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/KGAuthActivity;->getWindow()Landroid/view/Window;

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

    .line 349
    iget-boolean v1, p0, Lcom/kakaogame/KGAuthActivity;->isStatusBar:Z

    if-nez v1, :cond_0

    .line 359
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    goto :goto_0

    .line 379
    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    .line 399
    :goto_0
    iget-boolean v1, p0, Lcom/kakaogame/KGAuthActivity;->isNavigationBar:Z

    if-nez v1, :cond_1

    .line 409
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    goto :goto_1

    .line 429
    :cond_1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    :goto_1
    const/4 v1, 0x2

    .line 469
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    .line 479
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 489
    invoke-virtual {p0}, Lcom/kakaogame/KGAuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/kakaogame/KGAuthActivity;->displayCutoutMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_2
    return-void

    nop

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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1179
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1189
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d77b805

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x5d179617

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, -0x451ed04f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    sget-object v0, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/kakaogame/auth/AuthActivityManager;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const v0, 0x7d77683d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1139
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 539
    move-object/from16 v0, p0

    invoke-static {v0}, Lcom/liapp/y;->ڱڱحֱح(Landroid/content/Context;)V

    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v1, v2, v1}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;ILjava/lang/Object;)V

    .line 549
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7d77b9e5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x451ed6f7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d77ba95

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    const v5, -0x451ed04f

    invoke-static {v5}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x543eb81a    # 3.27653E12f

    invoke-static {v6}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    .line 579
    :try_start_0
    sget-object v8, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v9, "Restore Activity"

    invoke-virtual {v8, v5, v9}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p1, v6, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/kakaogame/KGAuthActivity;->txId:J

    .line 599
    invoke-virtual {p1, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/kakaogame/KGAuthActivity;->displayCutoutMode:I

    .line 609
    invoke-virtual {p1, v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kakaogame/KGAuthActivity;->isStatusBar:Z

    .line 619
    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kakaogame/KGAuthActivity;->isNavigationBar:Z

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/KGAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 649
    invoke-virtual {p1, v6, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/kakaogame/KGAuthActivity;->txId:J

    .line 659
    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/kakaogame/KGAuthActivity;->displayCutoutMode:I

    .line 669
    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kakaogame/KGAuthActivity;->isStatusBar:Z

    .line 679
    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kakaogame/KGAuthActivity;->isNavigationBar:Z

    .line 699
    :goto_0
    invoke-direct {p0}, Lcom/kakaogame/KGAuthActivity;->setVisibility()V

    .line 709
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/kakaogame/util/DisplayUtil;->checkSystemFontSize(Landroid/app/Activity;)V

    .line 719
    iget-wide v0, p0, Lcom/kakaogame/KGAuthActivity;->txId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 729
    invoke-virtual {p0}, Lcom/kakaogame/KGAuthActivity;->finish()V

    return-void

    .line 759
    :cond_1
    sget-object p1, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object p1

    iget-wide v0, p0, Lcom/kakaogame/KGAuthActivity;->txId:J

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p1, v0, v1, v2}, Lcom/kakaogame/auth/AuthActivityManager;->setActivity(JLandroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 769
    invoke-virtual {p0}, Lcom/kakaogame/KGAuthActivity;->finish()V

    return-void

    .line 799
    :cond_2
    sget-object p1, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object p1

    iget-wide v0, p0, Lcom/kakaogame/KGAuthActivity;->txId:J

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p1, v0, v1, v2}, Lcom/kakaogame/auth/AuthActivityManager;->processActivityAction(JLandroid/app/Activity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 819
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method protected onDestroy()V
    .locals 4

    .line 1059
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 1069
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x451ed04f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0ba760

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-wide v0, p0, Lcom/kakaogame/KGAuthActivity;->txId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1089
    sget-object v0, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/kakaogame/KGAuthActivity;->txId:J

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/kakaogame/auth/AuthActivityManager;->removeActivityParameters(JLandroid/app/Activity;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onPause()V
    .locals 3

    .line 919
    move-object/from16 v0, p0

    invoke-static {v0}, Lcom/liapp/y;->׳׭جֱح(Landroid/content/Context;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 929
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x451ed04f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x2252b2c6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 9

    const v0, -0x2245723c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7d77bb7d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1249
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1259
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x22457d54

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x5d179617

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, -0x451ed04f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    :try_start_0
    sget-object v0, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object v3

    iget-wide v4, p0, Lcom/kakaogame/KGAuthActivity;->txId:J

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/kakaogame/auth/AuthActivityManager;->onRequestPermissionsResult(JI[Ljava/lang/String;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1299
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, v2, p3, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method protected onResume()V
    .locals 3

    .line 869
    move-object/from16 v0, p0

    invoke-static {v0}, Lcom/liapp/y;->֭ݮײڮܪ(Landroid/content/Context;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 879
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x451ed04f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d77b59d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x543eb7e2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x543eb81a    # 3.27653E12f

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 979
    iget-wide v1, p0, Lcom/kakaogame/KGAuthActivity;->txId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const v0, 0x7d77ba95

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 989
    iget v1, p0, Lcom/kakaogame/KGAuthActivity;->displayCutoutMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v0, -0x451ed6f7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 999
    iget-boolean v1, p0, Lcom/kakaogame/KGAuthActivity;->isStatusBar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const v0, 0x7d77b9e5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 1009
    iget-boolean v1, p0, Lcom/kakaogame/KGAuthActivity;->isNavigationBar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1019
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    .array-data 1
    .end array-data
.end method
