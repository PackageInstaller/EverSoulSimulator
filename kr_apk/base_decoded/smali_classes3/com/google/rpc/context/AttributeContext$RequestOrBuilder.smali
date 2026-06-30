.class public interface abstract Lcom/google/rpc/context/AttributeContext$RequestOrBuilder;
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
    name = "RequestOrBuilder"
.end annotation


# virtual methods
.method public abstract containsHeaders(Ljava/lang/String;)Z
.end method

.method public abstract getAuth()Lcom/google/rpc/context/AttributeContext$Auth;
.end method

.method public abstract getHeaders()Ljava/util/Map;
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

.method public abstract getHeadersCount()I
.end method

.method public abstract getHeadersMap()Ljava/util/Map;
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

.method public abstract getHeadersOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHeadersOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getHostBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getMethodBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPathBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract getProtocolBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getQuery()Ljava/lang/String;
.end method

.method public abstract getQueryBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getReason()Ljava/lang/String;
.end method

.method public abstract getReasonBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract getSchemeBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSize()J
.end method

.method public abstract getTime()Lcom/google/protobuf/Timestamp;
.end method

.method public abstract hasAuth()Z
.end method

.method public abstract hasTime()Z
.end method
