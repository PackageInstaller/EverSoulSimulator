.class public final Lcom/google/longrunning/OperationInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "OperationInfo.java"

# interfaces
.implements Lcom/google/longrunning/OperationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/longrunning/OperationInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/longrunning/OperationInfo;",
        "Lcom/google/longrunning/OperationInfo$Builder;",
        ">;",
        "Lcom/google/longrunning/OperationInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

.field public static final METADATA_TYPE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/longrunning/OperationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private metadataType_:Ljava/lang/String;

.field private responseType_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 556
    new-instance v0, Lcom/google/longrunning/OperationInfo;

    invoke-direct {v0}, Lcom/google/longrunning/OperationInfo;-><init>()V

    .line 559
    sput-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    .line 560
    const-class v1, Lcom/google/longrunning/OperationInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/google/longrunning/OperationInfo;->responseType_:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/google/longrunning/OperationInfo;->metadataType_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/longrunning/OperationInfo;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/longrunning/OperationInfo;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/longrunning/OperationInfo;->setResponseType(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/longrunning/OperationInfo;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/google/longrunning/OperationInfo;->clearResponseType()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/longrunning/OperationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/longrunning/OperationInfo;->setResponseTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/longrunning/OperationInfo;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/longrunning/OperationInfo;->setMetadataType(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/longrunning/OperationInfo;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/google/longrunning/OperationInfo;->clearMetadataType()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/longrunning/OperationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/longrunning/OperationInfo;->setMetadataTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearMetadataType()V
    .locals 1

    .line 188
    invoke-static {}, Lcom/google/longrunning/OperationInfo;->getDefaultInstance()Lcom/google/longrunning/OperationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/longrunning/OperationInfo;->getMetadataType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/OperationInfo;->metadataType_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearResponseType()V
    .locals 1

    .line 100
    invoke-static {}, Lcom/google/longrunning/OperationInfo;->getDefaultInstance()Lcom/google/longrunning/OperationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/longrunning/OperationInfo;->getResponseType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/OperationInfo;->responseType_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/longrunning/OperationInfo;
    .locals 1

    .line 565
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/longrunning/OperationInfo$Builder;
    .locals 1

    .line 284
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-virtual {v0}, Lcom/google/longrunning/OperationInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/OperationInfo$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/longrunning/OperationInfo;)Lcom/google/longrunning/OperationInfo$Builder;
    .locals 1

    .line 287
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-virtual {v0, p0}, Lcom/google/longrunning/OperationInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/OperationInfo$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/longrunning/OperationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p0}, Lcom/google/longrunning/OperationInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/OperationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/OperationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/longrunning/OperationInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/OperationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/OperationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/OperationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/OperationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/OperationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/longrunning/OperationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/OperationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/OperationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/OperationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/longrunning/OperationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/OperationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/OperationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/OperationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/longrunning/OperationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/OperationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/OperationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/OperationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/longrunning/OperationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/OperationInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/OperationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/OperationInfo;

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
            "Lcom/google/longrunning/OperationInfo;",
            ">;"
        }
    .end annotation

    .line 571
    sget-object v0, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-virtual {v0}, Lcom/google/longrunning/OperationInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setMetadataType(Ljava/lang/String;)V
    .locals 0

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    iput-object p1, p0, Lcom/google/longrunning/OperationInfo;->metadataType_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setMetadataTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 204
    invoke-static {p1}, Lcom/google/longrunning/OperationInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 205
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/longrunning/OperationInfo;->metadataType_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setResponseType(Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    iput-object p1, p0, Lcom/google/longrunning/OperationInfo;->responseType_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setResponseTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 117
    invoke-static {p1}, Lcom/google/longrunning/OperationInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 118
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/longrunning/OperationInfo;->responseType_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 506
    sget-object p2, Lcom/google/longrunning/OperationInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 549
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 543
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 528
    :pswitch_2
    sget-object p1, Lcom/google/longrunning/OperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 530
    const-class p2, Lcom/google/longrunning/OperationInfo;

    monitor-enter p2

    .line 531
    :try_start_0
    sget-object p1, Lcom/google/longrunning/OperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 533
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 536
    sput-object p1, Lcom/google/longrunning/OperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 538
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

    .line 525
    :pswitch_3
    sget-object p1, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "responseType_"

    aput-object v0, p1, p3

    const-string p3, "metadataType_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 521
    sget-object p3, Lcom/google/longrunning/OperationInfo;->DEFAULT_INSTANCE:Lcom/google/longrunning/OperationInfo;

    invoke-static {p3, p2, p1}, Lcom/google/longrunning/OperationInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 511
    :pswitch_5
    new-instance p1, Lcom/google/longrunning/OperationInfo$Builder;

    invoke-direct {p1, p3}, Lcom/google/longrunning/OperationInfo$Builder;-><init>(Lcom/google/longrunning/OperationInfo$1;)V

    return-object p1

    .line 508
    :pswitch_6
    new-instance p1, Lcom/google/longrunning/OperationInfo;

    invoke-direct {p1}, Lcom/google/longrunning/OperationInfo;-><init>()V

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

.method public getMetadataType()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo;->metadataType_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetadataTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo;->metadataType_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseType()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo;->responseType_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo;->responseType_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
