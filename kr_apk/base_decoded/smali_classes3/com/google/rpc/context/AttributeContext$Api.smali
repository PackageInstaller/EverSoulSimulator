.class public final Lcom/google/rpc/context/AttributeContext$Api;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$ApiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/context/AttributeContext$Api$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/context/AttributeContext$Api;",
        "Lcom/google/rpc/context/AttributeContext$Api$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$ApiOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

.field public static final OPERATION_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/context/AttributeContext$Api;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_FIELD_NUMBER:I = 0x3

.field public static final SERVICE_FIELD_NUMBER:I = 0x1

.field public static final VERSION_FIELD_NUMBER:I = 0x4


# instance fields
.field private operation_:Ljava/lang/String;

.field private protocol_:Ljava/lang/String;

.field private service_:Ljava/lang/String;

.field private version_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2015
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-direct {v0}, Lcom/google/rpc/context/AttributeContext$Api;-><init>()V

    .line 2018
    sput-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    .line 2019
    const-class v1, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 1245
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1246
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->service_:Ljava/lang/String;

    .line 1247
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->operation_:Ljava/lang/String;

    .line 1248
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->protocol_:Ljava/lang/String;

    .line 1249
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->version_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1400()Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1

    .line 1240
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1500(Lcom/google/rpc/context/AttributeContext$Api;Ljava/lang/String;)V
    .locals 0

    .line 1240
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->setService(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1600(Lcom/google/rpc/context/AttributeContext$Api;)V
    .locals 0

    .line 1240
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Api;->clearService()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1700(Lcom/google/rpc/context/AttributeContext$Api;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1240
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->setServiceBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1800(Lcom/google/rpc/context/AttributeContext$Api;Ljava/lang/String;)V
    .locals 0

    .line 1240
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->setOperation(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1900(Lcom/google/rpc/context/AttributeContext$Api;)V
    .locals 0

    .line 1240
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Api;->clearOperation()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2000(Lcom/google/rpc/context/AttributeContext$Api;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1240
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->setOperationBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2100(Lcom/google/rpc/context/AttributeContext$Api;Ljava/lang/String;)V
    .locals 0

    .line 1240
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->setProtocol(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2200(Lcom/google/rpc/context/AttributeContext$Api;)V
    .locals 0

    .line 1240
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Api;->clearProtocol()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2300(Lcom/google/rpc/context/AttributeContext$Api;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1240
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->setProtocolBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2400(Lcom/google/rpc/context/AttributeContext$Api;Ljava/lang/String;)V
    .locals 0

    .line 1240
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->setVersion(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2500(Lcom/google/rpc/context/AttributeContext$Api;)V
    .locals 0

    .line 1240
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Api;->clearVersion()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2600(Lcom/google/rpc/context/AttributeContext$Api;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1240
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->setVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearOperation()V
    .locals 1

    .line 1386
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Api;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Api;->getOperation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->operation_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearProtocol()V
    .locals 1

    .line 1459
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Api;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Api;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->protocol_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearService()V
    .locals 1

    .line 1309
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Api;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Api;->getService()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->service_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearVersion()V
    .locals 1

    .line 1531
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Api;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Api;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->version_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1

    .line 2024
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/rpc/context/AttributeContext$Api$Builder;
    .locals 1

    .line 1624
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Api;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Api$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/rpc/context/AttributeContext$Api;)Lcom/google/rpc/context/AttributeContext$Api$Builder;
    .locals 1

    .line 1627
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-virtual {v0, p0}, Lcom/google/rpc/context/AttributeContext$Api;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Api$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1601
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p0}, Lcom/google/rpc/context/AttributeContext$Api;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Api;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1607
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/context/AttributeContext$Api;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Api;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1565
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Api;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1572
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Api;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1612
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Api;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1619
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Api;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1589
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Api;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1596
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Api;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1552
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Api;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1559
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Api;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1577
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Api;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1584
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Api;

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
            "Lcom/google/rpc/context/AttributeContext$Api;",
            ">;"
        }
    .end annotation

    .line 2030
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Api;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setOperation(Ljava/lang/String;)V
    .locals 0

    .line 1371
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1373
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Api;->operation_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setOperationBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1400
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Api;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1401
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Api;->operation_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 1445
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1447
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Api;->protocol_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setProtocolBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1472
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Api;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1473
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Api;->protocol_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setService(Ljava/lang/String;)V
    .locals 0

    .line 1294
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1296
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Api;->service_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setServiceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1323
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Api;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1324
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Api;->service_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1517
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1519
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Api;->version_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1544
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Api;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1545
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Api;->version_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1963
    sget-object p2, Lcom/google/rpc/context/AttributeContext$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2008
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2002
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1987
    :pswitch_2
    sget-object p1, Lcom/google/rpc/context/AttributeContext$Api;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1989
    const-class p2, Lcom/google/rpc/context/AttributeContext$Api;

    monitor-enter p2

    .line 1990
    :try_start_0
    sget-object p1, Lcom/google/rpc/context/AttributeContext$Api;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1992
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1995
    sput-object p1, Lcom/google/rpc/context/AttributeContext$Api;->PARSER:Lcom/google/protobuf/Parser;

    .line 1997
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

    .line 1984
    :pswitch_3
    sget-object p1, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "service_"

    aput-object v0, p1, p3

    const-string p3, "operation_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "protocol_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "version_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208"

    .line 1980
    sget-object p3, Lcom/google/rpc/context/AttributeContext$Api;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {p3, p2, p1}, Lcom/google/rpc/context/AttributeContext$Api;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1968
    :pswitch_5
    new-instance p1, Lcom/google/rpc/context/AttributeContext$Api$Builder;

    invoke-direct {p1, p3}, Lcom/google/rpc/context/AttributeContext$Api$Builder;-><init>(Lcom/google/rpc/context/AttributeContext$1;)V

    return-object p1

    .line 1965
    :pswitch_6
    new-instance p1, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-direct {p1}, Lcom/google/rpc/context/AttributeContext$Api;-><init>()V

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

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 1342
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->operation_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOperationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1357
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->operation_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 1418
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->protocol_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1432
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->protocol_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .line 1265
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->service_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getServiceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->service_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->version_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1504
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Api;->version_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
