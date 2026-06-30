.class public final Lcom/google/firebase/perf/v1/TraceMetric;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TraceMetric.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/TraceMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/TraceMetric$Builder;,
        Lcom/google/firebase/perf/v1/TraceMetric$CountersDefaultEntryHolder;,
        Lcom/google/firebase/perf/v1/TraceMetric$CustomAttributesDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/perf/v1/TraceMetric;",
        "Lcom/google/firebase/perf/v1/TraceMetric$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/TraceMetricOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLIENT_START_TIME_US_FIELD_NUMBER:I = 0x4

.field public static final COUNTERS_FIELD_NUMBER:I = 0x6

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

.field public static final DURATION_US_FIELD_NUMBER:I = 0x5

.field public static final IS_AUTO_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/perf/v1/TraceMetric;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERF_SESSIONS_FIELD_NUMBER:I = 0x9

.field public static final SUBTRACES_FIELD_NUMBER:I = 0x7


# instance fields
.field private bitField0_:I

.field private clientStartTimeUs_:J

.field private counters_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private customAttributes_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs_:J

.field private isAuto_:Z

.field private name_:Ljava/lang/String;

.field private perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firebase/perf/v1/PerfSession;",
            ">;"
        }
    .end annotation
.end field

.field private subtraces_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firebase/perf/v1/TraceMetric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1950
    new-instance v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/TraceMetric;-><init>()V

    .line 1953
    sput-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    .line 1954
    const-class v1, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 302
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->counters_:Lcom/google/protobuf/MapFieldLite;

    .line 586
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->name_:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/google/firebase/perf/v1/TraceMetric;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->subtraces_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 28
    invoke-static {}, Lcom/google/firebase/perf/v1/TraceMetric;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1

    .line 20
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/firebase/perf/v1/TraceMetric;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->setName(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1000(Lcom/google/firebase/perf/v1/TraceMetric;)Ljava/util/Map;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->getMutableCountersMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1100(Lcom/google/firebase/perf/v1/TraceMetric;ILcom/google/firebase/perf/v1/TraceMetric;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->setSubtraces(ILcom/google/firebase/perf/v1/TraceMetric;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1200(Lcom/google/firebase/perf/v1/TraceMetric;Lcom/google/firebase/perf/v1/TraceMetric;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->addSubtraces(Lcom/google/firebase/perf/v1/TraceMetric;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1300(Lcom/google/firebase/perf/v1/TraceMetric;ILcom/google/firebase/perf/v1/TraceMetric;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->addSubtraces(ILcom/google/firebase/perf/v1/TraceMetric;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1400(Lcom/google/firebase/perf/v1/TraceMetric;Ljava/lang/Iterable;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->addAllSubtraces(Ljava/lang/Iterable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1500(Lcom/google/firebase/perf/v1/TraceMetric;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->clearSubtraces()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1600(Lcom/google/firebase/perf/v1/TraceMetric;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->removeSubtraces(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1700(Lcom/google/firebase/perf/v1/TraceMetric;)Ljava/util/Map;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->getMutableCustomAttributesMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1800(Lcom/google/firebase/perf/v1/TraceMetric;ILcom/google/firebase/perf/v1/PerfSession;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->setPerfSessions(ILcom/google/firebase/perf/v1/PerfSession;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1900(Lcom/google/firebase/perf/v1/TraceMetric;Lcom/google/firebase/perf/v1/PerfSession;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->addPerfSessions(Lcom/google/firebase/perf/v1/PerfSession;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/firebase/perf/v1/TraceMetric;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->clearName()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2000(Lcom/google/firebase/perf/v1/TraceMetric;ILcom/google/firebase/perf/v1/PerfSession;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->addPerfSessions(ILcom/google/firebase/perf/v1/PerfSession;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2100(Lcom/google/firebase/perf/v1/TraceMetric;Ljava/lang/Iterable;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->addAllPerfSessions(Ljava/lang/Iterable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2200(Lcom/google/firebase/perf/v1/TraceMetric;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->clearPerfSessions()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$2300(Lcom/google/firebase/perf/v1/TraceMetric;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->removePerfSessions(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/google/firebase/perf/v1/TraceMetric;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/google/firebase/perf/v1/TraceMetric;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->setIsAuto(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/google/firebase/perf/v1/TraceMetric;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->clearIsAuto()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/google/firebase/perf/v1/TraceMetric;J)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->setClientStartTimeUs(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$700(Lcom/google/firebase/perf/v1/TraceMetric;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->clearClientStartTimeUs()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$800(Lcom/google/firebase/perf/v1/TraceMetric;J)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->setDurationUs(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$900(Lcom/google/firebase/perf/v1/TraceMetric;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->clearDurationUs()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addAllPerfSessions(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/PerfSession;",
            ">;)V"
        }
    .end annotation

    .line 836
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->ensurePerfSessionsIsMutable()V

    .line 837
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private addAllSubtraces(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/TraceMetric;",
            ">;)V"
        }
    .end annotation

    .line 541
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->ensureSubtracesIsMutable()V

    .line 542
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->subtraces_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private addPerfSessions(ILcom/google/firebase/perf/v1/PerfSession;)V
    .locals 1

    .line 819
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 820
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->ensurePerfSessionsIsMutable()V

    .line 821
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addPerfSessions(Lcom/google/firebase/perf/v1/PerfSession;)V
    .locals 1

    .line 802
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->ensurePerfSessionsIsMutable()V

    .line 804
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private addSubtraces(ILcom/google/firebase/perf/v1/TraceMetric;)V
    .locals 1

    .line 525
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->ensureSubtracesIsMutable()V

    .line 527
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->subtraces_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addSubtraces(Lcom/google/firebase/perf/v1/TraceMetric;)V
    .locals 1

    .line 509
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->ensureSubtracesIsMutable()V

    .line 511
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->subtraces_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearClientStartTimeUs()V
    .locals 2

    .line 235
    iget v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 236
    iput-wide v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->clientStartTimeUs_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearDurationUs()V
    .locals 2

    .line 285
    iget v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 286
    iput-wide v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->durationUs_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearIsAuto()V
    .locals 1

    .line 181
    iget v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->isAuto_:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private clearName()V
    .locals 1

    .line 107
    iget v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    .line 108
    invoke-static {}, Lcom/google/firebase/perf/v1/TraceMetric;->getDefaultInstance()Lcom/google/firebase/perf/v1/TraceMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->name_:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearPerfSessions()V
    .locals 1

    .line 852
    invoke-static {}, Lcom/google/firebase/perf/v1/TraceMetric;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private clearSubtraces()V
    .locals 1

    .line 556
    invoke-static {}, Lcom/google/firebase/perf/v1/TraceMetric;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->subtraces_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private ensurePerfSessionsIsMutable()V
    .locals 2

    .line 766
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 767
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private ensureSubtracesIsMutable()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->subtraces_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 476
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->subtraces_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static getDefaultInstance()Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1

    .line 1959
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private getMutableCountersMap()Ljava/util/Map;
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

    .line 399
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->internalGetMutableCounters()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private getMutableCustomAttributesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 685
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->internalGetMutableCustomAttributes()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private internalGetCounters()Lcom/google/protobuf/MapFieldLite;
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

    .line 305
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->counters_:Lcom/google/protobuf/MapFieldLite;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private internalGetCustomAttributes()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private internalGetMutableCounters()Lcom/google/protobuf/MapFieldLite;
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

    .line 309
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->counters_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->counters_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->counters_:Lcom/google/protobuf/MapFieldLite;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->counters_:Lcom/google/protobuf/MapFieldLite;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private internalGetMutableCustomAttributes()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder()Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 947
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static newBuilder(Lcom/google/firebase/perf/v1/TraceMetric;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 950
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0, p0}, Lcom/google/firebase/perf/v1/TraceMetric;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 923
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p0}, Lcom/google/firebase/perf/v1/TraceMetric;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/TraceMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 930
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/TraceMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 886
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/TraceMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 893
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/TraceMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 935
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/TraceMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 942
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/TraceMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/TraceMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 917
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/TraceMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 873
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/TraceMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 880
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/TraceMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([B)Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 898
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/TraceMetric;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 905
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/TraceMetric;

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
            "Lcom/google/firebase/perf/v1/TraceMetric;",
            ">;"
        }
    .end annotation

    .line 1965
    sget-object v0, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private removePerfSessions(I)V
    .locals 1

    .line 866
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->ensurePerfSessionsIsMutable()V

    .line 867
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private removeSubtraces(I)V
    .locals 1

    .line 569
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->ensureSubtracesIsMutable()V

    .line 570
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->subtraces_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setClientStartTimeUs(J)V
    .locals 1

    .line 223
    iget v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    .line 224
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/TraceMetric;->clientStartTimeUs_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setDurationUs(J)V
    .locals 1

    .line 274
    iget v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    .line 275
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/TraceMetric;->durationUs_:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setIsAuto(Z)V
    .locals 1

    .line 168
    iget v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    .line 169
    iput-boolean p1, p0, Lcom/google/firebase/perf/v1/TraceMetric;->isAuto_:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    iget v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    .line 94
    iput-object p1, p0, Lcom/google/firebase/perf/v1/TraceMetric;->name_:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 123
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/v1/TraceMetric;->name_:Ljava/lang/String;

    .line 124
    iget p1, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setPerfSessions(ILcom/google/firebase/perf/v1/PerfSession;)V
    .locals 1

    .line 786
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 787
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->ensurePerfSessionsIsMutable()V

    .line 788
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method private setSubtraces(ILcom/google/firebase/perf/v1/TraceMetric;)V
    .locals 1

    .line 494
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->ensureSubtracesIsMutable()V

    .line 496
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->subtraces_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public containsCounters(Ljava/lang/String;)Z
    .locals 1

    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->internalGetCounters()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public containsCustomAttributes(Ljava/lang/String;)Z
    .locals 1

    .line 614
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 615
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->internalGetCustomAttributes()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1889
    sget-object p2, Lcom/google/firebase/perf/v1/TraceMetric$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1943
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1937
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1922
    :pswitch_2
    sget-object p1, Lcom/google/firebase/perf/v1/TraceMetric;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1924
    const-class p2, Lcom/google/firebase/perf/v1/TraceMetric;

    monitor-enter p2

    .line 1925
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/TraceMetric;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1927
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1930
    sput-object p1, Lcom/google/firebase/perf/v1/TraceMetric;->PARSER:Lcom/google/protobuf/Parser;

    .line 1932
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

    .line 1919
    :pswitch_3
    sget-object p1, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    return-object p1

    :pswitch_4
    const/16 p1, 0xd

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "name_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "isAuto_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "clientStartTimeUs_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "durationUs_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "counters_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 1897
    sget-object p3, Lcom/google/firebase/perf/v1/TraceMetric$CountersDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "subtraces_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lcom/google/firebase/perf/v1/TraceMetric;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "customAttributes_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    sget-object p3, Lcom/google/firebase/perf/v1/TraceMetric$CustomAttributesDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "perfSessions_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lcom/google/firebase/perf/v1/PerfSession;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\t\u0008\u0002\u0002\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0004\u1002\u0002\u0005\u1002\u0003\u00062\u0007\u001b\u00082\t\u001b"

    .line 1915
    sget-object p3, Lcom/google/firebase/perf/v1/TraceMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {p3, p2, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1894
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/TraceMetric$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;-><init>(Lcom/google/firebase/perf/v1/TraceMetric$1;)V

    return-object p1

    .line 1891
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-direct {p1}, Lcom/google/firebase/perf/v1/TraceMetric;-><init>()V

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

.method public getClientStartTimeUs()J
    .locals 2

    .line 211
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->clientStartTimeUs_:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCounters()Ljava/util/Map;
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

    .line 339
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->getCountersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCountersCount()I
    .locals 1

    .line 317
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->internalGetCounters()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCountersMap()Ljava/util/Map;
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

    .line 352
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->internalGetCounters()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 351
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCountersOrDefault(Ljava/lang/String;J)J
    .locals 2

    .line 366
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->internalGetCounters()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 369
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

.method public getCountersOrThrow(Ljava/lang/String;)J
    .locals 2

    .line 382
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->internalGetCounters()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 385
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 386
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 623
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributesCount()I
    .locals 1

    .line 601
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->internalGetCustomAttributes()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 636
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->internalGetCustomAttributes()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 635
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributesOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 652
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->internalGetCustomAttributes()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 655
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributesOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 668
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric;->internalGetCustomAttributes()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 671
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 672
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public getDurationUs()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->durationUs_:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getIsAuto()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->isAuto_:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->name_:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPerfSessions(I)Lcom/google/firebase/perf/v1/PerfSession;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/PerfSession;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getPerfSessionsCount()I
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPerfSessionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/PerfSession;",
            ">;"
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPerfSessionsOrBuilder(I)Lcom/google/firebase/perf/v1/PerfSessionOrBuilder;
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/PerfSessionOrBuilder;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getPerfSessionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/perf/v1/PerfSessionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->perfSessions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSubtraces(I)Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->subtraces_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/TraceMetric;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getSubtracesCount()I
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->subtraces_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSubtracesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/TraceMetric;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->subtraces_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSubtracesOrBuilder(I)Lcom/google/firebase/perf/v1/TraceMetricOrBuilder;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->subtraces_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/TraceMetricOrBuilder;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getSubtracesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/perf/v1/TraceMetricOrBuilder;",
            ">;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->subtraces_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasClientStartTimeUs()Z
    .locals 1

    .line 198
    iget v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public hasDurationUs()Z
    .locals 1

    .line 251
    iget v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public hasIsAuto()Z
    .locals 1

    .line 141
    iget v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public hasName()Z
    .locals 2

    .line 46
    iget v0, p0, Lcom/google/firebase/perf/v1/TraceMetric;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    nop

    .array-data 1
    .end array-data
.end method
