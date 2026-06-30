.class Lbolts/Task$15$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task$15;


# direct methods
.method constructor <init>(Lbolts/Task$15;)V
    .locals 0

    .line 9219
    iput-object p1, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9219
    invoke-virtual {p0, p1}, Lbolts/Task$15$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 9249
    iget-object v0, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->val$ct:Lbolts/CancellationToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->val$ct:Lbolts/CancellationToken;

    invoke-virtual {v0}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9259
    iget-object p1, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object p1, p1, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/TaskCompletionSource;->setCancelled()V

    return-object v1

    .line 9299
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9309
    iget-object p1, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object p1, p1, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/TaskCompletionSource;->setCancelled()V

    goto :goto_0

    .line 9319
    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9329
    iget-object v0, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 9349
    :cond_2
    iget-object v0, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_0
    return-object v1

    nop

    .array-data 1
    .end array-data
.end method
