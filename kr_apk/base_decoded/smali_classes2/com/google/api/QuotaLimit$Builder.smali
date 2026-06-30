.class public final Lcom/google/api/QuotaLimit$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "QuotaLimit.java"

# interfaces
.implements Lcom/google/api/QuotaLimitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/QuotaLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/QuotaLimit;",
        "Lcom/google/api/QuotaLimit$Builder;",
        ">;",
        "Lcom/google/api/QuotaLimitOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 921
    invoke-static {}, Lcom/google/api/QuotaLimit;->access$000()Lcom/google/api/QuotaLimit;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/QuotaLimit$1;)V
    .locals 0

    .line 914
    invoke-direct {p0}, Lcom/google/api/QuotaLimit$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearDefaultLimit()Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1144
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1145
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0}, Lcom/google/api/QuotaLimit;->access$800(Lcom/google/api/QuotaLimit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearDescription()Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1066
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1067
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0}, Lcom/google/api/QuotaLimit;->access$500(Lcom/google/api/QuotaLimit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearDisplayName()Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1733
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1734
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0}, Lcom/google/api/QuotaLimit;->access$2400(Lcom/google/api/QuotaLimit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearDuration()Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1330
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1331
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0}, Lcom/google/api/QuotaLimit;->access$1400(Lcom/google/api/QuotaLimit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearFreeTier()Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1260
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1261
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0}, Lcom/google/api/QuotaLimit;->access$1200(Lcom/google/api/QuotaLimit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMaxLimit()Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1202
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1203
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0}, Lcom/google/api/QuotaLimit;->access$1000(Lcom/google/api/QuotaLimit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMetric()Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1411
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1412
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0}, Lcom/google/api/QuotaLimit;->access$1700(Lcom/google/api/QuotaLimit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearName()Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 986
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 987
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0}, Lcom/google/api/QuotaLimit;->access$200(Lcom/google/api/QuotaLimit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearUnit()Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1506
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1507
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0}, Lcom/google/api/QuotaLimit;->access$2000(Lcom/google/api/QuotaLimit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearValues()Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1555
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1556
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0}, Lcom/google/api/QuotaLimit;->access$2200(Lcom/google/api/QuotaLimit;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public containsValues(Ljava/lang/String;)Z
    .locals 1

    .line 1550
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1551
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getValuesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public getDefaultLimit()J
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getDefaultLimit()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1685
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1701
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getDuration()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDurationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getDurationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFreeTier()J
    .locals 2

    .line 1223
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getFreeTier()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMaxLimit()J
    .locals 2

    .line 1165
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getMaxLimit()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetric()Ljava/lang/String;
    .locals 1

    .line 1366
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getMetric()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1381
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getMetricBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 1449
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getUnit()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUnitBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getUnitBytes()Lcom/google/protobuf/ByteString;

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

    .line 1582
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->getValuesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValuesCount()I
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getValuesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

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

    .line 1595
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    .line 1596
    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getValuesMap()Ljava/util/Map;

    move-result-object v0

    .line 1595
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValuesOrDefault(Ljava/lang/String;J)J
    .locals 2

    .line 1612
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1613
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    .line 1614
    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getValuesMap()Ljava/util/Map;

    move-result-object v0

    .line 1615
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

    .line 1630
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1631
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    .line 1632
    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getValuesMap()Ljava/util/Map;

    move-result-object v0

    .line 1633
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1636
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 1634
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public putAllValues(Ljava/util/Map;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/api/QuotaLimit$Builder;"
        }
    .end annotation

    .line 1667
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1668
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0}, Lcom/google/api/QuotaLimit;->access$2200(Lcom/google/api/QuotaLimit;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public putValues(Ljava/lang/String;J)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1650
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1652
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1653
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0}, Lcom/google/api/QuotaLimit;->access$2200(Lcom/google/api/QuotaLimit;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public removeValues(Ljava/lang/String;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1571
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1572
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1573
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0}, Lcom/google/api/QuotaLimit;->access$2200(Lcom/google/api/QuotaLimit;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public setDefaultLimit(J)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1124
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1125
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1, p2}, Lcom/google/api/QuotaLimit;->access$700(Lcom/google/api/QuotaLimit;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1051
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1052
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1}, Lcom/google/api/QuotaLimit;->access$400(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1084
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1}, Lcom/google/api/QuotaLimit;->access$600(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1717
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1718
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1}, Lcom/google/api/QuotaLimit;->access$2300(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1751
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1752
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1}, Lcom/google/api/QuotaLimit;->access$2500(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDuration(Ljava/lang/String;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1313
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1314
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1}, Lcom/google/api/QuotaLimit;->access$1300(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDurationBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1349
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1350
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1}, Lcom/google/api/QuotaLimit;->access$1500(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setFreeTier(J)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1242
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1, p2}, Lcom/google/api/QuotaLimit;->access$1100(Lcom/google/api/QuotaLimit;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMaxLimit(J)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1183
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1184
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1, p2}, Lcom/google/api/QuotaLimit;->access$900(Lcom/google/api/QuotaLimit;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMetric(Ljava/lang/String;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1396
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1397
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1}, Lcom/google/api/QuotaLimit;->access$1600(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMetricBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1428
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1429
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1}, Lcom/google/api/QuotaLimit;->access$1800(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 970
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 971
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1}, Lcom/google/api/QuotaLimit;->access$100(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1004
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1005
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1}, Lcom/google/api/QuotaLimit;->access$300(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUnit(Ljava/lang/String;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1487
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1488
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1}, Lcom/google/api/QuotaLimit;->access$1900(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUnitBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 1527
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit$Builder;->copyOnWrite()V

    .line 1528
    iget-object v0, p0, Lcom/google/api/QuotaLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1}, Lcom/google/api/QuotaLimit;->access$2100(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
