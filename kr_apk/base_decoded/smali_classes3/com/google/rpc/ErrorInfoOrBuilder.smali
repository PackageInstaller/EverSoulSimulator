.class public interface abstract Lcom/google/rpc/ErrorInfoOrBuilder;
.super Ljava/lang/Object;
.source "ErrorInfoOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract containsMetadata(Ljava/lang/String;)Z
.end method

.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getDomainBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMetadata()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMetadataCount()I
.end method

.method public abstract getMetadataMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetadataOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMetadataOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getReason()Ljava/lang/String;
.end method

.method public abstract getReasonBytes()Lcom/google/protobuf/ByteString;
.end method
