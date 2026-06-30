.class abstract Lcom/google/common/util/concurrent/AggregateFuture;
.super Lcom/google/common/util/concurrent/AggregateFutureState;
.source "AggregateFuture.java"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AggregateFutureState<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final allMustSucceed:Z

.field private final collectsValues:Z

.field private futures:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TInputT;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AggregateFuture;->logger:Ljava/util/logging/Logger;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AggregateFutureState;-><init>(I)V

    .line 69
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableCollection;

    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    .line 70
    iput-boolean p2, p0, Lcom/google/common/util/concurrent/AggregateFuture;->allMustSucceed:Z

    .line 71
    iput-boolean p3, p0, Lcom/google/common/util/concurrent/AggregateFuture;->collectsValues:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private static addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 354
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 353
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private collectValueFromNonCancelledFuture(ILjava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    .line 268
    :try_start_0
    invoke-static {p2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/AggregateFuture;->collectOneValue(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 272
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private decrementCountAndMaybeComplete(Lcom/google/common/collect/ImmutableCollection;)V
    .locals 3
    .param p1    # Lcom/google/common/collect/ImmutableCollection;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->decrementRemainingAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Less than 0 remaining futures"

    .line 281
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-nez v0, :cond_1

    .line 283
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->processCompleted(Lcom/google/common/collect/ImmutableCollection;)V

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .locals 1

    .line 195
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->allMustSucceed:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->getOrInitSeenExceptions()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFuture;->log(Ljava/lang/Throwable;)V

    return-void

    .line 216
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 224
    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFuture;->log(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static log(Ljava/lang/Throwable;)V
    .locals 3

    .line 230
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    const-string v0, "Input Future failed with Error"

    goto :goto_0

    :cond_0
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    .line 233
    :goto_0
    sget-object v1, Lcom/google/common/util/concurrent/AggregateFuture;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private processCompleted(Lcom/google/common/collect/ImmutableCollection;)V
    .locals 3
    .param p1    # Lcom/google/common/collect/ImmutableCollection;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 294
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 295
    invoke-direct {p0, v0, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->collectValueFromNonCancelledFuture(ILjava/util/concurrent/Future;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->clearSeenExceptions()V

    .line 301
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->handleAllCompleted()V

    .line 309
    sget-object p1, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->ALL_INPUT_FUTURES_PROCESSED:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->releaseResources(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method final addInitialException(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 238
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->tryInternalFastPathGetFailure()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final afterDone()V
    .locals 3

    .line 76
    invoke-super {p0}, Lcom/google/common/util/concurrent/AggregateFutureState;->afterDone()V

    .line 78
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    .line 79
    sget-object v1, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->OUTPUT_FUTURE_DONE:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->releaseResources(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->isCancelled()Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->wasInterrupted()Z

    move-result v1

    .line 83
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 84
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method abstract collectOneValue(ILjava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITInputT;)V"
        }
    .end annotation
.end method

.method abstract handleAllCompleted()V
.end method

.method final init()V
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->handleAllCompleted()V

    return-void

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->allMustSucceed:Z

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    add-int/lit8 v3, v1, 0x1

    .line 140
    new-instance v4, Lcom/google/common/util/concurrent/AggregateFuture$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v1}, Lcom/google/common/util/concurrent/AggregateFuture$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    .line 160
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 140
    invoke-interface {v2, v4, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v1, v3

    goto :goto_0

    .line 180
    :cond_1
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->collectsValues:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 181
    :goto_1
    new-instance v1, Lcom/google/common/util/concurrent/AggregateFuture$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/AggregateFuture$$ExternalSyntheticLambda1;-><init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;)V

    .line 182
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 183
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_3
    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic lambda$init$0$com-google-common-util-concurrent-AggregateFuture(Lcom/google/common/util/concurrent/ListenableFuture;I)V
    .locals 2

    const/4 v0, 0x0

    .line 143
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iput-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->cancel(Z)Z

    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->collectValueFromNonCancelledFuture(ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->decrementCountAndMaybeComplete(Lcom/google/common/collect/ImmutableCollection;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->decrementCountAndMaybeComplete(Lcom/google/common/collect/ImmutableCollection;)V

    .line 158
    throw p1

    .array-data 1
    .end array-data
.end method

.method synthetic lambda$init$1$com-google-common-util-concurrent-AggregateFuture(Lcom/google/common/collect/ImmutableCollection;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->decrementCountAndMaybeComplete(Lcom/google/common/collect/ImmutableCollection;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected final pendingToString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    if-eqz v0, :cond_0

    .line 98
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "futures="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    invoke-super {p0}, Lcom/google/common/util/concurrent/AggregateFutureState;->pendingToString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method releaseResources(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V
    .locals 0

    .line 325
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 332
    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
