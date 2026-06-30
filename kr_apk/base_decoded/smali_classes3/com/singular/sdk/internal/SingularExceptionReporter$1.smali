.class Lcom/singular/sdk/internal/SingularExceptionReporter$1;
.super Ljava/lang/Object;
.source "SingularExceptionReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularExceptionReporter;->initDeviceInfo(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/SingularExceptionReporter;

.field final synthetic val$limitedIdentifiersEnabled:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularExceptionReporter;Ljava/lang/Boolean;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularExceptionReporter$1;->this$0:Lcom/singular/sdk/internal/SingularExceptionReporter;

    iput-object p2, p0, Lcom/singular/sdk/internal/SingularExceptionReporter$1;->val$limitedIdentifiersEnabled:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularExceptionReporter$1;->this$0:Lcom/singular/sdk/internal/SingularExceptionReporter;

    new-instance v1, Lcom/singular/sdk/internal/DeviceInfo;

    iget-object v2, p0, Lcom/singular/sdk/internal/SingularExceptionReporter$1;->this$0:Lcom/singular/sdk/internal/SingularExceptionReporter;

    invoke-static {v2}, Lcom/singular/sdk/internal/SingularExceptionReporter;->access$100(Lcom/singular/sdk/internal/SingularExceptionReporter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/singular/sdk/internal/SingularExceptionReporter$1;->val$limitedIdentifiersEnabled:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/singular/sdk/internal/DeviceInfo;-><init>(Landroid/content/Context;ZLjava/lang/Boolean;)V

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/SingularExceptionReporter;->access$002(Lcom/singular/sdk/internal/SingularExceptionReporter;Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/DeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    .array-data 1
    .end array-data
.end method
