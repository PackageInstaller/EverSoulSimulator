.class public interface abstract Lcom/google/api/HttpBodyOrBuilder;
.super Ljava/lang/Object;
.source "HttpBodyOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getContentTypeBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getExtensions(I)Lcom/google/protobuf/Any;
.end method

.method public abstract getExtensionsCount()I
.end method

.method public abstract getExtensionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end method
