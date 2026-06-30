.class public interface abstract Lcom/google/rpc/PreconditionFailureOrBuilder;
.super Ljava/lang/Object;
.source "PreconditionFailureOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getViolations(I)Lcom/google/rpc/PreconditionFailure$Violation;
.end method

.method public abstract getViolationsCount()I
.end method

.method public abstract getViolationsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/rpc/PreconditionFailure$Violation;",
            ">;"
        }
    .end annotation
.end method
