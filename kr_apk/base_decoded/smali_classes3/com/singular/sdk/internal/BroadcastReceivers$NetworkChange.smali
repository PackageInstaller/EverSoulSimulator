.class Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastReceivers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/BroadcastReceivers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkChange"
.end annotation


# instance fields
.field private final singular:Lcom/singular/sdk/internal/SingularInstance;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance;)V
    .locals 0

    .line 369
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;->singular:Lcom/singular/sdk/internal/SingularInstance;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;)Lcom/singular/sdk/internal/SingularInstance;
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;->singular:Lcom/singular/sdk/internal/SingularInstance;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 429
    invoke-static {}, Lcom/singular/sdk/internal/BroadcastReceivers;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "onReceive() action=%s "

    invoke-virtual {v0, p2, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 439
    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->isConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 459
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange$1;

    invoke-direct {p2, p0}, Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange$1;-><init>(Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
