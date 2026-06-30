.class public final Lcom/kakaogame/server/PresenceService$initialize$1;
.super Ljava/lang/Object;
.source "PresenceService.kt"

# interfaces
.implements Lcom/kakaogame/core/CoreManager$CoreStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/server/PresenceService;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/kakaogame/server/PresenceService$initialize$1",
        "Lcom/kakaogame/core/CoreManager$CoreStateListener;",
        "onUnregister",
        "",
        "playerId",
        "",
        "onPause",
        "onLogout",
        "onLogin",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 299
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
    .locals 1

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    invoke-static {}, Lcom/kakaogame/server/PresenceService;->startHeartbeat()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onLogout(Ljava/lang/String;)V
    .locals 1

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    sget-object p1, Lcom/kakaogame/server/PresenceService;->INSTANCE:Lcom/kakaogame/server/PresenceService;

    invoke-static {p1}, Lcom/kakaogame/server/PresenceService;->access$stopHeartbeat(Lcom/kakaogame/server/PresenceService;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onPause()V
    .locals 1

    .line 359
    sget-object v0, Lcom/kakaogame/server/PresenceService;->INSTANCE:Lcom/kakaogame/server/PresenceService;

    invoke-static {v0}, Lcom/kakaogame/server/PresenceService;->access$stopHeartbeat(Lcom/kakaogame/server/PresenceService;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onUnregister(Ljava/lang/String;)V
    .locals 1

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    sget-object p1, Lcom/kakaogame/server/PresenceService;->INSTANCE:Lcom/kakaogame/server/PresenceService;

    invoke-static {p1}, Lcom/kakaogame/server/PresenceService;->access$stopHeartbeat(Lcom/kakaogame/server/PresenceService;)V

    return-void

    .array-data 1
    .end array-data
.end method
