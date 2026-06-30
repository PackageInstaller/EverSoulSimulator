.class Lcom/singular/sdk/internal/SingularInstance$7;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance;->logSessionStart(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/SingularInstance;

.field final synthetic val$sessionId:J


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance;J)V
    .locals 0

    .line 3869
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$7;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iput-wide p2, p0, Lcom/singular/sdk/internal/SingularInstance$7;->val$sessionId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3899
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->access$300()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3909
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$7;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    invoke-static {v0}, Lcom/singular/sdk/internal/SingularInstance;->access$500(Lcom/singular/sdk/internal/SingularInstance;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3919
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$7;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->fetchMetaInstallReferrer()V

    .line 3929
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$7;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->fetchDTInstallReferrer()V

    .line 3939
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$7;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iget-wide v1, p0, Lcom/singular/sdk/internal/SingularInstance$7;->val$sessionId:J

    invoke-virtual {v0, v1, v2}, Lcom/singular/sdk/internal/SingularInstance;->fetchInstallReferrerAndSendSession(J)V

    goto :goto_0

    .line 3969
    :cond_0
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$7;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iget-wide v1, p0, Lcom/singular/sdk/internal/SingularInstance$7;->val$sessionId:J

    invoke-virtual {v0, v1, v2}, Lcom/singular/sdk/internal/SingularInstance;->startSession(J)V

    :cond_1
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
