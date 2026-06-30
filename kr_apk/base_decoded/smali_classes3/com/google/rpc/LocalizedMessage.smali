.class public final Lcom/google/rpc/LocalizedMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocalizedMessage.java"

# interfaces
.implements Lcom/google/rpc/LocalizedMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/LocalizedMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/LocalizedMessage;",
        "Lcom/google/rpc/LocalizedMessage$Builder;",
        ">;",
        "Lcom/google/rpc/LocalizedMessageOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

.field public static final LOCALE_FIELD_NUMBER:I = 0x1

.field public static final MESSAGE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/LocalizedMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private locale_:Ljava/lang/String;

.field private message_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 472
    new-instance v0, Lcom/google/rpc/LocalizedMessage;

    invoke-direct {v0}, Lcom/google/rpc/LocalizedMessage;-><init>()V

    .line 475
    sput-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    .line 476
    const-class v1, Lcom/google/rpc/LocalizedMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/google/rpc/LocalizedMessage;->locale_:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/google/rpc/LocalizedMessage;->message_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/rpc/LocalizedMessage;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/rpc/LocalizedMessage;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/rpc/LocalizedMessage;->setLocale(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/rpc/LocalizedMessage;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/rpc/LocalizedMessage;->clearLocale()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/rpc/LocalizedMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/rpc/LocalizedMessage;->setLocaleBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/rpc/LocalizedMessage;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/rpc/LocalizedMessage;->setMessage(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/rpc/LocalizedMessage;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/rpc/LocalizedMessage;->clearMessage()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/rpc/LocalizedMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/rpc/LocalizedMessage;->setMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearLocale()V
    .locals 1

    .line 81
    invoke-static {}, Lcom/google/rpc/LocalizedMessage;->getDefaultInstance()Lcom/google/rpc/LocalizedMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/LocalizedMessage;->getLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/LocalizedMessage;->locale_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearMessage()V
    .locals 1

    .line 150
    invoke-static {}, Lcom/google/rpc/LocalizedMessage;->getDefaultInstance()Lcom/google/rpc/LocalizedMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/LocalizedMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/LocalizedMessage;->message_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/rpc/LocalizedMessage;
    .locals 1

    .line 481
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/rpc/LocalizedMessage$Builder;
    .locals 1

    .line 242
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-virtual {v0}, Lcom/google/rpc/LocalizedMessage;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/LocalizedMessage$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/rpc/LocalizedMessage;)Lcom/google/rpc/LocalizedMessage$Builder;
    .locals 1

    .line 245
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-virtual {v0, p0}, Lcom/google/rpc/LocalizedMessage;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/LocalizedMessage$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/LocalizedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p0}, Lcom/google/rpc/LocalizedMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/LocalizedMessage;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/LocalizedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/LocalizedMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/LocalizedMessage;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/LocalizedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/LocalizedMessage;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/LocalizedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/LocalizedMessage;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/LocalizedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/LocalizedMessage;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/LocalizedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/LocalizedMessage;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/LocalizedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/LocalizedMessage;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/LocalizedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/LocalizedMessage;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/LocalizedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/LocalizedMessage;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/LocalizedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 177
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/LocalizedMessage;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/rpc/LocalizedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/LocalizedMessage;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/LocalizedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/LocalizedMessage;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/LocalizedMessage;",
            ">;"
        }
    .end annotation

    .line 487
    sget-object v0, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-virtual {v0}, Lcom/google/rpc/LocalizedMessage;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setLocale(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    iput-object p1, p0, Lcom/google/rpc/LocalizedMessage;->locale_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setLocaleBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 95
    invoke-static {p1}, Lcom/google/rpc/LocalizedMessage;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 96
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/LocalizedMessage;->locale_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setMessage(Ljava/lang/String;)V
    .locals 0

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    iput-object p1, p0, Lcom/google/rpc/LocalizedMessage;->message_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setMessageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 162
    invoke-static {p1}, Lcom/google/rpc/LocalizedMessage;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 163
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/LocalizedMessage;->message_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 422
    sget-object p2, Lcom/google/rpc/LocalizedMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 465
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 459
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 444
    :pswitch_2
    sget-object p1, Lcom/google/rpc/LocalizedMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 446
    const-class p2, Lcom/google/rpc/LocalizedMessage;

    monitor-enter p2

    .line 447
    :try_start_0
    sget-object p1, Lcom/google/rpc/LocalizedMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 449
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 452
    sput-object p1, Lcom/google/rpc/LocalizedMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 454
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 441
    :pswitch_3
    sget-object p1, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "locale_"

    aput-object v0, p1, p3

    const-string p3, "message_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 437
    sget-object p3, Lcom/google/rpc/LocalizedMessage;->DEFAULT_INSTANCE:Lcom/google/rpc/LocalizedMessage;

    invoke-static {p3, p2, p1}, Lcom/google/rpc/LocalizedMessage;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 427
    :pswitch_5
    new-instance p1, Lcom/google/rpc/LocalizedMessage$Builder;

    invoke-direct {p1, p3}, Lcom/google/rpc/LocalizedMessage$Builder;-><init>(Lcom/google/rpc/LocalizedMessage$1;)V

    return-object p1

    .line 424
    :pswitch_6
    new-instance p1, Lcom/google/rpc/LocalizedMessage;

    invoke-direct {p1}, Lcom/google/rpc/LocalizedMessage;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage;->locale_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage;->locale_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage;->message_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/rpc/LocalizedMessage;->message_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
