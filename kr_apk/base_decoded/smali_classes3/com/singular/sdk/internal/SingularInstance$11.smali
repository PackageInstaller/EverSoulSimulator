.class Lcom/singular/sdk/internal/SingularInstance$11;
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


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 4389
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$11;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p2, p0, Lcom/singular/sdk/internal/SingularInstance$11;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onInstallReferrerReceived(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4419
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$11;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p1, v0, Lcom/singular/sdk/internal/SingularInstance;->samsungInstallReferrer:Ljava/util/Map;

    .line 4429
    iget-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$11;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .array-data 1
    .end array-data
.end method
