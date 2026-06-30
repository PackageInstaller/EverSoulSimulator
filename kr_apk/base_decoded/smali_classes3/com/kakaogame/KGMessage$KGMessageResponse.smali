.class public final Lcom/kakaogame/KGMessage$KGMessageResponse;
.super Ljava/lang/Object;
.source "KGMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGMessageResponse"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B-\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/kakaogame/KGMessage$KGMessageResponse;",
        "",
        "messages",
        "",
        "Lcom/kakaogame/KGMessage;",
        "nextPageKey",
        "",
        "maxCount",
        "",
        "totalCount",
        "<init>",
        "(Ljava/util/List;JII)V",
        "getMessages",
        "()Ljava/util/List;",
        "getNextPageKey",
        "()J",
        "getMaxCount",
        "()I",
        "getTotalCount",
        "toString",
        "",
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
.field private final maxCount:I

.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/KGMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final nextPageKey:J

.field private final totalCount:I


# direct methods
.method public constructor <init>(Ljava/util/List;JII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGMessage;",
            ">;JII)V"
        }
    .end annotation

    const v0, -0x2243fe14

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2149
    iput-object p1, p0, Lcom/kakaogame/KGMessage$KGMessageResponse;->messages:Ljava/util/List;

    .line 2219
    iput-wide p2, p0, Lcom/kakaogame/KGMessage$KGMessageResponse;->nextPageKey:J

    .line 2279
    iput p4, p0, Lcom/kakaogame/KGMessage$KGMessageResponse;->maxCount:I

    .line 2339
    iput p5, p0, Lcom/kakaogame/KGMessage$KGMessageResponse;->totalCount:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getMaxCount()I
    .locals 1

    .line 2279
    iget v0, p0, Lcom/kakaogame/KGMessage$KGMessageResponse;->maxCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGMessage;",
            ">;"
        }
    .end annotation

    .line 2149
    iget-object v0, p0, Lcom/kakaogame/KGMessage$KGMessageResponse;->messages:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getNextPageKey()J
    .locals 2

    .line 2219
    iget-wide v0, p0, Lcom/kakaogame/KGMessage$KGMessageResponse;->nextPageKey:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTotalCount()I
    .locals 1

    .line 2339
    iget v0, p0, Lcom/kakaogame/KGMessage$KGMessageResponse;->totalCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2359
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2369
    iget-object v1, p0, Lcom/kakaogame/KGMessage$KGMessageResponse;->messages:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2379
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x2243cb4c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kakaogame/KGMessage$KGMessageResponse;->messages:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const v1, -0x45186daf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 2399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2409
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x22540ac6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/kakaogame/KGMessage$KGMessageResponse;->nextPageKey:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2419
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x22540a4e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/kakaogame/KGMessage$KGMessageResponse;->maxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2429
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x5d11355f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/kakaogame/KGMessage$KGMessageResponse;->totalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2439
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x451e20f7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
