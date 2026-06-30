.class public final Lcom/kakaogame/gameserver/GameSessionService$initWebsocket$1;
.super Ljava/lang/Object;
.source "GameSessionService.kt"

# interfaces
.implements Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/gameserver/GameSessionService;->initWebsocket()Lcom/kakaogame/KGResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/kakaogame/gameserver/GameSessionService$initWebsocket$1",
        "Lcom/kakaogame/session/WebSocketManager$WebSocketEventListener;",
        "onServerMessage",
        "",
        "response",
        "Lcom/kakaogame/server/ServerResponse;",
        "onConnect",
        "onDisconnect",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onConnect()V
    .locals 3

    .line 1339
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x451b7ddf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x22571a4e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    invoke-static {}, Lcom/kakaogame/gameserver/GamePresenceService;->startPing()V

    .line 1359
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    return-void

    .array-data 1
    .end array-data
.end method

.method public onDisconnect()V
    .locals 3

    .line 1399
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x451b7ddf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x451b7cd7

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    invoke-static {}, Lcom/kakaogame/gameserver/GamePresenceService;->stopPing()V

    .line 1419
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    return-void

    .array-data 1
    .end array-data
.end method

.method public onServerMessage(Lcom/kakaogame/server/ServerResponse;)V
    .locals 3

    .line 1219
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x451b0347

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, -0x451b7ddf

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1259
    :cond_0
    invoke-virtual {p1}, Lcom/kakaogame/server/ServerResponse;->getRequestUri()Ljava/lang/String;

    move-result-object v0

    .line 1269
    invoke-virtual {p1}, Lcom/kakaogame/server/ServerResponse;->getBody()Lcom/kakaogame/util/json/JSONObject;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 1279
    invoke-static {}, Lcom/kakaogame/gameserver/GameSessionService;->access$getGameServerMessageListener$p()Lcom/kakaogame/gameserver/GameSessionService$GameServerMessageListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1289
    invoke-static {}, Lcom/kakaogame/gameserver/GameSessionService;->access$getGameServerMessageListener$p()Lcom/kakaogame/gameserver/GameSessionService$GameServerMessageListener;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0, p1}, Lcom/kakaogame/gameserver/GameSessionService$GameServerMessageListener;->onMessage(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method
