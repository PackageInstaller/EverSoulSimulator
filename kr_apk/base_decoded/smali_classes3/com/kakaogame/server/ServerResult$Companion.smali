.class public final Lcom/kakaogame/server/ServerResult$Companion;
.super Ljava/lang/Object;
.source "ServerResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/server/ServerResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0014\u0010\u000c\u001a\u00020\u00072\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u000eH\u0007J\u001e\u0010\u000c\u001a\u00020\u00072\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u000e2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/kakaogame/server/ServerResult$Companion;",
        "",
        "<init>",
        "()V",
        "serialVersionUID",
        "",
        "getServerResult",
        "Lcom/kakaogame/server/ServerResult;",
        "request",
        "Lcom/kakaogame/server/ServerRequest;",
        "response",
        "Lcom/kakaogame/server/ServerResponse;",
        "getServerErrorResult",
        "result",
        "Lcom/kakaogame/server/KeyBaseResult;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/server/ServerResult$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;)Lcom/kakaogame/server/ServerResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "*>;)",
            "Lcom/kakaogame/server/ServerResult;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543e8a9a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    new-instance v0, Lcom/kakaogame/server/ServerResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/kakaogame/server/ServerResult;-><init>(Lcom/kakaogame/server/KeyBaseResult;Lcom/kakaogame/server/ServerRequest;Lcom/kakaogame/server/ServerResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;Lcom/kakaogame/server/ServerRequest;)Lcom/kakaogame/server/ServerResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "*>;",
            "Lcom/kakaogame/server/ServerRequest;",
            ")",
            "Lcom/kakaogame/server/ServerResult;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543e8a9a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    new-instance v0, Lcom/kakaogame/server/ServerResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/kakaogame/server/ServerResult;-><init>(Lcom/kakaogame/server/KeyBaseResult;Lcom/kakaogame/server/ServerRequest;Lcom/kakaogame/server/ServerResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getServerResult(Lcom/kakaogame/server/ServerRequest;Lcom/kakaogame/server/ServerResponse;)Lcom/kakaogame/server/ServerResult;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x22538616

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Lcom/kakaogame/server/ServerResponse;->getResult()Lcom/kakaogame/server/KeyBaseResult;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/kakaogame/server/ServerResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/kakaogame/server/ServerResult;-><init>(Lcom/kakaogame/server/KeyBaseResult;Lcom/kakaogame/server/ServerRequest;Lcom/kakaogame/server/ServerResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    nop

    .array-data 1
    .end array-data
.end method
