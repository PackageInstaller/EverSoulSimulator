.class public Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;
.super Ljava/lang/Object;
.source "CpuGaugeCollector.java"


# static fields
.field private static final CSTIME_POSITION_IN_PROC_PID_STAT:I = 0x10

.field private static final CUTIME_POSITION_IN_PROC_PID_STAT:I = 0xf

.field public static final INVALID_CPU_COLLECTION_FREQUENCY:J = -0x1L

.field private static final INVALID_SC_PER_CPU_CLOCK_TICK:I = -0x1

.field private static final MICROSECONDS_PER_SECOND:J

.field private static final STIME_POSITION_IN_PROC_PID_STAT:I = 0xe

.field private static final UNSET_CPU_METRIC_COLLECTION_RATE:I = -0x1

.field private static final UTIME_POSITION_IN_PROC_PID_STAT:I = 0xd

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private final clockTicksPerSecond:J

.field private cpuMetricCollectionRateMs:J

.field private final cpuMetricCollectorExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private cpuMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

.field public final cpuMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/google/firebase/perf/v1/CpuMetricReading;",
            ">;"
        }
    .end annotation
.end field

.field private final procFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    .line 73
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->MICROSECONDS_PER_SECOND:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v0, -0x1

    .line 82
    iput-wide v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricCollectionRateMs:J

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 88
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricCollectorExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 90
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/proc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->procFileName:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->getClockTicksPerSecond()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->clockTicksPerSecond:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;J)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v0, -0x1

    .line 82
    iput-wide v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricCollectionRateMs:J

    .line 101
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 102
    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricCollectorExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 103
    iput-object p2, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->procFileName:Ljava/lang/String;

    .line 104
    iput-wide p3, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->clockTicksPerSecond:J

    return-void

    .array-data 1
    .end array-data
.end method

.method private convertClockTicksToMicroseconds(J)J
    .locals 2

    long-to-double p1, p1

    .line 239
    iget-wide v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->clockTicksPerSecond:J

    long-to-double v0, v0

    div-double/2addr p1, v0

    sget-wide v0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->MICROSECONDS_PER_SECOND:J

    long-to-double v0, v0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    return-wide p1

    .array-data 1
    .end array-data
.end method

.method private getClockTicksPerSecond()J
    .locals 2

    .line 231
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isInvalidCollectionFrequency(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method private declared-synchronized scheduleCpuMetricCollectionOnce(Lcom/google/firebase/perf/util/Timer;)V
    .locals 5

    const-string v0, "Unable to collect Cpu Metric: "

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricCollectorExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;Lcom/google/firebase/perf/util/Timer;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    .line 185
    invoke-interface {v1, v2, v3, v4, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 195
    :try_start_1
    sget-object v1, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private declared-synchronized scheduleCpuMetricCollectionWithRate(JLcom/google/firebase/perf/util/Timer;)V
    .locals 8

    const-string v0, "Unable to start collecting Cpu Metrics: "

    monitor-enter p0

    .line 163
    :try_start_0
    iput-wide p1, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricCollectionRateMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :try_start_1
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricCollectorExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;Lcom/google/firebase/perf/util/Timer;)V

    const-wide/16 v3, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v5, p1

    .line 166
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 177
    :try_start_2
    sget-object p2, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method private syncCollectCpuMetric(Lcom/google/firebase/perf/util/Timer;)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 205
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->procFileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :try_start_1
    invoke-virtual {p1}, Lcom/google/firebase/perf/util/Timer;->getCurrentTimestampMicros()J

    move-result-wide v2

    .line 207
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    const-string v4, " "

    .line 208
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0xd

    .line 210
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/16 v6, 0xf

    .line 211
    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/16 v8, 0xe

    .line 213
    aget-object v8, p1, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/16 v10, 0x10

    .line 214
    aget-object p1, p1, v10

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 216
    invoke-static {}, Lcom/google/firebase/perf/v1/CpuMetricReading;->newBuilder()Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;

    move-result-object p1

    .line 217
    invoke-virtual {p1, v2, v3}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->setClientTimeUs(J)Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;

    move-result-object p1

    add-long/2addr v8, v10

    .line 218
    invoke-direct {p0, v8, v9}, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->convertClockTicksToMicroseconds(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->setSystemTimeUs(J)Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;

    move-result-object p1

    add-long/2addr v4, v6

    .line 219
    invoke-direct {p0, v4, v5}, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->convertClockTicksToMicroseconds(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->setUserTimeUs(J)Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/CpuMetricReading;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 205
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 224
    :goto_1
    sget-object v1, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected \'/proc/[pid]/stat\' file format encountered: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception p1

    .line 222
    sget-object v1, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to read \'proc/[pid]/stat\' file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;)V

    :goto_2
    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public collectOnce(Lcom/google/firebase/perf/util/Timer;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->scheduleCpuMetricCollectionOnce(Lcom/google/firebase/perf/util/Timer;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic lambda$scheduleCpuMetricCollectionOnce$1$com-google-firebase-perf-session-gauges-CpuGaugeCollector(Lcom/google/firebase/perf/util/Timer;)V
    .locals 1

    .line 187
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->syncCollectCpuMetric(Lcom/google/firebase/perf/util/Timer;)Lcom/google/firebase/perf/v1/CpuMetricReading;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic lambda$scheduleCpuMetricCollectionWithRate$0$com-google-firebase-perf-session-gauges-CpuGaugeCollector(Lcom/google/firebase/perf/util/Timer;)V
    .locals 1

    .line 168
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->syncCollectCpuMetric(Lcom/google/firebase/perf/util/Timer;)Lcom/google/firebase/perf/v1/CpuMetricReading;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public startCollecting(JLcom/google/firebase/perf/util/Timer;)V
    .locals 4

    .line 120
    iget-wide v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->clockTicksPerSecond:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {p1, p2}, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->isInvalidCollectionFrequency(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_3

    .line 129
    iget-wide v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricCollectionRateMs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->stopCollecting()V

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->scheduleCpuMetricCollectionWithRate(JLcom/google/firebase/perf/util/Timer;)V

    :cond_2
    return-void

    .line 135
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->scheduleCpuMetricCollectionWithRate(JLcom/google/firebase/perf/util/Timer;)V

    :cond_4
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public stopCollecting()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 144
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v0, -0x1

    .line 146
    iput-wide v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->cpuMetricCollectionRateMs:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method
