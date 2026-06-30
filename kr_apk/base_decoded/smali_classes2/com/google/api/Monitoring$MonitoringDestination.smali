.class public final Lcom/google/api/Monitoring$MonitoringDestination;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Monitoring.java"

# interfaces
.implements Lcom/google/api/Monitoring$MonitoringDestinationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Monitoring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MonitoringDestination"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Monitoring$MonitoringDestination;",
        "Lcom/google/api/Monitoring$MonitoringDestination$Builder;",
        ">;",
        "Lcom/google/api/Monitoring$MonitoringDestinationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

.field public static final METRICS_FIELD_NUMBER:I = 0x2

.field public static final MONITORED_RESOURCE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private metrics_:Lcom/google/protobuf/Internal$ProtobufList;
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

    .line 722
    new-instance v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-direct {v0}, Lcom/google/api/Monitoring$MonitoringDestination;-><init>()V

    .line 725
    sput-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    .line 726
    const-class v1, Lcom/google/api/Monitoring$MonitoringDestination;

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
    iput-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->monitoredResource_:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1

    .line 135
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/api/Monitoring$MonitoringDestination;Ljava/lang/String;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->setMonitoredResource(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/google/api/Monitoring$MonitoringDestination;->clearMonitoredResource()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/api/Monitoring$MonitoringDestination;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->setMonitoredResourceBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/api/Monitoring$MonitoringDestination;ILjava/lang/String;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/google/api/Monitoring$MonitoringDestination;->setMetrics(ILjava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/api/Monitoring$MonitoringDestination;Ljava/lang/String;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->addMetrics(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/api/Monitoring$MonitoringDestination;Ljava/lang/Iterable;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->addAllMetrics(Ljava/lang/Iterable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$700(Lcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/google/api/Monitoring$MonitoringDestination;->clearMetrics()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$800(Lcom/google/api/Monitoring$MonitoringDestination;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->addMetricsBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addAllMetrics(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 323
    invoke-direct {p0}, Lcom/google/api/Monitoring$MonitoringDestination;->ensureMetricsIsMutable()V

    .line 324
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private addMetrics(Ljava/lang/String;)V
    .locals 1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    invoke-direct {p0}, Lcom/google/api/Monitoring$MonitoringDestination;->ensureMetricsIsMutable()V

    .line 310
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private addMetricsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 349
    invoke-static {p1}, Lcom/google/api/Monitoring$MonitoringDestination;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 350
    invoke-direct {p0}, Lcom/google/api/Monitoring$MonitoringDestination;->ensureMetricsIsMutable()V

    .line 351
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearMetrics()V
    .locals 1

    .line 336
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearMonitoredResource()V
    .locals 1

    .line 198
    invoke-static {}, Lcom/google/api/Monitoring$MonitoringDestination;->getDefaultInstance()Lcom/google/api/Monitoring$MonitoringDestination;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->getMonitoredResource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->monitoredResource_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private ensureMetricsIsMutable()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 276
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1

    .line 731
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1

    .line 429
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1

    .line 432
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0, p0}, Lcom/google/api/Monitoring$MonitoringDestination;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0}, Lcom/google/api/Monitoring$MonitoringDestination;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 364
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 389
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring$MonitoringDestination;

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
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;"
        }
    .end annotation

    .line 737
    sget-object v0, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setMetrics(ILjava/lang/String;)V
    .locals 1

    .line 293
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    invoke-direct {p0}, Lcom/google/api/Monitoring$MonitoringDestination;->ensureMetricsIsMutable()V

    .line 295
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

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
    iput-object p1, p0, Lcom/google/api/Monitoring$MonitoringDestination;->monitoredResource_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setMonitoredResourceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 211
    invoke-static {p1}, Lcom/google/api/Monitoring$MonitoringDestination;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 212
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Monitoring$MonitoringDestination;->monitoredResource_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 672
    sget-object p2, Lcom/google/api/Monitoring$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 715
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 709
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 694
    :pswitch_2
    sget-object p1, Lcom/google/api/Monitoring$MonitoringDestination;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 696
    const-class p2, Lcom/google/api/Monitoring$MonitoringDestination;

    monitor-enter p2

    .line 697
    :try_start_0
    sget-object p1, Lcom/google/api/Monitoring$MonitoringDestination;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 699
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 702
    sput-object p1, Lcom/google/api/Monitoring$MonitoringDestination;->PARSER:Lcom/google/protobuf/Parser;

    .line 704
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

    .line 691
    :pswitch_3
    sget-object p1, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "monitoredResource_"

    aput-object v0, p1, p3

    const-string p3, "metrics_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u021a"

    .line 687
    sget-object p3, Lcom/google/api/Monitoring$MonitoringDestination;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {p3, p2, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 677
    :pswitch_5
    new-instance p1, Lcom/google/api/Monitoring$MonitoringDestination$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;-><init>(Lcom/google/api/Monitoring$1;)V

    return-object p1

    .line 674
    :pswitch_6
    new-instance p1, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-direct {p1}, Lcom/google/api/Monitoring$MonitoringDestination;-><init>()V

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

.method public getMetrics(I)Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 272
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 271
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricsCount()I
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMonitoredResource()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->monitoredResource_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMonitoredResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination;->monitoredResource_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
