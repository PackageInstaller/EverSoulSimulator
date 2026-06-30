.class Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/transport/RateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RateLimiterImpl"
.end annotation


# static fields
.field private static final MICROS_IN_A_SECOND:J

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private backgroundCapacity:J

.field private backgroundRate:Lcom/google/firebase/perf/util/Rate;

.field private capacity:J

.field private final clock:Lcom/google/firebase/perf/util/Clock;

.field private foregroundCapacity:J

.field private foregroundRate:Lcom/google/firebase/perf/util/Rate;

.field private final isLogcatEnabled:Z

.field private lastTimeTokenReplenished:Lcom/google/firebase/perf/util/Timer;

.field private rate:Lcom/google/firebase/perf/util/Rate;

.field private tokenCount:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 254
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    .line 255
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->MICROS_IN_A_SECOND:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lcom/google/firebase/perf/util/Rate;JLcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;Z)V
    .locals 0
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/google/firebase/perf/metrics/resource/ResourceType;
        .end annotation
    .end param

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p4, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->clock:Lcom/google/firebase/perf/util/Clock;

    .line 284
    iput-wide p2, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->capacity:J

    .line 285
    iput-object p1, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->rate:Lcom/google/firebase/perf/util/Rate;

    long-to-double p1, p2

    .line 286
    iput-wide p1, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->tokenCount:D

    .line 287
    invoke-virtual {p4}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->lastTimeTokenReplenished:Lcom/google/firebase/perf/util/Timer;

    .line 288
    invoke-direct {p0, p5, p6, p7}, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->setRateByReadingRemoteConfigValues(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;Z)V

    .line 289
    iput-boolean p7, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->isLogcatEnabled:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private static getBlimitEvents(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/firebase/perf/metrics/resource/ResourceType;
        .end annotation
    .end param

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getTraceEventCountBackground()J

    move-result-wide p0

    return-wide p0

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getNetworkEventCountBackground()J

    move-result-wide p0

    return-wide p0

    .array-data 1
    .end array-data
.end method

.method private static getBlimitSec(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/firebase/perf/metrics/resource/ResourceType;
        .end annotation
    .end param

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRateLimitSec()J

    move-result-wide p0

    return-wide p0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRateLimitSec()J

    move-result-wide p0

    return-wide p0

    .array-data 1
    .end array-data
.end method

.method private static getFlimitEvents(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/firebase/perf/metrics/resource/ResourceType;
        .end annotation
    .end param

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getTraceEventCountForeground()J

    move-result-wide p0

    return-wide p0

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getNetworkEventCountForeground()J

    move-result-wide p0

    return-wide p0

    .array-data 1
    .end array-data
.end method

.method private static getFlimitSec(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/firebase/perf/metrics/resource/ResourceType;
        .end annotation
    .end param

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRateLimitSec()J

    move-result-wide p0

    return-wide p0

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRateLimitSec()J

    move-result-wide p0

    return-wide p0

    .array-data 1
    .end array-data
.end method

.method private setRateByReadingRemoteConfigValues(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;Z)V
    .locals 14
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/google/firebase/perf/metrics/resource/ResourceType;
        .end annotation
    .end param

    move-object v0, p0

    .line 341
    invoke-static/range {p1 .. p2}, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->getFlimitSec(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J

    move-result-wide v4

    .line 342
    invoke-static/range {p1 .. p2}, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->getFlimitEvents(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J

    move-result-wide v7

    .line 344
    new-instance v9, Lcom/google/firebase/perf/util/Rate;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, v9

    move-wide v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/perf/util/Rate;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    iput-object v9, v0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->foregroundRate:Lcom/google/firebase/perf/util/Rate;

    .line 345
    iput-wide v7, v0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->foregroundCapacity:J

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz p3, :cond_0

    .line 347
    sget-object v5, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p2, v6, v3

    aput-object v9, v6, v2

    .line 349
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "Foreground %s logging rate:%f, burst capacity:%d"

    .line 347
    invoke-virtual {v5, v7, v6}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->getBlimitSec(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J

    move-result-wide v11

    .line 354
    invoke-static/range {p1 .. p2}, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->getBlimitEvents(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J

    move-result-wide v5

    .line 356
    new-instance v7, Lcom/google/firebase/perf/util/Rate;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v8, v7

    move-wide v9, v5

    invoke-direct/range {v8 .. v13}, Lcom/google/firebase/perf/util/Rate;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    iput-object v7, v0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->backgroundRate:Lcom/google/firebase/perf/util/Rate;

    .line 357
    iput-wide v5, v0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->backgroundCapacity:J

    if-eqz p3, :cond_1

    .line 359
    sget-object v8, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    aput-object v7, v4, v2

    .line 360
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "Background %s logging rate:%f, capacity:%d"

    .line 359
    invoke-virtual {v8, v1, v4}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method declared-synchronized changeRate(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->foregroundRate:Lcom/google/firebase/perf/util/Rate;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->backgroundRate:Lcom/google/firebase/perf/util/Rate;

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->rate:Lcom/google/firebase/perf/util/Rate;

    if-eqz p1, :cond_1

    .line 327
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->foregroundCapacity:J

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->backgroundCapacity:J

    :goto_1
    iput-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->capacity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method declared-synchronized check(Lcom/google/firebase/perf/v1/PerfMetric;)Z
    .locals 4

    monitor-enter p0

    .line 301
    :try_start_0
    iget-object p1, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->clock:Lcom/google/firebase/perf/util/Clock;

    invoke-virtual {p1}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    .line 302
    iget-object v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->lastTimeTokenReplenished:Lcom/google/firebase/perf/util/Timer;

    .line 303
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->rate:Lcom/google/firebase/perf/util/Rate;

    .line 304
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Rate;->getTokensPerSeconds()D

    move-result-wide v2

    mul-double/2addr v0, v2

    sget-wide v2, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->MICROS_IN_A_SECOND:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 307
    iget-wide v2, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->tokenCount:D

    add-double/2addr v2, v0

    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->capacity:J

    long-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->tokenCount:D

    .line 308
    iput-object p1, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->lastTimeTokenReplenished:Lcom/google/firebase/perf/util/Timer;

    .line 310
    :cond_0
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->tokenCount:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    sub-double/2addr v0, v2

    .line 311
    iput-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->tokenCount:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 314
    :cond_1
    :try_start_1
    iget-boolean p1, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->isLogcatEnabled:Z

    if-eqz p1, :cond_2

    .line 315
    sget-object p1, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v0, "Exceeded log rate limit, dropping the log."

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :cond_2
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method getBackgroundCapacity()J
    .locals 2

    .line 413
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->backgroundCapacity:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method getBackgroundRate()Lcom/google/firebase/perf/util/Rate;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->backgroundRate:Lcom/google/firebase/perf/util/Rate;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method getForegroundCapacity()J
    .locals 2

    .line 403
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->foregroundCapacity:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method getForegroundRate()Lcom/google/firebase/perf/util/Rate;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->foregroundRate:Lcom/google/firebase/perf/util/Rate;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method getRate()Lcom/google/firebase/perf/util/Rate;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->rate:Lcom/google/firebase/perf/util/Rate;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method setRate(Lcom/google/firebase/perf/util/Rate;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->rate:Lcom/google/firebase/perf/util/Rate;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
