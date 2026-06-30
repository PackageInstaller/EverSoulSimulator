.class Lcom/singular/sdk/internal/SingularInstance$2;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Lcom/singular/sdk/internal/ConfigManager$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance;->init(Lcom/singular/sdk/internal/SingularInstance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/SingularInstance;

.field final synthetic val$self:Lcom/singular/sdk/internal/SingularInstance;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/SingularInstance;)V
    .locals 0

    .line 2039
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$2;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p2, p0, Lcom/singular/sdk/internal/SingularInstance$2;->val$self:Lcom/singular/sdk/internal/SingularInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onInitDone()V
    .locals 4

    .line 2069
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$2;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    invoke-static {v0}, Lcom/singular/sdk/internal/SingularInstance;->access$100(Lcom/singular/sdk/internal/SingularInstance;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;

    iget-object v2, p0, Lcom/singular/sdk/internal/SingularInstance$2;->val$self:Lcom/singular/sdk/internal/SingularInstance;

    invoke-static {v2}, Lcom/singular/sdk/internal/SingularInstance;->access$100(Lcom/singular/sdk/internal/SingularInstance;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/singular/sdk/internal/BatchManagerPersistenceSqlite;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/singular/sdk/internal/SingularInstance$2$1;

    invoke-direct {v2, p0}, Lcom/singular/sdk/internal/SingularInstance$2$1;-><init>(Lcom/singular/sdk/internal/SingularInstance$2;)V

    new-instance v3, Lcom/singular/sdk/internal/SingularInstance$2$2;

    invoke-direct {v3, p0}, Lcom/singular/sdk/internal/SingularInstance$2$2;-><init>(Lcom/singular/sdk/internal/SingularInstance$2;)V

    invoke-static {v0, v1, v2, v3}, Lcom/singular/sdk/internal/BatchManager;->init(Landroid/content/Context;Lcom/singular/sdk/internal/BatchManagerPersistence;Lcom/singular/sdk/internal/BatchManager$NetworkSender;Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;)V

    .line 2229
    invoke-static {}, Lcom/singular/sdk/internal/BatchManager;->getInstance()Lcom/singular/sdk/internal/BatchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/BatchManager;->sendEvents()V

    return-void

    .array-data 1
    .end array-data
.end method
