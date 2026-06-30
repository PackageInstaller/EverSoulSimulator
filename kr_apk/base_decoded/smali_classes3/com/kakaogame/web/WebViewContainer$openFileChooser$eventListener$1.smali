.class public final Lcom/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1;
.super Ljava/lang/Object;
.source "WebViewContainer.kt"

# interfaces
.implements Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/web/WebViewContainer;->openFileChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\"\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1",
        "Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;",
        "onActivityStart",
        "",
        "activity",
        "Landroid/app/Activity;",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onDestroy",
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
.field final synthetic $chooserIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/kakaogame/web/WebViewContainer;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/kakaogame/web/WebViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1;->$chooserIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1;->this$0:Lcom/kakaogame/web/WebViewContainer;

    .line 2789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 2859
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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x225b8d7e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x75f

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2879
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    move-object p2, p1

    :goto_1
    const/4 p3, 0x1

    if-eqz p2, :cond_2

    .line 2899
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebViewContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2909
    iget-object v1, p0, Lcom/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v1}, Lcom/kakaogame/web/WebViewContainer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2899
    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 2959
    :cond_2
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebViewContainer;->getUploadMessage()Landroid/webkit/ValueCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2969
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v3, -0x4517f287

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2979
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebViewContainer;->getUploadMessage()Landroid/webkit/ValueCallback;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 2989
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0, p1}, Lcom/kakaogame/web/WebViewContainer;->setUploadMessage(Landroid/webkit/ValueCallback;)V

    .line 3009
    :cond_3
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebViewContainer;->getUploadMessages()Landroid/webkit/ValueCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3019
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v3, 0x7d7e9ef5

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    new-array p3, p3, [Landroid/net/Uri;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    goto :goto_2

    :cond_4
    move-object p3, p1

    .line 3089
    :goto_2
    iget-object p2, p0, Lcom/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {p2}, Lcom/kakaogame/web/WebViewContainer;->getUploadMessages()Landroid/webkit/ValueCallback;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 3099
    iget-object p2, p0, Lcom/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-virtual {p2, p1}, Lcom/kakaogame/web/WebViewContainer;->setUploadMessages(Landroid/webkit/ValueCallback;)V

    .line 3119
    :cond_5
    sget-object p1, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    invoke-virtual {p1, p2}, Lcom/kakaogame/auth/AuthActivityManager;->removeResultListener(Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;)V

    .line 3129
    sget-object p1, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object p1

    iget-object p2, p0, Lcom/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1;->this$0:Lcom/kakaogame/web/WebViewContainer;

    invoke-static {p2}, Lcom/kakaogame/web/WebViewContainer;->access$getTxId$p(Lcom/kakaogame/web/WebViewContainer;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/kakaogame/auth/AuthActivityManager;->finishActivity(J)V

    :cond_6
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onActivityStart(Landroid/app/Activity;)V
    .locals 2

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2819
    iget-object v0, p0, Lcom/kakaogame/web/WebViewContainer$openFileChooser$eventListener$1;->$chooserIntent:Landroid/content/Intent;

    const/16 v1, 0x75f

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onDestroy()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method
