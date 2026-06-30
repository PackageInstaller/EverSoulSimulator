.class public Lbolts/CancellationTokenSource;
.super Ljava/lang/Object;
.source "CancellationTokenSource.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private cancellationRequested:Z

.field private closed:Z

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final lock:Ljava/lang/Object;

.field private final registrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbolts/CancellationTokenRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    .line 339
    invoke-static {}, Lbolts/BoltsExecutors;->scheduled()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbolts/CancellationTokenSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000(Lbolts/CancellationTokenSource;)Ljava/lang/Object;
    .locals 0

    .line 299
    iget-object p0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$102(Lbolts/CancellationTokenSource;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 299
    iput-object p1, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private cancelAfter(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 989
    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->cancel()V

    return-void

    .line 1029
    :cond_0
    iget-object v1, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1039
    :try_start_0
    iget-boolean v2, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-eqz v2, :cond_1

    .line 1049
    monitor-exit v1

    return-void

    .line 1079
    :cond_1
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->cancelScheduledCancellation()V

    if-eqz v0, :cond_2

    .line 1109
    iget-object v0, p0, Lbolts/CancellationTokenSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lbolts/CancellationTokenSource$1;

    invoke-direct {v2, p0}, Lbolts/CancellationTokenSource$1;-><init>(Lbolts/CancellationTokenSource;)V

    invoke-interface {v0, v2, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    .line 1209
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 949
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Delay must be >= -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method private cancelScheduledCancellation()V
    .locals 2

    .line 2059
    iget-object v0, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2069
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 2079
    iput-object v0, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private notifyListeners(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbolts/CancellationTokenRegistration;",
            ">;)V"
        }
    .end annotation

    .line 1819
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/CancellationTokenRegistration;

    .line 1829
    invoke-virtual {v0}, Lbolts/CancellationTokenRegistration;->runAction()V

    goto :goto_0

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private throwIfClosed()V
    .locals 2

    .line 1989
    iget-boolean v0, p0, Lbolts/CancellationTokenSource;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 1999
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
.method public cancel()V
    .locals 3

    .line 699
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 719
    iget-boolean v1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-eqz v1, :cond_0

    .line 729
    monitor-exit v0

    return-void

    .line 759
    :cond_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->cancelScheduledCancellation()V

    const/4 v1, 0x1

    .line 779
    iput-boolean v1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    .line 789
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 799
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    invoke-direct {p0, v1}, Lbolts/CancellationTokenSource;->notifyListeners(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v1

    .line 799
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    .array-data 1
    .end array-data
.end method

.method public cancelAfter(J)V
    .locals 1

    .line 899
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, p2, v0}, Lbolts/CancellationTokenSource;->cancelAfter(JLjava/util/concurrent/TimeUnit;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public close()V
    .locals 3

    .line 1259
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1269
    :try_start_0
    iget-boolean v1, p0, Lbolts/CancellationTokenSource;->closed:Z

    if-eqz v1, :cond_0

    .line 1279
    monitor-exit v0

    return-void

    .line 1309
    :cond_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->cancelScheduledCancellation()V

    .line 1329
    iget-object v1, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/CancellationTokenRegistration;

    .line 1339
    invoke-virtual {v2}, Lbolts/CancellationTokenRegistration;->close()V

    goto :goto_0

    .line 1359
    :cond_1
    iget-object v1, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    .line 1369
    iput-boolean v1, p0, Lbolts/CancellationTokenSource;->closed:Z

    .line 1379
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

.method public getToken()Lbolts/CancellationToken;
    .locals 2

    .line 589
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 609
    new-instance v1, Lbolts/CancellationToken;

    invoke-direct {v1, p0}, Lbolts/CancellationToken;-><init>(Lbolts/CancellationTokenSource;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 619
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .array-data 1
    .end array-data
.end method

.method public isCancellationRequested()Z
    .locals 2

    .line 489
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 509
    iget-boolean v1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 519
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    .array-data 1
    .end array-data
.end method

.method register(Ljava/lang/Runnable;)Lbolts/CancellationTokenRegistration;
    .locals 2

    .line 1429
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1439
    :try_start_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 1459
    new-instance v1, Lbolts/CancellationTokenRegistration;

    invoke-direct {v1, p0, p1}, Lbolts/CancellationTokenRegistration;-><init>(Lbolts/CancellationTokenSource;Ljava/lang/Runnable;)V

    .line 1469
    iget-boolean p1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-eqz p1, :cond_0

    .line 1479
    invoke-virtual {v1}, Lbolts/CancellationTokenRegistration;->runAction()V

    goto :goto_0

    .line 1499
    :cond_0
    iget-object p1, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1519
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method throwIfCancellationRequested()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 1609
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1619
    :try_start_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 1629
    iget-boolean v1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-nez v1, :cond_0

    .line 1659
    monitor-exit v0

    return-void

    .line 1639
    :cond_0
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 1659
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1889
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->isCancellationRequested()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, -0x451c4bff

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method unregister(Lbolts/CancellationTokenRegistration;)V
    .locals 2

    .line 1699
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1709
    :try_start_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 1719
    iget-object v1, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1729
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .array-data 1
    .end array-data
.end method
