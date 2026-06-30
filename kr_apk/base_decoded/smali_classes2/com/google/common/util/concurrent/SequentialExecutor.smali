.class final Lcom/google/common/util/concurrent/SequentialExecutor;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;,
        Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final queue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final worker:Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

.field private workerRunCount:J

.field private workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/SequentialExecutor;->log:Ljava/util/logging/Logger;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    .line 72
    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    .line 85
    new-instance v0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;-><init>(Lcom/google/common/util/concurrent/SequentialExecutor;Lcom/google/common/util/concurrent/SequentialExecutor$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->worker:Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

    .line 89
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->executor:Ljava/util/concurrent/Executor;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/SequentialExecutor;)Ljava/util/Deque;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/SequentialExecutor;)Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$202(Lcom/google/common/util/concurrent/SequentialExecutor;Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;)Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$308(Lcom/google/common/util/concurrent/SequentialExecutor;)J
    .locals 4

    .line 52
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .locals 1

    .line 52
    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor;->log:Ljava/util/logging/Logger;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 7

    .line 100
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v2, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->RUNNING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v2, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUED:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v1, v2, :cond_0

    goto :goto_3

    .line 111
    :cond_0
    iget-wide v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    .line 119
    new-instance v3, Lcom/google/common/util/concurrent/SequentialExecutor$1;

    invoke-direct {v3, p0, p1}, Lcom/google/common/util/concurrent/SequentialExecutor$1;-><init>(Lcom/google/common/util/concurrent/SequentialExecutor;Ljava/lang/Runnable;)V

    .line 131
    iget-object p1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    invoke-interface {p1, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object p1, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object p1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 133
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 136
    :try_start_1
    iget-object v4, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->executor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->worker:Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    iget-object v3, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v4, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    return-void

    .line 166
    :cond_2
    iget-object v4, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    monitor-enter v4

    .line 167
    :try_start_2
    iget-wide v5, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    cmp-long p1, v5, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne p1, v0, :cond_3

    .line 168
    sget-object p1, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUED:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object p1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 170
    :cond_3
    monitor-exit v4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 138
    :goto_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    monitor-enter v2

    .line 139
    :try_start_3
    iget-object v4, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v5, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v5, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v4, v5, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    .line 141
    invoke-interface {v4, v3}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move p1, v0

    .line 144
    :goto_2
    instance-of v0, v1, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    .line 147
    monitor-exit v2

    return-void

    .line 145
    :cond_6
    throw v1

    :catchall_1
    move-exception p1

    .line 147
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 107
    :cond_7
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    .line 133
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 265
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SequentialExecutor@"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
