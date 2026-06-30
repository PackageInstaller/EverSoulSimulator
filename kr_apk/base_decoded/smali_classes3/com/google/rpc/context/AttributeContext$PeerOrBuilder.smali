.class public interface abstract Lcom/google/rpc/context/AttributeContext$PeerOrBuilder;
.super Ljava/lang/Object;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PeerOrBuilder"
.end annotation


# virtual methods
.method public abstract containsLabels(Ljava/lang/String;)Z
.end method

.method public abstract getIp()Ljava/lang/String;
.end method

.method public abstract getIpBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLabels()Ljava/util/Map;
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

.method public abstract getLabelsCount()I
.end method

.method public abstract getLabelsMap()Ljava/util/Map;
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

.method public abstract getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPort()J
.end method

.method public abstract getPrincipal()Ljava/lang/String;
.end method

.method public abstract getPrincipalBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRegionCode()Ljava/lang/String;
.end method

.method public abstract getRegionCodeBytes()Lcom/google/protobuf/ByteString;
.end method
