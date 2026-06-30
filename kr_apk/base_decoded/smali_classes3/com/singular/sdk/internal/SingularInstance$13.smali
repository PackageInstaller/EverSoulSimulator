.class Lcom/singular/sdk/internal/SingularInstance$13;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance;->startSessionIfOpenedWithDeeplink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/SingularInstance;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance;)V
    .locals 0

    .line 5299
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$13;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5329
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$13;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    invoke-static {v0}, Lcom/singular/sdk/internal/SingularInstance;->access$700(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/SessionManager;

    move-result-object v0

    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/singular/sdk/internal/SessionManager;->startNewSession(J)V

    return-void

    .array-data 1
    .end array-data
.end method
