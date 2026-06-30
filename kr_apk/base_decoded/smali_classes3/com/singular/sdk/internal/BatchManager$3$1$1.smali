.class Lcom/singular/sdk/internal/BatchManager$3$1$1;
.super Ljava/lang/Object;
.source "BatchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/BatchManager$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/singular/sdk/internal/BatchManager$3$1;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/BatchManager$3$1;)V
    .locals 0

    .line 2879
    iput-object p1, p0, Lcom/singular/sdk/internal/BatchManager$3$1$1;->this$2:Lcom/singular/sdk/internal/BatchManager$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2919
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager$3$1$1;->this$2:Lcom/singular/sdk/internal/BatchManager$3$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/BatchManager$3$1;->this$1:Lcom/singular/sdk/internal/BatchManager$3;

    iget-object v0, v0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v0}, Lcom/singular/sdk/internal/BatchManager;->access$1100(Lcom/singular/sdk/internal/BatchManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager$3$1$1;->this$2:Lcom/singular/sdk/internal/BatchManager$3$1;

    iget-object v1, v1, Lcom/singular/sdk/internal/BatchManager$3$1;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2929
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager$3$1$1;->this$2:Lcom/singular/sdk/internal/BatchManager$3$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/BatchManager$3$1;->this$1:Lcom/singular/sdk/internal/BatchManager$3;

    iget-object v0, v0, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v0}, Lcom/singular/sdk/internal/BatchManager;->access$1000(Lcom/singular/sdk/internal/BatchManager;)Lcom/singular/sdk/internal/BatchManagerPersistence;

    move-result-object v0

    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager$3$1$1;->this$2:Lcom/singular/sdk/internal/BatchManager$3$1;

    iget-object v1, v1, Lcom/singular/sdk/internal/BatchManager$3$1;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/singular/sdk/internal/BatchManagerPersistence;->deleteEvent(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2949
    :try_start_1
    invoke-static {}, Lcom/singular/sdk/internal/BatchManager;->access$400()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 2959
    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager$3$1$1;->this$2:Lcom/singular/sdk/internal/BatchManager$3$1;

    iget-object v1, v1, Lcom/singular/sdk/internal/BatchManager$3$1;->this$1:Lcom/singular/sdk/internal/BatchManager$3;

    iget-object v1, v1, Lcom/singular/sdk/internal/BatchManager$3;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v1, v0}, Lcom/singular/sdk/internal/BatchManager;->access$1300(Lcom/singular/sdk/internal/BatchManager;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2979
    :goto_0
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager$3$1$1;->this$2:Lcom/singular/sdk/internal/BatchManager$3$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/BatchManager$3$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager$3$1$1;->this$2:Lcom/singular/sdk/internal/BatchManager$3$1;

    iget-object v1, v1, Lcom/singular/sdk/internal/BatchManager$3$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2989
    throw v0

    nop

    .array-data 1
    .end array-data
.end method
