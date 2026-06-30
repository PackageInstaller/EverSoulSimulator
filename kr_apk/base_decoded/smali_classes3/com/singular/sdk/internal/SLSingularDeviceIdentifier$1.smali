.class Lcom/singular/sdk/internal/SLSingularDeviceIdentifier$1;
.super Ljava/lang/Object;
.source "SLSingularDeviceIdentifier.java"

# interfaces
.implements Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->sendResolveRequestIfNeeded(Lcom/singular/sdk/internal/DeviceInfo;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;Landroid/content/Context;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier$1;->this$0:Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;

    iput-object p2, p0, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3

    .line 1109
    invoke-static {}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onFailure to /resolve SDID with error: %s"

    invoke-virtual {v0, p1, v1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .array-data 1
    .end array-data
.end method

.method public onSuccess(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "sdid"

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_2

    .line 799
    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 809
    invoke-static {}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p2

    const-string v1, "/resolve request successful"

    invoke-virtual {p2, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 819
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "resolve"

    invoke-static {p2, v1}, Lcom/singular/sdk/internal/Utils;->resetRetryCountForKey(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 839
    :try_start_0
    iget-object v2, p0, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier$1;->this$0:Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;

    invoke-virtual {v2}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 849
    invoke-static {}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p1

    const-string v0, "/resolve request successful, but ignoring, because SDID already exists, exiting."

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    return-void

    .line 889
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 909
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 919
    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 929
    invoke-static {}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const-string v2, "SDID resolved successfully: %s"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, p2

    invoke-virtual {v0, v2, v3}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 939
    iget-object v0, p0, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier$1;->this$0:Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;

    iget-object v2, p0, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->saveSdidToPrefs(Landroid/content/Context;Ljava/lang/String;)V

    .line 949
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/singular/sdk/SingularConfig;->sdidAccessorHandler:Lcom/singular/sdk/SDIDAccessorHandler;

    if-eqz p1, :cond_2

    .line 959
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/singular/sdk/SingularConfig;->sdidAccessorHandler:Lcom/singular/sdk/SDIDAccessorHandler;

    .line 969
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getDeviceInfo()Lcom/singular/sdk/internal/DeviceInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/singular/sdk/internal/DeviceInfo;->sdid:Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/singular/sdk/SDIDAccessorHandler;->sdidReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    :cond_1
    invoke-static {}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p1

    const-string v0, "SDID not found in response"

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1039
    invoke-static {}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "failed to resolve SDID with throwable: %s"

    invoke-virtual {v0, p1, v1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
