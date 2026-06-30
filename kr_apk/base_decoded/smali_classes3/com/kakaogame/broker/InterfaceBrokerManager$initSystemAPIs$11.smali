.class public final Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$11;
.super Ljava/lang/Object;
.source "InterfaceBrokerManager.kt"

# interfaces
.implements Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/broker/InterfaceBrokerManager;->initSystemAPIs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$11",
        "Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;",
        "request",
        "Lcom/kakaogame/KGResult;",
        "activity",
        "Landroid/app/Activity;",
        "Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceRequest;",
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

    .line 12359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public request(Landroid/app/Activity;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceRequest;)Lcom/kakaogame/KGResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceRequest;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "*>;"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "languageCode"

    .line 12379
    invoke-virtual {p2, p1}, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceRequest;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 12389
    sget-object p2, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {p2}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object p2

    .line 12399
    new-instance v0, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$11$request$1;

    invoke-direct {v0, p2}, Lcom/kakaogame/broker/InterfaceBrokerManager$initSystemAPIs$11$request$1;-><init>(Lcom/kakaogame/util/MutexLock;)V

    check-cast v0, Lcom/kakaogame/KGResultCallback;

    invoke-static {p1, v0}, Lcom/kakaogame/KGSystem;->updateLanguageCode(Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 12459
    invoke-static {p2, v1, v2, p1, v0}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 12469
    invoke-virtual {p2}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/kakaogame/KGResult;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
