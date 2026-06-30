.class public final Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;
.super Ljava/lang/Object;
.source "FacebookShare.kt"

# interfaces
.implements Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/idp/FacebookShare;->showShareDialog(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;
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
        "com/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1",
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
        "idp_facebook_release"
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
.field final synthetic $content:Ljava/lang/String;

.field final synthetic $hashTag:Ljava/lang/String;

.field final synthetic $shareLock:Lcom/kakaogame/util/MutexLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/util/MutexLock<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $type:I


# direct methods
.method constructor <init>(ILcom/kakaogame/util/MutexLock;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kakaogame/util/MutexLock<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput p1, p0, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;->$type:I

    iput-object p2, p0, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;->$shareLock:Lcom/kakaogame/util/MutexLock;

    iput-object p3, p0, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;->$content:Ljava/lang/String;

    iput-object p4, p0, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;->$hashTag:Ljava/lang/String;

    .line 2709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 3129
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-static {}, Lcom/kakaogame/idp/FacebookShare;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x543b72f2

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x5d179617

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    :try_start_0
    invoke-static {}, Lcom/kakaogame/idp/FacebookShare;->access$getCallbackManager$p()Lcom/facebook/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3169
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-static {}, Lcom/kakaogame/idp/FacebookShare;->access$getTAG$p()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, p3, v0, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onActivityStart(Landroid/app/Activity;)V
    .locals 4

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2739
    :try_start_0
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v0, p1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 2749
    invoke-static {}, Lcom/kakaogame/idp/FacebookShare;->access$getCallbackManager$p()Lcom/facebook/CallbackManager;

    move-result-object p1

    new-instance v1, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1$onActivityStart$1;

    iget-object v2, p0, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;->$shareLock:Lcom/kakaogame/util/MutexLock;

    invoke-direct {v1, v2}, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1$onActivityStart$1;-><init>(Lcom/kakaogame/util/MutexLock;)V

    check-cast v1, Lcom/facebook/FacebookCallback;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 2999
    iget p1, p0, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;->$type:I

    invoke-static {}, Lcom/kakaogame/idp/FacebookShare;->access$getTYPE_IMAGE$p()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 3009
    sget-object p1, Lcom/kakaogame/idp/FacebookShare;->INSTANCE:Lcom/kakaogame/idp/FacebookShare;

    iget-object v1, p0, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;->$shareLock:Lcom/kakaogame/util/MutexLock;

    iget-object v2, p0, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;->$content:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;->$hashTag:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/kakaogame/idp/FacebookShare;->access$showShareImageDialog(Lcom/kakaogame/idp/FacebookShare;Lcom/facebook/share/widget/ShareDialog;Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3029
    :cond_0
    sget-object p1, Lcom/kakaogame/idp/FacebookShare;->INSTANCE:Lcom/kakaogame/idp/FacebookShare;

    iget-object v1, p0, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;->$shareLock:Lcom/kakaogame/util/MutexLock;

    iget-object v2, p0, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;->$content:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;->$hashTag:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/kakaogame/idp/FacebookShare;->access$showShareLinkialog(Lcom/kakaogame/idp/FacebookShare;Lcom/facebook/share/widget/ShareDialog;Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3059
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-static {}, Lcom/kakaogame/idp/FacebookShare;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x6d0a9dd8

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 3079
    iget-object v0, p0, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;->$shareLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 3089
    iget-object p1, p0, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;->$shareLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->unlock()V

    :goto_0
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
