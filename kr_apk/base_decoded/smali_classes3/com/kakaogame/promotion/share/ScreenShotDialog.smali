.class public final Lcom/kakaogame/promotion/share/ScreenShotDialog;
.super Landroid/app/Dialog;
.source "ScreenShotDialog.kt"

# interfaces
.implements Lcom/kakaogame/KGActivityManager$ConfigChangeListener;
.implements Lcom/kakaogame/KGActivityManager$LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/promotion/share/ScreenShotDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenShotDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenShotDialog.kt\ncom/kakaogame/promotion/share/ScreenShotDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,490:1\n1#2:491\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 >2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001>B+\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0010\u0010\u0008\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB3\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0010\u0010\u0008\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000eJ\u0012\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0010\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u0007H\u0002J\u0008\u0010!\u001a\u00020\u001cH\u0002J\u0008\u0010\"\u001a\u00020\u001cH\u0016J\u0010\u0010#\u001a\u00020\u001c2\u0008\u0010$\u001a\u0004\u0018\u00010%J\u0010\u0010#\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\'H\u0002J \u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020\'2\u0006\u0010*\u001a\u00020\u00142\u0006\u0010+\u001a\u00020\u0014H\u0002J\u0008\u0010,\u001a\u00020\u001cH\u0002J\u0010\u0010-\u001a\u00020\'2\u0006\u0010.\u001a\u00020/H\u0002J\u0008\u00100\u001a\u00020\u001cH\u0002J\u0008\u00101\u001a\u00020\u001cH\u0002J\u0008\u00102\u001a\u00020\u001cH\u0002J\u0008\u00103\u001a\u00020\u001cH\u0016J\u0008\u00104\u001a\u00020\u001cH\u0016J\u0010\u00105\u001a\u00020\u001c2\u0006\u00106\u001a\u000207H\u0016J\u0010\u00108\u001a\u00020\u00072\u0006\u00109\u001a\u00020:H\u0016J\u0008\u0010;\u001a\u00020\u001cH\u0002J\u0008\u0010<\u001a\u00020\u001cH\u0014J\u0008\u0010=\u001a\u00020\u001cH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0014@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006?"
    }
    d2 = {
        "Lcom/kakaogame/promotion/share/ScreenShotDialog;",
        "Landroid/app/Dialog;",
        "Lcom/kakaogame/KGActivityManager$ConfigChangeListener;",
        "Lcom/kakaogame/KGActivityManager$LifecycleListener;",
        "activity",
        "Landroid/app/Activity;",
        "isNative",
        "",
        "callback",
        "Lcom/kakaogame/KGResultCallback;",
        "Ljava/lang/Void;",
        "<init>",
        "(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;)V",
        "isCrop",
        "(Landroid/app/Activity;ZZLcom/kakaogame/KGResultCallback;)V",
        "binding",
        "Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;",
        "paused",
        "isProgress",
        "preOrientation",
        "",
        "progressLock",
        "",
        "value",
        "resultCode",
        "getResultCode",
        "()I",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setProgressSharing",
        "progress",
        "setDialogVisibility",
        "show",
        "showShareDialog",
        "path",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getResultBitmap",
        "original",
        "width",
        "height",
        "takeScreenCapture",
        "getBitmapFromView",
        "view",
        "Landroid/view/View;",
        "manageCropView",
        "initViews",
        "setLayoutSettings",
        "onResume",
        "onPause",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "reopenDialog",
        "onStart",
        "dismiss",
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
.field public static final Companion:Lcom/kakaogame/promotion/share/ScreenShotDialog$Companion;

.field private static final TAG:Ljava/lang/String; = "ScreenShotDialog"


# instance fields
.field private binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

.field private final callback:Lcom/kakaogame/KGResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private isCrop:Z

.field private final isNative:Z

.field private isProgress:Z

.field private paused:Z

.field private preOrientation:I

.field private final progressLock:Ljava/lang/Object;

.field private resultCode:I


# direct methods
.method public static synthetic $r8$lambda$780EXROeQd2w6mAdODqccWSQMUc(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->initViews$lambda$6$lambda$3(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$HU8SnpP4SHKqENoTdIADTA65l-A(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->initViews$lambda$6$lambda$4(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$PrP37W5S_2Xihy-5XuHBdB7z2EA(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->initViews$lambda$6$lambda$5(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$SvmJkx3NwkHNZ_gW5DHRPJJV48o(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->onCreate$lambda$0(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$bCgfauUzUmumg-26z_0z1P7Sz_I(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->showShareDialog$lambda$2(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/graphics/Bitmap;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$w5EP6iIJglMIQ__xNxumqnQJBKw(Lcom/kakaogame/promotion/share/ScreenShotDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->reopenDialog$lambda$8(Lcom/kakaogame/promotion/share/ScreenShotDialog;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/promotion/share/ScreenShotDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/promotion/share/ScreenShotDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->Companion:Lcom/kakaogame/promotion/share/ScreenShotDialog$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    .line 439
    sget v1, Landroidx/appcompat/R$style;->Base_AlertDialog_AppCompat_Light:I

    .line 419
    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 409
    iput-boolean p2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->isNative:Z

    iput-object p3, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->callback:Lcom/kakaogame/KGResultCallback;

    const/4 p2, -0x1

    .line 509
    iput p2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->preOrientation:I

    .line 519
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->progressLock:Ljava/lang/Object;

    const/16 p2, 0x2329

    .line 529
    iput p2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->resultCode:I

    const/4 p2, 0x0

    .line 569
    iput-boolean p2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->isCrop:Z

    .line 579
    invoke-virtual {p0, p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->setOwnerActivity(Landroid/app/Activity;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;ZZLcom/kakaogame/KGResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "ZZ",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    invoke-direct {p0, p1, p2, p4}, Lcom/kakaogame/promotion/share/ScreenShotDialog;-><init>(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;)V

    .line 629
    iput-boolean p3, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->isCrop:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getBinding$p(Lcom/kakaogame/promotion/share/ScreenShotDialog;)Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$isNative$p(Lcom/kakaogame/promotion/share/ScreenShotDialog;)Z
    .locals 0

    .line 399
    iget-boolean p0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->isNative:Z

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setProgressSharing(Lcom/kakaogame/promotion/share/ScreenShotDialog;Z)V
    .locals 0

    .line 399
    invoke-direct {p0, p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->setProgressSharing(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setResultCode$p(Lcom/kakaogame/promotion/share/ScreenShotDialog;I)V
    .locals 0

    .line 399
    iput p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->resultCode:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .line 2769
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x5d1c8fff

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7ca505

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const v1, 0x6d00ba80

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2809
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2819
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final getResultBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4

    .line 2339
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d7ca74d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, -0x22475aec

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7ca505

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    iget-boolean v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->isCrop:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-ge p2, p3, :cond_0

    sub-int/2addr p3, p2

    .line 2429
    div-int/lit8 p3, p3, 0x2

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p3

    .line 2469
    div-int/lit8 p2, p2, 0x2

    move v3, v0

    move v0, p2

    move p2, p3

    move p3, v3

    .line 2489
    :goto_0
    invoke-static {p1, v0, p3, p2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 2509
    :cond_1
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final initViews()V
    .locals 3

    .line 2989
    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v0, :cond_0

    const v0, -0x45198e67

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2999
    :cond_0
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkDialogTopbarClose:Lcom/kakaogame/promotion/share/KGAnimationButton;

    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/promotion/share/KGAnimationButton;->initialize(Landroid/app/Activity;)V

    .line 3009
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkDialogTopbarClose:Lcom/kakaogame/promotion/share/KGAnimationButton;

    new-instance v2, Lcom/kakaogame/promotion/share/ScreenShotDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/promotion/share/ScreenShotDialog;)V

    invoke-virtual {v1, v2}, Lcom/kakaogame/promotion/share/KGAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3039
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotCamera:Lcom/kakaogame/promotion/share/KGAnimationButton;

    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/promotion/share/KGAnimationButton;->initialize(Landroid/app/Activity;)V

    .line 3049
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotCamera:Lcom/kakaogame/promotion/share/KGAnimationButton;

    new-instance v2, Lcom/kakaogame/promotion/share/ScreenShotDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/promotion/share/ScreenShotDialog;)V

    invoke-virtual {v1, v2}, Lcom/kakaogame/promotion/share/KGAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3189
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotCrop:Lcom/kakaogame/promotion/share/KGAnimationButton;

    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/promotion/share/KGAnimationButton;->initialize(Landroid/app/Activity;)V

    .line 3199
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotCrop:Lcom/kakaogame/promotion/share/KGAnimationButton;

    new-instance v1, Lcom/kakaogame/promotion/share/ScreenShotDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog$$ExternalSyntheticLambda3;-><init>(Lcom/kakaogame/promotion/share/ScreenShotDialog;)V

    invoke-virtual {v0, v1}, Lcom/kakaogame/promotion/share/KGAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3249
    invoke-direct {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->setLayoutSettings()V

    .line 3259
    invoke-direct {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->manageCropView()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final initViews$lambda$6$lambda$3(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/view/View;)V
    .locals 0

    .line 3019
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final initViews$lambda$6$lambda$4(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/view/View;)V
    .locals 0

    .line 3059
    iget-boolean p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->isProgress:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 3069
    invoke-direct {p0, p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->setProgressSharing(Z)V

    .line 3079
    iget-boolean p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->isNative:Z

    if-nez p1, :cond_1

    .line 3089
    sget-object p0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->isUnity()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3099
    invoke-static {}, Lcom/kakaogame/broker/InterfaceBrokerManager;->takeScreenShotOnUnity()V

    goto :goto_0

    .line 3109
    :cond_0
    sget-object p0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->isUnreal()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3119
    invoke-static {}, Lcom/kakaogame/broker/InterfaceBrokerManager;->takeScreenShotOnUnreal()V

    goto :goto_0

    .line 3149
    :cond_1
    invoke-direct {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->takeScreenCapture()V

    :cond_2
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final initViews$lambda$6$lambda$5(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/view/View;)V
    .locals 0

    .line 3209
    iget-boolean p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->isCrop:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->isCrop:Z

    .line 3219
    invoke-direct {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->manageCropView()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final manageCropView()V
    .locals 4

    .line 2869
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d7ca505

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x4515cfb7

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    iget-boolean v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->isCrop:Z

    const/4 v1, 0x0

    const v2, -0x45198e67

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 2899
    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotCropType:Landroid/widget/ImageView;

    sget v3, Lcom/kakaogame/R$drawable;->kakao_game_screenshot_square:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2909
    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkBound:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 2929
    :cond_2
    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotCropType:Landroid/widget/ImageView;

    sget v3, Lcom/kakaogame/R$drawable;->kakao_game_screenshot_rectangle:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2939
    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkBound:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final onCreate$lambda$0(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 799
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 819
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p2, "ScreenShotDialog"

    const v0, 0x6d00bcc8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0

    .array-data 1
    .end array-data
.end method

.method private final reopenDialog()V
    .locals 3

    .line 4179
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d7ca505

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5435a332

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4199
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/kakaogame/promotion/share/ScreenShotDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog$$ExternalSyntheticLambda5;-><init>(Lcom/kakaogame/promotion/share/ScreenShotDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final reopenDialog$lambda$8(Lcom/kakaogame/promotion/share/ScreenShotDialog;)V
    .locals 5

    .line 4219
    :try_start_0
    new-instance v0, Lcom/kakaogame/promotion/share/ScreenShotDialog;

    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->isNative:Z

    iget-boolean v3, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->isCrop:Z

    iget-object v4, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->callback:Lcom/kakaogame/KGResultCallback;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kakaogame/promotion/share/ScreenShotDialog;-><init>(Landroid/app/Activity;ZZLcom/kakaogame/KGResultCallback;)V

    .line 4229
    invoke-virtual {v0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4249
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const v4, 0x7d7ca505

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4259
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 4269
    iget-object p0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->callback:Lcom/kakaogame/KGResultCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    :cond_0
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private final setDialogVisibility()V
    .locals 3

    .line 1009
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d7ca505

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5435a082

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 1049
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 1059
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1089
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    const/4 v1, 0x2

    .line 1109
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    goto :goto_0

    .line 1209
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final setLayoutSettings()V
    .locals 12

    .line 3319
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/kakaogame/util/DisplayUtil;->getCurrentWindowMetricsPointCompat(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v0

    .line 3329
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 3339
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 3359
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/kakaogame/util/DisplayUtil;->isScreenPortrait(Landroid/app/Activity;)Z

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/16 v5, 0xa

    const/16 v6, 0x9

    const/4 v7, 0x3

    const/4 v8, -0x1

    const v9, 0x6d00bf60

    invoke-static {v9}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const v11, -0x45198e67

    invoke-static {v11}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v2, :cond_8

    sub-int/2addr v1, v0

    .line 3369
    div-int/lit8 v1, v1, 0x2

    .line 3379
    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v0, :cond_1

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v10

    :cond_1
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkBoundTopLeft:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3389
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3399
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 3409
    iget-object v2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v2, :cond_2

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v10

    :cond_2
    iget-object v2, v2, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkBoundTopLeft:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3419
    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v0, :cond_3

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v10

    :cond_3
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkBoundBottomnRight:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3429
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3439
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 3449
    iget-object v1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v1, :cond_4

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v10

    :cond_4
    iget-object v1, v1, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkBoundBottomnRight:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3459
    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v0, :cond_5

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v10

    :cond_5
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotWatermarkCropImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3469
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3479
    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3489
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3499
    iget-object v1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v1, :cond_6

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v10

    :cond_6
    iget-object v1, v1, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkBoundTopLeft:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3509
    iget-object v1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v1, :cond_7

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v10, v1

    :goto_1
    iget-object v1, v10, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotWatermarkCropImage:Landroid/widget/ImageView;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    :cond_8
    sub-int/2addr v0, v1

    .line 3529
    div-int/lit8 v0, v0, 0x2

    .line 3539
    iget-object v1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v1, :cond_9

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v10

    :cond_9
    iget-object v1, v1, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkBoundTopLeft:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3549
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3559
    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 3569
    iget-object v2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v2, :cond_a

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v10

    :cond_a
    iget-object v2, v2, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkBoundTopLeft:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3579
    iget-object v1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v1, :cond_b

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v10

    :cond_b
    iget-object v1, v1, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkBoundBottomnRight:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3589
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3599
    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 3609
    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v0, :cond_c

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v10

    :cond_c
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkBoundBottomnRight:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3619
    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v0, :cond_d

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v10

    :cond_d
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotWatermarkCropImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3629
    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3639
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3649
    iget-object v1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v1, :cond_e

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v10

    :cond_e
    iget-object v1, v1, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkBoundTopLeft:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3659
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3669
    iget-object v1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez v1, :cond_f

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    move-object v10, v1

    :goto_2
    iget-object v1, v10, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotWatermarkCropImage:Landroid/widget/ImageView;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-void

    .array-data 1
    .end array-data
.end method

.method private final setProgressSharing(Z)V
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->progressLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->isProgress:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .array-data 1
    .end array-data
.end method

.method private final showShareDialog(Landroid/graphics/Bitmap;)V
    .locals 9

    .line 1559
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d7cbdfd

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7ca505

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "testFile.jpg"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1599
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1619
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v4, v1

    check-cast v4, Ljava/io/OutputStream;

    const/16 v5, 0x64

    invoke-virtual {p1, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1629
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1639
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1649
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 1659
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getSnsShareData()Lcom/kakaogame/promotion/SNSShareData;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, 0x3e9

    .line 1699
    iput p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->resultCode:I

    .line 1709
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->dismiss()V

    return-void

    .line 1749
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v1, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/kakaogame/promotion/share/ScreenShotDialog$showShareDialog$2;-><init>(Lcom/kakaogame/promotion/share/ScreenShotDialog;Lcom/kakaogame/promotion/SNSShareData;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showShareDialog$lambda$2(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1479
    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    const/4 v1, 0x0

    const v2, -0x45198e67

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotResultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1489
    iget-object p0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->kakaoGameSdkScreenshotResultImage:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final takeScreenCapture()V
    .locals 5

    .line 2589
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d7ca505

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x2259b436

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x5d10b607

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2619
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/16 v3, 0x3e9

    if-lt v1, v2, :cond_0

    .line 2629
    invoke-direct {p0, v0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getResultBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2639
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kakaogame/core/CoreManager;->sendEvent(I)V

    .line 2649
    invoke-direct {p0, v0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->showShareDialog(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2669
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2679
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    const v2, 0x5d1c972f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {p0, v1, v2, v4}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getResultBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    .line 2689
    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2699
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kakaogame/core/CoreManager;->sendEvent(I)V

    .line 2709
    invoke-direct {p0, v1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->showShareDialog(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 4419
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 4439
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d7ca505

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d70f9e5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4459
    sget-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/KGActivityManager$ConfigChangeListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGActivityManager$Companion;->removeConfigChangeListener(Lcom/kakaogame/KGActivityManager$ConfigChangeListener;)V

    .line 4469
    sget-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/KGActivityManager$LifecycleListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGActivityManager$Companion;->removeLifecycleListener(Lcom/kakaogame/KGActivityManager$LifecycleListener;)V

    .line 4509
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x2329

    if-nez v0, :cond_1

    .line 4519
    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->callback:Lcom/kakaogame/KGResultCallback;

    if-eqz v0, :cond_1

    .line 4529
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 4539
    iget-object v1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->callback:Lcom/kakaogame/KGResultCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    :cond_0
    return-void

    .line 4639
    :cond_1
    iget-object v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->callback:Lcom/kakaogame/KGResultCallback;

    if-eqz v0, :cond_5

    .line 4649
    iget v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->resultCode:I

    const v2, 0x186a0

    if-ne v0, v2, :cond_2

    const-wide/16 v0, 0x12c

    .line 4679
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4709
    :catch_0
    invoke-direct {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->reopenDialog()V

    return-void

    :cond_2
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_4

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_3

    const/16 v2, 0x1f41

    if-eq v0, v2, :cond_3

    .line 4809
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_0

    .line 4789
    :cond_3
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_0

    .line 4749
    :cond_4
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 4829
    :goto_0
    iget-object v1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->callback:Lcom/kakaogame/KGResultCallback;

    if-eqz v1, :cond_5

    invoke-interface {v1, v0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    :cond_5
    return-void

    .array-data 1
    .end array-data
.end method

.method public final getResultCode()I
    .locals 1

    .line 529
    iget v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->resultCode:I

    return v0

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

    .line 3919
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

    iget v2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->preOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7ca505

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3939
    iget v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->preOrientation:I

    if-ltz v0, :cond_0

    .line 3949
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->preOrientation:I

    if-eq v0, v1, :cond_1

    .line 3959
    :cond_0
    invoke-direct {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->setLayoutSettings()V

    .line 3969
    invoke-direct {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->manageCropView()V

    .line 3999
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4029
    :cond_1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->preOrientation:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 669
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 689
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, 0x7d7ca505

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x2255f37e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 709
    invoke-virtual {p0, p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    .line 719
    invoke-virtual {p0, v0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->setCanceledOnTouchOutside(Z)V

    .line 729
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 749
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kakaogame/core/CoreManager;->setCaptureDialog(Lcom/kakaogame/promotion/share/ScreenShotDialog;)V

    .line 769
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x1030002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 779
    invoke-virtual {p0, p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->setCanceledOnTouchOutside(Z)V

    .line 789
    new-instance p1, Lcom/kakaogame/promotion/share/ScreenShotDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/promotion/share/ScreenShotDialog;)V

    invoke-virtual {p0, p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 889
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    .line 899
    invoke-direct {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->initViews()V

    .line 909
    iget-object p1, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/kakaogame/databinding/KakaoGameSdkShareScreenshotBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->setContentView(Landroid/view/View;)V

    .line 929
    invoke-direct {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->setDialogVisibility()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onPause()V
    .locals 3

    .line 3869
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d7ca505

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x2252b2c6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3879
    iput-boolean v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->paused:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onResume()V
    .locals 3

    .line 3729
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d7cbf95

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->resultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7ca505

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3749
    iget-boolean v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->isNative:Z

    if-nez v0, :cond_0

    .line 3759
    iget-boolean v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->paused:Z

    if-eqz v0, :cond_0

    .line 3769
    iget v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->resultCode:I

    const/16 v1, 0x2329

    if-ne v0, v1, :cond_0

    const v0, 0x186a0

    .line 3779
    iput v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->resultCode:I

    .line 3789
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 3819
    iput-boolean v0, p0, Lcom/kakaogame/promotion/share/ScreenShotDialog;->paused:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method protected onStart()V
    .locals 3

    .line 4329
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 4349
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d7ca505

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x2255f32e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4369
    sget-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/KGActivityManager$ConfigChangeListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGActivityManager$Companion;->addConfigChangeListener(Lcom/kakaogame/KGActivityManager$ConfigChangeListener;)V

    .line 4379
    sget-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/KGActivityManager$LifecycleListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGActivityManager$Companion;->addLifecycleListener(Lcom/kakaogame/KGActivityManager$LifecycleListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const v0, 0x6d0fea20

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4079
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4099
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x224e76ec

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7ca505

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4119
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method

.method public show()V
    .locals 3

    .line 1259
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d7ca505

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7cb8ad

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 1349
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 1379
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final showShareDialog(Ljava/lang/String;)V
    .locals 3

    .line 1439
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d7cbdfd

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7ca505

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1469
    invoke-virtual {p0}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/kakaogame/promotion/share/ScreenShotDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog$$ExternalSyntheticLambda4;-><init>(Lcom/kakaogame/promotion/share/ScreenShotDialog;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1509
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->getResultBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1519
    invoke-direct {p0, p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->showShareDialog(Landroid/graphics/Bitmap;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
