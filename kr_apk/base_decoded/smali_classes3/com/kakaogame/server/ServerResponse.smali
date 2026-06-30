.class public final Lcom/kakaogame/server/ServerResponse;
.super Ljava/lang/Object;
.source "ServerResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/server/ServerResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B=\u0008\u0002\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0016\u001a\u00020\u0006H\u0016R\u0019\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0012\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/kakaogame/server/ServerResponse;",
        "",
        "result",
        "Lcom/kakaogame/server/KeyBaseResult;",
        "Lcom/kakaogame/util/json/JSONObject;",
        "requestUri",
        "",
        "header",
        "body",
        "<init>",
        "(Lcom/kakaogame/server/KeyBaseResult;Ljava/lang/String;Lcom/kakaogame/util/json/JSONObject;Lcom/kakaogame/util/json/JSONObject;)V",
        "getResult",
        "()Lcom/kakaogame/server/KeyBaseResult;",
        "getRequestUri",
        "()Ljava/lang/String;",
        "getHeader",
        "()Lcom/kakaogame/util/json/JSONObject;",
        "getBody",
        "transactionNo",
        "",
        "getTransactionNo",
        "()I",
        "toString",
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
.field public static final Companion:Lcom/kakaogame/server/ServerResponse$Companion;

.field private static final TAG:Ljava/lang/String; = "ServerResponse"


# instance fields
.field private final body:Lcom/kakaogame/util/json/JSONObject;

.field private final header:Lcom/kakaogame/util/json/JSONObject;

.field private final requestUri:Ljava/lang/String;

.field private final result:Lcom/kakaogame/server/KeyBaseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Lcom/kakaogame/util/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/server/ServerResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/server/ServerResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/server/ServerResponse;->Companion:Lcom/kakaogame/server/ServerResponse$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Lcom/kakaogame/server/KeyBaseResult;Ljava/lang/String;Lcom/kakaogame/util/json/JSONObject;Lcom/kakaogame/util/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Lcom/kakaogame/util/json/JSONObject;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/util/json/JSONObject;",
            "Lcom/kakaogame/util/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/kakaogame/server/ServerResponse;->result:Lcom/kakaogame/server/KeyBaseResult;

    .line 129
    iput-object p2, p0, Lcom/kakaogame/server/ServerResponse;->requestUri:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcom/kakaogame/server/ServerResponse;->header:Lcom/kakaogame/util/json/JSONObject;

    .line 149
    iput-object p4, p0, Lcom/kakaogame/server/ServerResponse;->body:Lcom/kakaogame/util/json/JSONObject;

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/kakaogame/server/KeyBaseResult;Ljava/lang/String;Lcom/kakaogame/util/json/JSONObject;Lcom/kakaogame/util/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 109
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/server/ServerResponse;-><init>(Lcom/kakaogame/server/KeyBaseResult;Ljava/lang/String;Lcom/kakaogame/util/json/JSONObject;Lcom/kakaogame/util/json/JSONObject;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakaogame/server/KeyBaseResult;Ljava/lang/String;Lcom/kakaogame/util/json/JSONObject;Lcom/kakaogame/util/json/JSONObject;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/server/ServerResponse;-><init>(Lcom/kakaogame/server/KeyBaseResult;Ljava/lang/String;Lcom/kakaogame/util/json/JSONObject;Lcom/kakaogame/util/json/JSONObject;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final getResponse(Ljava/lang/String;)Lcom/kakaogame/server/ServerResponse;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/server/ServerResponse;->Companion:Lcom/kakaogame/server/ServerResponse$Companion;

    invoke-virtual {v0, p0}, Lcom/kakaogame/server/ServerResponse$Companion;->getResponse(Ljava/lang/String;)Lcom/kakaogame/server/ServerResponse;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/server/ServerResponse;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/server/ServerResponse;->Companion:Lcom/kakaogame/server/ServerResponse$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/server/ServerResponse$Companion;->getResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/server/ServerResponse;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getResult(Lcom/kakaogame/util/json/JSONObject;)Lcom/kakaogame/server/KeyBaseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/util/json/JSONObject;",
            ")",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Lcom/kakaogame/util/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/server/ServerResponse;->Companion:Lcom/kakaogame/server/ServerResponse$Companion;

    invoke-virtual {v0, p0}, Lcom/kakaogame/server/ServerResponse$Companion;->getResult(Lcom/kakaogame/util/json/JSONObject;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getBody()Lcom/kakaogame/util/json/JSONObject;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/kakaogame/server/ServerResponse;->body:Lcom/kakaogame/util/json/JSONObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getHeader()Lcom/kakaogame/util/json/JSONObject;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/kakaogame/server/ServerResponse;->header:Lcom/kakaogame/util/json/JSONObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRequestUri()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/kakaogame/server/ServerResponse;->requestUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getResult()Lcom/kakaogame/server/KeyBaseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "Lcom/kakaogame/util/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/kakaogame/server/ServerResponse;->result:Lcom/kakaogame/server/KeyBaseResult;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTransactionNo()I
    .locals 5

    const/4 v0, -0x1

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/kakaogame/server/ServerResponse;->header:Lcom/kakaogame/util/json/JSONObject;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "txNo"

    .line 189
    invoke-virtual {v1, v2}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 239
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Ljava/lang/Throwable;

    const v4, 0x7d7fae15

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5436adfa

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kakaogame/server/ServerResponse;->requestUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5436aac2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/server/ServerResponse;->header:Lcom/kakaogame/util/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d03b570

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/server/ServerResponse;->body:Lcom/kakaogame/util/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
