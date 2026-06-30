.class public final Lcom/google/api/MonitoredResourceMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MonitoredResourceMetadata.java"

# interfaces
.implements Lcom/google/api/MonitoredResourceMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MonitoredResourceMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/MonitoredResourceMetadata;",
        "Lcom/google/api/MonitoredResourceMetadata$Builder;",
        ">;",
        "Lcom/google/api/MonitoredResourceMetadataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 344
    invoke-static {}, Lcom/google/api/MonitoredResourceMetadata;->access$000()Lcom/google/api/MonitoredResourceMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/MonitoredResourceMetadata$1;)V
    .locals 0

    .line 337
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearSystemLabels()Lcom/google/api/MonitoredResourceMetadata$Builder;
    .locals 1

    .line 462
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceMetadata$Builder;->copyOnWrite()V

    .line 463
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceMetadata;->access$300(Lcom/google/api/MonitoredResourceMetadata;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearUserLabels()Lcom/google/api/MonitoredResourceMetadata$Builder;
    .locals 1

    .line 488
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceMetadata$Builder;->copyOnWrite()V

    .line 489
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceMetadata;->access$400(Lcom/google/api/MonitoredResourceMetadata;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public containsUserLabels(Ljava/lang/String;)Z
    .locals 1

    .line 483
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceMetadata;->getUserLabelsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public getSystemLabels()Lcom/google/protobuf/Struct;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceMetadata;->getSystemLabels()Lcom/google/protobuf/Struct;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUserLabels()Ljava/util/Map;
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

    .line 513
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceMetadata$Builder;->getUserLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUserLabelsCount()I
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceMetadata;->getUserLabelsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUserLabelsMap()Ljava/util/Map;
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

    .line 524
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    .line 525
    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceMetadata;->getUserLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 524
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUserLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 539
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    .line 541
    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceMetadata;->getUserLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 542
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

.method public getUserLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 555
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    .line 557
    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceMetadata;->getUserLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 558
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 559
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public hasSystemLabels()Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceMetadata;->hasSystemLabels()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeSystemLabels(Lcom/google/protobuf/Struct;)Lcom/google/api/MonitoredResourceMetadata$Builder;
    .locals 1

    .line 443
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceMetadata$Builder;->copyOnWrite()V

    .line 444
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceMetadata;->access$200(Lcom/google/api/MonitoredResourceMetadata;Lcom/google/protobuf/Struct;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public putAllUserLabels(Ljava/util/Map;)Lcom/google/api/MonitoredResourceMetadata$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/MonitoredResourceMetadata$Builder;"
        }
    .end annotation

    .line 588
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceMetadata$Builder;->copyOnWrite()V

    .line 589
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceMetadata;->access$400(Lcom/google/api/MonitoredResourceMetadata;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public putUserLabels(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/MonitoredResourceMetadata$Builder;
    .locals 1

    .line 573
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 574
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceMetadata$Builder;->copyOnWrite()V

    .line 576
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceMetadata;->access$400(Lcom/google/api/MonitoredResourceMetadata;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeUserLabels(Ljava/lang/String;)Lcom/google/api/MonitoredResourceMetadata$Builder;
    .locals 1

    .line 502
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceMetadata$Builder;->copyOnWrite()V

    .line 504
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceMetadata;->access$400(Lcom/google/api/MonitoredResourceMetadata;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public setSystemLabels(Lcom/google/protobuf/Struct$Builder;)Lcom/google/api/MonitoredResourceMetadata$Builder;
    .locals 1

    .line 423
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceMetadata$Builder;->copyOnWrite()V

    .line 424
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Struct;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceMetadata;->access$100(Lcom/google/api/MonitoredResourceMetadata;Lcom/google/protobuf/Struct;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSystemLabels(Lcom/google/protobuf/Struct;)Lcom/google/api/MonitoredResourceMetadata$Builder;
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceMetadata$Builder;->copyOnWrite()V

    .line 403
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceMetadata;->access$100(Lcom/google/api/MonitoredResourceMetadata;Lcom/google/protobuf/Struct;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
