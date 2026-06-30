.class public interface abstract Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;
.super Ljava/lang/Object;
.source "WebSocketManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/session/WebSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebSocketEventListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0008\u0010\u0007\u001a\u00020\u0003H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;",
        "",
        "onServerMessage",
        "",
        "response",
        "Lcom/kakaogame/server/ServerResponse;",
        "onConnect",
        "onDisconnect",
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


# virtual methods
.method public abstract onConnect()V
.end method

.method public abstract onDisconnect()V
.end method

.method public abstract onServerMessage(Lcom/kakaogame/server/ServerResponse;)V
.end method
