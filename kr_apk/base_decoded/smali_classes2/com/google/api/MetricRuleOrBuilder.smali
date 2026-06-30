.class public interface abstract Lcom/google/api/MetricRuleOrBuilder;
.super Ljava/lang/Object;
.source "MetricRuleOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract containsMetricCosts(Ljava/lang/String;)Z
.end method

.method public abstract getMetricCosts()Ljava/util/Map;
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

.method public abstract getMetricCostsCount()I
.end method

.method public abstract getMetricCostsMap()Ljava/util/Map;
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

.method public abstract getMetricCostsOrDefault(Ljava/lang/String;J)J
.end method

.method public abstract getMetricCostsOrThrow(Ljava/lang/String;)J
.end method

.method public abstract getSelector()Ljava/lang/String;
.end method

.method public abstract getSelectorBytes()Lcom/google/protobuf/ByteString;
.end method
