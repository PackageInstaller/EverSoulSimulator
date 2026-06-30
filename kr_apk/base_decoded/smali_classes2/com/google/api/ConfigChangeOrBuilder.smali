.class public interface abstract Lcom/google/api/ConfigChangeOrBuilder;
.super Ljava/lang/Object;
.source "ConfigChangeOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getAdvices(I)Lcom/google/api/Advice;
.end method

.method public abstract getAdvicesCount()I
.end method

.method public abstract getAdvicesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Advice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChangeType()Lcom/google/api/ChangeType;
.end method

.method public abstract getChangeTypeValue()I
.end method

.method public abstract getElement()Ljava/lang/String;
.end method

.method public abstract getElementBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNewValue()Ljava/lang/String;
.end method

.method public abstract getNewValueBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getOldValue()Ljava/lang/String;
.end method

.method public abstract getOldValueBytes()Lcom/google/protobuf/ByteString;
.end method
