.class public Lcom/google/firebase/perf/metrics/HttpMetric;
.super Ljava/lang/Object;
.source "HttpMetric.java"

# interfaces
.implements Lcom/google/firebase/perf/FirebasePerformanceAttributable;


# static fields
.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private final customAttributesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isDisabled:Z

.field private isStopped:Z

.field private final networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

.field private final timer:Lcom/google/firebase/perf/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/metrics/HttpMetric;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Timer;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->isStopped:Z

    .line 47
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->isDisabled:Z

    .line 56
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->customAttributesMap:Ljava/util/Map;

    .line 57
    iput-object p4, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 60
    invoke-static {p3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->builder(Lcom/google/firebase/perf/transport/TransportManager;)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setUrl(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setHttpMethod(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 61
    invoke-virtual {p2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setManualNetworkRequestMetric()V

    .line 63
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigResolver;->getInstance()Lcom/google/firebase/perf/config/ConfigResolver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/perf/config/ConfigResolver;->isPerformanceMonitoringEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 64
    sget-object p2, Lcom/google/firebase/perf/metrics/HttpMetric;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 p3, 0x1

    new-array p4, p3, [Ljava/lang/Object;

    aput-object p1, p4, v0

    const-string p1, "HttpMetric feature is disabled. URL %s"

    invoke-virtual {p2, p1, p4}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iput-boolean p3, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->isDisabled:Z

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Timer;)V
    .locals 0

    .line 76
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/perf/metrics/HttpMetric;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Timer;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private checkAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 185
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->isStopped:Z

    if-nez v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->customAttributesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->customAttributesMap:Ljava/util/Map;

    .line 191
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Exceeds max limit of number of attributes - %d"

    .line 193
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lcom/google/firebase/perf/metrics/validator/PerfMetricValidator;->validateAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HttpMetric has been logged already so unable to modify attributes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->customAttributesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->customAttributesMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public markRequestComplete()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToRequestCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    return-void

    .array-data 1
    .end array-data
.end method

.method public markResponseStart()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseInitiatedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    return-void

    .array-data 1
    .end array-data
.end method

.method public putAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 168
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/metrics/HttpMetric;->checkAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v4, Lcom/google/firebase/perf/metrics/HttpMetric;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v5, "Setting attribute \'%s\' to %s on network request \'%s\'"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object p2, v6, v3

    iget-object v7, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 173
    invoke-virtual {v7}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->getUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 171
    invoke-virtual {v4, v5, v6}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v4

    .line 175
    sget-object v5, Lcom/google/firebase/perf/metrics/HttpMetric;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    .line 176
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Cannot set attribute \'%s\' with value \'%s\' (%s)"

    .line 175
    invoke-virtual {v5, v0, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz v2, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->customAttributesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->isStopped:Z

    if-eqz v0, :cond_0

    .line 210
    sget-object p1, Lcom/google/firebase/perf/metrics/HttpMetric;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v0, "Can\'t remove a attribute from a HttpMetric that\'s stopped."

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;)V

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->customAttributesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method public setHttpResponseCode(I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setHttpResponseCode(I)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    return-void

    .array-data 1
    .end array-data
.end method

.method public setRequestPayloadSize(J)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setRequestPayloadBytes(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    return-void

    .array-data 1
    .end array-data
.end method

.method public setResponseContentType(Ljava/lang/String;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    return-void

    .array-data 1
    .end array-data
.end method

.method public setResponsePayloadSize(J)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    return-void

    .array-data 1
    .end array-data
.end method

.method public start()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->reset()V

    .line 118
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setRequestStartTimeMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public stop()V
    .locals 3

    .line 144
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->isDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 149
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->customAttributesMap:Ljava/util/Map;

    .line 150
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setCustomAttributes(Ljava/util/Map;)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->isStopped:Z

    return-void

    .array-data 1
    .end array-data
.end method
