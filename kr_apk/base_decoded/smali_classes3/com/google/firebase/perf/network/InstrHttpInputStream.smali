.class public final Lcom/google/firebase/perf/network/InstrHttpInputStream;
.super Ljava/io/InputStream;
.source "InstrHttpInputStream.java"


# instance fields
.field private bytesRead:J

.field private final inputStream:Ljava/io/InputStream;

.field private final networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

.field private timeToResponseInitiated:J

.field private timeToResponseLastRead:J

.field private final timer:Lcom/google/firebase/perf/util/Timer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;Lcom/google/firebase/perf/util/Timer;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 29
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->bytesRead:J

    .line 31
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseLastRead:J

    .line 42
    iput-object p3, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 43
    iput-object p1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->inputStream:Ljava/io/InputStream;

    .line 44
    iput-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 45
    invoke-virtual {p2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->getTimeToResponseInitiatedMicros()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseInitiated:J

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 53
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 54
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    .line 55
    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    .line 62
    iget-wide v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseLastRead:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 63
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseLastRead:J

    .line 67
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 68
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->bytesRead:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 71
    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseInitiated:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    .line 72
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseInitiatedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseLastRead:J

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 76
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 78
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 79
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    .line 80
    throw v0

    .array-data 1
    .end array-data
.end method

.method public mark(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public markSupported()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    .line 99
    iget-wide v3, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseInitiated:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 100
    iput-wide v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseInitiated:J

    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 102
    iget-wide v3, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseLastRead:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 103
    iput-wide v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseLastRead:J

    .line 104
    iget-object v3, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 105
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    goto :goto_0

    .line 107
    :cond_1
    iget-wide v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->bytesRead:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->bytesRead:J

    .line 108
    iget-object v3, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 112
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 113
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    .line 114
    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public read([B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 147
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    .line 148
    iget-wide v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseInitiated:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 149
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseInitiated:J

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 151
    iget-wide v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseLastRead:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 152
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseLastRead:J

    .line 153
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 154
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    goto :goto_0

    .line 156
    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->bytesRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->bytesRead:J

    .line 157
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 161
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 162
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-static {v0}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    .line 163
    throw p1

    .array-data 1
    .end array-data
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 123
    iget-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide p2

    .line 124
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseInitiated:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 125
    iput-wide p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseInitiated:J

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 127
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseLastRead:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 128
    iput-wide p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseLastRead:J

    .line 129
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 130
    iget-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {p2}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    goto :goto_0

    .line 132
    :cond_1
    iget-wide p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->bytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->bytesRead:J

    .line 133
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 137
    iget-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object p3, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 138
    iget-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-static {p2}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    .line 139
    throw p1

    .array-data 1
    .end array-data
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 172
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 173
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    .line 174
    throw v0

    .array-data 1
    .end array-data
.end method

.method public skip(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 182
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    .line 183
    iget-wide v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseInitiated:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 184
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseInitiated:J

    :cond_0
    cmp-long v2, p1, v4

    if-nez v2, :cond_1

    .line 186
    iget-wide v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseLastRead:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 187
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timeToResponseLastRead:J

    .line 188
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    goto :goto_0

    .line 190
    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->bytesRead:J

    .line 191
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide p1

    :catch_0
    move-exception p1

    .line 195
    iget-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->timer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    .line 196
    iget-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;

    invoke-static {p2}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    .line 197
    throw p1

    nop

    .array-data 1
    .end array-data
.end method
