.class Lcom/singular/sdk/internal/BatchManager$2;
.super Ljava/lang/Object;
.source "BatchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/BatchManager;->addToBatch(Lcom/singular/sdk/internal/BaseApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/BatchManager;

.field final synthetic val$api:Lcom/singular/sdk/internal/BaseApi;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/BatchManager;Lcom/singular/sdk/internal/BaseApi;)V
    .locals 0

    .line 2109
    iput-object p1, p0, Lcom/singular/sdk/internal/BatchManager$2;->this$0:Lcom/singular/sdk/internal/BatchManager;

    iput-object p2, p0, Lcom/singular/sdk/internal/BatchManager$2;->val$api:Lcom/singular/sdk/internal/BaseApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2139
    invoke-static {}, Lcom/singular/sdk/internal/BatchManager;->access$400()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addToBatch api: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/singular/sdk/internal/BatchManager$2;->val$api:Lcom/singular/sdk/internal/BaseApi;

    invoke-virtual {v2}, Lcom/singular/sdk/internal/BaseApi;->toJsonAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 2149
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager$2;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v0}, Lcom/singular/sdk/internal/BatchManager;->access$100(Lcom/singular/sdk/internal/BatchManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager$2;->val$api:Lcom/singular/sdk/internal/BaseApi;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/BaseApi;->isAdmonEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2159
    invoke-static {}, Lcom/singular/sdk/internal/BatchManager;->access$400()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const-string v1, "addToBatch: event needs to be batched"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 2179
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager$2;->this$0:Lcom/singular/sdk/internal/BatchManager;

    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager$2;->val$api:Lcom/singular/sdk/internal/BaseApi;

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/BatchManager;->access$500(Lcom/singular/sdk/internal/BatchManager;Lcom/singular/sdk/internal/BaseApi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2199
    invoke-static {}, Lcom/singular/sdk/internal/BatchManager;->access$400()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addToBatch: exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 2209
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager$2;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v0}, Lcom/singular/sdk/internal/BatchManager;->access$200(Lcom/singular/sdk/internal/BatchManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2219
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager$2;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v0}, Lcom/singular/sdk/internal/BatchManager;->access$600(Lcom/singular/sdk/internal/BatchManager;)Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;

    move-result-object v0

    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager$2;->val$api:Lcom/singular/sdk/internal/BaseApi;

    invoke-interface {v0, v1}, Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;->sendApi(Lcom/singular/sdk/internal/BaseApi;)V

    goto :goto_0

    .line 2259
    :cond_0
    invoke-static {}, Lcom/singular/sdk/internal/BatchManager;->access$400()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addToBatch: no need to batch: batching enabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/singular/sdk/internal/BatchManager$2;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v2}, Lcom/singular/sdk/internal/BatchManager;->access$100(Lcom/singular/sdk/internal/BatchManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is Admon event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/singular/sdk/internal/BatchManager$2;->val$api:Lcom/singular/sdk/internal/BaseApi;

    invoke-virtual {v2}, Lcom/singular/sdk/internal/BaseApi;->isAdmonEvent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 2269
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager$2;->this$0:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v0}, Lcom/singular/sdk/internal/BatchManager;->access$600(Lcom/singular/sdk/internal/BatchManager;)Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;

    move-result-object v0

    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager$2;->val$api:Lcom/singular/sdk/internal/BaseApi;

    invoke-interface {v0, v1}, Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;->sendApi(Lcom/singular/sdk/internal/BaseApi;)V

    :cond_1
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
