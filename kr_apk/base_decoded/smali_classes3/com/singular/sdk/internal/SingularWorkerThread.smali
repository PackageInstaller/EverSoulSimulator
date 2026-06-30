.class public Lcom/singular/sdk/internal/SingularWorkerThread;
.super Landroid/os/HandlerThread;
.source "SingularWorkerThread.java"


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private declared-synchronized ensureInit()V
    .locals 2

    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularWorkerThread;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularWorkerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/singular/sdk/internal/SingularWorkerThread;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 159
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularWorkerThread;->ensureInit()V

    .line 169
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularWorkerThread;->handler:Landroid/os/Handler;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularWorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public postAtFront(Ljava/lang/Runnable;)V
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularWorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public postDelayed(Ljava/lang/Runnable;I)V
    .locals 3

    .line 249
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularWorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method
