.class Lcom/singular/sdk/internal/SingularInstance$3;
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

    .line 3329
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$3;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p2, p0, Lcom/singular/sdk/internal/SingularInstance$3;->val$rawEvent:Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3359
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$3;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance$3;->val$rawEvent:Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularInstance;->logEvent(Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;)V

    return-void

    .array-data 1
    .end array-data
.end method
