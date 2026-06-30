.class public final Lcom/google/api/SystemParameter;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SystemParameter.java"

# interfaces
.implements Lcom/google/api/SystemParameterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/SystemParameter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/SystemParameter;",
        "Lcom/google/api/SystemParameter$Builder;",
        ">;",
        "Lcom/google/api/SystemParameterOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

.field public static final HTTP_HEADER_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/SystemParameter;",
            ">;"
        }
    .end annotation
.end field

.field public static final URL_QUERY_PARAMETER_FIELD_NUMBER:I = 0x3


# instance fields
.field private httpHeader_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private urlQueryParameter_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 612
    new-instance v0, Lcom/google/api/SystemParameter;

    invoke-direct {v0}, Lcom/google/api/SystemParameter;-><init>()V

    .line 615
    sput-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    .line 616
    const-class v1, Lcom/google/api/SystemParameter;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/api/SystemParameter;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/api/SystemParameter;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setName(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/api/SystemParameter;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/SystemParameter;->clearName()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/api/SystemParameter;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/api/SystemParameter;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setHttpHeader(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/api/SystemParameter;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/SystemParameter;->clearHttpHeader()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/api/SystemParameter;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setHttpHeaderBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$700(Lcom/google/api/SystemParameter;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setUrlQueryParameter(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$800(Lcom/google/api/SystemParameter;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/SystemParameter;->clearUrlQueryParameter()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$900(Lcom/google/api/SystemParameter;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setUrlQueryParameterBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearHttpHeader()V
    .locals 1

    .line 146
    invoke-static {}, Lcom/google/api/SystemParameter;->getDefaultInstance()Lcom/google/api/SystemParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/SystemParameter;->getHttpHeader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearName()V
    .locals 1

    .line 75
    invoke-static {}, Lcom/google/api/SystemParameter;->getDefaultInstance()Lcom/google/api/SystemParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/SystemParameter;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearUrlQueryParameter()V
    .locals 1

    .line 218
    invoke-static {}, Lcom/google/api/SystemParameter;->getDefaultInstance()Lcom/google/api/SystemParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/SystemParameter;->getUrlQueryParameter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/api/SystemParameter;
    .locals 1

    .line 621
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/api/SystemParameter$Builder;
    .locals 1

    .line 311
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-virtual {v0}, Lcom/google/api/SystemParameter;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/api/SystemParameter;)Lcom/google/api/SystemParameter$Builder;
    .locals 1

    .line 314
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-virtual {v0, p0}, Lcom/google/api/SystemParameter;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/api/SystemParameter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/api/SystemParameter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 239
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

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
            "Lcom/google/api/SystemParameter;",
            ">;"
        }
    .end annotation

    .line 627
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-virtual {v0}, Lcom/google/api/SystemParameter;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setHttpHeader(Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    iput-object p1, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setHttpHeaderBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 159
    invoke-static {p1}, Lcom/google/api/SystemParameter;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 160
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    iput-object p1, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 87
    invoke-static {p1}, Lcom/google/api/SystemParameter;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 88
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setUrlQueryParameter(Ljava/lang/String;)V
    .locals 0

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    iput-object p1, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setUrlQueryParameterBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 231
    invoke-static {p1}, Lcom/google/api/SystemParameter;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 232
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 561
    sget-object p2, Lcom/google/api/SystemParameter$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 605
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 599
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 584
    :pswitch_2
    sget-object p1, Lcom/google/api/SystemParameter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 586
    const-class p2, Lcom/google/api/SystemParameter;

    monitor-enter p2

    .line 587
    :try_start_0
    sget-object p1, Lcom/google/api/SystemParameter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 589
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 592
    sput-object p1, Lcom/google/api/SystemParameter;->PARSER:Lcom/google/protobuf/Parser;

    .line 594
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

    .line 581
    :pswitch_3
    sget-object p1, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const-string p3, "httpHeader_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "urlQueryParameter_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208"

    .line 577
    sget-object p3, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {p3, p2, p1}, Lcom/google/api/SystemParameter;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 566
    :pswitch_5
    new-instance p1, Lcom/google/api/SystemParameter$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/SystemParameter$Builder;-><init>(Lcom/google/api/SystemParameter$1;)V

    return-object p1

    .line 563
    :pswitch_6
    new-instance p1, Lcom/google/api/SystemParameter;

    invoke-direct {p1}, Lcom/google/api/SystemParameter;-><init>()V

    return-object p1

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

.method public getHttpHeader()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHttpHeaderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUrlQueryParameter()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUrlQueryParameterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
