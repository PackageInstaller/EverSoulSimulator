.class public interface abstract Lcom/google/rpc/context/AttributeContext$ResponseOrBuilder;
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
    name = "ResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract containsHeaders(Ljava/lang/String;)Z
.end method

.method public abstract getCode()J
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

.method public abstract getSize()J
.end method

.method public abstract getTime()Lcom/google/protobuf/Timestamp;
.end method

.method public abstract hasTime()Z
.end method
