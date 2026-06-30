.class Lcom/singular/unitybridge/SingularUnityBridge$4;
.super Ljava/lang/Object;
.source "SingularUnityBridge.java"

# interfaces
.implements Lcom/singular/sdk/SDIDAccessorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/unitybridge/SingularUnityBridge;->init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public didSetSdid(Ljava/lang/String;)V
    .locals 2

    .line 2169
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/singular/unitybridge/SingularUnityBridge$4$1;

    invoke-direct {v1, p0, p1}, Lcom/singular/unitybridge/SingularUnityBridge$4$1;-><init>(Lcom/singular/unitybridge/SingularUnityBridge$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public sdidReceived(Ljava/lang/String;)V
    .locals 2

    .line 2259
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/singular/unitybridge/SingularUnityBridge$4$2;

    invoke-direct {v1, p0, p1}, Lcom/singular/unitybridge/SingularUnityBridge$4$2;-><init>(Lcom/singular/unitybridge/SingularUnityBridge$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
