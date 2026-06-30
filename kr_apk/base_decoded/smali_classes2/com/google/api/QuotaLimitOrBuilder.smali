.class public interface abstract Lcom/google/api/QuotaLimitOrBuilder;
.super Ljava/lang/Object;
.source "QuotaLimitOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract containsValues(Ljava/lang/String;)Z
.end method

.method public abstract getDefaultLimit()J
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDescriptionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getDisplayNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDuration()Ljava/lang/String;
.end method

.method public abstract getDurationBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getFreeTier()J
.end method

.method public abstract getMaxLimit()J
.end method

.method public abstract getMetric()Ljava/lang/String;
.end method

.method public abstract getMetricBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUnit()Ljava/lang/String;
.end method

.method public abstract getUnitBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getValues()Ljava/util/Map;
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

.method public abstract getValuesCount()I
.end method

.method public abstract getValuesMap()Ljava/util/Map;
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

.method public abstract getValuesOrDefault(Ljava/lang/String;J)J
.end method

.method public abstract getValuesOrThrow(Ljava/lang/String;)J
.end method
