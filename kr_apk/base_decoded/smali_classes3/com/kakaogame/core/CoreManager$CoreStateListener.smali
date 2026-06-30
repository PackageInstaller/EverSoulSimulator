.class public interface abstract Lcom/kakaogame/core/CoreManager$CoreStateListener;
.super Ljava/lang/Object;
.source "CoreManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/core/CoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CoreStateListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakaogame/core/CoreManager$CoreStateListener;",
        "",
        "onPause",
        "",
        "onLogin",
        "playerId",
        "",
        "onLogout",
        "onUnregister",
        "onConnect",
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


# virtual methods
.method public abstract onConnect(Ljava/lang/String;)V
.end method

.method public abstract onLogin(Ljava/lang/String;)V
.end method

.method public abstract onLogout(Ljava/lang/String;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onUnregister(Ljava/lang/String;)V
.end method
