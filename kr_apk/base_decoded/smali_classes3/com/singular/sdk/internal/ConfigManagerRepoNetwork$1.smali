.class Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$1;
.super Ljava/lang/Object;
.source "ConfigManagerRepoNetwork.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;->waitAndRetry(Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;

.field final synthetic val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

.field final synthetic val$retries:I


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;I)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$1;->this$0:Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;

    iput-object p2, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$1;->val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

    iput p3, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$1;->val$retries:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$1;->this$0:Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;

    iget-object v1, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$1;->val$handler:Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;

    iget v2, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$1;->val$retries:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;->access$000(Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;I)V

    return-void

    .array-data 1
    .end array-data
.end method
