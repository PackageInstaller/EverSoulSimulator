.class public final Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1;
.super Ljava/lang/Object;
.source "KGSNSShare.kt"

# interfaces
.implements Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/KGSNSShare;->showShareViewOnActivity(Landroid/app/Activity;JLjava/lang/String;)Lcom/kakaogame/KGResult;
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
        "com/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1",
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
.field final synthetic $baseUrl:Ljava/lang/String;

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

.field final synthetic $seq:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/kakaogame/util/MutexLock;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakaogame/util/MutexLock<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;J)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1;->$baseUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1;->$resultLock:Lcom/kakaogame/util/MutexLock;

    iput-wide p3, p0, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1;->$seq:J

    .line 4609
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
    .locals 7

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4639
    iget-object v0, p0, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1;->$baseUrl:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4649
    iget-object p1, p0, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1;->$resultLock:Lcom/kakaogame/util/MutexLock;

    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa2

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 4659
    iget-object p1, p0, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1;->$resultLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    .line 4689
    :cond_0
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

    .line 4699
    invoke-static {v0, v3, v2}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const v4, 0x5d17f417

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    .line 4709
    invoke-static {v0, v4, v2}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const v5, 0x6d0bc3a8

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    .line 4719
    invoke-static {v0, v5, v2}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4729
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 4739
    iget-wide v5, p0, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1;->$seq:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const v6, -0x4518e3af

    invoke-static {v6}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4749
    new-instance v5, Lcom/kakaogame/web/WebDialog$Settings$Builder;

    invoke-direct {v5}, Lcom/kakaogame/web/WebDialog$Settings$Builder;-><init>()V

    .line 4759
    invoke-virtual {v5}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setFixedTitle()Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v5

    .line 4769
    invoke-virtual {v5, v1, v3}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setPortSize(II)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v1

    .line 4779
    invoke-virtual {v1, v4, v0}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setLandSize(II)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 4789
    invoke-virtual {v0, v1}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setPulltoRefresh(Z)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v0

    .line 4799
    invoke-virtual {v0, v2}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setCustomCookie(Ljava/util/Map;)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v0

    const/high16 v2, -0x21000000

    .line 4809
    invoke-virtual {v0, v2}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setBackgroundColor(I)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 4819
    invoke-virtual {v0, v2}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setFixedFontSize(Z)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v0

    .line 4829
    iget-object v2, p0, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1;->$baseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->build()Lcom/kakaogame/web/WebDialog$Settings;

    move-result-object v0

    new-instance v3, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1$onActivityStart$1;

    iget-object v4, p0, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1;->$resultLock:Lcom/kakaogame/util/MutexLock;

    invoke-direct {v3, v4}, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1$onActivityStart$1;-><init>(Lcom/kakaogame/util/MutexLock;)V

    check-cast v3, Lcom/kakaogame/KGResultCallback;

    invoke-static {p1, v2, v0, v1, v3}, Lcom/kakaogame/web/WebDialogManager;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;ZLcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    .line 4919
    iget-object v0, p0, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1;->$resultLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock;->isLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4929
    iget-object v0, p0, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1;->$resultLock:Lcom/kakaogame/util/MutexLock;

    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 4939
    iget-object v0, p0, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1;->$resultLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock;->unlock()V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
