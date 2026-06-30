.class Lcom/singular/sdk/internal/SessionManager$2;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SessionManager;->onEnterForeground(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/SessionManager;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SessionManager;J)V
    .locals 0

    .line 2979
    iput-object p1, p0, Lcom/singular/sdk/internal/SessionManager$2;->this$0:Lcom/singular/sdk/internal/SessionManager;

    iput-wide p2, p0, Lcom/singular/sdk/internal/SessionManager$2;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3009
    iget-object v0, p0, Lcom/singular/sdk/internal/SessionManager$2;->this$0:Lcom/singular/sdk/internal/SessionManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/SessionManager;->access$102(Lcom/singular/sdk/internal/SessionManager;Z)Z

    .line 3019
    iget-object v0, p0, Lcom/singular/sdk/internal/SessionManager$2;->this$0:Lcom/singular/sdk/internal/SessionManager;

    iget-wide v1, p0, Lcom/singular/sdk/internal/SessionManager$2;->val$timestamp:J

    invoke-static {v0, v1, v2}, Lcom/singular/sdk/internal/SessionManager;->access$200(Lcom/singular/sdk/internal/SessionManager;J)Z

    .line 3029
    iget-object v0, p0, Lcom/singular/sdk/internal/SessionManager$2;->this$0:Lcom/singular/sdk/internal/SessionManager;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SessionManager;->registerNetworkChangeReceiver()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
