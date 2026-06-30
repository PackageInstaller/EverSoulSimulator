.class public final Lcom/kakaogame/session/SyncServerRequest;
.super Ljava/lang/Object;
.source "SyncServerRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/session/SyncServerRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0005R\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u00060\u0005R\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/kakaogame/session/SyncServerRequest;",
        "",
        "request",
        "Lcom/kakaogame/server/ServerRequest;",
        "listener",
        "Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;",
        "Lcom/kakaogame/session/WebSocketManager;",
        "<init>",
        "(Lcom/kakaogame/server/ServerRequest;Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;)V",
        "lock",
        "Lcom/kakaogame/util/MutexLock;",
        "Lcom/kakaogame/server/ServerResponse;",
        "transactionNo",
        "",
        "getTransactionNo",
        "()I",
        "requestUri",
        "",
        "getRequestUri",
        "()Ljava/lang/String;",
        "getSessionResponse",
        "Lcom/kakaogame/server/ServerResult;",
        "timeout",
        "",
        "setSessionResponse",
        "",
        "response",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/kakaogame/session/SyncServerRequest$Companion;

.field private static final TAG:Ljava/lang/String; = "SyncServerRequest"


# instance fields
.field private final listener:Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;

.field private final lock:Lcom/kakaogame/util/MutexLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/util/MutexLock<",
            "Lcom/kakaogame/server/ServerResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Lcom/kakaogame/server/ServerRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/session/SyncServerRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/session/SyncServerRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/session/SyncServerRequest;->Companion:Lcom/kakaogame/session/SyncServerRequest$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakaogame/server/ServerRequest;Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;)V
    .locals 1

    const v0, 0x3365db6b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3365cce3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/session/SyncServerRequest;->request:Lcom/kakaogame/server/ServerRequest;

    iput-object p2, p0, Lcom/kakaogame/session/SyncServerRequest;->listener:Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;

    .line 139
    sget-object p1, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/session/SyncServerRequest;->lock:Lcom/kakaogame/util/MutexLock;

    .line 539
    invoke-virtual {p2, p0}, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->addRequest(Lcom/kakaogame/session/SyncServerRequest;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getRequestUri()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/kakaogame/session/SyncServerRequest;->request:Lcom/kakaogame/server/ServerRequest;

    invoke-virtual {v0}, Lcom/kakaogame/server/ServerRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSessionResponse(J)Lcom/kakaogame/server/ServerResult;
    .locals 3

    .line 209
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d7f9ef5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7f9f95

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/kakaogame/session/SyncServerRequest;->lock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/util/MutexLock;->lock(J)V

    .line 229
    iget-object p1, p0, Lcom/kakaogame/session/SyncServerRequest;->lock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/server/ServerResponse;

    .line 239
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x54369d52

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object p2, p0, Lcom/kakaogame/session/SyncServerRequest;->listener:Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;

    invoke-virtual {p2, p0}, Lcom/kakaogame/session/WebSocketManager$WebSocketListenerImpl;->removeRequest(Lcom/kakaogame/session/SyncServerRequest;)V

    if-nez p1, :cond_1

    .line 269
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const v0, 0x225a9176

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakaogame/session/SyncServerRequest;->request:Lcom/kakaogame/server/ServerRequest;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const v0, 0x5d179617

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/kakaogame/session/SyncServerRequest;->lock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock;->isTimeout()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object p1, p0, Lcom/kakaogame/session/SyncServerRequest;->lock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->isTimeout()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 309
    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const/16 p2, 0x7d1

    invoke-virtual {p1, p2}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(I)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    .line 319
    sget-object p2, Lcom/kakaogame/server/ServerResult;->Companion:Lcom/kakaogame/server/ServerResult$Companion;

    iget-object v0, p0, Lcom/kakaogame/session/SyncServerRequest;->request:Lcom/kakaogame/server/ServerRequest;

    invoke-virtual {p2, p1, v0}, Lcom/kakaogame/server/ServerResult$Companion;->getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;Lcom/kakaogame/server/ServerRequest;)Lcom/kakaogame/server/ServerResult;

    move-result-object p1

    goto :goto_0

    .line 349
    :cond_0
    sget-object p1, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    const/16 p2, 0x7d4

    invoke-virtual {p1, p2}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(I)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    .line 359
    sget-object p2, Lcom/kakaogame/server/ServerResult;->Companion:Lcom/kakaogame/server/ServerResult$Companion;

    iget-object v0, p0, Lcom/kakaogame/session/SyncServerRequest;->request:Lcom/kakaogame/server/ServerRequest;

    invoke-virtual {p2, p1, v0}, Lcom/kakaogame/server/ServerResult$Companion;->getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;Lcom/kakaogame/server/ServerRequest;)Lcom/kakaogame/server/ServerResult;

    move-result-object p1

    goto :goto_0

    .line 389
    :cond_1
    sget-object p2, Lcom/kakaogame/server/ServerResult;->Companion:Lcom/kakaogame/server/ServerResult$Companion;

    iget-object v0, p0, Lcom/kakaogame/session/SyncServerRequest;->request:Lcom/kakaogame/server/ServerRequest;

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/server/ServerResult$Companion;->getServerResult(Lcom/kakaogame/server/ServerRequest;Lcom/kakaogame/server/ServerResponse;)Lcom/kakaogame/server/ServerResult;

    move-result-object p1

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final getTransactionNo()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/kakaogame/session/SyncServerRequest;->request:Lcom/kakaogame/server/ServerRequest;

    invoke-virtual {v0}, Lcom/kakaogame/server/ServerRequest;->getTransactionNo()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setSessionResponse(Lcom/kakaogame/server/ServerResponse;)V
    .locals 3

    .line 439
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x4516f6bf

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7f9f95

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/kakaogame/session/SyncServerRequest;->lock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 459
    iget-object p1, p0, Lcom/kakaogame/session/SyncServerRequest;->lock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
