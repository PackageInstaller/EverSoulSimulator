.class Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;
.super Ljava/lang/Object;
.source "DaemonRequest.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->createRequest()Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lcom/facebook/GraphResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;


# direct methods
.method constructor <init>(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public get()Lcom/facebook/GraphResponse;
    .locals 8

    const-string v0, "DAEMON_REQUEST_EXECUTE_ASYNC_FAILED"

    .line 77
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 79
    :try_start_0
    iget-object v3, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v3}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$100(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "requestID"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 83
    iget-object v4, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v4}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$100(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    iget-object v5, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v5}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$200(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v6}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$100(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v4, v1, v6}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;->logPreparingRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 85
    sget-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->GET_ACCESS_TOKEN:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    invoke-virtual {v5}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->IS_ENV_READY:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 86
    invoke-virtual {v5}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 87
    iget-object v5, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    .line 88
    invoke-static {v5}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$300(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.facebook.gamingservices.cloudgaming:preferences"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "daemonPackageName"

    const/4 v7, 0x0

    .line 91
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 94
    new-instance v3, Lcom/facebook/FacebookRequestError;

    const-string v4, "Unable to correctly create the request with a secure connection"

    invoke-direct {v3, v2, v0, v4}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {v3, v1}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->createErrorResponse(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)Lcom/facebook/GraphResponse;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v5, "com.facebook.gamingservices.DAEMON_REQUEST"

    .line 104
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v5, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v5}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$100(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 106
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 107
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 108
    iget-object v7, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v7}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$100(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 112
    :cond_2
    new-instance v5, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 113
    iget-object v6, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v6}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$400(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v6, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v6}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$300(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    iget-object v3, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v3}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$200(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;

    move-result-object v3

    iget-object v6, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v6}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$100(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v4, v1, v6}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;->logSentRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 117
    invoke-virtual {v5}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/GraphResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 119
    :catch_0
    new-instance v3, Lcom/facebook/FacebookRequestError;

    const-string v4, "Unable to correctly create the request or obtain response"

    invoke-direct {v3, v2, v0, v4}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {v3, v1}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->createErrorResponse(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)Lcom/facebook/GraphResponse;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->get()Lcom/facebook/GraphResponse;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
