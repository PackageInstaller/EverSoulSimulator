.class Lcom/singular/sdk/internal/SingularInstance$12;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance;->logSetDeviceCustomUserId()V
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

    .line 4739
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$12;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4769
    new-instance v0, Lcom/singular/sdk/internal/ApiCustomUserId;

    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/singular/sdk/internal/ApiCustomUserId;-><init>(J)V

    .line 4779
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->access$300()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v1

    invoke-static {v1}, Lcom/singular/sdk/internal/ApiCustomUserId$Params;->build(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiCustomUserId$Params;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/ApiCustomUserId;->addParams(Ljava/util/Map;)V

    .line 4789
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->access$300()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v1

    invoke-static {v1}, Lcom/singular/sdk/internal/SingularInstance;->access$400(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/ApiManager;->enqueue(Lcom/singular/sdk/internal/BaseApi;)V

    return-void

    .array-data 1
    .end array-data
.end method
