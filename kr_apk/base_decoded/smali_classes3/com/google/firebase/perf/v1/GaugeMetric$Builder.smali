.class public final Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GaugeMetric.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/GaugeMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/GaugeMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/GaugeMetric;",
        "Lcom/google/firebase/perf/v1/GaugeMetric$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/GaugeMetricOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 570
    invoke-static {}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$000()Lcom/google/firebase/perf/v1/GaugeMetric;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/GaugeMetric$1;)V
    .locals 0

    .line 563
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllAndroidMemoryReadings(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/AndroidMemoryReading;",
            ">;)",
            "Lcom/google/firebase/perf/v1/GaugeMetric$Builder;"
        }
    .end annotation

    .line 1015
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1016
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1600(Lcom/google/firebase/perf/v1/GaugeMetric;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllCpuMetricReadings(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/CpuMetricReading;",
            ">;)",
            "Lcom/google/firebase/perf/v1/GaugeMetric$Builder;"
        }
    .end annotation

    .line 865
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 866
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1000(Lcom/google/firebase/perf/v1/GaugeMetric;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAndroidMemoryReadings(ILcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1001
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1002
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 1003
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    .line 1002
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1500(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAndroidMemoryReadings(ILcom/google/firebase/perf/v1/AndroidMemoryReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 975
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 976
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1500(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAndroidMemoryReadings(Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 988
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 989
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1400(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAndroidMemoryReadings(Lcom/google/firebase/perf/v1/AndroidMemoryReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 962
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 963
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1400(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addCpuMetricReadings(ILcom/google/firebase/perf/v1/CpuMetricReading$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 851
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 852
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 853
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/CpuMetricReading;

    .line 852
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$900(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addCpuMetricReadings(ILcom/google/firebase/perf/v1/CpuMetricReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 825
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 826
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$900(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addCpuMetricReadings(Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 838
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 839
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$800(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addCpuMetricReadings(Lcom/google/firebase/perf/v1/CpuMetricReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 812
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 813
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$800(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearAndroidMemoryReadings()Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1027
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1028
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1700(Lcom/google/firebase/perf/v1/GaugeMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearCpuMetricReadings()Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 877
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 878
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1100(Lcom/google/firebase/perf/v1/GaugeMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearGaugeMetadata()Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 739
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 740
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$600(Lcom/google/firebase/perf/v1/GaugeMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSessionId()Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 650
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 651
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$200(Lcom/google/firebase/perf/v1/GaugeMetric;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAndroidMemoryReadings(I)Lcom/google/firebase/perf/v1/AndroidMemoryReading;
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->getAndroidMemoryReadings(I)Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAndroidMemoryReadingsCount()I
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getAndroidMemoryReadingsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAndroidMemoryReadingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/AndroidMemoryReading;",
            ">;"
        }
    .end annotation

    .line 903
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 904
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getAndroidMemoryReadingsList()Ljava/util/List;

    move-result-object v0

    .line 903
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCpuMetricReadings(I)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->getCpuMetricReadings(I)Lcom/google/firebase/perf/v1/CpuMetricReading;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getCpuMetricReadingsCount()I
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getCpuMetricReadingsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCpuMetricReadingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/CpuMetricReading;",
            ">;"
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 754
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getCpuMetricReadingsList()Ljava/util/List;

    move-result-object v0

    .line 753
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getGaugeMetadata()Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getGaugeMetadata()Lcom/google/firebase/perf/v1/GaugeMetadata;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasGaugeMetadata()Z
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->hasGaugeMetadata()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasSessionId()Z
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->hasSessionId()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeGaugeMetadata(Lcom/google/firebase/perf/v1/GaugeMetadata;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 728
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 729
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$500(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/GaugeMetadata;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeAndroidMemoryReadings(I)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1039
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1040
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1800(Lcom/google/firebase/perf/v1/GaugeMetric;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeCpuMetricReadings(I)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 889
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 890
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1200(Lcom/google/firebase/perf/v1/GaugeMetric;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAndroidMemoryReadings(ILcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 949
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 950
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 951
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    .line 950
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1300(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAndroidMemoryReadings(ILcom/google/firebase/perf/v1/AndroidMemoryReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 936
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 937
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1300(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setCpuMetricReadings(ILcom/google/firebase/perf/v1/CpuMetricReading$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 799
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 800
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 801
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/CpuMetricReading;

    .line 800
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$700(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setCpuMetricReadings(ILcom/google/firebase/perf/v1/CpuMetricReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 786
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 787
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$700(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setGaugeMetadata(Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 716
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 717
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$400(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/GaugeMetadata;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setGaugeMetadata(Lcom/google/firebase/perf/v1/GaugeMetadata;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 704
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$400(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/GaugeMetadata;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 634
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 635
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$100(Lcom/google/firebase/perf/v1/GaugeMetric;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSessionIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 668
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 669
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$300(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
