.class public final Lcom/kakaogame/KGInvitation$showShareViewOnActivity$listener$1;
.super Ljava/lang/Object;
.source "KGInvitation.kt"

# interfaces
.implements Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/KGInvitation;->showShareViewOnActivity(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
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
        "com/kakaogame/KGInvitation$showShareViewOnActivity$listener$1",
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
.field final synthetic $resultLock:Lcom/kakaogame/util/MutexLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/util/MutexLock<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/kakaogame/util/MutexLock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakaogame/util/MutexLock<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/KGInvitation$showShareViewOnActivity$listener$1;->$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/kakaogame/KGInvitation$showShareViewOnActivity$listener$1;->$resultLock:Lcom/kakaogame/util/MutexLock;

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onActivityStart(Landroid/app/Activity;)V
    .locals 6

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const v1, 0x33656663

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d77c365

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const v3, 0x543ede82

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    .line 889
    invoke-static {v0, v3, v2}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const v4, 0x5d17f417

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    .line 899
    invoke-static {v0, v4, v2}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const v5, 0x6d0bc3a8

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    .line 909
    invoke-static {v0, v5, v2}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 919
    new-instance v2, Lcom/kakaogame/web/WebDialog$Settings$Builder;

    invoke-direct {v2}, Lcom/kakaogame/web/WebDialog$Settings$Builder;-><init>()V

    .line 929
    invoke-virtual {v2}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setFixedTitle()Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v2

    .line 939
    invoke-virtual {v2, v1, v3}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setPortSize(II)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v1

    .line 949
    invoke-virtual {v1, v4, v0}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setLandSize(II)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 959
    invoke-virtual {v0, v1}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setPulltoRefresh(Z)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v0

    const/high16 v2, -0x21000000

    .line 969
    invoke-virtual {v0, v2}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setBackgroundColor(I)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 979
    invoke-virtual {v0, v2}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setFixedFontSize(Z)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v0

    .line 989
    iget-object v2, p0, Lcom/kakaogame/KGInvitation$showShareViewOnActivity$listener$1;->$url:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->build()Lcom/kakaogame/web/WebDialog$Settings;

    move-result-object v0

    new-instance v3, Lcom/kakaogame/KGInvitation$showShareViewOnActivity$listener$1$onActivityStart$1;

    iget-object v4, p0, Lcom/kakaogame/KGInvitation$showShareViewOnActivity$listener$1;->$resultLock:Lcom/kakaogame/util/MutexLock;

    invoke-direct {v3, v4}, Lcom/kakaogame/KGInvitation$showShareViewOnActivity$listener$1$onActivityStart$1;-><init>(Lcom/kakaogame/util/MutexLock;)V

    check-cast v3, Lcom/kakaogame/KGResultCallback;

    invoke-static {p1, v2, v0, v1, v3}, Lcom/kakaogame/web/WebDialogManager;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;ZLcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/kakaogame/KGInvitation$showShareViewOnActivity$listener$1;->$resultLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock;->isLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/kakaogame/KGInvitation$showShareViewOnActivity$listener$1;->$resultLock:Lcom/kakaogame/util/MutexLock;

    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 1099
    iget-object v0, p0, Lcom/kakaogame/KGInvitation$showShareViewOnActivity$listener$1;->$resultLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
