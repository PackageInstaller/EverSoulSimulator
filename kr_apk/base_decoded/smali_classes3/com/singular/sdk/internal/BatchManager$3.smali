.class Lcom/singular/sdk/internal/BatchManager$3;
.super Ljava/lang/Object;
.source "BatchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/BatchManager;->sendEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/BatchManager;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/BatchManager;)V
    .locals 0

    .line 2399
    iput-object p1, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "sendEvents: total events to send "

    .line 2469
    :try_start_0
    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v1}, Lcom/singular/sdk/internal/BatchManager;->access$700(Lcom/singular/sdk/internal/BatchManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2499
    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v1}, Lcom/singular/sdk/internal/BatchManager;->access$800(Lcom/singular/sdk/internal/BatchManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 2519
    :try_start_1
    invoke-static {}, Lcom/singular/sdk/internal/BatchManager;->access$400()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v2

    invoke-static {v1}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 2549
    :goto_0
    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v1}, Lcom/singular/sdk/internal/BatchManager;->access$1000(Lcom/singular/sdk/internal/BatchManager;)Lcom/singular/sdk/internal/BatchManagerPersistence;

    move-result-object v2

    invoke-interface {v2}, Lcom/singular/sdk/internal/BatchManagerPersistence;->incSendId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/singular/sdk/internal/BatchManager;->access$902(Lcom/singular/sdk/internal/BatchManager;J)J

    .line 2559
    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v1}, Lcom/singular/sdk/internal/BatchManager;->access$800(Lcom/singular/sdk/internal/BatchManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2579
    invoke-static {}, Lcom/singular/sdk/internal/BatchManager;->access$400()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v0}, Lcom/singular/sdk/internal/BatchManager;->access$1100(Lcom/singular/sdk/internal/BatchManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 2589
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 2629
    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v1}, Lcom/singular/sdk/internal/BatchManager;->access$1100(Lcom/singular/sdk/internal/BatchManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 2639
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move v4, v2

    .line 2649
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 2659
    new-instance v5, Lorg/json/JSONObject;

    aget-object v6, v1, v4

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "send_id"

    .line 2669
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 2679
    iget-object v7, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v7}, Lcom/singular/sdk/internal/BatchManager;->access$900(Lcom/singular/sdk/internal/BatchManager;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 2689
    aget-object v5, v1, v4

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    .line 2729
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 2739
    new-instance v8, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x1

    invoke-direct {v8, v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    .line 2749
    array-length v9, v1

    move v10, v2

    :goto_2
    if-ge v10, v9, :cond_2

    aget-object v5, v1, v10

    .line 2759
    iget-object v2, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v2}, Lcom/singular/sdk/internal/BatchManager;->access$1100(Lcom/singular/sdk/internal/BatchManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/singular/sdk/internal/BaseApi;

    .line 2769
    invoke-static {}, Lcom/singular/sdk/internal/BatchManager;->access$400()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendEvents: sending event with key: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " and body: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/singular/sdk/internal/BaseApi;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2819
    :try_start_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    new-instance v12, Lcom/singular/sdk/internal/BatchManager$3$1;

    move-object v2, v12

    move-object v3, p0

    move-object v6, v0

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/singular/sdk/internal/BatchManager$3$1;-><init>(Lcom/singular/sdk/internal/BatchManager$3;Lcom/singular/sdk/internal/BaseApi;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    .line 3089
    :try_start_3
    invoke-static {}, Lcom/singular/sdk/internal/BatchManager;->access$400()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v3

    invoke-static {v2}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 3099
    iget-object v3, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v3, v2}, Lcom/singular/sdk/internal/BatchManager;->access$1300(Lcom/singular/sdk/internal/BatchManager;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3179
    :cond_2
    :try_start_4
    array-length v0, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v8, v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3219
    :try_start_5
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v0}, Lcom/singular/sdk/internal/BatchManager;->access$700(Lcom/singular/sdk/internal/BatchManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    :goto_4
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catchall_2
    move-exception v0

    .line 3199
    :try_start_6
    invoke-static {}, Lcom/singular/sdk/internal/BatchManager;->access$400()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 3219
    :try_start_7
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v0}, Lcom/singular/sdk/internal/BatchManager;->access$700(Lcom/singular/sdk/internal/BatchManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    goto :goto_4

    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v1}, Lcom/singular/sdk/internal/BatchManager;->access$700(Lcom/singular/sdk/internal/BatchManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3229
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    .line 3249
    :try_start_8
    invoke-static {}, Lcom/singular/sdk/internal/BatchManager;->access$400()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 3259
    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v1, v0}, Lcom/singular/sdk/internal/BatchManager;->access$1300(Lcom/singular/sdk/internal/BatchManager;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 3279
    :goto_5
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v0}, Lcom/singular/sdk/internal/BatchManager;->access$800(Lcom/singular/sdk/internal/BatchManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_5
    move-exception v0

    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v1}, Lcom/singular/sdk/internal/BatchManager;->access$800(Lcom/singular/sdk/internal/BatchManager;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3289
    throw v0

    .array-data 1
    .end array-data
.end method
