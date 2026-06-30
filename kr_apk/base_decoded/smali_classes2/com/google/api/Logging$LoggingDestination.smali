.class public final Lcom/google/api/Logging$LoggingDestination;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Logging.java"

# interfaces
.implements Lcom/google/api/Logging$LoggingDestinationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoggingDestination"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Logging$LoggingDestination$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Logging$LoggingDestination;",
        "Lcom/google/api/Logging$LoggingDestination$Builder;",
        ">;",
        "Lcom/google/api/Logging$LoggingDestinationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

.field public static final LOGS_FIELD_NUMBER:I = 0x1

.field public static final MONITORED_RESOURCE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private logs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private monitoredResource_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 758
    new-instance v0, Lcom/google/api/Logging$LoggingDestination;

    invoke-direct {v0}, Lcom/google/api/Logging$LoggingDestination;-><init>()V

    .line 761
    sput-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    .line 762
    const-class v1, Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 141
    iput-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->monitoredResource_:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/api/Logging$LoggingDestination;
    .locals 1

    .line 135
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/api/Logging$LoggingDestination;Ljava/lang/String;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/api/Logging$LoggingDestination;->setMonitoredResource(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/api/Logging$LoggingDestination;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/google/api/Logging$LoggingDestination;->clearMonitoredResource()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/api/Logging$LoggingDestination;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/api/Logging$LoggingDestination;->setMonitoredResourceBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/api/Logging$LoggingDestination;ILjava/lang/String;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/google/api/Logging$LoggingDestination;->setLogs(ILjava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/api/Logging$LoggingDestination;Ljava/lang/String;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/api/Logging$LoggingDestination;->addLogs(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/api/Logging$LoggingDestination;Ljava/lang/Iterable;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/api/Logging$LoggingDestination;->addAllLogs(Ljava/lang/Iterable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$700(Lcom/google/api/Logging$LoggingDestination;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/google/api/Logging$LoggingDestination;->clearLogs()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$800(Lcom/google/api/Logging$LoggingDestination;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/api/Logging$LoggingDestination;->addLogsBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addAllLogs(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 337
    invoke-direct {p0}, Lcom/google/api/Logging$LoggingDestination;->ensureLogsIsMutable()V

    .line 338
    iget-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private addLogs(Ljava/lang/String;)V
    .locals 1

    .line 320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    invoke-direct {p0}, Lcom/google/api/Logging$LoggingDestination;->ensureLogsIsMutable()V

    .line 322
    iget-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private addLogsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 367
    invoke-static {p1}, Lcom/google/api/Logging$LoggingDestination;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 368
    invoke-direct {p0}, Lcom/google/api/Logging$LoggingDestination;->ensureLogsIsMutable()V

    .line 369
    iget-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearLogs()V
    .locals 1

    .line 352
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearMonitoredResource()V
    .locals 1

    .line 198
    invoke-static {}, Lcom/google/api/Logging$LoggingDestination;->getDefaultInstance()Lcom/google/api/Logging$LoggingDestination;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Logging$LoggingDestination;->getMonitoredResource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->monitoredResource_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private ensureLogsIsMutable()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 284
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/api/Logging$LoggingDestination;
    .locals 1

    .line 767
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/api/Logging$LoggingDestination$Builder;
    .locals 1

    .line 447
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-virtual {v0}, Lcom/google/api/Logging$LoggingDestination;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging$LoggingDestination$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$LoggingDestination$Builder;
    .locals 1

    .line 450
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-virtual {v0, p0}, Lcom/google/api/Logging$LoggingDestination;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging$LoggingDestination$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p0}, Lcom/google/api/Logging$LoggingDestination;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging$LoggingDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p0, p1}, Lcom/google/api/Logging$LoggingDestination;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging$LoggingDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 388
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging$LoggingDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 395
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging$LoggingDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging$LoggingDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging$LoggingDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging$LoggingDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging$LoggingDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging$LoggingDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging$LoggingDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 400
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging$LoggingDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 407
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging$LoggingDestination;

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
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation

    .line 773
    sget-object v0, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-virtual {v0}, Lcom/google/api/Logging$LoggingDestination;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setLogs(ILjava/lang/String;)V
    .locals 1

    .line 303
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    invoke-direct {p0}, Lcom/google/api/Logging$LoggingDestination;->ensureLogsIsMutable()V

    .line 305
    iget-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setMonitoredResource(Ljava/lang/String;)V
    .locals 0

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    iput-object p1, p0, Lcom/google/api/Logging$LoggingDestination;->monitoredResource_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setMonitoredResourceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 211
    invoke-static {p1}, Lcom/google/api/Logging$LoggingDestination;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 212
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Logging$LoggingDestination;->monitoredResource_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 708
    sget-object p2, Lcom/google/api/Logging$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 751
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 745
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 730
    :pswitch_2
    sget-object p1, Lcom/google/api/Logging$LoggingDestination;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 732
    const-class p2, Lcom/google/api/Logging$LoggingDestination;

    monitor-enter p2

    .line 733
    :try_start_0
    sget-object p1, Lcom/google/api/Logging$LoggingDestination;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 735
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 738
    sput-object p1, Lcom/google/api/Logging$LoggingDestination;->PARSER:Lcom/google/protobuf/Parser;

    .line 740
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

    .line 727
    :pswitch_3
    sget-object p1, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "logs_"

    aput-object v0, p1, p3

    const-string p3, "monitoredResource_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0001\u0000\u0001\u021a\u0003\u0208"

    .line 723
    sget-object p3, Lcom/google/api/Logging$LoggingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Logging$LoggingDestination;

    invoke-static {p3, p2, p1}, Lcom/google/api/Logging$LoggingDestination;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 713
    :pswitch_5
    new-instance p1, Lcom/google/api/Logging$LoggingDestination$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/Logging$LoggingDestination$Builder;-><init>(Lcom/google/api/Logging$1;)V

    return-object p1

    .line 710
    :pswitch_6
    new-instance p1, Lcom/google/api/Logging$LoggingDestination;

    invoke-direct {p1}, Lcom/google/api/Logging$LoggingDestination;-><init>()V

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

.method public getLogs(I)Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getLogsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 280
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 279
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getLogsCount()I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLogsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMonitoredResource()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->monitoredResource_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMonitoredResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/api/Logging$LoggingDestination;->monitoredResource_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
