.class public final Lcom/kakaogame/KGApplication$addShortcut$1;
.super Ljava/lang/Object;
.source "KGApplication.kt"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/KGApplication;->addShortcut(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J&\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/kakaogame/KGApplication$addShortcut$1",
        "Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;",
        "onLoadingStarted",
        "",
        "arg0",
        "",
        "arg1",
        "Landroid/view/View;",
        "onLoadingFailed",
        "arg2",
        "Lcom/nostra13/universalimageloader/core/assist/FailReason;",
        "onLoadingComplete",
        "theBitmap",
        "Landroid/graphics/Bitmap;",
        "onLoadingCancelled",
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $scheme:Ljava/lang/String;

.field final synthetic $shortcutName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/KGApplication$addShortcut$1;->$scheme:Ljava/lang/String;

    iput-object p2, p0, Lcom/kakaogame/KGApplication$addShortcut$1;->$shortcutName:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakaogame/KGApplication$addShortcut$1;->$activity:Landroid/app/Activity;

    .line 3349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    const v0, 0x7d774715

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "arg1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 3389
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-ge p1, p2, :cond_0

    .line 3399
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/kakaogame/KGApplication$addShortcut$1;->$scheme:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const v0, -0x2247e3e4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3409
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const v0, -0x22458ebc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 3419
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.shortcut.NAME"

    .line 3429
    iget-object v0, p0, Lcom/kakaogame/KGApplication$addShortcut$1;->$shortcutName:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3439
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p1, 0x1

    const/16 v0, 0x90

    invoke-static {p3, v0, v0, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p3, "createScaledBitmap(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "android.intent.extra.shortcut.ICON"

    .line 3449
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "duplicate"

    const/4 p3, 0x0

    .line 3459
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 3469
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3479
    iget-object p1, p0, Lcom/kakaogame/KGApplication$addShortcut$1;->$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 3499
    :cond_0
    sget-object p1, Lcom/kakaogame/KGApplication;->INSTANCE:Lcom/kakaogame/KGApplication;

    iget-object p2, p0, Lcom/kakaogame/KGApplication$addShortcut$1;->$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/kakaogame/KGApplication$addShortcut$1;->$scheme:Ljava/lang/String;

    iget-object v1, p0, Lcom/kakaogame/KGApplication$addShortcut$1;->$shortcutName:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p2, v0, v1, p3}, Lcom/kakaogame/KGApplication;->access$addShortcutV26(Lcom/kakaogame/KGApplication;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method
