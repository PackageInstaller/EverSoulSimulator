.class final Lcom/singular/sdk/internal/BatchManager$1;
.super Ljava/lang/Object;
.source "BatchManager.java"

# interfaces
.implements Lcom/singular/sdk/internal/ConfigManager$ConfigUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/BatchManager;->init(Landroid/content/Context;Lcom/singular/sdk/internal/BatchManagerPersistence;Lcom/singular/sdk/internal/BatchManager$NetworkSender;Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$newInstance:Lcom/singular/sdk/internal/BatchManager;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/BatchManager;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/singular/sdk/internal/BatchManager$1;->val$newInstance:Lcom/singular/sdk/internal/BatchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onSync(Z)V
    .locals 1

    .line 999
    invoke-static {}, Lcom/singular/sdk/internal/ConfigManager;->getInstance()Lcom/singular/sdk/internal/ConfigManager;

    move-result-object p1

    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager$1;->val$newInstance:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {v0}, Lcom/singular/sdk/internal/BatchManager;->access$000(Lcom/singular/sdk/internal/BatchManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/ConfigManager;->unregisterConfigUpdates(Ljava/lang/String;)V

    .line 1009
    iget-object p1, p0, Lcom/singular/sdk/internal/BatchManager$1;->val$newInstance:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {}, Lcom/singular/sdk/internal/ConfigManager;->getInstance()Lcom/singular/sdk/internal/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/ConfigManager;->getConfig()Lcom/singular/sdk/internal/SLRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SLRemoteConfiguration;->isAggregateAdmonEvents()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/singular/sdk/internal/BatchManager;->access$102(Lcom/singular/sdk/internal/BatchManager;Z)Z

    .line 1019
    iget-object p1, p0, Lcom/singular/sdk/internal/BatchManager$1;->val$newInstance:Lcom/singular/sdk/internal/BatchManager;

    invoke-static {}, Lcom/singular/sdk/internal/ConfigManager;->getInstance()Lcom/singular/sdk/internal/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/ConfigManager;->getConfig()Lcom/singular/sdk/internal/SLRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SLRemoteConfiguration;->isAdmonEventsDebug()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/singular/sdk/internal/BatchManager;->access$202(Lcom/singular/sdk/internal/BatchManager;Z)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public onSyncError()V
    .locals 2

    .line 1069
    invoke-static {}, Lcom/singular/sdk/internal/ConfigManager;->getInstance()Lcom/singular/sdk/internal/ConfigManager;

    move-result-object v0

    invoke-static {}, Lcom/singular/sdk/internal/BatchManager;->access$300()Lcom/singular/sdk/internal/BatchManager;

    move-result-object v1

    invoke-static {v1}, Lcom/singular/sdk/internal/BatchManager;->access$000(Lcom/singular/sdk/internal/BatchManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/ConfigManager;->unregisterConfigUpdates(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method
