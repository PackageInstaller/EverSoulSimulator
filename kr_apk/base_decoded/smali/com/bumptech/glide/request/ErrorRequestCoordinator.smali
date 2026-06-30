.class public final Lcom/bumptech/glide/request/ErrorRequestCoordinator;
.super Ljava/lang/Object;
.source "ErrorRequestCoordinator.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestCoordinator;
.implements Lcom/bumptech/glide/request/Request;


# instance fields
.field private volatile error:Lcom/bumptech/glide/request/Request;

.field private errorState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

.field private final parent:Lcom/bumptech/glide/request/RequestCoordinator;

.field private volatile primary:Lcom/bumptech/glide/request/Request;

.field private primaryState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

.field private final requestLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/bumptech/glide/request/RequestCoordinator;)V
    .locals 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    sget-object v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    iput-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 219
    sget-object v0, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    iput-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->errorState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 259
    iput-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    .line 269
    iput-object p2, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    return-void

    .array-data 1
    .end array-data
.end method

.method private isValidRequest(Lcom/bumptech/glide/request/Request;)Z
    .locals 2

    .line 1409
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    .line 1419
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method private parentCanNotifyCleared()Z
    .locals 1

    .line 1309
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyCleared(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private parentCanNotifyStatusChanged()Z
    .locals 1

    .line 1359
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private parentCanSetImage()Z
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private parentIsAnyResourceSet()Z
    .locals 1

    .line 1539
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public begin()V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    if-eq v1, v2, :cond_0

    .line 389
    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    iput-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 399
    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 419
    :cond_0
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

.method public canNotifyCleared(Lcom/bumptech/glide/request/Request;)Z
    .locals 2

    .line 1239
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1249
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parentCanNotifyCleared()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->isValidRequest(Lcom/bumptech/glide/request/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1259
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z
    .locals 2

    .line 1169
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1179
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parentCanNotifyStatusChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->isValidRequest(Lcom/bumptech/glide/request/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public canSetImage(Lcom/bumptech/glide/request/Request;)Z
    .locals 2

    .line 1049
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1059
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parentCanSetImage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->isValidRequest(Lcom/bumptech/glide/request/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1069
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public clear()V
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    iput-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 489
    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 519
    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->errorState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    if-eq v1, v2, :cond_0

    .line 529
    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    iput-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->errorState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 539
    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 559
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .array-data 1
    .end array-data
.end method

.method public isAnyResourceSet()Z
    .locals 2

    .line 1469
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parentIsAnyResourceSet()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1489
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .array-data 1
    .end array-data
.end method

.method public isCleared()Z
    .locals 3

    .line 889
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 899
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->errorState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 909
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    .array-data 1
    .end array-data
.end method

.method public isComplete()Z
    .locals 3

    .line 819
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 829
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->errorState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 839
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .array-data 1
    .end array-data
.end method

.method public isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z
    .locals 3

    .line 959
    instance-of v0, p1, Lcom/bumptech/glide/request/ErrorRequestCoordinator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 969
    check-cast p1, Lcom/bumptech/glide/request/ErrorRequestCoordinator;

    .line 979
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    iget-object v2, p1, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/Request;->isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    iget-object p1, p1, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/request/Request;->isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public isRunning()Z
    .locals 3

    .line 749
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->errorState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 769
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .array-data 1
    .end array-data
.end method

.method public onRequestFailed(Lcom/bumptech/glide/request/Request;)V
    .locals 2

    .line 1729
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1739
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1749
    sget-object p1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    iput-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 1759
    iget-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->errorState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    if-eq p1, v1, :cond_0

    .line 1769
    sget-object p1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    iput-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->errorState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 1779
    iget-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    invoke-interface {p1}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 1799
    :cond_0
    monitor-exit v0

    return-void

    .line 1829
    :cond_1
    sget-object p1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    iput-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->errorState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 1849
    iget-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz p1, :cond_2

    .line 1859
    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestFailed(Lcom/bumptech/glide/request/Request;)V

    .line 1879
    :cond_2
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

.method public onRequestSuccess(Lcom/bumptech/glide/request/Request;)V
    .locals 2

    .line 1589
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1599
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1609
    sget-object p1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    iput-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    goto :goto_0

    .line 1619
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1629
    sget-object p1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    iput-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->errorState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 1649
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz p1, :cond_2

    .line 1659
    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/bumptech/glide/request/Request;)V

    .line 1679
    :cond_2
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

.method public pause()V
    .locals 3

    .line 609
    iget-object v0, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_0

    .line 629
    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->PAUSED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    iput-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 639
    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->errorState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_1

    .line 669
    sget-object v1, Lcom/bumptech/glide/request/RequestCoordinator$RequestState;->PAUSED:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    iput-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->errorState:Lcom/bumptech/glide/request/RequestCoordinator$RequestState;

    .line 679
    iget-object v1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 699
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .array-data 1
    .end array-data
.end method

.method public setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->primary:Lcom/bumptech/glide/request/Request;

    .line 319
    iput-object p2, p0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->error:Lcom/bumptech/glide/request/Request;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
