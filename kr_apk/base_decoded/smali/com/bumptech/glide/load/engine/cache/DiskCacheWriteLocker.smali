.class final Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;,
        Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    }
.end annotation


# instance fields
.field private final locks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;",
            ">;"
        }
    .end annotation
.end field

.field private final writeLockPool:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    .line 229
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->writeLockPool:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method acquire(Ljava/lang/String;)V
    .locals 2

    .line 269
    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->writeLockPool:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->obtain()Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_0
    iget p1, v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    .line 339
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    iget-object p1, v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void

    :catchall_0
    move-exception p1

    .line 339
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .array-data 1
    .end array-data
.end method

.method release(Ljava/lang/String;)V
    .locals 5

    const v0, -0x2246d49c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d0802b0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 409
    monitor-enter p0

    .line 419
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    .line 429
    iget v3, v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    .line 519
    iget v1, v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    .line 529
    iget v1, v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    if-nez v1, :cond_1

    .line 539
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->locks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 649
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;->writeLockPool:Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->offer(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;)V

    goto :goto_0

    .line 559
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", but actually removed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", safeKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 669
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    iget-object p1, v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 439
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", interestedThreads: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 669
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method
