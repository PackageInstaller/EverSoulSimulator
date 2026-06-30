.class public interface abstract Lcom/google/firebase/perf/v1/PerfSessionOrBuilder;
.super Ljava/lang/Object;
.source "PerfSessionOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSessionIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSessionVerbosity(I)Lcom/google/firebase/perf/v1/SessionVerbosity;
.end method

.method public abstract getSessionVerbosityCount()I
.end method

.method public abstract getSessionVerbosityList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/SessionVerbosity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasSessionId()Z
.end method
