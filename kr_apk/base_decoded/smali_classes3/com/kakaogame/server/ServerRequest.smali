.class public final Lcom/kakaogame/server/ServerRequest;
.super Ljava/lang/Object;
.source "ServerRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/server/ServerRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\u0018\u0000 12\u00020\u0001:\u00011B\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0014\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010%J\u0014\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010%J\u0018\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001J\u001e\u0010*\u001a\u00020(2\u0016\u0010+\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010%J\u0018\u0010,\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001J\u001e\u0010-\u001a\u00020(2\u0016\u0010+\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010%J\u0008\u00100\u001a\u00020\u0003H\u0016R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R$\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\u0005R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0016\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0003@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0008\"\u0004\u0008\u0010\u0010\u0005R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u000f\"\u0004\u0008\u001f\u0010\u0011R\u0011\u0010 \u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0013\u0010.\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\u0008\u00a8\u00062"
    }
    d2 = {
        "Lcom/kakaogame/server/ServerRequest;",
        "",
        "uri",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "requestUri",
        "getRequestUri",
        "()Ljava/lang/String;",
        "requestMethod",
        "method",
        "getMethod",
        "setMethod",
        "isPlainTextBody",
        "",
        "()Z",
        "setPlainTextBody",
        "(Z)V",
        "header",
        "",
        "body",
        "value",
        "plainTextBody",
        "getPlainTextBody",
        "timeout",
        "",
        "getTimeout",
        "()J",
        "setTimeout",
        "(J)V",
        "isIgnoreTimeout",
        "setIgnoreTimeout",
        "transactionNo",
        "",
        "getTransactionNo",
        "()I",
        "getHeader",
        "",
        "getBody",
        "putHeader",
        "",
        "key",
        "putAllHeader",
        "map",
        "putBody",
        "putAllBody",
        "requestMessage",
        "getRequestMessage",
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
.field public static final Companion:Lcom/kakaogame/server/ServerRequest$Companion;

.field private static final TAG:Ljava/lang/String; = "ServerRequest"

.field private static final requestIdGenerator:Ljava/util/Random;


# instance fields
.field private final body:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isIgnoreTimeout:Z

.field private isPlainTextBody:Z

.field private method:Ljava/lang/String;

.field private plainTextBody:Ljava/lang/String;

.field private final requestUri:Ljava/lang/String;

.field private timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kakaogame/server/ServerRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/server/ServerRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/server/ServerRequest;->Companion:Lcom/kakaogame/server/ServerRequest$Companion;

    .line 1149
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/kakaogame/server/ServerRequest;->requestIdGenerator:Ljava/util/Random;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/kakaogame/server/ServerRequest;->requestUri:Ljava/lang/String;

    const-string p1, "POST"

    .line 159
    iput-object p1, p0, Lcom/kakaogame/server/ServerRequest;->method:Ljava/lang/String;

    .line 229
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/kakaogame/server/ServerRequest;->header:Ljava/util/Map;

    .line 239
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/kakaogame/server/ServerRequest;->body:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 309
    iput-wide v0, p0, Lcom/kakaogame/server/ServerRequest;->timeout:J

    .line 1359
    sget-object v0, Lcom/kakaogame/server/ServerRequest;->requestIdGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x5d1f84df

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 1369
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final parse(Ljava/lang/String;)Lcom/kakaogame/server/ServerRequest;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/server/ServerRequest;->Companion:Lcom/kakaogame/server/ServerRequest$Companion;

    invoke-virtual {v0, p0}, Lcom/kakaogame/server/ServerRequest$Companion;->parse(Ljava/lang/String;)Lcom/kakaogame/server/ServerRequest;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getBody()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/kakaogame/server/ServerRequest;->body:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/kakaogame/server/ServerRequest;->header:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/kakaogame/server/ServerRequest;->method:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPlainTextBody()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/kakaogame/server/ServerRequest;->plainTextBody:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRequestMessage()Ljava/lang/String;
    .locals 4

    .line 909
    :try_start_0
    new-instance v0, Lcom/kakaogame/util/json/JSONArray;

    invoke-direct {v0}, Lcom/kakaogame/util/json/JSONArray;-><init>()V

    .line 919
    iget-object v1, p0, Lcom/kakaogame/server/ServerRequest;->requestUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 929
    iget-object v1, p0, Lcom/kakaogame/server/ServerRequest;->header:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 939
    iget-boolean v1, p0, Lcom/kakaogame/server/ServerRequest;->isPlainTextBody:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kakaogame/server/ServerRequest;->plainTextBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 949
    :cond_0
    iget-object v1, p0, Lcom/kakaogame/server/ServerRequest;->body:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 959
    :goto_0
    invoke-virtual {v0}, Lcom/kakaogame/util/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 979
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    const v3, 0x5d1f84ef

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getRequestUri()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/kakaogame/server/ServerRequest;->requestUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTimeout()J
    .locals 2

    .line 309
    iget-wide v0, p0, Lcom/kakaogame/server/ServerRequest;->timeout:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTransactionNo()I
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/kakaogame/server/ServerRequest;->header:Ljava/util/Map;

    const v1, 0x5d1f84df

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 369
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 379
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final isIgnoreTimeout()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/kakaogame/server/ServerRequest;->isIgnoreTimeout:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isPlainTextBody()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/kakaogame/server/ServerRequest;->isPlainTextBody:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final putAllBody(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 819
    iput-boolean v0, p0, Lcom/kakaogame/server/ServerRequest;->isPlainTextBody:Z

    if-nez p1, :cond_0

    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/server/ServerRequest;->body:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final putAllHeader(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/server/ServerRequest;->header:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final putBody(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const v0, 0x543dc3ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 699
    iput-boolean v0, p0, Lcom/kakaogame/server/ServerRequest;->isPlainTextBody:Z

    .line 719
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/kakaogame/server/ServerRequest;->body:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final putHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const v0, 0x543dc3ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/kakaogame/server/ServerRequest;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final setIgnoreTimeout(Z)V
    .locals 0

    .line 319
    iput-boolean p1, p0, Lcom/kakaogame/server/ServerRequest;->isIgnoreTimeout:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setMethod(Ljava/lang/String;)V
    .locals 1

    const v0, 0x5d1f8767

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 189
    iput-object p1, p0, Lcom/kakaogame/server/ServerRequest;->method:Ljava/lang/String;

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setPlainTextBody(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcom/kakaogame/server/ServerRequest;->isPlainTextBody:Z

    .line 279
    iput-object p1, p0, Lcom/kakaogame/server/ServerRequest;->plainTextBody:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final setPlainTextBody(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/kakaogame/server/ServerRequest;->isPlainTextBody:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setTimeout(J)V
    .locals 0

    .line 309
    iput-wide p1, p0, Lcom/kakaogame/server/ServerRequest;->timeout:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1029
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const v1, -0x4518b62f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 1039
    iget-object v2, p0, Lcom/kakaogame/server/ServerRequest;->requestUri:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x2245446c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 1049
    iget-object v2, p0, Lcom/kakaogame/server/ServerRequest;->method:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x224d8d8c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 1059
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerRequest;->getHeader()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    iget-boolean v1, p0, Lcom/kakaogame/server/ServerRequest;->isPlainTextBody:Z

    const v2, 0x3365c943

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kakaogame/server/ServerRequest;->plainTextBody:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1079
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/server/ServerRequest;->getBody()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    :goto_0
    new-instance v1, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/kakaogame/util/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1099
    invoke-virtual {v1}, Lcom/kakaogame/util/json/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
