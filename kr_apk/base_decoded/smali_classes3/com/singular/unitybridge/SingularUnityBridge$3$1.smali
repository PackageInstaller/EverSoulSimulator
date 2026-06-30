.class Lcom/singular/unitybridge/SingularUnityBridge$3$1;
.super Ljava/lang/Object;
.source "SingularUnityBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/unitybridge/SingularUnityBridge$3;->onResolved(Lcom/singular/sdk/SingularLinkParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/unitybridge/SingularUnityBridge$3;

.field final synthetic val$singularLinkParams:Lcom/singular/sdk/SingularLinkParams;


# direct methods
.method constructor <init>(Lcom/singular/unitybridge/SingularUnityBridge$3;Lcom/singular/sdk/SingularLinkParams;)V
    .locals 0

    .line 1139
    iput-object p1, p0, Lcom/singular/unitybridge/SingularUnityBridge$3$1;->this$0:Lcom/singular/unitybridge/SingularUnityBridge$3;

    iput-object p2, p0, Lcom/singular/unitybridge/SingularUnityBridge$3$1;->val$singularLinkParams:Lcom/singular/sdk/SingularLinkParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1159
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "deeplink"

    .line 1179
    iget-object v2, p0, Lcom/singular/unitybridge/SingularUnityBridge$3$1;->val$singularLinkParams:Lcom/singular/sdk/SingularLinkParams;

    invoke-virtual {v2}, Lcom/singular/sdk/SingularLinkParams;->getDeeplink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "passthrough"

    .line 1189
    iget-object v2, p0, Lcom/singular/unitybridge/SingularUnityBridge$3$1;->val$singularLinkParams:Lcom/singular/sdk/SingularLinkParams;

    invoke-virtual {v2}, Lcom/singular/sdk/SingularLinkParams;->getPassthrough()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_deferred"

    .line 1199
    iget-object v2, p0, Lcom/singular/unitybridge/SingularUnityBridge$3$1;->val$singularLinkParams:Lcom/singular/sdk/SingularLinkParams;

    invoke-virtual {v2}, Lcom/singular/sdk/SingularLinkParams;->isDeferred()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1209
    iget-object v1, p0, Lcom/singular/unitybridge/SingularUnityBridge$3$1;->val$singularLinkParams:Lcom/singular/sdk/SingularLinkParams;

    invoke-virtual {v1}, Lcom/singular/sdk/SingularLinkParams;->getUrlParameters()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "url_parameters"

    .line 1219
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/singular/unitybridge/SingularUnityBridge$3$1;->val$singularLinkParams:Lcom/singular/sdk/SingularLinkParams;

    invoke-virtual {v3}, Lcom/singular/sdk/SingularLinkParams;->getUrlParameters()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1249
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, -0x224be86c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7922e5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const v1, 0x7d792265

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 1279
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7d7920cd

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
