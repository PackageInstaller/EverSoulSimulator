.class public final Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NetworkRequestMetric.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/NetworkRequestMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/NetworkRequestMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/NetworkRequestMetric;",
        "Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/NetworkRequestMetricOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1365
    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$000()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/NetworkRequestMetric$1;)V
    .locals 0

    .line 1358
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllPerfSessions(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/PerfSession;",
            ">;)",
            "Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;"
        }
    .end annotation

    .line 2354
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2355
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2900(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addPerfSessions(ILcom/google/firebase/perf/v1/PerfSession$Builder;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2336
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2337
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2338
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/PerfSession;

    .line 2337
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2800(Lcom/google/firebase/perf/v1/NetworkRequestMetric;ILcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addPerfSessions(ILcom/google/firebase/perf/v1/PerfSession;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2302
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2303
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2800(Lcom/google/firebase/perf/v1/NetworkRequestMetric;ILcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addPerfSessions(Lcom/google/firebase/perf/v1/PerfSession$Builder;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2319
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2320
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2700(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addPerfSessions(Lcom/google/firebase/perf/v1/PerfSession;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2285
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2286
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2700(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearClientStartTimeUs()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1892
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1893
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1800(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearCustomAttributes()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2086
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2087
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearHttpMethod()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1543
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1544
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearHttpResponseCode()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1755
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1756
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1300(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearNetworkClientErrorReason()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1703
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1704
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1100(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearPerfSessions()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2370
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2371
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$3000(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearRequestPayloadBytes()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1595
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1596
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$700(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearResponseContentType()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1821
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1822
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearResponsePayloadBytes()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1647
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1648
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$900(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearTimeToRequestCompletedUs()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1948
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1949
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2000(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearTimeToResponseCompletedUs()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2060
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2061
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2400(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearTimeToResponseInitiatedUs()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2004
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2005
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2200(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearUrl()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1465
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1466
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$200(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public containsCustomAttributes(Ljava/lang/String;)Z
    .locals 1

    .line 2081
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2082
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public getClientStartTimeUs()J
    .locals 2

    .line 1865
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getClientStartTimeUs()J

    move-result-wide v0

    return-wide v0

    nop

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

    .line 2111
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributesCount()I
    .locals 1

    .line 2068
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

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

    .line 2122
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2123
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    .line 2122
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustomAttributesOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2140
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2141
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    .line 2142
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

    .line 2155
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2156
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2157
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    .line 2158
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2161
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 2159
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public getHttpMethod()Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;
    .locals 1

    .line 1516
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getHttpMethod()Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHttpResponseCode()I
    .locals 1

    .line 1730
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getHttpResponseCode()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNetworkClientErrorReason()Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;
    .locals 1

    .line 1676
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getNetworkClientErrorReason()Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPerfSessions(I)Lcom/google/firebase/perf/v1/PerfSession;
    .locals 1

    .line 2236
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getPerfSessions(I)Lcom/google/firebase/perf/v1/PerfSession;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getPerfSessionsCount()I
    .locals 1

    .line 2222
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getPerfSessionsCount()I

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

    .line 2206
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2207
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getPerfSessionsList()Ljava/util/List;

    move-result-object v0

    .line 2206
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequestPayloadBytes()J
    .locals 2

    .line 1570
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getRequestPayloadBytes()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseContentType()Ljava/lang/String;
    .locals 1

    .line 1782
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getResponseContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseContentTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1795
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getResponseContentTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponsePayloadBytes()J
    .locals 2

    .line 1622
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getResponsePayloadBytes()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTimeToRequestCompletedUs()J
    .locals 2

    .line 1921
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToRequestCompletedUs()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTimeToResponseCompletedUs()J
    .locals 2

    .line 2033
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToResponseCompletedUs()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTimeToResponseInitiatedUs()J
    .locals 2

    .line 1977
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToResponseInitiatedUs()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1425
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasClientStartTimeUs()Z
    .locals 1

    .line 1852
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasClientStartTimeUs()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasHttpMethod()Z
    .locals 1

    .line 1503
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasHttpMethod()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasHttpResponseCode()Z
    .locals 1

    .line 1718
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasHttpResponseCode()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasNetworkClientErrorReason()Z
    .locals 1

    .line 1663
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasNetworkClientErrorReason()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasRequestPayloadBytes()Z
    .locals 1

    .line 1558
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasRequestPayloadBytes()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasResponseContentType()Z
    .locals 1

    .line 1770
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasResponseContentType()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasResponsePayloadBytes()Z
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasResponsePayloadBytes()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasTimeToRequestCompletedUs()Z
    .locals 1

    .line 1908
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasTimeToRequestCompletedUs()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasTimeToResponseCompletedUs()Z
    .locals 1

    .line 2020
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasTimeToResponseCompletedUs()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasTimeToResponseInitiatedUs()Z
    .locals 1

    .line 1964
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasTimeToResponseInitiatedUs()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasUrl()Z
    .locals 1

    .line 1386
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasUrl()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public putAllCustomAttributes(Ljava/util/Map;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;"
        }
    .end annotation

    .line 2188
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2189
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public putCustomAttributes(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2174
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2175
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2176
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeCustomAttributes(Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2101
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2102
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public removePerfSessions(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2386
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2387
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$3100(Lcom/google/firebase/perf/v1/NetworkRequestMetric;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setClientStartTimeUs(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1878
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1879
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1700(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setHttpMethod(Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1529
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1530
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$400(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setHttpResponseCode(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1742
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1743
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1200(Lcom/google/firebase/perf/v1/NetworkRequestMetric;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNetworkClientErrorReason(Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1689
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1690
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1000(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPerfSessions(ILcom/google/firebase/perf/v1/PerfSession$Builder;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2268
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2269
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2270
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/PerfSession;

    .line 2269
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2600(Lcom/google/firebase/perf/v1/NetworkRequestMetric;ILcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPerfSessions(ILcom/google/firebase/perf/v1/PerfSession;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2251
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2252
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2600(Lcom/google/firebase/perf/v1/NetworkRequestMetric;ILcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRequestPayloadBytes(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1582
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1583
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$600(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1808
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1809
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1400(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setResponseContentTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1836
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1837
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1600(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setResponsePayloadBytes(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1634
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1635
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$800(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTimeToRequestCompletedUs(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1934
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1935
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1900(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTimeToResponseCompletedUs(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2046
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2047
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2300(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTimeToResponseInitiatedUs(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1990
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1991
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2100(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1445
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1446
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$100(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1487
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1488
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$300(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
