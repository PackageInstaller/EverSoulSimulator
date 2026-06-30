.class Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange$1;
.super Ljava/lang/Object;
.source "BroadcastReceivers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange$1;->this$0:Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 489
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getDeviceInfo()Lcom/singular/sdk/internal/DeviceInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/singular/sdk/internal/DeviceInfo;->sdid:Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;

    .line 499
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/singular/sdk/internal/SingularInstance;->getDeviceInfo()Lcom/singular/sdk/internal/DeviceInfo;

    move-result-object v1

    .line 509
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 499
    invoke-virtual {v0, v1, v2}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->sendResolveRequestIfNeeded(Lcom/singular/sdk/internal/DeviceInfo;Landroid/content/Context;)V

    .line 529
    iget-object v0, p0, Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange$1;->this$0:Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;

    invoke-static {v0}, Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;->access$100(Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;)Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getApiManager()Lcom/singular/sdk/internal/ApiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/ApiManager;->wakeUp()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
