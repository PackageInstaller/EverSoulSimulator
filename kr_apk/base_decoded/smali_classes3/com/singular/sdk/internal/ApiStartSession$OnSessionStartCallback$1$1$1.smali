.class Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;
.super Ljava/lang/Object;
.source "ApiStartSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->handle(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;

.field final synthetic val$responseCode:I

.field final synthetic val$signature:Ljava/lang/String;

.field final synthetic val$signedData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1559
    iput-object p1, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;->this$3:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;

    iput p2, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;->val$responseCode:I

    iput-object p3, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;->val$signedData:Ljava/lang/String;

    iput-object p4, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;->val$signature:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1609
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;->this$3:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->this$1:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;

    iget v1, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;->val$responseCode:I

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;->access$200(Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;->this$3:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->this$1:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;->this$0:Lcom/singular/sdk/internal/ApiStartSession;

    .line 1619
    invoke-static {v0}, Lcom/singular/sdk/internal/ApiStartSession;->access$100(Lcom/singular/sdk/internal/ApiStartSession;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;->this$3:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->this$1:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;->this$0:Lcom/singular/sdk/internal/ApiStartSession;

    invoke-static {v0}, Lcom/singular/sdk/internal/ApiStartSession;->access$100(Lcom/singular/sdk/internal/ApiStartSession;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xbb8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1649
    iget-object v0, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;->this$3:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->this$1:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;

    iget-object v1, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;->this$3:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;

    iget-object v1, v1, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    iget-object v1, v1, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->val$singular:Lcom/singular/sdk/internal/SingularInstance;

    iget-object v2, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;->this$3:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;

    iget-object v2, v2, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    iget-object v2, v2, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->val$identifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;->performLicenseCheck(Lcom/singular/sdk/internal/SingularInstance;Ljava/lang/String;)V

    return-void

    .line 1689
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "responseCode"

    .line 1699
    iget v2, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;->val$responseCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "signedData"

    .line 1709
    iget-object v2, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;->val$signedData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "signature"

    .line 1719
    iget-object v2, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;->val$signature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1749
    new-instance v1, Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;

    const-string v2, "__LicensingStatus"

    .line 1759
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    iget-object v0, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;->this$3:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->val$singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularInstance;->logEvent(Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1799
    invoke-static {}, Lcom/singular/sdk/internal/ApiStartSession;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    const-string v2, "Error occurred while trying to send licensing status event"

    invoke-virtual {v1, v2, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
