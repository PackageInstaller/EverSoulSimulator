.class Lcom/singular/sdk/internal/GeneralHttpService$1;
.super Ljava/lang/Object;
.source "GeneralHttpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/GeneralHttpService;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/GeneralHttpService;

.field final synthetic val$body:Ljava/util/Map;

.field final synthetic val$completionHandler:Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;

.field final synthetic val$endPoint:Ljava/lang/String;

.field final synthetic val$queryParamsMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/GeneralHttpService;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;)V
    .locals 0

    .line 899
    iput-object p1, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->this$0:Lcom/singular/sdk/internal/GeneralHttpService;

    iput-object p2, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->val$endPoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->val$queryParamsMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->val$body:Ljava/util/Map;

    iput-object p5, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->val$completionHandler:Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 929
    iget-object v0, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->this$0:Lcom/singular/sdk/internal/GeneralHttpService;

    iget-object v1, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->val$endPoint:Ljava/lang/String;

    iget-object v2, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->val$queryParamsMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->val$body:Ljava/util/Map;

    iget-object v4, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->val$completionHandler:Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/singular/sdk/internal/GeneralHttpService;->sendSynchronousRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;)V

    return-void

    .array-data 1
    .end array-data
.end method
