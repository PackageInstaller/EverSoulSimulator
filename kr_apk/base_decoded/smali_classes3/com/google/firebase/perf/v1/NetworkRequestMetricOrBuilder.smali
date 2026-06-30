.class public interface abstract Lcom/google/firebase/perf/v1/NetworkRequestMetricOrBuilder;
.super Ljava/lang/Object;
.source "NetworkRequestMetricOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract containsCustomAttributes(Ljava/lang/String;)Z
.end method

.method public abstract getClientStartTimeUs()J
.end method

.method public abstract getCustomAttributes()Ljava/util/Map;
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

.method public abstract getCustomAttributesCount()I
.end method

.method public abstract getCustomAttributesMap()Ljava/util/Map;
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

.method public abstract getCustomAttributesOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCustomAttributesOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHttpMethod()Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;
.end method

.method public abstract getHttpResponseCode()I
.end method

.method public abstract getNetworkClientErrorReason()Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;
.end method

.method public abstract getPerfSessions(I)Lcom/google/firebase/perf/v1/PerfSession;
.end method

.method public abstract getPerfSessionsCount()I
.end method

.method public abstract getPerfSessionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/PerfSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestPayloadBytes()J
.end method

.method public abstract getResponseContentType()Ljava/lang/String;
.end method

.method public abstract getResponseContentTypeBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getResponsePayloadBytes()J
.end method

.method public abstract getTimeToRequestCompletedUs()J
.end method

.method public abstract getTimeToResponseCompletedUs()J
.end method

.method public abstract getTimeToResponseInitiatedUs()J
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUrlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasClientStartTimeUs()Z
.end method

.method public abstract hasHttpMethod()Z
.end method

.method public abstract hasHttpResponseCode()Z
.end method

.method public abstract hasNetworkClientErrorReason()Z
.end method

.method public abstract hasRequestPayloadBytes()Z
.end method

.method public abstract hasResponseContentType()Z
.end method

.method public abstract hasResponsePayloadBytes()Z
.end method

.method public abstract hasTimeToRequestCompletedUs()Z
.end method

.method public abstract hasTimeToResponseCompletedUs()Z
.end method

.method public abstract hasTimeToResponseInitiatedUs()Z
.end method

.method public abstract hasUrl()Z
.end method
