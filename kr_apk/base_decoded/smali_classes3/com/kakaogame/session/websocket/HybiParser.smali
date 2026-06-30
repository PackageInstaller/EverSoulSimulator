.class public final Lcom/kakaogame/session/websocket/HybiParser;
.super Ljava/lang/Object;
.source "HybiParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/session/websocket/HybiParser$Companion;,
        Lcom/kakaogame/session/websocket/HybiParser$HappyDataInputStream;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0000\u0018\u0000 22\u00020\u0001:\u000212B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0010\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u0011H\u0002J\u0010\u0010 \u001a\u0004\u0018\u00010\u00112\u0006\u0010\u001b\u001a\u00020!J\u0010\u0010 \u001a\u0004\u0018\u00010\u00112\u0006\u0010\u001b\u001a\u00020\u0011J\u0008\u0010\"\u001a\u0004\u0018\u00010\u0011J\"\u0010 \u001a\u0004\u0018\u00010\u00112\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020\tH\u0002J\"\u0010 \u001a\u0004\u0018\u00010\u00112\u0006\u0010\u001b\u001a\u00020!2\u0006\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020\tH\u0002J\"\u0010 \u001a\u0004\u0018\u00010\u00112\u0006\u0010\u001b\u001a\u00020\u00012\u0006\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020\tH\u0002J\u0016\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\t2\u0006\u0010\'\u001a\u00020!J\u0008\u0010(\u001a\u00020\u0017H\u0002J\u0008\u0010)\u001a\u00020\u0017H\u0002J\u0010\u0010*\u001a\u00020!2\u0006\u0010\u001f\u001a\u00020\u0011H\u0002J\u0010\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020!H\u0002J\u0010\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u0011H\u0002J\u0018\u0010/\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/kakaogame/session/websocket/HybiParser;",
        "",
        "mClient",
        "Lcom/kakaogame/session/websocket/WebSocketClient;",
        "<init>",
        "(Lcom/kakaogame/session/websocket/WebSocketClient;)V",
        "mMasking",
        "",
        "mStage",
        "",
        "mFinal",
        "mMasked",
        "mOpcode",
        "mLengthSize",
        "mLength",
        "mMode",
        "mMask",
        "",
        "mPayload",
        "mClosed",
        "mBuffer",
        "Ljava/io/ByteArrayOutputStream;",
        "start",
        "",
        "stream",
        "Lcom/kakaogame/session/websocket/HybiParser$HappyDataInputStream;",
        "parseOpcode",
        "data",
        "",
        "parseLength",
        "parseExtendedLength",
        "buffer",
        "frame",
        "",
        "framePing",
        "opcode",
        "errorCode",
        "close",
        "code",
        "reason",
        "emitFrame",
        "reset",
        "encode",
        "decode",
        "string",
        "getInteger",
        "bytes",
        "slice",
        "array",
        "HappyDataInputStream",
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
.field private static final BYTE:I = 0xff

.field public static final Companion:Lcom/kakaogame/session/websocket/HybiParser$Companion;

.field private static final FIN:I = 0x80

.field private static final FRAGMENTED_OPCODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LENGTH:I = 0x7f

.field private static final MASK:I = 0x80

.field private static final MODE_BINARY:I = 0x2

.field private static final MODE_TEXT:I = 0x1

.field private static final OPCODE:I = 0xf

.field private static final OPCODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP_BINARY:I = 0x2

.field private static final OP_CLOSE:I = 0x8

.field private static final OP_CONTINUATION:I = 0x0

.field private static final OP_PING:I = 0x9

.field private static final OP_PONG:I = 0xa

.field private static final OP_TEXT:I = 0x1

.field private static final RSV1:I = 0x40

.field private static final RSV2:I = 0x20

.field private static final RSV3:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HybiParser"


# instance fields
.field private final mBuffer:Ljava/io/ByteArrayOutputStream;

.field private final mClient:Lcom/kakaogame/session/websocket/WebSocketClient;

.field private mClosed:Z

.field private mFinal:Z

.field private mLength:I

.field private mLengthSize:I

.field private mMask:[B

.field private mMasked:Z

.field private final mMasking:Z

.field private mMode:I

.field private mOpcode:I

.field private mPayload:[B

.field private mStage:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/kakaogame/session/websocket/HybiParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/session/websocket/HybiParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/session/websocket/HybiParser;->Companion:Lcom/kakaogame/session/websocket/HybiParser$Companion;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 3119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v3, 0x1

    .line 3129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v5, 0x2

    .line 3139
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/16 v7, 0x8

    .line 3149
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v0, v8

    const/16 v7, 0x9

    .line 3159
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x4

    aput-object v7, v0, v9

    const/16 v7, 0xa

    .line 3169
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x5

    aput-object v7, v0, v9

    .line 3109
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/session/websocket/HybiParser;->OPCODES:Ljava/util/List;

    new-array v0, v8, [Ljava/lang/Integer;

    aput-object v2, v0, v1

    aput-object v4, v0, v3

    aput-object v6, v0, v5

    .line 3189
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/session/websocket/HybiParser;->FRAGMENTED_OPCODES:Ljava/util/List;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakaogame/session/websocket/WebSocketClient;)V
    .locals 1

    const v0, -0x224d20f4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mClient:Lcom/kakaogame/session/websocket/WebSocketClient;

    const/4 p1, 0x1

    .line 399
    iput-boolean p1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mMasking:Z

    const/4 p1, 0x0

    new-array v0, p1, [B

    .line 479
    iput-object v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mMask:[B

    new-array p1, p1, [B

    .line 489
    iput-object p1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mPayload:[B

    .line 509
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final decode(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 2549
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(charsetName)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2569
    new-instance v0, Ljava/lang/RuntimeException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method private final emitFrame()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1909
    sget-object v0, Lcom/kakaogame/session/websocket/HybiParser;->Companion:Lcom/kakaogame/session/websocket/HybiParser$Companion;

    iget-object v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mPayload:[B

    iget-object v2, p0, Lcom/kakaogame/session/websocket/HybiParser;->mMask:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/kakaogame/session/websocket/HybiParser$Companion;->access$mask(Lcom/kakaogame/session/websocket/HybiParser$Companion;[B[BI)[B

    move-result-object v0

    .line 1919
    iget v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mOpcode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const v5, 0x336d4d0b

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 2339
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/kakaogame/session/websocket/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 2359
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x5d1fc36f

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2279
    :pswitch_1
    array-length v1, v0

    const/16 v2, 0x7d

    if-gt v1, v2, :cond_0

    .line 2309
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x225ae34e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    iget-object v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mClient:Lcom/kakaogame/session/websocket/WebSocketClient;

    const/16 v2, 0xa

    const/4 v3, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/kakaogame/session/websocket/HybiParser;->frame([BII)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kakaogame/session/websocket/WebSocketClient;->sendFrame([B)V

    goto/16 :goto_2

    .line 2289
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    const v1, -0x4516843f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2229
    :pswitch_2
    array-length v1, v0

    if-lt v1, v4, :cond_1

    aget-byte v1, v0, v3

    mul-int/lit16 v1, v1, 0x100

    aget-byte v2, v0, v2

    add-int v3, v1, v2

    .line 2239
    :cond_1
    array-length v1, v0

    if-le v1, v4, :cond_2

    invoke-direct {p0, v0, v4}, Lcom/kakaogame/session/websocket/HybiParser;->slice([BI)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kakaogame/session/websocket/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2249
    :goto_0
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v4, 0x6d03f600

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    iget-object v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mClient:Lcom/kakaogame/session/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcom/kakaogame/session/websocket/WebSocketClient;->disconnect()V

    goto :goto_2

    .line 2159
    :cond_3
    iget-boolean v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mFinal:Z

    if-eqz v1, :cond_4

    .line 2169
    iget-object v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mClient:Lcom/kakaogame/session/websocket/WebSocketClient;

    invoke-virtual {v1, v0}, Lcom/kakaogame/session/websocket/WebSocketClient;->onMessage([B)V

    goto :goto_2

    .line 2189
    :cond_4
    iput v4, p0, Lcom/kakaogame/session/websocket/HybiParser;->mMode:I

    .line 2199
    iget-object v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    .line 2079
    :cond_5
    iget-boolean v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mFinal:Z

    if-eqz v1, :cond_6

    .line 2089
    invoke-direct {p0, v0}, Lcom/kakaogame/session/websocket/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 2099
    iget-object v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mClient:Lcom/kakaogame/session/websocket/WebSocketClient;

    invoke-virtual {v1, v0}, Lcom/kakaogame/session/websocket/WebSocketClient;->onMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 2119
    :cond_6
    iput v2, p0, Lcom/kakaogame/session/websocket/HybiParser;->mMode:I

    .line 2129
    iget-object v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    .line 1939
    :cond_7
    iget v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mMode:I

    if-eqz v1, :cond_a

    .line 1969
    iget-object v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1979
    iget-boolean v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mFinal:Z

    if-eqz v0, :cond_9

    .line 1989
    iget-object v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1999
    iget v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mMode:I

    if-ne v1, v2, :cond_8

    .line 2009
    iget-object v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mClient:Lcom/kakaogame/session/websocket/WebSocketClient;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/kakaogame/session/websocket/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kakaogame/session/websocket/WebSocketClient;->onMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 2029
    :cond_8
    iget-object v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mClient:Lcom/kakaogame/session/websocket/WebSocketClient;

    invoke-virtual {v1, v0}, Lcom/kakaogame/session/websocket/WebSocketClient;->onMessage([B)V

    .line 2049
    :goto_1
    invoke-direct {p0}, Lcom/kakaogame/session/websocket/HybiParser;->reset()V

    :cond_9
    :goto_2
    return-void

    .line 1949
    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    const v1, 0x225aed8e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method private final encode([B)Ljava/lang/String;
    .locals 2

    .line 2459
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 2469
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2489
    new-instance v0, Ljava/lang/RuntimeException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final frame(Ljava/lang/Object;II)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1319
    iget-boolean v4, v0, Lcom/kakaogame/session/websocket/HybiParser;->mClosed:Z

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1329
    :cond_0
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x225aed26

    invoke-static {v6}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x225aec16

    invoke-static {v6}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x336d4d0b

    invoke-static {v6}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/kakaogame/session/websocket/HybiParser;->decode(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    :cond_1
    const v4, 0x336d42d3

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [B

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lez v3, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v5

    .line 1359
    :goto_1
    array-length v7, v1

    add-int/2addr v7, v6

    const v8, 0xffff

    const/16 v9, 0x7d

    if-gt v7, v9, :cond_3

    move v11, v4

    goto :goto_2

    :cond_3
    if-gt v7, v8, :cond_4

    const/4 v11, 0x4

    goto :goto_2

    :cond_4
    const/16 v11, 0xa

    .line 1379
    :goto_2
    iget-boolean v12, v0, Lcom/kakaogame/session/websocket/HybiParser;->mMasking:Z

    if-eqz v12, :cond_5

    const/4 v13, 0x4

    goto :goto_3

    :cond_5
    move v13, v5

    :goto_3
    add-int/2addr v13, v11

    if-eqz v12, :cond_6

    const/16 v12, 0x80

    goto :goto_4

    :cond_6
    move v12, v5

    :goto_4
    add-int v14, v7, v13

    .line 1399
    new-array v14, v14, [B

    int-to-byte v2, v2

    or-int/lit8 v2, v2, -0x80

    int-to-byte v2, v2

    .line 1409
    aput-byte v2, v14, v5

    const/4 v2, 0x3

    const/4 v15, 0x1

    if-gt v7, v9, :cond_7

    or-int/2addr v7, v12

    int-to-byte v7, v7

    .line 1429
    aput-byte v7, v14, v15

    :goto_5
    move v12, v6

    move/from16 v16, v11

    goto/16 :goto_6

    :cond_7
    if-gt v7, v8, :cond_8

    or-int/lit8 v8, v12, 0x7e

    int-to-byte v8, v8

    .line 1449
    aput-byte v8, v14, v15

    .line 1459
    div-int/lit16 v8, v7, 0x100

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v14, v4

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 1469
    aput-byte v7, v14, v2

    goto :goto_5

    :cond_8
    or-int/lit8 v8, v12, 0x7f

    int-to-byte v8, v8

    .line 1489
    aput-byte v8, v14, v15

    int-to-double v8, v7

    move v12, v6

    const-wide/high16 v5, 0x404c000000000000L    # 56.0

    move/from16 v16, v11

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 1499
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double v5, v8, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 1509
    aput-byte v5, v14, v4

    const-wide/high16 v5, 0x4048000000000000L    # 48.0

    .line 1519
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double v5, v8, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 1529
    aput-byte v5, v14, v2

    const-wide/high16 v5, 0x4044000000000000L    # 40.0

    .line 1539
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double v5, v8, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x4

    .line 1549
    aput-byte v5, v14, v6

    const-wide/high16 v5, 0x4040000000000000L    # 32.0

    .line 1559
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double v5, v8, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x5

    .line 1569
    aput-byte v5, v14, v6

    const-wide/high16 v5, 0x4038000000000000L    # 24.0

    .line 1579
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double v5, v8, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x6

    .line 1589
    aput-byte v5, v14, v6

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    .line 1599
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double v5, v8, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x7

    .line 1609
    aput-byte v5, v14, v6

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    .line 1619
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/16 v6, 0x8

    .line 1629
    aput-byte v5, v14, v6

    and-int/lit16 v5, v7, 0xff

    int-to-byte v5, v5

    const/16 v6, 0x9

    .line 1639
    aput-byte v5, v14, v6

    :goto_6
    if-lez v3, :cond_9

    .line 1669
    div-int/lit16 v5, v3, 0x100

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 1679
    aput-byte v5, v14, v13

    add-int/lit8 v5, v13, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 1689
    aput-byte v3, v14, v5

    :cond_9
    add-int v6, v13, v12

    .line 1709
    array-length v3, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v14, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1719
    iget-boolean v1, v0, Lcom/kakaogame/session/websocket/HybiParser;->mMasking:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x4

    new-array v3, v1, [B

    .line 1739
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const/16 v1, 0x100

    int-to-double v8, v1

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    int-to-byte v1, v1

    aput-byte v1, v3, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    mul-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v1, v5

    int-to-byte v1, v1

    aput-byte v1, v3, v15

    .line 1749
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    mul-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v1, v5

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    move/from16 v4, v16

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1769
    invoke-static {v3, v2, v14, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1779
    sget-object v1, Lcom/kakaogame/session/websocket/HybiParser;->Companion:Lcom/kakaogame/session/websocket/HybiParser$Companion;

    invoke-static {v1, v14, v3, v13}, Lcom/kakaogame/session/websocket/HybiParser$Companion;->access$mask(Lcom/kakaogame/session/websocket/HybiParser$Companion;[B[BI)[B

    :cond_a
    return-object v14

    .array-data 1
    .end array-data
.end method

.method private final frame(Ljava/lang/String;II)[B
    .locals 1

    const v0, -0x4516889f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 1279
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/session/websocket/HybiParser;->frame(Ljava/lang/Object;II)[B

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final frame([BII)[B
    .locals 1

    const v0, -0x4516889f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 1239
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/session/websocket/HybiParser;->frame(Ljava/lang/Object;II)[B

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final getInteger([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 2629
    sget-object v0, Lcom/kakaogame/session/websocket/HybiParser;->Companion:Lcom/kakaogame/session/websocket/HybiParser$Companion;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p1, v1, v2}, Lcom/kakaogame/session/websocket/HybiParser$Companion;->access$byteArrayToLong(Lcom/kakaogame/session/websocket/HybiParser$Companion;[BII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    long-to-int p1, v0

    return p1

    .line 2649
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, -0x224d2824

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final parseExtendedLength([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 1069
    invoke-direct {p0, p1}, Lcom/kakaogame/session/websocket/HybiParser;->getInteger([B)I

    move-result p1

    iput p1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mLength:I

    .line 1079
    iget-boolean p1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mMasked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mStage:I

    return-void

    .array-data 1
    .end array-data
.end method

.method private final parseLength(B)V
    .locals 2

    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 949
    :goto_0
    iput-boolean v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mMasked:Z

    and-int/lit8 p1, p1, 0x7f

    .line 959
    iput p1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mLength:I

    if-ltz p1, :cond_2

    const/16 v1, 0x7d

    if-gt p1, v1, :cond_2

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    .line 979
    :goto_1
    iput p1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mStage:I

    goto :goto_3

    :cond_2
    const/16 v0, 0x7e

    const/4 v1, 0x2

    if-ne p1, v0, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    const/16 p1, 0x8

    .line 999
    :goto_2
    iput p1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mLengthSize:I

    .line 1009
    iput v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mStage:I

    :goto_3
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final parseOpcode(B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x40

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v3, p1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 v4, p1, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-nez v0, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    and-int/lit16 v0, p1, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    .line 809
    :goto_3
    iput-boolean v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mFinal:Z

    and-int/lit8 p1, p1, 0xf

    .line 819
    iput p1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mOpcode:I

    new-array v0, v2, [B

    .line 829
    iput-object v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mMask:[B

    new-array v0, v2, [B

    .line 839
    iput-object v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mPayload:[B

    .line 849
    sget-object v0, Lcom/kakaogame/session/websocket/HybiParser;->OPCODES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 879
    sget-object p1, Lcom/kakaogame/session/websocket/HybiParser;->FRAGMENTED_OPCODES:Ljava/util/List;

    iget v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mOpcode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mFinal:Z

    if-eqz p1, :cond_4

    goto :goto_4

    .line 889
    :cond_4
    new-instance p1, Ljava/net/ProtocolException;

    const v0, 0x5d1fc8ef

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 909
    :cond_5
    :goto_4
    iput v1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mStage:I

    return-void

    .line 859
    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const v0, 0x6d03ff48

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 789
    :cond_7
    new-instance p1, Ljava/net/ProtocolException;

    const v0, 0x5436e062

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 2409
    iput v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mMode:I

    .line 2419
    iget-object v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final slice([BI)[B
    .locals 2

    .line 2709
    sget-object v0, Lcom/kakaogame/session/websocket/HybiParser;->Companion:Lcom/kakaogame/session/websocket/HybiParser$Companion;

    array-length v1, p1

    invoke-static {v0, p1, p2, v1}, Lcom/kakaogame/session/websocket/HybiParser$Companion;->access$copyOfRange(Lcom/kakaogame/session/websocket/HybiParser$Companion;[BII)[B

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final close(ILjava/lang/String;)V
    .locals 2

    const v0, -0x45168c47

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1839
    iget-boolean v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mClosed:Z

    if-eqz v0, :cond_0

    return-void

    .line 1849
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mClient:Lcom/kakaogame/session/websocket/WebSocketClient;

    const/16 v1, 0x8

    invoke-direct {p0, p2, v1, p1}, Lcom/kakaogame/session/websocket/HybiParser;->frame(Ljava/lang/String;II)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kakaogame/session/websocket/WebSocketClient;->send([B)V

    const/4 p1, 0x1

    .line 1859
    iput-boolean p1, p0, Lcom/kakaogame/session/websocket/HybiParser;->mClosed:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public final frame(Ljava/lang/String;)[B
    .locals 2

    const v0, 0x7d778fe5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1119
    invoke-direct {p0, p1, v0, v1}, Lcom/kakaogame/session/websocket/HybiParser;->frame(Ljava/lang/String;II)[B

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final frame([B)[B
    .locals 2

    const v0, 0x7d778fe5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 1159
    invoke-direct {p0, p1, v0, v1}, Lcom/kakaogame/session/websocket/HybiParser;->frame([BII)[B

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final framePing()[B
    .locals 3

    const/16 v0, 0x9

    const/4 v1, -0x1

    const-string v2, ""

    .line 1199
    invoke-direct {p0, v2, v0, v1}, Lcom/kakaogame/session/websocket/HybiParser;->frame(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final start(Lcom/kakaogame/session/websocket/HybiParser$HappyDataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x5436e132

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    :goto_0
    invoke-virtual {p1}, Lcom/kakaogame/session/websocket/HybiParser$HappyDataInputStream;->available()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 559
    iget v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mStage:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 649
    :cond_0
    iget v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mLength:I

    invoke-virtual {p1, v0}, Lcom/kakaogame/session/websocket/HybiParser$HappyDataInputStream;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mPayload:[B

    .line 659
    invoke-direct {p0}, Lcom/kakaogame/session/websocket/HybiParser;->emitFrame()V

    const/4 v0, 0x0

    .line 669
    iput v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mStage:I

    goto :goto_0

    .line 609
    :cond_1
    invoke-virtual {p1, v2}, Lcom/kakaogame/session/websocket/HybiParser$HappyDataInputStream;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mMask:[B

    .line 619
    iput v2, p0, Lcom/kakaogame/session/websocket/HybiParser;->mStage:I

    goto :goto_0

    .line 589
    :cond_2
    iget v0, p0, Lcom/kakaogame/session/websocket/HybiParser;->mLengthSize:I

    invoke-virtual {p1, v0}, Lcom/kakaogame/session/websocket/HybiParser$HappyDataInputStream;->readBytes(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kakaogame/session/websocket/HybiParser;->parseExtendedLength([B)V

    goto :goto_0

    .line 579
    :cond_3
    invoke-virtual {p1}, Lcom/kakaogame/session/websocket/HybiParser$HappyDataInputStream;->readByte()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/kakaogame/session/websocket/HybiParser;->parseLength(B)V

    goto :goto_0

    .line 569
    :cond_4
    invoke-virtual {p1}, Lcom/kakaogame/session/websocket/HybiParser$HappyDataInputStream;->readByte()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/kakaogame/session/websocket/HybiParser;->parseOpcode(B)V

    goto :goto_0

    :cond_5
    return-void

    nop

    .array-data 1
    .end array-data
.end method
