.class public final Lcom/google/firebase/perf/v1/PerfMetric$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PerfMetric.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/PerfMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/PerfMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/PerfMetric;",
        "Lcom/google/firebase/perf/v1/PerfMetric$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/PerfMetricOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 486
    invoke-static {}, Lcom/google/firebase/perf/v1/PerfMetric;->access$000()Lcom/google/firebase/perf/v1/PerfMetric;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/PerfMetric$1;)V
    .locals 0

    .line 479
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearApplicationInfo()Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 562
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 563
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/PerfMetric;->access$300(Lcom/google/firebase/perf/v1/PerfMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearGaugeMetric()Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 793
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 794
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/PerfMetric;->access$1200(Lcom/google/firebase/perf/v1/PerfMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearNetworkRequestMetric()Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 716
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 717
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/PerfMetric;->access$900(Lcom/google/firebase/perf/v1/PerfMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearTraceMetric()Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 640
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/PerfMetric;->access$600(Lcom/google/firebase/perf/v1/PerfMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearTransportInfo()Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 870
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 871
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/PerfMetric;->access$1500(Lcom/google/firebase/perf/v1/PerfMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getApplicationInfo()Lcom/google/firebase/perf/v1/ApplicationInfo;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfMetric;->getApplicationInfo()Lcom/google/firebase/perf/v1/ApplicationInfo;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getGaugeMetric()Lcom/google/firebase/perf/v1/GaugeMetric;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfMetric;->getGaugeMetric()Lcom/google/firebase/perf/v1/GaugeMetric;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNetworkRequestMetric()Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfMetric;->getNetworkRequestMetric()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTraceMetric()Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfMetric;->getTraceMetric()Lcom/google/firebase/perf/v1/TraceMetric;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTransportInfo()Lcom/google/firebase/perf/v1/TransportInfo;
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfMetric;->getTransportInfo()Lcom/google/firebase/perf/v1/TransportInfo;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasApplicationInfo()Z
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfMetric;->hasApplicationInfo()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasGaugeMetric()Z
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfMetric;->hasGaugeMetric()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasNetworkRequestMetric()Z
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfMetric;->hasNetworkRequestMetric()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasTraceMetric()Z
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfMetric;->hasTraceMetric()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasTransportInfo()Z
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/PerfMetric;->hasTransportInfo()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeApplicationInfo(Lcom/google/firebase/perf/v1/ApplicationInfo;)Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 550
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 551
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$200(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/ApplicationInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeGaugeMetric(Lcom/google/firebase/perf/v1/GaugeMetric;)Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 781
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 782
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$1100(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/GaugeMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeNetworkRequestMetric(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 704
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 705
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$800(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeTraceMetric(Lcom/google/firebase/perf/v1/TraceMetric;)Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$500(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/TraceMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeTransportInfo(Lcom/google/firebase/perf/v1/TransportInfo;)Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 858
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 859
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$1400(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/TransportInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setApplicationInfo(Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;)Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 538
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$100(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/ApplicationInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setApplicationInfo(Lcom/google/firebase/perf/v1/ApplicationInfo;)Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 524
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$100(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/ApplicationInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setGaugeMetric(Lcom/google/firebase/perf/v1/GaugeMetric$Builder;)Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 768
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 769
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$1000(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/GaugeMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setGaugeMetric(Lcom/google/firebase/perf/v1/GaugeMetric;)Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 754
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 755
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$1000(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/GaugeMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNetworkRequestMetric(Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;)Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 691
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 692
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$700(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNetworkRequestMetric(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 677
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$700(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTraceMetric(Lcom/google/firebase/perf/v1/TraceMetric$Builder;)Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 615
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$400(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/TraceMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTraceMetric(Lcom/google/firebase/perf/v1/TraceMetric;)Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 600
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 601
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$400(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/TraceMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTransportInfo(Lcom/google/firebase/perf/v1/TransportInfo$Builder;)Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 845
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 846
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TransportInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/TransportInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$1300(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/TransportInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTransportInfo(Lcom/google/firebase/perf/v1/TransportInfo;)Lcom/google/firebase/perf/v1/PerfMetric$Builder;
    .locals 1

    .line 831
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->copyOnWrite()V

    .line 832
    iget-object v0, p0, Lcom/google/firebase/perf/v1/PerfMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/PerfMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/PerfMetric;->access$1300(Lcom/google/firebase/perf/v1/PerfMetric;Lcom/google/firebase/perf/v1/TransportInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
