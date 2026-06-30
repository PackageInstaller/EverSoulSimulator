.class public final Lcom/google/api/Monitoring$MonitoringDestination$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Monitoring.java"

# interfaces
.implements Lcom/google/api/Monitoring$MonitoringDestinationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Monitoring$MonitoringDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Monitoring$MonitoringDestination;",
        "Lcom/google/api/Monitoring$MonitoringDestination$Builder;",
        ">;",
        "Lcom/google/api/Monitoring$MonitoringDestinationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 450
    invoke-static {}, Lcom/google/api/Monitoring$MonitoringDestination;->access$000()Lcom/google/api/Monitoring$MonitoringDestination;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/Monitoring$1;)V
    .locals 0

    .line 443
    invoke-direct {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllMetrics(Ljava/lang/Iterable;)Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/Monitoring$MonitoringDestination$Builder;"
        }
    .end annotation

    .line 630
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 631
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->access$600(Lcom/google/api/Monitoring$MonitoringDestination;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addMetrics(Ljava/lang/String;)Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 615
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->access$500(Lcom/google/api/Monitoring$MonitoringDestination;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addMetricsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1

    .line 660
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 661
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->access$800(Lcom/google/api/Monitoring$MonitoringDestination;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMetrics()Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1

    .line 644
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 645
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->access$700(Lcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMonitoredResource()Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1

    .line 507
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 508
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->access$200(Lcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetrics(I)Ljava/lang/String;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->getMetrics(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->getMetricsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricsCount()I
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->getMetricsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    .line 541
    invoke-virtual {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->getMetricsList()Ljava/util/List;

    move-result-object v0

    .line 540
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMonitoredResource()Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->getMonitoredResource()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMonitoredResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-virtual {v0}, Lcom/google/api/Monitoring$MonitoringDestination;->getMonitoredResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMetrics(ILjava/lang/String;)Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1

    .line 598
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 599
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring$MonitoringDestination;->access$400(Lcom/google/api/Monitoring$MonitoringDestination;ILjava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMonitoredResource(Ljava/lang/String;)Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1

    .line 493
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 494
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->access$100(Lcom/google/api/Monitoring$MonitoringDestination;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMonitoredResourceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Monitoring$MonitoringDestination$Builder;
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->copyOnWrite()V

    .line 524
    iget-object v0, p0, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring$MonitoringDestination;->access$300(Lcom/google/api/Monitoring$MonitoringDestination;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
