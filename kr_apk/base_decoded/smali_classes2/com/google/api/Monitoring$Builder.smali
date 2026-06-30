.class public final Lcom/google/api/Monitoring$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Monitoring.java"

# interfaces
.implements Lcom/google/api/MonitoringOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Monitoring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Monitoring;",
        "Lcom/google/api/Monitoring$Builder;",
        ">;",
        "Lcom/google/api/MonitoringOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1256
    invoke-static {}, Lcom/google/api/Monitoring;->access$1000()Lcom/google/api/Monitoring;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/Monitoring$1;)V
    .locals 0

    .line 1249
    invoke-direct {p0}, Lcom/google/api/Monitoring$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllConsumerDestinations(Ljava/lang/Iterable;)Lcom/google/api/Monitoring$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;)",
            "Lcom/google/api/Monitoring$Builder;"
        }
    .end annotation

    .line 1641
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1642
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$2000(Lcom/google/api/Monitoring;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllProducerDestinations(Ljava/lang/Iterable;)Lcom/google/api/Monitoring$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;)",
            "Lcom/google/api/Monitoring$Builder;"
        }
    .end annotation

    .line 1431
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1432
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1400(Lcom/google/api/Monitoring;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1622
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1623
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1624
    invoke-virtual {p2}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1623
    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1900(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1587
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1900(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addConsumerDestinations(Lcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1604
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1605
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {p1}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1800(Lcom/google/api/Monitoring;Lcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addConsumerDestinations(Lcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1568
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1569
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1800(Lcom/google/api/Monitoring;Lcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1412
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1413
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1414
    invoke-virtual {p2}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1413
    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1300(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1376
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1377
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1300(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addProducerDestinations(Lcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1394
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1395
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {p1}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1200(Lcom/google/api/Monitoring;Lcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addProducerDestinations(Lcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1358
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1359
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1200(Lcom/google/api/Monitoring;Lcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearConsumerDestinations()Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1658
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1659
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0}, Lcom/google/api/Monitoring;->access$2100(Lcom/google/api/Monitoring;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearProducerDestinations()Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1448
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1449
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0}, Lcom/google/api/Monitoring;->access$1500(Lcom/google/api/Monitoring;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getConsumerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1

    .line 1516
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {v0, p1}, Lcom/google/api/Monitoring;->getConsumerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getConsumerDestinationsCount()I
    .locals 1

    .line 1501
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {v0}, Lcom/google/api/Monitoring;->getConsumerDestinationsCount()I

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

    .line 1484
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1485
    invoke-virtual {v0}, Lcom/google/api/Monitoring;->getConsumerDestinationsList()Ljava/util/List;

    move-result-object v0

    .line 1484
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProducerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {v0, p1}, Lcom/google/api/Monitoring;->getProducerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getProducerDestinationsCount()I
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {v0}, Lcom/google/api/Monitoring;->getProducerDestinationsCount()I

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

    .line 1274
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1275
    invoke-virtual {v0}, Lcom/google/api/Monitoring;->getProducerDestinationsList()Ljava/util/List;

    move-result-object v0

    .line 1274
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeConsumerDestinations(I)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1675
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1676
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$2200(Lcom/google/api/Monitoring;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeProducerDestinations(I)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1465
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1466
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1600(Lcom/google/api/Monitoring;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1550
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1551
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1552
    invoke-virtual {p2}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1551
    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1700(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1532
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1533
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1700(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1340
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1341
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1342
    invoke-virtual {p2}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1341
    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1100(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1322
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1323
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1100(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
