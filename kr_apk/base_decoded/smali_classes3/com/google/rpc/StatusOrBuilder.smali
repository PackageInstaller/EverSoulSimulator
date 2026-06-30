.class public interface abstract Lcom/google/rpc/StatusOrBuilder;
.super Ljava/lang/Object;
.source "StatusOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getCode()I
.end method

.method public abstract getDetails(I)Lcom/google/protobuf/Any;
.end method

.method public abstract getDetailsCount()I
.end method

.method public abstract getDetailsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getMessageBytes()Lcom/google/protobuf/ByteString;
.end method
