.class Lcom/google/firebase/perf/network/InstrURLConnectionBase;
.super Ljava/lang/Object;
.source "InstrURLConnectionBase.java"


# static fields
.field private static final USER_AGENT_PROPERTY:Ljava/lang/String; = "User-Agent"

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private final httpUrlConnection:Ljava/net/HttpURLConnection;

.field private final networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

.field private timeRequestedInMicros:J

.field private timeToResponseInitiatedInMicros:J

.field private final timer:Lcom/google/firebase/perf/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timeRequestedInMicros:J

    .line 44
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timeToResponseInitiatedInMicros:J

    .line 56
    iput-object p1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    .line 57
    iput-object p3, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 58
    iput-object p2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 59
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setUrl(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private updateRequestInfo()V
    .locals 4

    .line 457
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timeRequestedInMicros:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->reset()V

    .line 459
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timeRequestedInMicros:J

    .line 460
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setRequestStartTimeMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 465
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setHttpMethod(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setHttpMethod(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    goto :goto_0

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setHttpMethod(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timeRequestedInMicros:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->reset()V

    .line 65
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timeRequestedInMicros:J

    .line 66
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setRequestStartTimeMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 69
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 71
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 72
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    .line 73
    throw v0

    .array-data 1
    .end array-data
.end method

.method public disconnect()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 80
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 81
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getContent()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 86
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setHttpResponseCode(I)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 99
    new-instance v1, Lcom/google/firebase/perf/network/InstrHttpInputStream;

    check-cast v0, Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/perf/network/InstrHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;Lcom/google/firebase/perf/util/Timer;)V

    move-object v0, v1

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 102
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 103
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 104
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 92
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 93
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    .line 94
    throw v0

    .array-data 1
    .end array-data
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 112
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setHttpResponseCode(I)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 125
    new-instance v0, Lcom/google/firebase/perf/network/InstrHttpInputStream;

    check-cast p1, Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/firebase/perf/network/InstrHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;Lcom/google/firebase/perf/util/Timer;)V

    move-object p1, v0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 128
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 129
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 130
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 118
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 119
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-static {v0}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    .line 120
    throw p1

    .array-data 1
    .end array-data
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 276
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 277
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getContentLength()I
    .locals 1

    .line 281
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 282
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public getContentLengthLong()J
    .locals 2

    .line 286
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 289
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 296
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 297
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getDate()J
    .locals 2

    .line 301
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 302
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDoInput()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDoOutput()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 4

    .line 335
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setHttpResponseCode(I)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    sget-object v0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v1, "IOException thrown trying to obtain the response code"

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;)V

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    new-instance v1, Lcom/google/firebase/perf/network/InstrHttpInputStream;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/perf/network/InstrHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;Lcom/google/firebase/perf/util/Timer;)V

    return-object v1

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getExpiration()J
    .locals 2

    .line 225
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 226
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 231
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 232
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 237
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 238
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 244
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    .array-data 1
    .end array-data
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 249
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 250
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 264
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 265
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 1

    .line 255
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 258
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    .array-data 1
    .end array-data
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 271
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 138
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setHttpResponseCode(I)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 139
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v1, Lcom/google/firebase/perf/network/InstrHttpInputStream;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/perf/network/InstrHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;Lcom/google/firebase/perf/util/Timer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 151
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 152
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    .line 153
    throw v0

    .array-data 1
    .end array-data
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLastModified()J
    .locals 2

    .line 158
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 159
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v1, Lcom/google/firebase/perf/network/InstrHttpOutputStream;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/perf/network/InstrHttpOutputStream;-><init>(Ljava/io/OutputStream;Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;Lcom/google/firebase/perf/util/Timer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 174
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 175
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    .line 176
    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 184
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 185
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    .line 186
    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getReadTimeout()I
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseCode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 192
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timeToResponseInitiatedInMicros:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timeToResponseInitiatedInMicros:J

    .line 194
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseInitiatedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 197
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setHttpResponseCode(I)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 201
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 202
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    .line 203
    throw v0

    .array-data 1
    .end array-data
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 209
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timeToResponseInitiatedInMicros:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timeToResponseInitiatedInMicros:J

    .line 211
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseInitiatedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 214
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setHttpResponseCode(I)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 218
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 219
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    .line 220
    throw v0

    .array-data 1
    .end array-data
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUseCaches()Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "User-Agent"

    .line 436
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v0, p2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setUserAgent(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public usingProxy()Z
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method
