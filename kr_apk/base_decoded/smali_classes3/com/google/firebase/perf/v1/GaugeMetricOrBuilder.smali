.class public interface abstract Lcom/google/firebase/perf/v1/GaugeMetricOrBuilder;
.super Ljava/lang/Object;
.source "GaugeMetricOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getAndroidMemoryReadings(I)Lcom/google/firebase/perf/v1/AndroidMemoryReading;
.end method

.method public abstract getAndroidMemoryReadingsCount()I
.end method

.method public abstract getAndroidMemoryReadingsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/AndroidMemoryReading;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCpuMetricReadings(I)Lcom/google/firebase/perf/v1/CpuMetricReading;
.end method

.method public abstract getCpuMetricReadingsCount()I
.end method

.method public abstract getCpuMetricReadingsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/CpuMetricReading;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGaugeMetadata()Lcom/google/firebase/perf/v1/GaugeMetadata;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSessionIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasGaugeMetadata()Z
.end method

.method public abstract hasSessionId()Z
.end method
