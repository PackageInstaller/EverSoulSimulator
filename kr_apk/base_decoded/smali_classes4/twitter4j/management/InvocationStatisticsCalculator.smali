.class public Ltwitter4j/management/InvocationStatisticsCalculator;
.super Ljava/lang/Object;
.source "InvocationStatisticsCalculator.java"

# interfaces
.implements Ltwitter4j/management/InvocationStatistics;


# instance fields
.field private callCount:J

.field private errorCount:J

.field private index:I

.field private final name:Ljava/lang/String;

.field private times:[J

.field private totalTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p1, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->name:Ljava/lang/String;

    .line 399
    new-array p1, p2, [J

    iput-object p1, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->times:[J

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public declared-synchronized getAverageTime()J
    .locals 7

    monitor-enter p0

    .line 759
    :try_start_0
    iget-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->callCount:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->times:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 779
    monitor-exit p0

    return-wide v1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 829
    :try_start_1
    iget-object v4, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->times:[J

    aget-wide v5, v4, v3

    add-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-long v3, v0

    .line 859
    div-long/2addr v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCallCount()J
    .locals 2

    .line 609
    iget-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->callCount:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getErrorCount()J
    .locals 2

    .line 659
    iget-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->errorCount:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->name:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTotalTime()J
    .locals 2

    .line 709
    iget-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->totalTime:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method increment(JZ)V
    .locals 4

    .line 439
    iget-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->callCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->callCount:J

    .line 449
    iget-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->errorCount:J

    if-eqz p3, :cond_0

    const-wide/16 v2, 0x0

    :cond_0
    add-long/2addr v0, v2

    iput-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->errorCount:J

    .line 459
    iget-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->totalTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->totalTime:J

    .line 479
    iget-object p3, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->times:[J

    iget v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->index:I

    aput-wide p1, p3, v0

    add-int/lit8 v0, v0, 0x1

    .line 499
    iput v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->index:I

    array-length p1, p3

    if-lt v0, p1, :cond_1

    const/4 p1, 0x0

    .line 509
    iput p1, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->index:I

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 909
    :try_start_0
    iput-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->callCount:J

    .line 919
    iput-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->errorCount:J

    .line 929
    iput-wide v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->totalTime:J

    .line 939
    iget-object v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->times:[J

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->times:[J

    const/4 v0, 0x0

    .line 949
    iput v0, p0, Ltwitter4j/management/InvocationStatisticsCalculator;->index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x22405516

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getCallCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x224054d6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1029
    invoke-virtual {p0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getErrorCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x22405486

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1039
    invoke-virtual {p0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getTotalTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x5d0574ef

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1049
    invoke-virtual {p0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getAverageTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
