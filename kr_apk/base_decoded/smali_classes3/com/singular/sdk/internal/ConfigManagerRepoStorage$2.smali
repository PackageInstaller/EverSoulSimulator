.class Lcom/singular/sdk/internal/ConfigManagerRepoStorage$2;
.super Ljava/lang/Object;
.source "ConfigManagerRepoStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/ConfigManagerRepoStorage;->saveConfig(Lcom/singular/sdk/internal/SLRemoteConfiguration;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/ConfigManagerRepoStorage;

.field final synthetic val$config:Lcom/singular/sdk/internal/SLRemoteConfiguration;

.field final synthetic val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/ConfigManagerRepoStorage;Lcom/singular/sdk/internal/SLRemoteConfiguration;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$2;->this$0:Lcom/singular/sdk/internal/ConfigManagerRepoStorage;

    iput-object p2, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$2;->val$config:Lcom/singular/sdk/internal/SLRemoteConfiguration;

    iput-object p3, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$2;->val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$2;->this$0:Lcom/singular/sdk/internal/ConfigManagerRepoStorage;

    invoke-static {v0}, Lcom/singular/sdk/internal/ConfigManagerRepoStorage;->access$000(Lcom/singular/sdk/internal/ConfigManagerRepoStorage;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "singular-pref-config-manager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 559
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "config_manager_config"

    .line 569
    iget-object v2, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$2;->val$config:Lcom/singular/sdk/internal/SLRemoteConfiguration;

    invoke-virtual {v2}, Lcom/singular/sdk/internal/SLRemoteConfiguration;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 579
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 589
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$2;->val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

    if-eqz v0, :cond_0

    .line 599
    iget-object v1, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$2;->val$config:Lcom/singular/sdk/internal/SLRemoteConfiguration;

    invoke-interface {v0, v1}, Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;->onCompleted(Lcom/singular/sdk/internal/SLRemoteConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 629
    invoke-static {}, Lcom/singular/sdk/internal/ConfigManagerRepoStorage;->access$100()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$2;->val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v0}, Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;->onError()V

    :cond_0
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
