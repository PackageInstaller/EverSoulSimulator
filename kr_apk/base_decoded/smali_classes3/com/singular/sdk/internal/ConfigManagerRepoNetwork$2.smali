.class Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;
.super Ljava/lang/Object;
.source "ConfigManagerRepoNetwork.java"

# interfaces
.implements Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;->getConfig(Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;

.field final synthetic val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

.field final synthetic val$retries:I


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;I)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;->this$0:Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;

    iput-object p2, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;->val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

    iput p3, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;->val$retries:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3

    .line 869
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;->this$0:Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;

    iget-object v1, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;->val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

    iget v2, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;->val$retries:I

    invoke-static {v0, v1, v2, p1}, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;->access$200(Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;ILjava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onSuccess(Ljava/lang/String;I)V
    .locals 4

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    .line 699
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-static {p2}, Lcom/singular/sdk/internal/SLRemoteConfiguration;->fromJson(Lorg/json/JSONObject;)Lcom/singular/sdk/internal/SLRemoteConfiguration;

    move-result-object p1

    .line 719
    iget-object p2, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;->val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

    if-eqz p2, :cond_0

    .line 729
    invoke-interface {p2, p1}, Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;->onCompleted(Lcom/singular/sdk/internal/SLRemoteConfiguration;)V

    .line 749
    :cond_0
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "config"

    invoke-static {p1, p2}, Lcom/singular/sdk/internal/Utils;->resetRetryCountForKey(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 769
    invoke-static {}, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;->access$100()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p2

    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 779
    iget-object p2, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;->this$0:Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;

    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;->val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

    iget v1, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;->val$retries:I

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, v1, p1}, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;->access$200(Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;ILjava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_1
    iget-object p1, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;->this$0:Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;

    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;->val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

    iget v1, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;->val$retries:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get config failed with code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;->access$200(Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;ILjava/lang/String;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
