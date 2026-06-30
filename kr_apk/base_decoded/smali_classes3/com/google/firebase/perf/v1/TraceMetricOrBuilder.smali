.class public interface abstract Lcom/google/firebase/perf/v1/TraceMetricOrBuilder;
.super Ljava/lang/Object;
.source "TraceMetricOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract containsCounters(Ljava/lang/String;)Z
.end method

.method public abstract containsCustomAttributes(Ljava/lang/String;)Z
.end method

.method public abstract getClientStartTimeUs()J
.end method

.method public abstract getCounters()Ljava/util/Map;
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
.end method

.method public abstract getCountersCount()I
.end method

.method public abstract getCountersMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCountersOrDefault(Ljava/lang/String;J)J
.end method

.method public abstract getCountersOrThrow(Ljava/lang/String;)J
.end method

.method public abstract getCustomAttributes()Ljava/util/Map;
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
.end method

.method public abstract getCustomAttributesCount()I
.end method

.method public abstract getCustomAttributesMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomAttributesOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCustomAttributesOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDurationUs()J
.end method

.method public abstract getIsAuto()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPerfSessions(I)Lcom/google/firebase/perf/v1/PerfSession;
.end method

.method public abstract getPerfSessionsCount()I
.end method

.method public abstract getPerfSessionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/PerfSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSubtraces(I)Lcom/google/firebase/perf/v1/TraceMetric;
.end method

.method public abstract getSubtracesCount()I
.end method

.method public abstract getSubtracesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/TraceMetric;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasClientStartTimeUs()Z
.end method

.method public abstract hasDurationUs()Z
.end method

.method public abstract hasIsAuto()Z
.end method

.method public abstract hasName()Z
.end method
