.class public Lbolts/CancellationTokenRegistration;
.super Ljava/lang/Object;
.source "CancellationTokenRegistration.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private action:Ljava/lang/Runnable;

.field private closed:Z

.field private final lock:Ljava/lang/Object;

.field private tokenSource:Lbolts/CancellationTokenSource;


# direct methods
.method constructor <init>(Lbolts/CancellationTokenSource;Ljava/lang/Runnable;)V
    .locals 1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/CancellationTokenRegistration;->lock:Ljava/lang/Object;

    .line 279
    iput-object p1, p0, Lbolts/CancellationTokenRegistration;->tokenSource:Lbolts/CancellationTokenSource;

    .line 289
    iput-object p2, p0, Lbolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private throwIfClosed()V
    .locals 2

    .line 579
    iget-boolean v0, p0, Lbolts/CancellationTokenRegistration;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 589
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const v1, 0x33678133

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 369
    iget-object v0, p0, Lbolts/CancellationTokenRegistration;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_0
    iget-boolean v1, p0, Lbolts/CancellationTokenRegistration;->closed:Z

    if-eqz v1, :cond_0

    .line 389
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 419
    iput-boolean v1, p0, Lbolts/CancellationTokenRegistration;->closed:Z

    .line 429
    iget-object v1, p0, Lbolts/CancellationTokenRegistration;->tokenSource:Lbolts/CancellationTokenSource;

    invoke-virtual {v1, p0}, Lbolts/CancellationTokenSource;->unregister(Lbolts/CancellationTokenRegistration;)V

    const/4 v1, 0x0

    .line 439
    iput-object v1, p0, Lbolts/CancellationTokenRegistration;->tokenSource:Lbolts/CancellationTokenSource;

    .line 449
    iput-object v1, p0, Lbolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    .line 459
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    .array-data 1
    .end array-data
.end method

.method runAction()V
    .locals 2

    .line 499
    iget-object v0, p0, Lbolts/CancellationTokenRegistration;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_0
    invoke-direct {p0}, Lbolts/CancellationTokenRegistration;->throwIfClosed()V

    .line 519
    iget-object v1, p0, Lbolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 529
    invoke-virtual {p0}, Lbolts/CancellationTokenRegistration;->close()V

    .line 539
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    .array-data 1
    .end array-data
.end method
