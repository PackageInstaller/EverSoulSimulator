.class public interface abstract Lcom/google/longrunning/OperationOrBuilder;
.super Ljava/lang/Object;
.source "OperationOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getDone()Z
.end method

.method public abstract getError()Lcom/google/rpc/Status;
.end method

.method public abstract getMetadata()Lcom/google/protobuf/Any;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getResponse()Lcom/google/protobuf/Any;
.end method

.method public abstract getResultCase()Lcom/google/longrunning/Operation$ResultCase;
.end method

.method public abstract hasError()Z
.end method

.method public abstract hasMetadata()Z
.end method

.method public abstract hasResponse()Z
.end method
