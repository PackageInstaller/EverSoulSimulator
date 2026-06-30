.class public final Lcom/google/api/Metric$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Metric.java"

# interfaces
.implements Lcom/google/api/MetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Metric;",
        "Lcom/google/api/Metric$Builder;",
        ">;",
        "Lcom/google/api/MetricOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 308
    invoke-static {}, Lcom/google/api/Metric;->access$000()Lcom/google/api/Metric;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/Metric$1;)V
    .locals 0

    .line 301
    invoke-direct {p0}, Lcom/google/api/Metric$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearLabels()Lcom/google/api/Metric$Builder;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->copyOnWrite()V

    .line 409
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-static {v0}, Lcom/google/api/Metric;->access$400(Lcom/google/api/Metric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearType()Lcom/google/api/Metric$Builder;
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->copyOnWrite()V

    .line 366
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-static {v0}, Lcom/google/api/Metric;->access$200(Lcom/google/api/Metric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public containsLabels(Ljava/lang/String;)Z
    .locals 1

    .line 403
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-virtual {v0}, Lcom/google/api/Metric;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public getLabels()Ljava/util/Map;
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

    .line 434
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsCount()I
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-virtual {v0}, Lcom/google/api/Metric;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsMap()Ljava/util/Map;
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

    .line 446
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    .line 447
    invoke-virtual {v0}, Lcom/google/api/Metric;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 446
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 462
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    .line 464
    invoke-virtual {v0}, Lcom/google/api/Metric;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 465
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

.method public getLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 479
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    .line 481
    invoke-virtual {v0}, Lcom/google/api/Metric;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 482
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 483
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-virtual {v0}, Lcom/google/api/Metric;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-virtual {v0}, Lcom/google/api/Metric;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public putAllLabels(Ljava/util/Map;)Lcom/google/api/Metric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/Metric$Builder;"
        }
    .end annotation

    .line 514
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->copyOnWrite()V

    .line 515
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-static {v0}, Lcom/google/api/Metric;->access$400(Lcom/google/api/Metric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public putLabels(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/Metric$Builder;
    .locals 1

    .line 498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->copyOnWrite()V

    .line 501
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-static {v0}, Lcom/google/api/Metric;->access$400(Lcom/google/api/Metric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeLabels(Ljava/lang/String;)Lcom/google/api/Metric$Builder;
    .locals 1

    .line 423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->copyOnWrite()V

    .line 425
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-static {v0}, Lcom/google/api/Metric;->access$400(Lcom/google/api/Metric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/Metric$Builder;
    .locals 1

    .line 351
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->copyOnWrite()V

    .line 352
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-static {v0, p1}, Lcom/google/api/Metric;->access$100(Lcom/google/api/Metric;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Metric$Builder;
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/google/api/Metric$Builder;->copyOnWrite()V

    .line 382
    iget-object v0, p0, Lcom/google/api/Metric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Metric;

    invoke-static {v0, p1}, Lcom/google/api/Metric;->access$300(Lcom/google/api/Metric;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
