.class final Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;
.super Lcom/google/firebase/perf/metrics/validator/PerfMetricValidator;
.source "FirebasePerfTraceValidator.java"


# static fields
.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private final traceMetric:Lcom/google/firebase/perf/v1/TraceMetric;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lcom/google/firebase/perf/v1/TraceMetric;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/validator/PerfMetricValidator;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->traceMetric:Lcom/google/firebase/perf/v1/TraceMetric;

    return-void

    .array-data 1
    .end array-data
.end method

.method private areAllAttributesValid(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 184
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->validateAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 188
    sget-object v0, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .array-data 1
    .end array-data
.end method

.method private areCountersValid(Lcom/google/firebase/perf/v1/TraceMetric;)Z
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->areCountersValid(Lcom/google/firebase/perf/v1/TraceMetric;I)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method private areCountersValid(Lcom/google/firebase/perf/v1/TraceMetric;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 86
    sget-object p1, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string p2, "Exceed MAX_SUBTRACE_DEEP:1"

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return v0

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getCountersMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->isValidCounterId(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 92
    sget-object p1, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "invalid CounterId:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return v0

    .line 95
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-direct {p0, v4}, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->isValidCounterValue(Ljava/lang/Long;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 96
    sget-object p1, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "invalid CounterValue:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return v0

    .line 101
    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getSubtracesList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/v1/TraceMetric;

    add-int/lit8 v3, p2, 0x1

    .line 102
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->areCountersValid(Lcom/google/firebase/perf/v1/TraceMetric;I)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    :cond_6
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method private hasCounters(Lcom/google/firebase/perf/v1/TraceMetric;)Z
    .locals 3

    .line 60
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getCountersCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getSubtracesList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 65
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getCountersCount()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    return v2

    :cond_4
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method private isScreenTrace(Lcom/google/firebase/perf/v1/TraceMetric;)Z
    .locals 1

    .line 110
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_st_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method private isValidCounterId(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 171
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    sget-object p1, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v1, "counterId is empty"

    invoke-virtual {p1, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return v0

    .line 176
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x64

    if-le p1, v1, :cond_2

    .line 177
    sget-object p1, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v1, "counterId exceeded max length 100"

    invoke-virtual {p1, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1

    .array-data 1
    .end array-data
.end method

.method private isValidCounterValue(Ljava/lang/Long;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method private isValidScreenTrace(Lcom/google/firebase/perf/v1/TraceMetric;)Z
    .locals 2

    .line 114
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getCountersMap()Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/google/firebase/perf/util/Constants$CounterNames;->FRAMES_TOTAL:Lcom/google/firebase/perf/util/Constants$CounterNames;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Constants$CounterNames;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method private isValidTrace(Lcom/google/firebase/perf/v1/TraceMetric;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 120
    sget-object p1, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string p2, "TraceMetric is null"

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 124
    sget-object p1, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string p2, "Exceed MAX_SUBTRACE_DEEP:1"

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return v0

    .line 128
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->isValidTraceId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    sget-object p2, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid TraceId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return v0

    .line 132
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->isValidTraceDuration(Lcom/google/firebase/perf/v1/TraceMetric;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 133
    sget-object p2, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid TraceDuration:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getDurationUs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return v0

    .line 136
    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->hasClientStartTimeUs()Z

    move-result v2

    if-nez v2, :cond_4

    .line 137
    sget-object p1, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string p2, "clientStartTimeUs is null."

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return v0

    .line 140
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->isScreenTrace(Lcom/google/firebase/perf/v1/TraceMetric;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->isValidScreenTrace(Lcom/google/firebase/perf/v1/TraceMetric;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 141
    sget-object p2, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "non-positive totalFrames in screen trace "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return v0

    .line 144
    :cond_5
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getSubtracesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/perf/v1/TraceMetric;

    add-int/lit8 v4, p2, 0x1

    .line 145
    invoke-direct {p0, v3, v4}, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->isValidTrace(Lcom/google/firebase/perf/v1/TraceMetric;I)Z

    move-result v3

    if-nez v3, :cond_6

    return v0

    .line 149
    :cond_7
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->areAllAttributesValid(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_8

    return v0

    :cond_8
    return v1

    .array-data 1
    .end array-data
.end method

.method private isValidTraceDuration(Lcom/google/firebase/perf/v1/TraceMetric;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getDurationUs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method private isValidTraceId(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x64

    if-gt p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public isValidPerfMetric()Z
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->traceMetric:Lcom/google/firebase/perf/v1/TraceMetric;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->isValidTrace(Lcom/google/firebase/perf/v1/TraceMetric;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid Trace:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->traceMetric:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return v1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->traceMetric:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->hasCounters(Lcom/google/firebase/perf/v1/TraceMetric;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->traceMetric:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->areCountersValid(Lcom/google/firebase/perf/v1/TraceMetric;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid Counters for Trace:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/validator/FirebasePerfTraceValidator;->traceMetric:Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    nop

    .array-data 1
    .end array-data
.end method
