.class Lcom/singular/sdk/internal/SingularInstance$2$2;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance$2;->onInitDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/singular/sdk/internal/SingularInstance$2;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance$2;)V
    .locals 0

    .line 2169
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$2$2;->this$1:Lcom/singular/sdk/internal/SingularInstance$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public sendApi(Lcom/singular/sdk/internal/BaseApi;)V
    .locals 1

    .line 2199
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$2$2;->this$1:Lcom/singular/sdk/internal/SingularInstance$2;

    iget-object v0, v0, Lcom/singular/sdk/internal/SingularInstance$2;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getApiManager()Lcom/singular/sdk/internal/ApiManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/ApiManager;->enqueue(Lcom/singular/sdk/internal/BaseApi;)V

    return-void

    .array-data 1
    .end array-data
.end method
