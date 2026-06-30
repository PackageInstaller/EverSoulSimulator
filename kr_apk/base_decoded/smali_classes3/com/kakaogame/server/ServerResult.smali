.class public final Lcom/kakaogame/server/ServerResult;
.super Lcom/kakaogame/server/KeyBaseResult;
.source "ServerResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/server/ServerResult$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakaogame/server/KeyBaseResult<",
        "Lcom/kakaogame/util/json/JSONObject;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00102\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001\u0010B)\u0008\u0002\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0001\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/kakaogame/server/ServerResult;",
        "Lcom/kakaogame/server/KeyBaseResult;",
        "Lcom/kakaogame/util/json/JSONObject;",
        "result",
        "request",
        "Lcom/kakaogame/server/ServerRequest;",
        "response",
        "Lcom/kakaogame/server/ServerResponse;",
        "<init>",
        "(Lcom/kakaogame/server/KeyBaseResult;Lcom/kakaogame/server/ServerRequest;Lcom/kakaogame/server/ServerResponse;)V",
        "getRequest",
        "()Lcom/kakaogame/server/ServerRequest;",
        "getResponse",
        "()Lcom/kakaogame/server/ServerResponse;",
        "toString",
        "",
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
.field public static final Companion:Lcom/kakaogame/server/ServerResult$Companion;

.field private static final serialVersionUID:J = -0x462614fe9e883b04L


# instance fields
.field private final request:Lcom/kakaogame/server/ServerRequest;

.field private final response:Lcom/kakaogame/server/ServerResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/server/ServerResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/server/ServerResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/server/ServerResult;->Companion:Lcom/kakaogame/server/ServerResult$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Lcom/kakaogame/server/KeyBaseResult;Lcom/kakaogame/server/ServerRequest;Lcom/kakaogame/server/ServerResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "*>;",
            "Lcom/kakaogame/server/ServerRequest;",
            "Lcom/kakaogame/server/ServerResponse;",
            ")V"
        }
    .end annotation

    .line 89
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/kakaogame/server/KeyBaseResult;-><init>(Ljava/util/Map;)V

    .line 79
    iput-object p2, p0, Lcom/kakaogame/server/ServerResult;->request:Lcom/kakaogame/server/ServerRequest;

    .line 89
    iput-object p3, p0, Lcom/kakaogame/server/ServerResult;->response:Lcom/kakaogame/server/ServerResponse;

    .line 379
    invoke-virtual {p1}, Lcom/kakaogame/server/KeyBaseResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "desc"

    invoke-virtual {p0, p2, p1}, Lcom/kakaogame/server/ServerResult;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakaogame/server/KeyBaseResult;Lcom/kakaogame/server/ServerRequest;Lcom/kakaogame/server/ServerResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/server/ServerResult;-><init>(Lcom/kakaogame/server/KeyBaseResult;Lcom/kakaogame/server/ServerRequest;Lcom/kakaogame/server/ServerResponse;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;)Lcom/kakaogame/server/ServerResult;
    .locals 1
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

    sget-object v0, Lcom/kakaogame/server/ServerResult;->Companion:Lcom/kakaogame/server/ServerResult$Companion;

    invoke-virtual {v0, p0}, Lcom/kakaogame/server/ServerResult$Companion;->getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;Lcom/kakaogame/server/ServerRequest;)Lcom/kakaogame/server/ServerResult;
    .locals 1
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

    sget-object v0, Lcom/kakaogame/server/ServerResult;->Companion:Lcom/kakaogame/server/ServerResult$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/server/ServerResult$Companion;->getServerErrorResult(Lcom/kakaogame/server/KeyBaseResult;Lcom/kakaogame/server/ServerRequest;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getServerResult(Lcom/kakaogame/server/ServerRequest;Lcom/kakaogame/server/ServerResponse;)Lcom/kakaogame/server/ServerResult;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/server/ServerResult;->Companion:Lcom/kakaogame/server/ServerResult$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/server/ServerResult$Companion;->getServerResult(Lcom/kakaogame/server/ServerRequest;Lcom/kakaogame/server/ServerResponse;)Lcom/kakaogame/server/ServerResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getRequest()Lcom/kakaogame/server/ServerRequest;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/kakaogame/server/ServerResult;->request:Lcom/kakaogame/server/ServerRequest;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getResponse()Lcom/kakaogame/server/ServerResponse;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/kakaogame/server/ServerResult;->response:Lcom/kakaogame/server/ServerResponse;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerResult;->isSuccess()Z

    move-result v0

    const/16 v1, 0x5d

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const v2, -0x224d6194

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kakaogame/server/ServerResult;->request:Lcom/kakaogame/server/ServerRequest;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/kakaogame/server/ServerRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const v2, 0x5436a892

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kakaogame/server/ServerResult;->request:Lcom/kakaogame/server/ServerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x6d03b718

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/kakaogame/server/KeyBaseResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method
