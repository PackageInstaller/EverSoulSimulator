.class Lcom/singular/sdk/internal/ConfigManager$2;
.super Ljava/lang/Object;
.source "ConfigManager.java"

# interfaces
.implements Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/ConfigManager;->fetchRemoteConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/ConfigManager;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/ConfigManager;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/singular/sdk/internal/ConfigManager$2;->this$0:Lcom/singular/sdk/internal/ConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onCompleted(Lcom/singular/sdk/internal/SLRemoteConfiguration;)V
    .locals 3

    .line 749
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManager$2;->this$0:Lcom/singular/sdk/internal/ConfigManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/ConfigManager;->access$102(Lcom/singular/sdk/internal/ConfigManager;Z)Z

    .line 759
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManager$2;->this$0:Lcom/singular/sdk/internal/ConfigManager;

    invoke-static {v0}, Lcom/singular/sdk/internal/ConfigManager;->access$200(Lcom/singular/sdk/internal/ConfigManager;)Lcom/singular/sdk/internal/ConfigManagerRepo;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/singular/sdk/internal/ConfigManagerRepo;->saveConfig(Lcom/singular/sdk/internal/SLRemoteConfiguration;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;)V

    .line 769
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManager$2;->this$0:Lcom/singular/sdk/internal/ConfigManager;

    invoke-static {v0}, Lcom/singular/sdk/internal/ConfigManager;->access$300(Lcom/singular/sdk/internal/ConfigManager;)Lcom/singular/sdk/internal/SLRemoteConfiguration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SLRemoteConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManager$2;->this$0:Lcom/singular/sdk/internal/ConfigManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/ConfigManager;->access$402(Lcom/singular/sdk/internal/ConfigManager;Z)Z

    goto :goto_0

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManager$2;->this$0:Lcom/singular/sdk/internal/ConfigManager;

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/ConfigManager;->access$402(Lcom/singular/sdk/internal/ConfigManager;Z)Z

    .line 829
    :goto_0
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManager$2;->this$0:Lcom/singular/sdk/internal/ConfigManager;

    invoke-static {v0, p1}, Lcom/singular/sdk/internal/ConfigManager;->access$302(Lcom/singular/sdk/internal/ConfigManager;Lcom/singular/sdk/internal/SLRemoteConfiguration;)Lcom/singular/sdk/internal/SLRemoteConfiguration;

    .line 839
    iget-object p1, p0, Lcom/singular/sdk/internal/ConfigManager$2;->this$0:Lcom/singular/sdk/internal/ConfigManager;

    invoke-static {p1}, Lcom/singular/sdk/internal/ConfigManager;->access$500(Lcom/singular/sdk/internal/ConfigManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 849
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/singular/sdk/internal/ConfigManager$ConfigUpdateHandler;

    iget-object v1, p0, Lcom/singular/sdk/internal/ConfigManager$2;->this$0:Lcom/singular/sdk/internal/ConfigManager;

    invoke-static {v1}, Lcom/singular/sdk/internal/ConfigManager;->access$400(Lcom/singular/sdk/internal/ConfigManager;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/singular/sdk/internal/ConfigManager$ConfigUpdateHandler;->onSync(Z)V

    goto :goto_1

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public onError()V
    .locals 2

    .line 909
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManager$2;->this$0:Lcom/singular/sdk/internal/ConfigManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/ConfigManager;->access$602(Lcom/singular/sdk/internal/ConfigManager;Z)Z

    .line 919
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManager$2;->this$0:Lcom/singular/sdk/internal/ConfigManager;

    invoke-static {v0}, Lcom/singular/sdk/internal/ConfigManager;->access$500(Lcom/singular/sdk/internal/ConfigManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 929
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/singular/sdk/internal/ConfigManager$ConfigUpdateHandler;

    invoke-interface {v1}, Lcom/singular/sdk/internal/ConfigManager$ConfigUpdateHandler;->onSyncError()V

    goto :goto_0

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
