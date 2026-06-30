.class public interface abstract Lcom/google/longrunning/ListOperationsResponseOrBuilder;
.super Ljava/lang/Object;
.source "ListOperationsResponseOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getNextPageToken()Ljava/lang/String;
.end method

.method public abstract getNextPageTokenBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getOperations(I)Lcom/google/longrunning/Operation;
.end method

.method public abstract getOperationsCount()I
.end method

.method public abstract getOperationsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end method
