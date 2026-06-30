.class public final Lcom/google/api/MetricRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MetricRule.java"

# interfaces
.implements Lcom/google/api/MetricRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MetricRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/MetricRule;",
        "Lcom/google/api/MetricRule$Builder;",
        ">;",
        "Lcom/google/api/MetricRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 323
    invoke-static {}, Lcom/google/api/MetricRule;->access$000()Lcom/google/api/MetricRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/MetricRule$1;)V
    .locals 0

    .line 316
    invoke-direct {p0}, Lcom/google/api/MetricRule$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearMetricCosts()Lcom/google/api/MetricRule$Builder;
    .locals 1

    .line 426
    invoke-virtual {p0}, Lcom/google/api/MetricRule$Builder;->copyOnWrite()V

    .line 427
    iget-object v0, p0, Lcom/google/api/MetricRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricRule;

    invoke-static {v0}, Lcom/google/api/MetricRule;->access$400(Lcom/google/api/MetricRule;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSelector()Lcom/google/api/MetricRule$Builder;
    .locals 1

    .line 380
    invoke-virtual {p0}, Lcom/google/api/MetricRule$Builder;->copyOnWrite()V

    .line 381
    iget-object v0, p0, Lcom/google/api/MetricRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricRule;

    invoke-static {v0}, Lcom/google/api/MetricRule;->access$200(Lcom/google/api/MetricRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public containsMetricCosts(Ljava/lang/String;)Z
    .locals 1

    .line 421
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    iget-object v0, p0, Lcom/google/api/MetricRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricRule;

    invoke-virtual {v0}, Lcom/google/api/MetricRule;->getMetricCostsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public getMetricCosts()Ljava/util/Map;
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

    .line 455
    invoke-virtual {p0}, Lcom/google/api/MetricRule$Builder;->getMetricCostsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricCostsCount()I
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/google/api/MetricRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricRule;

    invoke-virtual {v0}, Lcom/google/api/MetricRule;->getMetricCostsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricCostsMap()Ljava/util/Map;
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

    .line 470
    iget-object v0, p0, Lcom/google/api/MetricRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricRule;

    .line 471
    invoke-virtual {v0}, Lcom/google/api/MetricRule;->getMetricCostsMap()Ljava/util/Map;

    move-result-object v0

    .line 470
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricCostsOrDefault(Ljava/lang/String;J)J
    .locals 2

    .line 489
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    iget-object v0, p0, Lcom/google/api/MetricRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricRule;

    .line 491
    invoke-virtual {v0}, Lcom/google/api/MetricRule;->getMetricCostsMap()Ljava/util/Map;

    move-result-object v0

    .line 492
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

.method public getMetricCostsOrThrow(Ljava/lang/String;)J
    .locals 2

    .line 509
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    iget-object v0, p0, Lcom/google/api/MetricRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricRule;

    .line 511
    invoke-virtual {v0}, Lcom/google/api/MetricRule;->getMetricCostsMap()Ljava/util/Map;

    move-result-object v0

    .line 512
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 513
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/google/api/MetricRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricRule;

    invoke-virtual {v0}, Lcom/google/api/MetricRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/google/api/MetricRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricRule;

    invoke-virtual {v0}, Lcom/google/api/MetricRule;->getSelectorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public putAllMetricCosts(Ljava/util/Map;)Lcom/google/api/MetricRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/api/MetricRule$Builder;"
        }
    .end annotation

    .line 550
    invoke-virtual {p0}, Lcom/google/api/MetricRule$Builder;->copyOnWrite()V

    .line 551
    iget-object v0, p0, Lcom/google/api/MetricRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricRule;

    invoke-static {v0}, Lcom/google/api/MetricRule;->access$400(Lcom/google/api/MetricRule;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public putMetricCosts(Ljava/lang/String;J)Lcom/google/api/MetricRule$Builder;
    .locals 1

    .line 531
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    invoke-virtual {p0}, Lcom/google/api/MetricRule$Builder;->copyOnWrite()V

    .line 534
    iget-object v0, p0, Lcom/google/api/MetricRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricRule;

    invoke-static {v0}, Lcom/google/api/MetricRule;->access$400(Lcom/google/api/MetricRule;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public removeMetricCosts(Ljava/lang/String;)Lcom/google/api/MetricRule$Builder;
    .locals 1

    .line 444
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    invoke-virtual {p0}, Lcom/google/api/MetricRule$Builder;->copyOnWrite()V

    .line 446
    iget-object v0, p0, Lcom/google/api/MetricRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricRule;

    invoke-static {v0}, Lcom/google/api/MetricRule;->access$400(Lcom/google/api/MetricRule;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public setSelector(Ljava/lang/String;)Lcom/google/api/MetricRule$Builder;
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/google/api/MetricRule$Builder;->copyOnWrite()V

    .line 367
    iget-object v0, p0, Lcom/google/api/MetricRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricRule;

    invoke-static {v0, p1}, Lcom/google/api/MetricRule;->access$100(Lcom/google/api/MetricRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSelectorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MetricRule$Builder;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/google/api/MetricRule$Builder;->copyOnWrite()V

    .line 397
    iget-object v0, p0, Lcom/google/api/MetricRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricRule;

    invoke-static {v0, p1}, Lcom/google/api/MetricRule;->access$300(Lcom/google/api/MetricRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
