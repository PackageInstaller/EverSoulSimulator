.class public Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;
.super Ljava/lang/Object;
.source "DaemonRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

.field private mContext:Landroid/content/Context;

.field private mLogger:Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;

.field private mParameters:Lorg/json/JSONObject;

.field private mRequestStore:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/facebook/GraphResponse;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parameters",
            "callback"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mParameters:Lorg/json/JSONObject;

    .line 43
    iput-object p3, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mCallback:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    .line 45
    invoke-static {p1}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->getInstance(Landroid/content/Context;)Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->getRequestStore()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mRequestStore:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    invoke-static {p1}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;->getInstance(Landroid/content/Context;)Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mLogger:Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mCallback:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lorg/json/JSONObject;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mParameters:Lorg/json/JSONObject;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mLogger:Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mContext:Landroid/content/Context;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mRequestStore:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private createRequest()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;

    invoke-direct {v0, p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;-><init>(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)V

    .line 73
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private executeAndWait()Lcom/facebook/GraphResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->createRequest()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphResponse;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private executeAndWait(I)Lcom/facebook/GraphResponse;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->createRequest()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/GraphResponse;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public static executeAndWait(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;)Lcom/facebook/GraphResponse;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parameters",
            "type"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "type"

    if-nez p1, :cond_0

    .line 170
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 172
    :goto_0
    new-instance p2, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-direct {p2, p0, p1, v0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;)V

    .line 173
    invoke-direct {p2}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 175
    :catch_0
    new-instance p0, Lcom/facebook/FacebookRequestError;

    const-string p1, "DAEMON_REQUEST_EXECUTE_ASYNC_FAILED"

    const-string p2, "Unable to correctly create the request or obtain response"

    const/4 v1, -0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {p0, v0}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->createErrorResponse(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)Lcom/facebook/GraphResponse;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static executeAndWait(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;I)Lcom/facebook/GraphResponse;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parameters",
            "type",
            "timeout"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "type"

    if-nez p1, :cond_0

    .line 189
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 191
    :goto_0
    new-instance p2, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-direct {p2, p0, p1, v0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;)V

    .line 192
    invoke-direct {p2, p3}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->executeAndWait(I)Lcom/facebook/GraphResponse;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 194
    :catch_0
    new-instance p0, Lcom/facebook/FacebookRequestError;

    const-string p1, "DAEMON_REQUEST_EXECUTE_ASYNC_FAILED"

    const-string p2, "Unable to correctly create the request or obtain response"

    const/4 p3, -0x1

    invoke-direct {p0, p3, p1, p2}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {p0, v0}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->createErrorResponse(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)Lcom/facebook/GraphResponse;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private executeAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->createRequest()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$1;

    invoke-direct {v1, p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$1;-><init>(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)V

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static executeAsync(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parameters",
            "callback",
            "type"
        }
    .end annotation

    const-string v0, "type"

    if-nez p1, :cond_0

    .line 149
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p3}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 151
    :goto_0
    new-instance p3, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-direct {p3, p0, p1, p2}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;)V

    .line 152
    invoke-direct {p3}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->executeAsync()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    if-eqz p2, :cond_1

    .line 155
    new-instance p0, Lcom/facebook/FacebookRequestError;

    const-string p1, "DAEMON_REQUEST_EXECUTE_ASYNC_FAILED"

    const-string p3, "Unable to correctly create the request or obtain response"

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p3}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 160
    invoke-static {p0, p1}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->createErrorResponse(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)Lcom/facebook/GraphResponse;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;->onCompleted(Lcom/facebook/GraphResponse;)V

    :cond_1
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public static executeAsync(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parameters",
            "callback",
            "type"
        }
    .end annotation

    const-string v0, "type"

    if-nez p1, :cond_0

    .line 211
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 213
    :goto_0
    new-instance p3, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-direct {p3, p0, p1, p2}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;)V

    .line 214
    invoke-direct {p3}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->executeAsync()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    if-eqz p2, :cond_1

    .line 217
    new-instance p0, Lcom/facebook/FacebookRequestError;

    const-string p1, "DAEMON_REQUEST_EXECUTE_ASYNC_FAILED"

    const-string p3, "Unable to correctly create the request or obtain response"

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p3}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 222
    invoke-static {p0, p1}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->createErrorResponse(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)Lcom/facebook/GraphResponse;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;->onCompleted(Lcom/facebook/GraphResponse;)V

    :cond_1
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method
