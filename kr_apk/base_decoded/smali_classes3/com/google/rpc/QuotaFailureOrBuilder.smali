.class public interface abstract Lcom/google/rpc/QuotaFailureOrBuilder;
.super Ljava/lang/Object;
.source "QuotaFailureOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getViolations(I)Lcom/google/rpc/QuotaFailure$Violation;
.end method

.method public abstract getViolationsCount()I
.end method

.method public abstract getViolationsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/rpc/QuotaFailure$Violation;",
            ">;"
        }
    .end annotation
.end method
