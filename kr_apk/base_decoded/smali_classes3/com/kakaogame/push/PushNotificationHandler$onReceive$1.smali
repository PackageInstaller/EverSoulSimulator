.class public final Lcom/kakaogame/push/PushNotificationHandler$onReceive$1;
.super Ljava/lang/Object;
.source "PushNotificationHandler.kt"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/push/PushNotificationHandler;->onReceive(Landroid/content/Context;Lcom/kakaogame/push/PushMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\"\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u001a\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/kakaogame/push/PushNotificationHandler$onReceive$1",
        "Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;",
        "onLoadingCancelled",
        "",
        "imageUri",
        "",
        "view",
        "Landroid/view/View;",
        "onLoadingComplete",
        "loadedImage",
        "Landroid/graphics/Bitmap;",
        "onLoadingFailed",
        "failReason",
        "Lcom/nostra13/universalimageloader/core/assist/FailReason;",
        "onLoadingStarted",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $pushMessage:Lcom/kakaogame/push/PushMessage;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/kakaogame/push/PushMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/push/PushNotificationHandler$onReceive$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kakaogame/push/PushNotificationHandler$onReceive$1;->$pushMessage:Lcom/kakaogame/push/PushMessage;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    const-string p2, "imageUri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    new-instance p2, Ljava/lang/StringBuilder;

    const v0, 0x22598e6e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PushNotificationHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    sget-object p1, Lcom/kakaogame/push/PushNotificationHandler;->INSTANCE:Lcom/kakaogame/push/PushNotificationHandler;

    iget-object p2, p0, Lcom/kakaogame/push/PushNotificationHandler$onReceive$1;->$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/kakaogame/push/PushNotificationHandler$onReceive$1;->$pushMessage:Lcom/kakaogame/push/PushMessage;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/kakaogame/push/PushNotificationHandler;->access$handlePushMessage(Lcom/kakaogame/push/PushNotificationHandler;Landroid/content/Context;Lcom/kakaogame/push/PushMessage;Landroid/graphics/Bitmap;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string p2, "imageUri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "loadedImage"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onLoadingComplete: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PushNotificationHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    sget-object p1, Lcom/kakaogame/push/PushNotificationHandler;->INSTANCE:Lcom/kakaogame/push/PushNotificationHandler;

    iget-object p2, p0, Lcom/kakaogame/push/PushNotificationHandler$onReceive$1;->$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/kakaogame/push/PushNotificationHandler$onReceive$1;->$pushMessage:Lcom/kakaogame/push/PushMessage;

    invoke-static {p1, p2, v0, p3}, Lcom/kakaogame/push/PushNotificationHandler;->access$handlePushMessage(Lcom/kakaogame/push/PushNotificationHandler;Landroid/content/Context;Lcom/kakaogame/push/PushMessage;Landroid/graphics/Bitmap;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 1

    const-string p2, "imageUri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "failReason"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onLoadingComplete: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PushNotificationHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    sget-object p1, Lcom/kakaogame/push/PushNotificationHandler;->INSTANCE:Lcom/kakaogame/push/PushNotificationHandler;

    iget-object p2, p0, Lcom/kakaogame/push/PushNotificationHandler$onReceive$1;->$context:Landroid/content/Context;

    iget-object p3, p0, Lcom/kakaogame/push/PushNotificationHandler$onReceive$1;->$pushMessage:Lcom/kakaogame/push/PushMessage;

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/kakaogame/push/PushNotificationHandler;->access$handlePushMessage(Lcom/kakaogame/push/PushNotificationHandler;Landroid/content/Context;Lcom/kakaogame/push/PushMessage;Landroid/graphics/Bitmap;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    const-string p2, "imageUri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    new-instance p2, Ljava/lang/StringBuilder;

    const v0, 0x7d7c0fcd

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PushNotificationHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    .array-data 1
    .end array-data
.end method
