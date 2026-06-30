.class Lcom/singular/unitybridge/SingularUnityBridge$1;
.super Ljava/lang/Object;
.source "SingularUnityBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/unitybridge/SingularUnityBridge;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/singular/unitybridge/SingularUnityBridge$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 429
    sget-object v0, Lcom/singular/unitybridge/SingularUnityBridge;->config:Lcom/singular/sdk/SingularConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/singular/unitybridge/SingularUnityBridge$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget v1, Lcom/singular/unitybridge/SingularUnityBridge;->currentIntentHash:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/singular/unitybridge/SingularUnityBridge$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lcom/singular/unitybridge/SingularUnityBridge;->currentIntentHash:I

    .line 489
    iget-object v0, p0, Lcom/singular/unitybridge/SingularUnityBridge$1;->val$intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/singular/unitybridge/SingularUnityBridge$1;->val$intent:Landroid/content/Intent;

    .line 499
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const v1, -0x2247e3e4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    sget-object v0, Lcom/singular/unitybridge/SingularUnityBridge;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v1, p0, Lcom/singular/unitybridge/SingularUnityBridge$1;->val$intent:Landroid/content/Intent;

    sget-object v2, Lcom/singular/unitybridge/SingularUnityBridge;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v2, v2, Lcom/singular/sdk/SingularConfig;->linkCallback:Lcom/singular/sdk/SingularLinkHandler;

    sget-object v3, Lcom/singular/unitybridge/SingularUnityBridge;->config:Lcom/singular/sdk/SingularConfig;

    iget-wide v3, v3, Lcom/singular/sdk/SingularConfig;->shortlinkTimeoutSec:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/singular/sdk/SingularConfig;->withSingularLink(Landroid/content/Intent;Lcom/singular/sdk/SingularLinkHandler;J)Lcom/singular/sdk/SingularConfig;

    .line 529
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/singular/unitybridge/SingularUnityBridge;->config:Lcom/singular/sdk/SingularConfig;

    invoke-static {v0, v1}, Lcom/singular/sdk/Singular;->init(Landroid/content/Context;Lcom/singular/sdk/SingularConfig;)Z

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
