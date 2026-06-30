.class Lcom/singular/sdk/internal/SingularInstance$10;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance;->fetchInstallReferrerAndSendSession(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/SingularInstance;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$interval:J


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance;Ljava/util/concurrent/CountDownLatch;J)V
    .locals 0

    .line 4299
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$10;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p2, p0, Lcom/singular/sdk/internal/SingularInstance$10;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-wide p3, p0, Lcom/singular/sdk/internal/SingularInstance$10;->val$interval:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onInstallReferrerReceived(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4329
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$10;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p1, v0, Lcom/singular/sdk/internal/SingularInstance;->googleInstallReferrer:Ljava/util/Map;

    .line 4339
    iget-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$10;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4349
    iget-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$10;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iget-wide v0, p0, Lcom/singular/sdk/internal/SingularInstance$10;->val$interval:J

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/Utils;->lagSince(J)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/singular/sdk/internal/SingularInstance;->access$602(Lcom/singular/sdk/internal/SingularInstance;D)D

    return-void

    nop

    .array-data 1
    .end array-data
.end method
