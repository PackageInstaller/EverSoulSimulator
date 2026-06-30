.class Lcom/singular/sdk/internal/ConfigManagerRepoStorage$1;
.super Ljava/lang/Object;
.source "ConfigManagerRepoStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/ConfigManagerRepoStorage;->getConfig(Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/ConfigManagerRepoStorage;

.field final synthetic val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/ConfigManagerRepoStorage;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$1;->this$0:Lcom/singular/sdk/internal/ConfigManagerRepoStorage;

    iput-object p2, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$1;->val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$1;->this$0:Lcom/singular/sdk/internal/ConfigManagerRepoStorage;

    invoke-static {v0}, Lcom/singular/sdk/internal/ConfigManagerRepoStorage;->access$000(Lcom/singular/sdk/internal/ConfigManagerRepoStorage;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "singular-pref-config-manager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "config_manager_config"

    const/4 v2, 0x0

    .line 279
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$1;->val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0}, Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;->onError()V

    :cond_0
    return-void

    .line 349
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/singular/sdk/internal/SLRemoteConfiguration;->fromJson(Lorg/json/JSONObject;)Lcom/singular/sdk/internal/SLRemoteConfiguration;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$1;->val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

    if-eqz v1, :cond_2

    .line 369
    invoke-interface {v1, v0}, Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;->onCompleted(Lcom/singular/sdk/internal/SLRemoteConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 399
    invoke-static {}, Lcom/singular/sdk/internal/ConfigManagerRepoStorage;->access$100()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$1;->val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

    if-eqz v0, :cond_2

    .line 419
    invoke-interface {v0}, Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;->onError()V

    :cond_2
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
