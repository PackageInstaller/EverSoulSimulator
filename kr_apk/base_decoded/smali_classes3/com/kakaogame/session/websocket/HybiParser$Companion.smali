.class public final Lcom/kakaogame/session/websocket/HybiParser$Companion;
.super Ljava/lang/Object;
.source "HybiParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/session/websocket/HybiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHybiParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HybiParser.kt\ncom/kakaogame/session/websocket/HybiParser$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,370:1\n1#2:371\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u0007H\u0002J \u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0007H\u0002J \u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/kakaogame/session/websocket/HybiParser$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "BYTE",
        "",
        "FIN",
        "MASK",
        "RSV1",
        "RSV2",
        "RSV3",
        "OPCODE",
        "LENGTH",
        "MODE_TEXT",
        "MODE_BINARY",
        "OP_CONTINUATION",
        "OP_TEXT",
        "OP_BINARY",
        "OP_CLOSE",
        "OP_PING",
        "OP_PONG",
        "OPCODES",
        "",
        "FRAGMENTED_OPCODES",
        "mask",
        "",
        "payload",
        "offset",
        "copyOfRange",
        "original",
        "start",
        "end",
        "byteArrayToLong",
        "",
        "b",
        "length",
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

    .line 2929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/session/websocket/HybiParser$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$byteArrayToLong(Lcom/kakaogame/session/websocket/HybiParser$Companion;[BII)J
    .locals 0

    .line 2929
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/session/websocket/HybiParser$Companion;->byteArrayToLong([BII)J

    move-result-wide p0

    return-wide p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$copyOfRange(Lcom/kakaogame/session/websocket/HybiParser$Companion;[BII)[B
    .locals 0

    .line 2929
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/session/websocket/HybiParser$Companion;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$mask(Lcom/kakaogame/session/websocket/HybiParser$Companion;[B[BI)[B
    .locals 0

    .line 2929
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/session/websocket/HybiParser$Companion;->mask([B[BI)[B

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final byteArrayToLong([BII)J
    .locals 6

    .line 3619
    array-length v0, p1

    const/4 v1, 0x0

    if-lt v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const-wide/16 v2, 0x0

    :goto_1
    if-ge v1, p3, :cond_1

    add-int/lit8 v0, p3, -0x1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    add-int v4, v1, p2

    .line 3659
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int v0, v4, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-wide v2

    .line 3619
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length must be less than or equal to b.length"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method private final copyOfRange([BII)[B
    .locals 2

    const/4 v0, 0x0

    if-gt p2, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 3499
    array-length v1, p1

    if-ltz p2, :cond_1

    if-gt p2, v1, :cond_1

    sub-int/2addr p3, p2

    sub-int/2addr v1, p2

    .line 3549
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3559
    new-array p3, p3, [B

    .line 3569
    invoke-static {p1, p2, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3

    .line 3519
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3489
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final mask([B[BI)[B
    .locals 5

    .line 3239
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object p1

    .line 3249
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p3

    :goto_1
    if-ge v1, v0, :cond_2

    add-int v2, p3, v1

    .line 3259
    aget-byte v3, p1, v2

    rem-int/lit8 v4, v1, 0x4

    aget-byte v4, p2, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    .array-data 1
    .end array-data
.end method
