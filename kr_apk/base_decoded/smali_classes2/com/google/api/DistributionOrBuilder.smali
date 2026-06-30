.class public interface abstract Lcom/google/api/DistributionOrBuilder;
.super Ljava/lang/Object;
.source "DistributionOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getBucketCounts(I)J
.end method

.method public abstract getBucketCountsCount()I
.end method

.method public abstract getBucketCountsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBucketOptions()Lcom/google/api/Distribution$BucketOptions;
.end method

.method public abstract getCount()J
.end method

.method public abstract getExemplars(I)Lcom/google/api/Distribution$Exemplar;
.end method

.method public abstract getExemplarsCount()I
.end method

.method public abstract getExemplarsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Distribution$Exemplar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMean()D
.end method

.method public abstract getRange()Lcom/google/api/Distribution$Range;
.end method

.method public abstract getSumOfSquaredDeviation()D
.end method

.method public abstract hasBucketOptions()Z
.end method

.method public abstract hasRange()Z
.end method
