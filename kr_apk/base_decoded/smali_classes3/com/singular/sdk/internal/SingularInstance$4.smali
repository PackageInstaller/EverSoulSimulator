.class Lcom/singular/sdk/internal/SingularInstance$4;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance;->logEvent(Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/SingularInstance;

.field final synthetic val$rawEvent:Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;)V
    .locals 0

    .line 3399
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$4;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p2, p0, Lcom/singular/sdk/internal/SingularInstance$4;->val$rawEvent:Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3439
    new-instance v0, Lcom/singular/sdk/internal/ApiSubmitEvent;

    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance$4;->val$rawEvent:Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;

    iget-wide v1, v1, Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;->timestamp:J

    invoke-direct {v0, v1, v2}, Lcom/singular/sdk/internal/ApiSubmitEvent;-><init>(J)V

    .line 3449
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance$4;->val$rawEvent:Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;

    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->access$300()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->build(Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/ApiSubmitEvent;->addParams(Ljava/util/Map;)V

    .line 3469
    invoke-static {}, Lcom/singular/sdk/internal/BatchManager;->getInstance()Lcom/singular/sdk/internal/BatchManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3479
    invoke-static {}, Lcom/singular/sdk/internal/BatchManager;->getInstance()Lcom/singular/sdk/internal/BatchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/BatchManager;->addToBatch(Lcom/singular/sdk/internal/BaseApi;)V

    goto :goto_0

    .line 3499
    :cond_0
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->access$300()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v1

    invoke-static {v1}, Lcom/singular/sdk/internal/SingularInstance;->access$400(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/ApiManager;->enqueue(Lcom/singular/sdk/internal/BaseApi;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
