.class public final Lcom/kakaogame/KGFacebook$showGameRequestDialog$eventListener$1;
.super Ljava/lang/Object;
.source "KGFacebook.kt"

# interfaces
.implements Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/KGFacebook;->showGameRequestDialog(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/KGFacebook$KGFacebookActionType;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;
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
        "com/kakaogame/KGFacebook$showGameRequestDialog$eventListener$1",
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
.field final synthetic $gameRequestContent:Lcom/facebook/share/model/GameRequestContent;

.field final synthetic $resultLock:Lcom/kakaogame/util/MutexLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/util/MutexLock<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final synthetic $sCallbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method constructor <init>(Lcom/facebook/CallbackManager;Lcom/facebook/share/model/GameRequestContent;Lcom/kakaogame/util/MutexLock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/share/model/GameRequestContent;",
            "Lcom/kakaogame/util/MutexLock<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/KGFacebook$showGameRequestDialog$eventListener$1;->$sCallbackManager:Lcom/facebook/CallbackManager;

    iput-object p2, p0, Lcom/kakaogame/KGFacebook$showGameRequestDialog$eventListener$1;->$gameRequestContent:Lcom/facebook/share/model/GameRequestContent;

    iput-object p3, p0, Lcom/kakaogame/KGFacebook$showGameRequestDialog$eventListener$1;->$resultLock:Lcom/kakaogame/util/MutexLock;

    .line 1689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1959
    iget-object v0, p0, Lcom/kakaogame/KGFacebook$showGameRequestDialog$eventListener$1;->$sCallbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public onActivityStart(Landroid/app/Activity;)V
    .locals 3

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1709
    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-direct {v0, p1}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    .line 1729
    iget-object p1, p0, Lcom/kakaogame/KGFacebook$showGameRequestDialog$eventListener$1;->$sCallbackManager:Lcom/facebook/CallbackManager;

    .line 1739
    new-instance v1, Lcom/kakaogame/KGFacebook$showGameRequestDialog$eventListener$1$onActivityStart$1;

    iget-object v2, p0, Lcom/kakaogame/KGFacebook$showGameRequestDialog$eventListener$1;->$resultLock:Lcom/kakaogame/util/MutexLock;

    invoke-direct {v1, v2}, Lcom/kakaogame/KGFacebook$showGameRequestDialog$eventListener$1$onActivityStart$1;-><init>(Lcom/kakaogame/util/MutexLock;)V

    check-cast v1, Lcom/facebook/FacebookCallback;

    .line 1719
    invoke-virtual {v0, p1, v1}, Lcom/facebook/share/widget/GameRequestDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 1929
    iget-object p1, p0, Lcom/kakaogame/KGFacebook$showGameRequestDialog$eventListener$1;->$gameRequestContent:Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    return-void

    nop

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
