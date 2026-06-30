.class Lcom/singular/sdk/internal/SingularInstance$1;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance;-><init>(Landroid/content/Context;Lcom/singular/sdk/SingularConfig;)V
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

    .line 1519
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$1;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p2, p0, Lcom/singular/sdk/internal/SingularInstance$1;->val$self:Lcom/singular/sdk/internal/SingularInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1549
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$1;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance$1;->val$self:Lcom/singular/sdk/internal/SingularInstance;

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/SingularInstance;->access$000(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/SingularInstance;)V

    return-void

    .array-data 1
    .end array-data
.end method
