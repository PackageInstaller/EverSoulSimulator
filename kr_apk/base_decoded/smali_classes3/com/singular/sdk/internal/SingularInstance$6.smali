.class Lcom/singular/sdk/internal/SingularInstance$6;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance;->logApi(Lcom/singular/sdk/internal/BaseApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/SingularInstance;

.field final synthetic val$api:Lcom/singular/sdk/internal/BaseApi;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/BaseApi;)V
    .locals 0

    .line 3729
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$6;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p2, p0, Lcom/singular/sdk/internal/SingularInstance$6;->val$api:Lcom/singular/sdk/internal/BaseApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3759
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->access$300()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    invoke-static {v0}, Lcom/singular/sdk/internal/SingularInstance;->access$400(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance$6;->val$api:Lcom/singular/sdk/internal/BaseApi;

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/ApiManager;->enqueue(Lcom/singular/sdk/internal/BaseApi;)V

    return-void

    .array-data 1
    .end array-data
.end method
