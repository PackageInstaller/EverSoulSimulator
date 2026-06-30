.class public final Lcom/google/api/Monitoring;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Monitoring.java"

# interfaces
.implements Lcom/google/api/MonitoringOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Monitoring$Builder;,
        Lcom/google/api/Monitoring$MonitoringDestination;,
        Lcom/google/api/Monitoring$MonitoringDestinationOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Monitoring;",
        "Lcom/google/api/Monitoring$Builder;",
        ">;",
        "Lcom/google/api/MonitoringOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONSUMER_DESTINATIONS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Monitoring;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRODUCER_DESTINATIONS_FIELD_NUMBER:I = 0x1


# instance fields
.field private consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;"
        }
    .end annotation
.end field

.field private producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1739
    new-instance v0, Lcom/google/api/Monitoring;

    invoke-direct {v0}, Lcom/google/api/Monitoring;-><init>()V

    .line 1742
    sput-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    .line 1743
    const-class v1, Lcom/google/api/Monitoring;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 53
    invoke-static {}, Lcom/google/api/Monitoring;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Monitoring;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 54
    invoke-static {}, Lcom/google/api/Monitoring;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Monitoring;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1000()Lcom/google/api/Monitoring;
    .locals 1

    .line 47
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1100(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/api/Monitoring;->setProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1200(Lcom/google/api/Monitoring;Lcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring;->addProducerDestinations(Lcom/google/api/Monitoring$MonitoringDestination;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1300(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/api/Monitoring;->addProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1400(Lcom/google/api/Monitoring;Ljava/lang/Iterable;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring;->addAllProducerDestinations(Ljava/lang/Iterable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1500(Lcom/google/api/Monitoring;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/google/api/Monitoring;->clearProducerDestinations()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1600(Lcom/google/api/Monitoring;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring;->removeProducerDestinations(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1700(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/api/Monitoring;->setConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1800(Lcom/google/api/Monitoring;Lcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring;->addConsumerDestinations(Lcom/google/api/Monitoring$MonitoringDestination;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1900(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/api/Monitoring;->addConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2000(Lcom/google/api/Monitoring;Ljava/lang/Iterable;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring;->addAllConsumerDestinations(Ljava/lang/Iterable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2100(Lcom/google/api/Monitoring;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/google/api/Monitoring;->clearConsumerDestinations()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2200(Lcom/google/api/Monitoring;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/api/Monitoring;->removeConsumerDestinations(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addAllConsumerDestinations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;)V"
        }
    .end annotation

    .line 1091
    invoke-direct {p0}, Lcom/google/api/Monitoring;->ensureConsumerDestinationsIsMutable()V

    .line 1092
    iget-object v0, p0, Lcom/google/api/Monitoring;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private addAllProducerDestinations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;)V"
        }
    .end annotation

    .line 898
    invoke-direct {p0}, Lcom/google/api/Monitoring;->ensureProducerDestinationsIsMutable()V

    .line 899
    iget-object v0, p0, Lcom/google/api/Monitoring;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private addConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 1

    .line 1073
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1074
    invoke-direct {p0}, Lcom/google/api/Monitoring;->ensureConsumerDestinationsIsMutable()V

    .line 1075
    iget-object v0, p0, Lcom/google/api/Monitoring;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addConsumerDestinations(Lcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 1

    .line 1055
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1056
    invoke-direct {p0}, Lcom/google/api/Monitoring;->ensureConsumerDestinationsIsMutable()V

    .line 1057
    iget-object v0, p0, Lcom/google/api/Monitoring;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private addProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 1

    .line 880
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 881
    invoke-direct {p0}, Lcom/google/api/Monitoring;->ensureProducerDestinationsIsMutable()V

    .line 882
    iget-object v0, p0, Lcom/google/api/Monitoring;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addProducerDestinations(Lcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 1

    .line 862
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 863
    invoke-direct {p0}, Lcom/google/api/Monitoring;->ensureProducerDestinationsIsMutable()V

    .line 864
    iget-object v0, p0, Lcom/google/api/Monitoring;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearConsumerDestinations()V
    .locals 1

    .line 1108
    invoke-static {}, Lcom/google/api/Monitoring;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Monitoring;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearProducerDestinations()V
    .locals 1

    .line 915
    invoke-static {}, Lcom/google/api/Monitoring;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Monitoring;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private ensureConsumerDestinationsIsMutable()V
    .locals 2

    .line 1017
    iget-object v0, p0, Lcom/google/api/Monitoring;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1018
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1020
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Monitoring;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private ensureProducerDestinationsIsMutable()V
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/google/api/Monitoring;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 825
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 827
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Monitoring;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/api/Monitoring;
    .locals 1

    .line 1748
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1202
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-virtual {v0}, Lcom/google/api/Monitoring;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Monitoring$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/api/Monitoring;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1205
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-virtual {v0, p0}, Lcom/google/api/Monitoring;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Monitoring;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1179
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-static {v0, p0}, Lcom/google/api/Monitoring;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1185
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-static {v0, p0, p1}, Lcom/google/api/Monitoring;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Monitoring;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1143
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1150
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Monitoring;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1190
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1197
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Monitoring;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1167
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1174
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Monitoring;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1130
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1137
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/api/Monitoring;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1155
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Monitoring;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1162
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Monitoring;

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
            "Lcom/google/api/Monitoring;",
            ">;"
        }
    .end annotation

    .line 1754
    sget-object v0, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-virtual {v0}, Lcom/google/api/Monitoring;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private removeConsumerDestinations(I)V
    .locals 1

    .line 1123
    invoke-direct {p0}, Lcom/google/api/Monitoring;->ensureConsumerDestinationsIsMutable()V

    .line 1124
    iget-object v0, p0, Lcom/google/api/Monitoring;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private removeProducerDestinations(I)V
    .locals 1

    .line 930
    invoke-direct {p0}, Lcom/google/api/Monitoring;->ensureProducerDestinationsIsMutable()V

    .line 931
    iget-object v0, p0, Lcom/google/api/Monitoring;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 1

    .line 1038
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1039
    invoke-direct {p0}, Lcom/google/api/Monitoring;->ensureConsumerDestinationsIsMutable()V

    .line 1040
    iget-object v0, p0, Lcom/google/api/Monitoring;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)V
    .locals 1

    .line 845
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 846
    invoke-direct {p0}, Lcom/google/api/Monitoring;->ensureProducerDestinationsIsMutable()V

    .line 847
    iget-object v0, p0, Lcom/google/api/Monitoring;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1687
    sget-object p2, Lcom/google/api/Monitoring$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1732
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1726
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1711
    :pswitch_2
    sget-object p1, Lcom/google/api/Monitoring;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1713
    const-class p2, Lcom/google/api/Monitoring;

    monitor-enter p2

    .line 1714
    :try_start_0
    sget-object p1, Lcom/google/api/Monitoring;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1716
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1719
    sput-object p1, Lcom/google/api/Monitoring;->PARSER:Lcom/google/protobuf/Parser;

    .line 1721
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

    .line 1708
    :pswitch_3
    sget-object p1, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "producerDestinations_"

    aput-object v0, p1, p3

    .line 1695
    const-class p3, Lcom/google/api/Monitoring$MonitoringDestination;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "consumerDestinations_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/api/Monitoring$MonitoringDestination;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001\u001b\u0002\u001b"

    .line 1704
    sget-object p3, Lcom/google/api/Monitoring;->DEFAULT_INSTANCE:Lcom/google/api/Monitoring;

    invoke-static {p3, p2, p1}, Lcom/google/api/Monitoring;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1692
    :pswitch_5
    new-instance p1, Lcom/google/api/Monitoring$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/Monitoring$Builder;-><init>(Lcom/google/api/Monitoring$1;)V

    return-object p1

    .line 1689
    :pswitch_6
    new-instance p1, Lcom/google/api/Monitoring;

    invoke-direct {p1}, Lcom/google/api/Monitoring;-><init>()V

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

.method public getConsumerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/google/api/Monitoring;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getConsumerDestinationsCount()I
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/google/api/Monitoring;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getConsumerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;"
        }
    .end annotation

    .line 950
    iget-object v0, p0, Lcom/google/api/Monitoring;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getConsumerDestinationsOrBuilder(I)Lcom/google/api/Monitoring$MonitoringDestinationOrBuilder;
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/google/api/Monitoring;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Monitoring$MonitoringDestinationOrBuilder;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getConsumerDestinationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/Monitoring$MonitoringDestinationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 966
    iget-object v0, p0, Lcom/google/api/Monitoring;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProducerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/google/api/Monitoring;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Monitoring$MonitoringDestination;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getProducerDestinationsCount()I
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/google/api/Monitoring;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProducerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/google/api/Monitoring;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProducerDestinationsOrBuilder(I)Lcom/google/api/Monitoring$MonitoringDestinationOrBuilder;
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/google/api/Monitoring;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Monitoring$MonitoringDestinationOrBuilder;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getProducerDestinationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/Monitoring$MonitoringDestinationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/google/api/Monitoring;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
