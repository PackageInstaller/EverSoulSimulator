.class final Ltwitter4j/DispatcherImpl;
.super Ljava/lang/Object;
.source "DispatcherImpl.java"

# interfaces
.implements Ltwitter4j/Dispatcher;


# static fields
.field private static final SHUTDOWN_TIME:J = 0x1388L

.field private static final logger:Ltwitter4j/Logger;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 319
    const-class v0, Ltwitter4j/DispatcherImpl;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/DispatcherImpl;->logger:Ltwitter4j/Logger;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 2

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getAsyncNumThreads()I

    move-result v0

    new-instance v1, Ltwitter4j/DispatcherImpl$1;

    invoke-direct {v1, p0, p1}, Ltwitter4j/DispatcherImpl$1;-><init>(Ltwitter4j/DispatcherImpl;Ltwitter4j/conf/Configuration;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/DispatcherImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 489
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    new-instance v0, Ltwitter4j/DispatcherImpl$2;

    invoke-direct {v0, p0}, Ltwitter4j/DispatcherImpl$2;-><init>(Ltwitter4j/DispatcherImpl;)V

    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000(Ltwitter4j/DispatcherImpl;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 299
    iget-object p0, p0, Ltwitter4j/DispatcherImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public declared-synchronized invokeLater(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 589
    :try_start_0
    iget-object v0, p0, Ltwitter4j/DispatcherImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized shutdown()V
    .locals 4

    monitor-enter p0

    .line 639
    :try_start_0
    iget-object v0, p0, Ltwitter4j/DispatcherImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    :try_start_1
    iget-object v0, p0, Ltwitter4j/DispatcherImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Ltwitter4j/DispatcherImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 699
    :try_start_2
    sget-object v1, Ltwitter4j/DispatcherImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltwitter4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 719
    :cond_0
    :goto_0
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
