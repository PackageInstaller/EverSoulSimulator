.class public interface abstract Lcom/google/api/Logging$LoggingDestinationOrBuilder;
.super Ljava/lang/Object;
.source "Logging.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoggingDestinationOrBuilder"
.end annotation


# virtual methods
.method public abstract getLogs(I)Ljava/lang/String;
.end method

.method public abstract getLogsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLogsCount()I
.end method

.method public abstract getLogsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMonitoredResource()Ljava/lang/String;
.end method

.method public abstract getMonitoredResourceBytes()Lcom/google/protobuf/ByteString;
.end method
