.class public final Lcom/kakaogame/gameserver/GameSessionService$initialize$1;
.super Ljava/lang/Object;
.source "GameSessionService.kt"

# interfaces
.implements Lcom/kakaogame/core/CoreManager$CoreStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/gameserver/GameSessionService;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/kakaogame/gameserver/GameSessionService$initialize$1",
        "Lcom/kakaogame/core/CoreManager$CoreStateListener;",
        "onLogin",
        "",
        "playerId",
        "",
        "onLogout",
        "onPause",
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


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/gameserver/GameSessionService$initialize$1;->$context:Landroid/content/Context;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onConnect(Ljava/lang/String;)V
    .locals 1

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onLogin(Ljava/lang/String;)V
    .locals 4

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d73fe35

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, -0x451b7ddf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-static {}, Lcom/kakaogame/gameserver/GameSessionService;->access$getUseGameServer$p()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 439
    sget-object p1, Lcom/kakaogame/gameserver/GameSessionService;->INSTANCE:Lcom/kakaogame/gameserver/GameSessionService;

    invoke-static {p1}, Lcom/kakaogame/gameserver/GameSessionService;->access$setServerInfoFromInfodesk(Lcom/kakaogame/gameserver/GameSessionService;)V

    .line 449
    sget-object p1, Lcom/kakaogame/gameserver/GameSessionService;->INSTANCE:Lcom/kakaogame/gameserver/GameSessionService;

    invoke-virtual {p1}, Lcom/kakaogame/gameserver/GameSessionService;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 459
    sget-object p1, Lcom/kakaogame/gameserver/GameSessionService;->INSTANCE:Lcom/kakaogame/gameserver/GameSessionService;

    iget-object v0, p0, Lcom/kakaogame/gameserver/GameSessionService$initialize$1;->$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/kakaogame/gameserver/GameSessionService;->requestConnect(Landroid/content/Context;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 469
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x543b6e6a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_0
    invoke-static {}, Lcom/kakaogame/gameserver/GamePresenceService;->startPing()V

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public onLogout(Ljava/lang/String;)V
    .locals 3

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x451b02bf

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, -0x451b7ddf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lcom/kakaogame/gameserver/GameSessionService;->access$getUseGameServer$p()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 559
    invoke-static {}, Lcom/kakaogame/gameserver/GamePresenceService;->stopPing()V

    .line 569
    sget-object p1, Lcom/kakaogame/gameserver/GameSessionService;->INSTANCE:Lcom/kakaogame/gameserver/GameSessionService;

    invoke-virtual {p1}, Lcom/kakaogame/gameserver/GameSessionService;->disconnect()V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onPause()V
    .locals 3

    .line 619
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x451b7ddf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x2252b2c6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {}, Lcom/kakaogame/gameserver/GameSessionService;->access$getUseGameServer$p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-static {}, Lcom/kakaogame/gameserver/GamePresenceService;->stopPing()V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onUnregister(Ljava/lang/String;)V
    .locals 2

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, -0x451b7ddf

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x451b02df

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-static {}, Lcom/kakaogame/gameserver/GameSessionService;->access$getUseGameServer$p()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 709
    invoke-static {}, Lcom/kakaogame/gameserver/GamePresenceService;->stopPing()V

    .line 719
    sget-object p1, Lcom/kakaogame/gameserver/GameSessionService;->INSTANCE:Lcom/kakaogame/gameserver/GameSessionService;

    invoke-virtual {p1}, Lcom/kakaogame/gameserver/GameSessionService;->disconnect()V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
