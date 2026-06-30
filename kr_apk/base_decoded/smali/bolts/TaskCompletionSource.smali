.class public Lbolts/TaskCompletionSource;
.super Ljava/lang/Object;
.source "TaskCompletionSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final task:Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Lbolts/Task;

    invoke-direct {v0}, Lbolts/Task;-><init>()V

    iput-object v0, p0, Lbolts/TaskCompletionSource;->task:Lbolts/Task;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getTask()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lbolts/TaskCompletionSource;->task:Lbolts/Task;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setCancelled()V
    .locals 2

    .line 539
    invoke-virtual {p0}, Lbolts/TaskCompletionSource;->trySetCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 549
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const v1, 0x543c3dc2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public setError(Ljava/lang/Exception;)V
    .locals 1

    .line 719
    invoke-virtual {p0, p1}, Lbolts/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 729
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x451c577f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 629
    invoke-virtual {p0, p1}, Lbolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 639
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const v0, -0x2247f0d4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public trySetCancelled()Z
    .locals 1

    .line 329
    iget-object v0, p0, Lbolts/TaskCompletionSource;->task:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->trySetCancelled()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public trySetError(Ljava/lang/Exception;)Z
    .locals 1

    .line 469
    iget-object v0, p0, Lbolts/TaskCompletionSource;->task:Lbolts/Task;

    invoke-virtual {v0, p1}, Lbolts/Task;->trySetError(Ljava/lang/Exception;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public trySetResult(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lbolts/TaskCompletionSource;->task:Lbolts/Task;

    invoke-virtual {v0, p1}, Lbolts/Task;->trySetResult(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method
