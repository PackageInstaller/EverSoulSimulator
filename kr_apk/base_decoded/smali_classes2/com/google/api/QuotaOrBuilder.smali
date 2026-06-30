.class public interface abstract Lcom/google/api/QuotaOrBuilder;
.super Ljava/lang/Object;
.source "QuotaOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getLimits(I)Lcom/google/api/QuotaLimit;
.end method

.method public abstract getLimitsCount()I
.end method

.method public abstract getLimitsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/QuotaLimit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetricRules(I)Lcom/google/api/MetricRule;
.end method

.method public abstract getMetricRulesCount()I
.end method

.method public abstract getMetricRulesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MetricRule;",
            ">;"
        }
    .end annotation
.end method
