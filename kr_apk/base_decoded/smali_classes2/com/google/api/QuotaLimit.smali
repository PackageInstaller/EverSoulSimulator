.class public final Lcom/google/api/QuotaLimit;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "QuotaLimit.java"

# interfaces
.implements Lcom/google/api/QuotaLimitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/QuotaLimit$Builder;,
        Lcom/google/api/QuotaLimit$ValuesDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/QuotaLimit;",
        "Lcom/google/api/QuotaLimit$Builder;",
        ">;",
        "Lcom/google/api/QuotaLimitOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

.field public static final DEFAULT_LIMIT_FIELD_NUMBER:I = 0x3

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0xc

.field public static final DURATION_FIELD_NUMBER:I = 0x5

.field public static final FREE_TIER_FIELD_NUMBER:I = 0x7

.field public static final MAX_LIMIT_FIELD_NUMBER:I = 0x4

.field public static final METRIC_FIELD_NUMBER:I = 0x8

.field public static final NAME_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/QuotaLimit;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNIT_FIELD_NUMBER:I = 0x9

.field public static final VALUES_FIELD_NUMBER:I = 0xa


# instance fields
.field private defaultLimit_:J

.field private description_:Ljava/lang/String;

.field private displayName_:Ljava/lang/String;

.field private duration_:Ljava/lang/String;

.field private freeTier_:J

.field private maxLimit_:J

.field private metric_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private unit_:Ljava/lang/String;

.field private values_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1822
    new-instance v0, Lcom/google/api/QuotaLimit;

    invoke-direct {v0}, Lcom/google/api/QuotaLimit;-><init>()V

    .line 1825
    sput-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    .line 1826
    const-class v1, Lcom/google/api/QuotaLimit;

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

    .line 632
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->values_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/google/api/QuotaLimit;->name_:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/api/QuotaLimit;->description_:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/api/QuotaLimit;->duration_:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/google/api/QuotaLimit;->metric_:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/google/api/QuotaLimit;->unit_:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/google/api/QuotaLimit;->displayName_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/api/QuotaLimit;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setName(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1000(Lcom/google/api/QuotaLimit;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearMaxLimit()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1100(Lcom/google/api/QuotaLimit;J)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/api/QuotaLimit;->setFreeTier(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1200(Lcom/google/api/QuotaLimit;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearFreeTier()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1300(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setDuration(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1400(Lcom/google/api/QuotaLimit;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearDuration()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1500(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setDurationBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1600(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setMetric(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1700(Lcom/google/api/QuotaLimit;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearMetric()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1800(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setMetricBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1900(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setUnit(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/api/QuotaLimit;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearName()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2000(Lcom/google/api/QuotaLimit;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearUnit()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2100(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setUnitBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2200(Lcom/google/api/QuotaLimit;)Ljava/util/Map;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->getMutableValuesMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2300(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setDisplayName(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2400(Lcom/google/api/QuotaLimit;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearDisplayName()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2500(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setDisplayNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setDescription(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/api/QuotaLimit;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearDescription()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$700(Lcom/google/api/QuotaLimit;J)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/api/QuotaLimit;->setDefaultLimit(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$800(Lcom/google/api/QuotaLimit;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearDefaultLimit()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$900(Lcom/google/api/QuotaLimit;J)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/api/QuotaLimit;->setMaxLimit(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearDefaultLimit()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 243
    iput-wide v0, p0, Lcom/google/api/QuotaLimit;->defaultLimit_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearDescription()V
    .locals 1

    .line 168
    invoke-static {}, Lcom/google/api/QuotaLimit;->getDefaultInstance()Lcom/google/api/QuotaLimit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->description_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearDisplayName()V
    .locals 1

    .line 804
    invoke-static {}, Lcom/google/api/QuotaLimit;->getDefaultInstance()Lcom/google/api/QuotaLimit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->displayName_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearDuration()V
    .locals 1

    .line 424
    invoke-static {}, Lcom/google/api/QuotaLimit;->getDefaultInstance()Lcom/google/api/QuotaLimit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getDuration()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->duration_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearFreeTier()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 355
    iput-wide v0, p0, Lcom/google/api/QuotaLimit;->freeTier_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearMaxLimit()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 299
    iput-wide v0, p0, Lcom/google/api/QuotaLimit;->maxLimit_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearMetric()V
    .locals 1

    .line 503
    invoke-static {}, Lcom/google/api/QuotaLimit;->getDefaultInstance()Lcom/google/api/QuotaLimit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getMetric()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->metric_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearName()V
    .locals 1

    .line 90
    invoke-static {}, Lcom/google/api/QuotaLimit;->getDefaultInstance()Lcom/google/api/QuotaLimit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->name_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearUnit()V
    .locals 1

    .line 596
    invoke-static {}, Lcom/google/api/QuotaLimit;->getDefaultInstance()Lcom/google/api/QuotaLimit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getUnit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->unit_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/api/QuotaLimit;
    .locals 1

    .line 1831
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private getMutableValuesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 739
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->internalGetMutableValues()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private internalGetMutableValues()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->values_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->values_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->values_:Lcom/google/protobuf/MapFieldLite;

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->values_:Lcom/google/protobuf/MapFieldLite;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private internalGetValues()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->values_:Lcom/google/protobuf/MapFieldLite;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 899
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/api/QuotaLimit;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 902
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-virtual {v0, p0}, Lcom/google/api/QuotaLimit;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/QuotaLimit$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/QuotaLimit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0}, Lcom/google/api/QuotaLimit;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/QuotaLimit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/QuotaLimit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 882
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0, p1}, Lcom/google/api/QuotaLimit;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/QuotaLimit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/QuotaLimit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 840
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/QuotaLimit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/QuotaLimit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 847
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/QuotaLimit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/QuotaLimit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/QuotaLimit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/QuotaLimit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 894
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/QuotaLimit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/QuotaLimit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/QuotaLimit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/QuotaLimit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/QuotaLimit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/QuotaLimit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 827
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/QuotaLimit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/QuotaLimit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 834
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/QuotaLimit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/api/QuotaLimit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 852
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/QuotaLimit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/QuotaLimit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 859
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/QuotaLimit;

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
            "Lcom/google/api/QuotaLimit;",
            ">;"
        }
    .end annotation

    .line 1837
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private setDefaultLimit(J)V
    .locals 0

    .line 225
    iput-wide p1, p0, Lcom/google/api/QuotaLimit;->defaultLimit_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    iput-object p1, p0, Lcom/google/api/QuotaLimit;->description_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 182
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 183
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/QuotaLimit;->description_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 788
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 790
    iput-object p1, p0, Lcom/google/api/QuotaLimit;->displayName_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setDisplayNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 819
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 820
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/QuotaLimit;->displayName_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setDuration(Ljava/lang/String;)V
    .locals 0

    .line 407
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    iput-object p1, p0, Lcom/google/api/QuotaLimit;->duration_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setDurationBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 440
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 441
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/QuotaLimit;->duration_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setFreeTier(J)V
    .locals 0

    .line 338
    iput-wide p1, p0, Lcom/google/api/QuotaLimit;->freeTier_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setMaxLimit(J)V
    .locals 0

    .line 282
    iput-wide p1, p0, Lcom/google/api/QuotaLimit;->maxLimit_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setMetric(Ljava/lang/String;)V
    .locals 0

    .line 488
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    iput-object p1, p0, Lcom/google/api/QuotaLimit;->metric_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setMetricBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 517
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 518
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/QuotaLimit;->metric_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    iput-object p1, p0, Lcom/google/api/QuotaLimit;->name_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 105
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 106
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/QuotaLimit;->name_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setUnit(Ljava/lang/String;)V
    .locals 0

    .line 577
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    iput-object p1, p0, Lcom/google/api/QuotaLimit;->unit_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setUnitBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 614
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 615
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/QuotaLimit;->unit_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public containsValues(Ljava/lang/String;)Z
    .locals 1

    .line 662
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 663
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->internalGetValues()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1763
    sget-object p2, Lcom/google/api/QuotaLimit$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1815
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1809
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1794
    :pswitch_2
    sget-object p1, Lcom/google/api/QuotaLimit;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1796
    const-class p2, Lcom/google/api/QuotaLimit;

    monitor-enter p2

    .line 1797
    :try_start_0
    sget-object p1, Lcom/google/api/QuotaLimit;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1799
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1802
    sput-object p1, Lcom/google/api/QuotaLimit;->PARSER:Lcom/google/protobuf/Parser;

    .line 1804
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

    .line 1791
    :pswitch_3
    sget-object p1, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "description_"

    aput-object v0, p1, p3

    const-string p3, "defaultLimit_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "maxLimit_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "duration_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "name_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "freeTier_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "metric_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "unit_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "values_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 1771
    sget-object p3, Lcom/google/api/QuotaLimit$ValuesDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "displayName_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\n\u0000\u0000\u0002\u000c\n\u0001\u0000\u0000\u0002\u0208\u0003\u0002\u0004\u0002\u0005\u0208\u0006\u0208\u0007\u0002\u0008\u0208\t\u0208\n2\u000c\u0208"

    .line 1787
    sget-object p3, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {p3, p2, p1}, Lcom/google/api/QuotaLimit;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1768
    :pswitch_5
    new-instance p1, Lcom/google/api/QuotaLimit$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/QuotaLimit$Builder;-><init>(Lcom/google/api/QuotaLimit$1;)V

    return-object p1

    .line 1765
    :pswitch_6
    new-instance p1, Lcom/google/api/QuotaLimit;

    invoke-direct {p1}, Lcom/google/api/QuotaLimit;-><init>()V

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

.method public getDefaultLimit()J
    .locals 2

    .line 206
    iget-wide v0, p0, Lcom/google/api/QuotaLimit;->defaultLimit_:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->description_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->displayName_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->displayName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->duration_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDurationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->duration_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFreeTier()J
    .locals 2

    .line 320
    iget-wide v0, p0, Lcom/google/api/QuotaLimit;->freeTier_:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMaxLimit()J
    .locals 2

    .line 264
    iget-wide v0, p0, Lcom/google/api/QuotaLimit;->maxLimit_:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetric()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->metric_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->metric_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->name_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->unit_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUnitBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->unit_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 671
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit;->getValuesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValuesCount()I
    .locals 1

    .line 647
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->internalGetValues()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValuesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 686
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->internalGetValues()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 685
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValuesOrDefault(Ljava/lang/String;J)J
    .locals 2

    .line 702
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 704
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->internalGetValues()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 705
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    return-wide p2

    .array-data 1
    .end array-data
.end method

.method public getValuesOrThrow(Ljava/lang/String;)J
    .locals 2

    .line 720
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 722
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->internalGetValues()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 723
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 724
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method
