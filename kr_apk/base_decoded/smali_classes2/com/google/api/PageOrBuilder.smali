.class public interface abstract Lcom/google/api/PageOrBuilder;
.super Ljava/lang/Object;
.source "PageOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getContent()Ljava/lang/String;
.end method

.method public abstract getContentBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSubpages(I)Lcom/google/api/Page;
.end method

.method public abstract getSubpagesCount()I
.end method

.method public abstract getSubpagesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Page;",
            ">;"
        }
    .end annotation
.end method
